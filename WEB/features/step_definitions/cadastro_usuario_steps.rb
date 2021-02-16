# Funcionalidade: Cadastro de usuário
Dado("que o usuário queira criar um novo cadastro") do
  @login_page.dados_do_usuario
end

Quando("se completa o cadastro") do
  @cadastro_page.go
  @login_page.preencher_dados_usuario
end

Então("deve ser exibida a tela com a lista de usuários") do
  @login_page.login_usuario
  expect(page).to have_css('#tabela')
end

Quando('um usuário submeter suas credenciais {string}, {string} e {string}') do |usuario, senha, confirma_senha|
  @cadastro_page.go
  @login_page.dados_usuario_errados(usuario, senha, confirma_senha)
end

Então("deve ver uma mensagem de alerta com o texto {string}") do |mensagem_de_alerta|
  expect(page).to have_text(mensagem_de_alerta)
end
