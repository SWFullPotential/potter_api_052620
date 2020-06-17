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

    def self.charms
        @@all.select { |spell| spell.type == "Charm"}

    end

    def self.curses
        @@all.select { |spell| spell.type == "Curse"}

    end

    def self.enchantments
        @@all.select { |spell| spell.type == "Enchantment"}

    end

    def self.hexes
        @@all.select { |spell| spell.type == "Hex"}

    end

    def self.jinxes
        @@all.select { |spell| spell.type == "Jinx"}

    end

    def self.spellType
        @@all.select { |spell| spell.type == "Spell"}

    end



    

end
 