Before do
  page.current_window.resize_to(1440, 900)

  @login_page = LoginPage.new
  @cadastro_page = CadastroPage.new
  @funcionario_page = FuncionarioPage.new
end

After do |scenario|
  # O capybara tira o screenshot
  #screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
  # O Cucumber anexa o screenshot no relatório para gerar evidência!
  #embed(screenshot, "image/png", "Screenshot")
end

# Faz na saída da automação
at_exit do
end
