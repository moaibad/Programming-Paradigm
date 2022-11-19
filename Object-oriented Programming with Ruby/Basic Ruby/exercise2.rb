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
        print("Luas     : ",(panjang*lebar),"\n")
    end

    def keliling 
        print("Keliling : ",(2*(panjang+lebar)),"\n")
    end

end


class Lingkaran < BangunDatar

    attr_accessor :r

    def initialize(r)
        self.r = r
    end

    def luas
        print("Luas     : ",(3.14*(r*r)),"\n")
    end

    def keliling 
        print("Keliling : ",(2*3.14*r),"\n")
    end

end


puts("=========== Persegi Panjang ===========")
persegiPanjang = PersegiPanjang.new(5,4)
persegiPanjang.luas
persegiPanjang.keliling

puts("")

puts("============== Lingkaran ==============")
lingkaran = Lingkaran.new(7)
lingkaran.luas
lingkaran.keliling
