class StaticPagesController < ApplicationController
    before_action :authenticate_user!, only: [:secret]
  
        def landing_page
        end
      
        def secret
        end
        
    end