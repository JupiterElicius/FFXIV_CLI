class FC
    @@all = []
    attr_accessor :names, :search
    
    def initialize(names, fcname)
        @names = names
        @search = fcname
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end
    
 
end