class Spells
    attr_accessor :spell, :type, :effect

    @@all = [] 

    def initialize(spell:, type:, effect:)
        self.spell = spell 
        self.type = type
        self.effect = effect
        
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end



    

end
 