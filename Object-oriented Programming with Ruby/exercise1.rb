class Vehicle
    attr_accessor :year

    def initialize(year)
        @year = year
    end

    def printStats()
        puts "#{year}"
    end
end

mobil = Vehicle.new("2022")
mobil.printStats()


