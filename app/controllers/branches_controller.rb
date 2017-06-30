class BranchesController < ApplicationController
    
    def index
        @branch = Branch.all
    end
    
    
    def show
    end
end
