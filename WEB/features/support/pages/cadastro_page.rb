class CadastroPage < SitePrism::Page
  set_url "/accounts/signup"

  def go
    visit "/accounts/signup/"
  end

  def with(usuario, senha, confirma_senha)
    find("input[name=username]").set usuario
    find("input[name=pass]").set senha
    find("input[name=confirmpass]").set confirma_senha
    click_button "Cadastrar"
  end

  def alert
    find(page.all).text
  end
end
