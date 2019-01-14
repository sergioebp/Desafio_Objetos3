#Ejercicio 3
class Vehicle
  attr_reader :start
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@instancias = 0
  def initialize(model, year)
    super
    @@instancias += 1
  end
  def self.instancias
    puts @@instancias
  end
  def engine_start
    super
    puts 'El motor se ha encendido'
  end
end


x = Car.new('pichirilo', 80)
x.engine_start
puts x.start

#Ejercicio 4
class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end
  def self.read_file(name='notas.txt')
    alumnos = []
data = []
File.open(name, 'r') { |file| data = file.readlines }
data.each do |alumno|
  alumnos << Alumno.new(*alumno.split(', '))
  end
  alumnos
  end
end

puts Alumno.read_file

#Ejercicio 5
class Rectangulo
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    puts "este rectangulo tiene #{@largo} de largo y #{@ancho} de ancho"
  end
  def perimetro
    puts "#{(@largo * 2) + (@ancho * 2)}"
  end
  def area
    puts "#{@largo * @ancho}"
  end
end
class Cuadrado
  def initialize(lado)
    @lado = lado
  end
  def lados
    puts "este cuadrado tiene de lado #{@lado}"
  end
  def perimetro
    puts "#{@lado * 4}"
  end
  def area
    puts "#{@lado * @lado}"
  end
end

x = Rectangulo.new(3, 4)
y = Cuadrado.new(5)
x.perimetro
x.area
y.perimetro
y.area



