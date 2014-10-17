# Implementar en este fichero las Pruebas Unitarias asociadas a la clase NumComplejo

require "./lib/NumComplejo.rb"
require "test/unit"

class TestNumComplejo < Test::Unit::TestCase

	def setup
		@n = NumComplejo.new(1,1)
		@m = NumComplejo.new(3,3)
	end
	
	def test_excepciones
		#Assert para el primer argumento (no float)
		assert_raise ( ArgumentError ) do
			NumComplejo.new('a', 1.5)
		end
		#Assert para el segundo argumento (no float)
		assert_raise ( ArgumentError ) do
			NumComplejo.new(1.5, 'a')
		end
		#Assert para ambos argumentos (no float) 
		assert_raise ( ArgumentError ) do
			NumComplejo.new('a' , 'b')
		end
	end

