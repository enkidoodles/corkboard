class BuildsController < ApplicationController
    
    def index
        @build = Build.all
    end
    
    def show
    end
end

