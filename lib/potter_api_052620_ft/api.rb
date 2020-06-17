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

end