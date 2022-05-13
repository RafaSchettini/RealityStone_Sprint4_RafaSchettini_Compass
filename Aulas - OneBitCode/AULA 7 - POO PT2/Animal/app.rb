# require procura por arquivos no diretório de onde o arquivo foi executado
# require './animal'

# require_relative procura por arquivos no mesmo dirétorio do arquivo que foi executado
require_relative 'animal'
require_relative 'cachorro'

animal = Animal.new
animal.pular
animal.dormir

cachorro = Cachorro.new
cachorro.pular
cachorro.latir