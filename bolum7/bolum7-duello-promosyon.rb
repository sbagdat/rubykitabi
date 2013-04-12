#encoding: utf-8

class Alisveris_Arabasi
  @@esyalar = %w{ ekmek yumurta peynir tuz un sucuk pekmez tahin
                  makarna pirinç bulgur bezelye mercimek yoğurt bisküvi}

  def initialize(sahip)
     @sahip = sahip
     @esyalar = Hash.new(0)
     arabayi_doldur
  end


  def alis(ad, adet)
    @esyalar[ad.to_sym] += adet
  end

  def arabayi_doldur
    esya_adedi = rand(10) + 1

    esya_adedi.times do
      esya = @@esyalar.sample
      adet = rand(10) + 1
      alis(esya, adet)
    end
  end

  def arabada_ne_var
    puts "\nSahip: #{@sahip}"
    printf("%10s %4s\n", 'Eşya', 'Adet')
    puts "---------- ----\n"
    @esyalar.each do |esya, adedi|
      printf("%10s %4d\n", esya.capitalize, adedi)
    end
  end
end

arabalar = [
  araba1 = Alisveris_Arabasi.new('Eren'),
  araba2 = Alisveris_Arabasi.new('Ceren'),
  araba3 = Alisveris_Arabasi.new('Deren')
]

arabalar.each do |araba|
  araba.arabada_ne_var
end