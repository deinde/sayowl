
class HomeController < ApplicationController

	def welcome
    
    end

   



    def new

	end

	def index
		search = params[:search]
    location = params[:location]
    


    params = { term: 'bar',
             limit: 20,
             sort: 1,
             actionlinks: true,
             radius_filter: 10000
           }
    client = Yelp::Client.new({ consumer_key: 'OgQAK7wcwM-qxw_V5c1BPg',
                                consumer_secret: 'TcU2lOFNHX_gb_nIIEjL6PdS4jY',
                                token: 'gnvajyhEXYKl5rD2M8PEWqkT8q-RXFt-',
                                token_secret: 'H4OCnkIRSZywemlHdAwkfjQxgpQ'
                              })
    @response = client.search(location, params) if location != nil


	end
end	