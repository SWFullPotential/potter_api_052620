class API

    POTTER_ACCESS_KEY = "$2a$10$elFC6IIr0vVnAN4eCnBsPOnJNhvmtg6m6nnu.9vQa9RKaXi0wG6rW"
    
    BASE_URL = "https://www.potterapi.com/v1/"
    ENDPOINT_URL = "spells"
    url = BASE_URL + ENDPOINT_URL
    url = url + "?=key" + POTTER_ACCESS_KEY 

    print(url)

end
