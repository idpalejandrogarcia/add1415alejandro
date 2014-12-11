#!/usr/bin/ruby
# encoding: utf-8

param1=ARGV[0] || ""
param2=ARGV[1] || ""
param3=ARGV[2] || ""

if param1=='' then
  puts "-- use comando --help"
  
  
elsif param1=='--help' then
  puts '-r fichero destino = Recupera un fichero o directorio'
  puts '--info = Se mostrará un pequeño informe indicando el número de ficheros que hay .'
  puts '--clean = Elimina todo el contenido de la papelera de forma definitiva.'
  puts '-i = Se elige entre limpiar (--clean) o mostrar las estadísticas (--info).'
  puts 'file nombrearchivo= Nombre del fichero o directorio que queremos enviar a la papelera.'
  
  
elsif param1=='-r' then
  puts 'Recuperacion del fichero'
  if param3==""
    system("mv /home/alejandro/Escritorio/papelera/"+param2+" /home/alejandro/Escritorio")
  else 
    system("mv /home/alejandro/Escritorio/papelera/"+param2+" " +param3)
  end
elsif param1=='file' then
 puts 'Documento a la basura'
 system("mv "+param2+" /home/alejandro/Escritorio/papelera/")
  
elsif param1=='-clean' then
puts 'Eliminado los archivos de la papelera.'
system("rm  /home/alejandro/Escritorio/papelera/*")

elsif param1== "--info"
puts 'Aqui la información de la papelera'
system("tree /home/alejandro/Escritorio/.papelera")

elsif param1=='-i' then
  puts 'Menu entre los comandos --clean e --info'
  s=$stdin.gets.chomp
	if (s == "--clean")
    system("rm  /home/alejandro/Escritorio/papelera/*")
	elsif (s == "--info")
	system("tree /home/alejandro/Escritorio/.papelera")
	else
	puts "No has puesto ningun valor correcto."
	end
end
