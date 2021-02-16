# Funcionalidade: Login
# "Traduzem" o login.feature
Dado("que o usuário acesse a página principal") do
  @login_page.go
end

Quando("eu submeto meus dados {string} e {string}") do |usuario, senha|
  @login_page.login_usuario_valido(usuario, senha)
end

Então("devo poder visualizar os usuários cadastrados") do
  expect(page).to have_css('#tabela')
end

Então("devo ver uma mensagem de alerta {string}") do |expected_alert|
  expect(@login_page.alert).to eql expected_alert
end


Quando("um usuário submeta suas credenciais {string} e {string}") do |usuario, senha|
  @login_page.login_usuario_valido(usuario, senha)
end