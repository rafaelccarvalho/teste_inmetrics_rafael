class LoginPage < SitePrism::Page
  set_url "/accounts/login"

  def go
    visit "/accounts/login/"
  end

  def dados_do_usuario
    @usuario = Faker::Name.name
    @senha = Faker::Internet.password
    @confirma_senha = @senha
  end

  def preencher_dados_usuario
    find("input[name=username]").set @usuario
    find("input[name=pass]").set @senha
    find("input[name=confirmpass]").set @confirma_senha
    click_button "Cadastrar"
  end

  def login_usuario
    find("input[name=username]").set @usuario
    find("input[name=pass]").set @senha
    click_button "Entre"
  end

  def login_usuario_valido(usuario, senha)
    find("input[name=username]").set usuario
    find("input[name=pass]").set senha
    click_button "Entre"
  end

  def dados_usuario_errados(usuario, senha, confirma_senha)
    find("input[name=username]").set usuario
    find("input[name=pass]").set senha
    find("input[name=confirmpass]").set confirma_senha
    click_button "Cadastrar"
  end

  def alert
    return find(".alert").text
  end

  def is_login_page
    return find("input[class=txt2 bo1]")
  end
end
