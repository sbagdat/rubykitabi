# encoding: utf-8

# Robot sınıfı tanımlanıyor
class Robot
  # @isim ve @sahip değişkenleri için get ve set metotları oluşturuluyor
  attr_accessor :isim, :sahip

  # Değişkenlere ilk değerlerini vermek için kullanılan initialize metodu
  def initialize(isim, sahip)
    @isim, @sahip = isim, sahip
  end

  # Robotun selam vermesini sağlayacak olan metot
  def merhaba_de
    puts "Merhaba! Benim adım #{@isim}. Beni #{@sahip} oluşturdu."
  end
end

# Yeni bir Robot nesnesi oluşturuluyor
turk_bot = Robot.new("Türk RoBot", "Sıtkı")
# Robot selam veriyor
turk_bot.merhaba_de

# Robotun özellikleri değiştiriliyor
turk_bot.isim = "Rubiot"
turk_bot.sahip = "Evren"
# Robot, yeni özellikleri ile tekrar selam veriyor
turk_bot.merhaba_de