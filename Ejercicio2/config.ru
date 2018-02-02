# config.ru
require 'rack'
class MiSegundaWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/index'
      [200, { 'Content-Type' => 'text/html; charset="utf-8"' }, ['<h1> "Estás en el index" </h1>']]

    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-Type' => 'text/html; charset="utf-8"' }, ['<h1> "Estś en otro landing" </h1>']]

    else
      [404, { 'Content-Type' => 'text/html; charset="utf-8"' }, [File.read('404.html')]]
    end
  end
end

run MiSegundaWebApp.new
