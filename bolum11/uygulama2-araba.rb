# encoding: utf-8

class Araba
  attr_accessor :marka, :model, :motor
  def initialize(*parametreler)
    if block_given?
      yield(self)
    else
      @marka = parametreler[0]
      @model = parametreler[1]
      @motor = parametreler[2]
    end
  end
end

a1 = Araba.new('BMW', 'X500', 2.4)
a2 = Araba.new do |araba|
  araba.marka = 'Opel'
  araba.model = 'Corsa'
  araba.motor = 1.4
end

puts "#{a1.marka} #{a1.model} - Motor gücü: #{a1.motor}"
puts "#{a2.marka} #{a2.model} - Motor gücü: #{a2.motor}"