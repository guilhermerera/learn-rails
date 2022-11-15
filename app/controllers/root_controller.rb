class RootController < ApplicationController

    def index 
        render "index"
    end

    def about
        puts "about in server"
        render "about"
    end

    def contact
        puts "contact in server"
        # render "contact" // render method can be hidden
    end

    def api 
        # route redirection
        # redirect_to("/about") 
        @response = {
            :status => 200,
            :message => "Hello World from Rails API"
        }

        render json: @response
    end

    def user
        id = params[:id]
        name = params[:name]
        @response = {
            :id => id,
            :name => name
        }
        render json: @response
    end


   
end
