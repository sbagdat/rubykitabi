# coding: utf-8

class Robot
  attr_reader 	:gunluk

  def initialize(isim, sahip, adim_boyu)
    @isim, @sahip, @adim_boyu = isim, sahip, adim_boyu.to_f
    @adim_sayisi = nil
    @gunluk = "- Başlangış noktası.\n"
    @pozisyon = 0
    @yon = nil
  end


  def merhaba_de
    puts "Merhaba! Benim adım #{@isim}. Beni #{@sahip} oluşturdu."
  end

  def don(yon)
    if yon == :sag || yon == :sol
      @yon = yon
    else
      puts "Yön değeri :sag veya :sol olmalı"
    end
  end

  def ilerle(adim_sayisi)
    if @yon == :sag
      @pozisyon += adim_sayisi * @adim_boyu
      @gunluk += "- Sağ "
    elsif @yon == :sol
      @pozisyon -= adim_sayisi * @adim_boyu
      @gunluk += "- Sol "
    end

    @gunluk += "yöne #{adim_sayisi} adım.\n" if @yon
  end

  def konum_bildir
    if @pozisyon > 0
      "Başlangıç noktasından sağa doğru #{@pozisyon} cm uzaktayım."
    elsif @pozisyon < 0
      "Başlangıç noktasından sola doğru #{@pozisyon.abs} cm uzaktayım."
    else
      "Başladığım yerdeyim!"
    end
  end
end

turk_bot = Robot.new("Türk RoBot", "Sıtkı", "12")
# Selamla
turk_bot.merhaba_de

#Sağa dön
turk_bot.don :sag
# 10 adım ilerle
turk_bot.ilerle 10
# konum bildir
puts turk_bot.konum_bildir


#Sola dön
turk_bot.don :sol
# 3 adım ilerle
turk_bot.ilerle 18
# konum bildir
puts turk_bot.konum_bildir

# Günlük kayıtlarını yazdır
puts "\nGünlük bilgileri"
puts "----------------"
puts "#{turk_bot.gunluk}"
