class PagesController < ApplicationController
    layout "application"

    def
         index
        @name = 'mike'
    end
    def about
        @name = 'joe'
    end
end
