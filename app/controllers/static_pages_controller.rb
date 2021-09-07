class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:secret]

		def landing_page
    	render layout: false
		end

    def secret
    end
  end