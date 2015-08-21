#coding: utf-8

require 'mechanize'
require 'capybara'

Capybara.app_host = 'http://google.co.jp'
Capybara.app ='fake'
Capybara.default_driver = :mechanize


