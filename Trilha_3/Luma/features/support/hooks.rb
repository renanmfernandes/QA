require "report_builder"

Before do
  @cadastro = Cadastro.new
  @busca = Busca.new
  @produto = Produto.new
  @checkout = Checkout.new
  @pedido_gerado = Pedido_gerado.new
  @painel_cliente = Painel_cliente.new
  @login = Login.new
end

After do |scenario|
  Dir.mkdir("data") unless Dir.exist?("data")
  # sufix = ("error" if scenario.failed?) || "success"
  # name = scenario.name.tr(" ", "_").downcase
  # image_name = "data/img/#{sufix}-#{name}.png"
  image_name = "data/img/screenshot.png"
  temp_shot = page.save_screenshot(image_name)
  file_shot = File.open(temp_shot, "rb").read
  final_shot = Base64.encode64(file_shot)
  attach(temp_shot, "image/png")
end

at_exit do
  time = Time.now
  data = time.strftime("%d/%m/%Y") #=> "Data 04/09/2011"
  hora = time.strftime("at %I:%M%p") #=> "08:56AM"
  ReportBuilder.configure do |config|
    config.input_path = "data/report.json"
    config.report_path = "data/cucumber_web_report_e2e"
    config.report_types = [:html]
    config.color = "indigo"
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = "Automação de Testes - Report"
    config.compress_images = true
    config.additional_info = { "Projeto" => "Academia - Trilha 3 - Luma", "Data de execução" => "#{data}" " #{hora}", "QA" => "Renan Fernandes" }
  end
  ReportBuilder.build_report
  File.delete("./data/report.json") if File.exist?("./data/report.json")
  File.delete("./data/report.html") if File.exist?("./data/report.html")
  File.delete("./data/img/screenshot.png") if File.exist?("./data/img/screenshot.png")
end
