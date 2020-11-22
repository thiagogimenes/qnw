require "allure-cucumber"
require "capybara"
require "capybara/cucumber"

require_relative "helpers"

World(Helpers)

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 10
  #por padrão o capybara busca um elemento css em 2 segundos. Pode ocorrer lentidão na internet e não dar tempo de buscar o elemento, neste caso usa-se consiguração para aumentar o tempo de busca do capybara, setando o max_time_wait de 10 segundos.
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end

#comand line para rodar server do allure :: "allure serve logs/"
