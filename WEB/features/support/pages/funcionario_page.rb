class FuncionarioPage < SitePrism::Page
  set_url "/empregados"

  def go
    visit "/empregados"
  end

  def dados_novo_funcionario
    @nome_funcionario = Faker::Name.name
    @cargo_funcionario = "QA"
    @cpf_funcionario = Faker::CPF.cpf
    @salario_funcionario = "450000"
    @data_admissao = "01032021"
  end

  def criar_novo_funcionario
    find("input[id=inputNome]").set @nome_funcionario
    find("input[id=inputCargo]").set @cargo_funcionario
    find("input[id=cpf]").set @cpf_funcionario
    find("input[id=dinheiro]").set @salario_funcionario
    # verificar porque está dando errado
    select "Masculino", from: "#slctSexo"
    check "#clt"
    find("#inputAdmissao").set @data_admissao
    click_button "Submit"
  end
end
