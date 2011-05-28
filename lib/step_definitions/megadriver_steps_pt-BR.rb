# -*- coding: utf-8 -*-

Dado /^que "([^"]*)" está no controle$/ do |client|
  Given %{"#{client}" is in control}
end

Dado /^que outro client está no controle$/ do
  Given %{another client is in control}
end