class PagesController < ApplicationController
    # display the list of categories
    def index
        @categories = Category.all
    end
end
