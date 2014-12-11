#!/usr/bin/ruby
# encoding: utf-8

param1=ARGV[0] || ""
param2=ARGV[1] || ""

if param1=='' then
  puts "-- use comando --help"
  

elsif param1=='--help' then
  puts '--sudo = ponerse como super usuario, se hace antes de empezar.'
  puts '--install = se instala el programa que se pasa por parametro.'
  puts '--uninstall = se desinstala el programa que se pasa por parametro.'
  puts '--update = actualiza los repositorios.'

elsif param1=='--sudo' then
	puts 'Ponerse como super.'
    system("su")
    

elsif param1=='--install' then
	puts 'Instalacion de archivo.'
    system("sudo apt-get install "+param2)
    
elsif param1=='--uninstall' then
	puts 'Desinstalacion de archivo.'
    system("sudo apt-get remove "+param2)

elsif param1=='--update' then
	puts 'Actualizacion de repositorios.'
    system("sudo apt-get update ")
end
