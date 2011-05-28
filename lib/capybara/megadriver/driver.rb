require 'selenium-webdriver'

module Capybara
  module MegaDriver
    class Driver < Capybara::Selenium::Driver

      def initialize(app, options={})
        @app = app
        @options = DEFAULT_OPTIONS.merge(options)
        @@rack_server = Capybara::Server.new(@app)
        @@rack_server.boot if Capybara.run_server
      end

    private

      def url(path)
        @@rack_server.url(path)
      end

    end
  end
end