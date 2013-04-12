# encoding: utf-8
class Urun
  def initialize(ad, stok=0)
    @ad = ad
    @stok = stok || 0
  end

  def al(miktar)
    @stok += miktar
  end

  def sat(miktar)
    if miktar <= @stok
      @stok -= miktar
    else
      puts "!!! Bu üründen stokta bulunandan daha fazla miktarda satamazsınız.\nİşlem başarısız oldu!"
    end
  end

  def stok_ogren(urun_adi='ürün')
    "#{@ad} isimli #{urun_adi}'den stoklarda #{@stok} adet bulunmaktadır."
  end
end