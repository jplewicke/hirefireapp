# encoding: utf-8

module HireFireApp
  class Railtie < ::Rails::Railtie
    initializer 'hirefireapp.add_middleware' do |app|
      app.config.middleware.insert_before('Rack::ConditionalGet', 'HireFireApp::Middleware')
    end
  end
end
