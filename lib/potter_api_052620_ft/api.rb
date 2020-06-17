class API
    URL_WITH_KEY =  "https://www.potterapi.com/v1/spells?key=$2a$10$elFC6IIr0vVnAN4eCnBsPOnJNhvmtg6m6nnu.9vQa9RKaXi0wG6rW&bloodStatus=pure-blood&ministryOfMagic=True?"
    
    def self.get_spells
        
        response = RestClient.get(URL_WITH_KEY)
        data = JSON.parse(response)
   
        data.each do |spell_info|
            spell = spell_info["spell"]
            type = spell_info["type"]
            effect = spell_info["effect"]
            Spells.new(spell: spell, type: type, effect: effect)
        end
        # binding.pry
        
        
    end
    #Something to this effect needs to work....need to be able to take the array that get_spells returns and create a new array based on spell TYPE.
    #each new array needs to be a different 'type' of spell that when called to return list of array we get  "#{index}. #{spell}: #{effect}." of only that type of spell.  
    # def self.charms(get_spells)
    #     self.get_spells
    #     charms_array = []
    #     if type == "Charm"
    #         charms_array << self 
    #         charms_array
    #     end

    # end

end