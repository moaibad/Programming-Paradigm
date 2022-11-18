class BangunDatar
    def luas
        "Luas Bangun"
    end

    def keliling
        "Keliling Bangun"
    end
end

class PersegiPanjang < BangunDatar
    attr_accessor :panjang
    attr_accessor :lebar

    def initialize(panjang, lebar)
        self.panjang = panjang
        self.lebar = lebar
    end

    def luas
        puts (panjang*lebar)
    end

    def keliling 
        puts (2*(panjang+lebar))
    end

end

puts("=====Persegi Panjang=====")
persegiPanjang = PersegiPanjang.new(5,4)
persegiPanjang.luas
persegiPanjang.keliling
