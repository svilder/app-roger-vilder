class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact]

  def home
  end

  def contact
    @bioelements = Bioelement.all
    @bioelement = Bioelement.new
  end
end
