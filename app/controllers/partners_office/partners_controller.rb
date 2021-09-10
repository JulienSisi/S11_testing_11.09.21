module PartnersOffice
  class PartnersController < ApplicationController

    def index
      @partners = Partner.all
      @partners = current_partner
    end
    
  end
end