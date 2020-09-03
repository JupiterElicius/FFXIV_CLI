require "httparty"
require "json"
class API
    

    def self.get_fcs(fcname)
        url = "https://xivapi.com/freecompany/search?name=#{fcname}&server=Balmung"
        response = HTTParty.get(url)["Results"]
        names = pars_resp_selec(response)
        FC.new(names, fcname)
    end


    def self.pars_resp_selec(parsed_response)
        parsed_response.map do |v|
            v["Name"]
        end
    end
end