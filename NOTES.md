User is a brand new student at Hogwarts and is trying to brows the different types of spells available. Students will be able to view spells by type or view all. Each will give the name, type, and description. 


BASE URL = https://www.potterapi.com/v1/


ENDPOINT: spells

access key will be needed to access spells. **Must build access key in so that any user can access. 



Types of spells: 
    - charm
    - curse
    - enchantment
    - hex
    - jinx 
    - spell 


User should be able to choose which types of spells they'd like to look at -- "Choose type of spell to look at. 
1. Charm
2. Curse
3. Enchantment
4. Hex 
5. Jinx
6. Spell
7. List all. 

Each list will show name, type, and effect. 

Will need to create classes for 
-CLI
-API
-Spells. 

Helpful links :
https://dev.to/peritract/harry-potter-and-the-accessing-of-apis-1i0i 
https://www.potterapi.com/#authentication
https://www.potterapi.com/login/
https://gatsby-potterapi.netlify.app/
https://www.potterapi.com/v1/spells?key=$2a$10$elFC6IIr0vVnAN4eCnBsPOnJNhvmtg6m6nnu.9vQa9RKaXi0wG6rW&bloodStatus=pure-blood&ministryOfMagic=True?
https://github.com/rest-client/rest-client
https://www.youtube.com/watch?v=EeE3guwSMOc&feature=youtu.be




Things used to organize thoughts and things i've tried: 



# "    POTTER_ACCESS_KEY = "$2a$10$elFC6IIr0vVnAN4eCnBsPOnJNhvmtg6m6nnu.9vQa9RKaXi0wG6rW"
# "    
# "    BASE_URL = "https://www.potterapi.com/v1/"
# "    ENDPOINT_URL = "spells""
# "    url = BASE_URL + ENDPOINT_URL
#     url = url + "?=key" + POTTER_ACCESS_KEY" 


# spells = API.new.get_spells
# puts spells



# require 'net/http'
# require 'open-uri'
# require 'json'

# class GetRequester
#   attr_accessor :URL 
  
#   def initialize(url)
#     @URL = URL
#   end
  
#   def get_response_body
#      uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     response.body
#   end
  
#   def parse_json
#     JSON.parse(get_response_body)
#   end
  
# end