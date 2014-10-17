# Implementar en este fichero las Pruebas Unitarias asociadas a la clase NumComplejo

require 'lib/NumComplejo'
require 'test/unit'

class TestNumComplejo < Test::Unit::TestCase

	def setup
		@n = NumComplejo.new(3,4)
		@m = NumComplejo.new(1,2)
		@r = 2
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
	def test_suma
	#Comprobamos la suma con los valores de 'setup'
	result = @n + @m
	assert result.real == 4 and result.img == 6
	end
	def test_resta
	#Comprobamos la resta con los valores de 'setup'
	result = @n - @m
	assert result.real == 2 and result.img == 2
	end
	def test_producto
	#Comprobamos la multiplicacion con los valores de 'setup'
	result = @n * @m
	assert result.real == -8 and result.img == 10
	end
	def test_producto_escalar
	#Comprobamos el producto escalar de un complejo
	result = @n * @r
	assert result.real == 6 and result.img == 8
	end
	def test_division
	#Comprobamos la division con los valores de 'setup'
	result = @n / @m
	assert result.real == 11/4 and result.img == -0.5
	end
end

