#encoding: utf-8
class Alisveris_Arabasi

  def initialize(sahip)
    @sahip, @esyalar = sahip, {}
  end

  def alis(ad, adet )
    @esyalar[ad.to_sym] = adet
  end

  def arabada_ne_var
    puts "#{@sahip}'nin arabasında bulunanlar: "
    @esyalar.each do |esya, adet|
      puts "#{adet} adet #{esya}"
    end
  end

end

araba = Alisveris_Arabasi.new('Ali')
araba.alis('ekmek', 3)
araba.alis('sabun', 2)
araba.alis('elma', 5)

araba.arabada_ne_var