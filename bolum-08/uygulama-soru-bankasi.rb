# encoding: utf-8
class Soru

  @@sorular = []
  @@yanitlar = []

  def initialize(soru, tip, cevap, *secenekler)
    @soru, @tip, @cevap = soru, tip, cevap
    @secenekler = secenekler if tip == 'ÇS'
    @@sorular.push(self)
  end

  def self.teste_basla
    @@sorular. each do |s|
      s.sor
    end
    testi_bitir
  end

  def self.testi_bitir
    dogru_sayisi = 0
    soru_sayisi = @@sorular.length
    soru_no = 1

    puts "\nSonuçlar"
    puts "---------------"
    @@yanitlar. each do |y|
      puts "#{soru_no}.soru = #{y}"
      dogru_sayisi += 1 if y == 'Doğru'
      soru_no += 1
    end
    puts "Toplam #{soru_sayisi} sorudan, #{dogru_sayisi} tanesini doğru cevapladınız!"
  end

  def sor
    soru_no = @@sorular.index(self) + 1
    puts("#{soru_no}) #{@soru}")

    if @tip == 'DY'
      puts('(Doğru ise D, yanlış ise Y yazınız.)')
    elsif @tip == 'ÇS'
      puts('(Doğru seçeneğin harfini yazınız.)')
      harfler = %w{A B C D E}
      @secenekler.each do |secenek|
        indeks = @secenekler.index(secenek)
        puts "#{harfler[indeks]}) #{secenek}"
      end
    end
    print "Cevabınız >> "

    c = gets.chomp
    if c.downcase == @cevap.downcase
      @@yanitlar.push('Doğru')
    else
      @@yanitlar.push('Yanlış')
    end
  end
end

Soru.new('Güneş bir yıldızdır.','DY','D')
Soru.new('Ampulü kim icat etti?','K','Edison')
Soru.new('İstanbul kaç yılında fethedilmiştir?', 'ÇS', 'C',
         1451, 1452, 1453, 1454, 1455)

Soru.teste_basla