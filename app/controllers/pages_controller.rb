class PagesController < ApplicationController
  def home
    @featured_relatives = FamilyMember.where(featured: true)
    @brunhilde = FamilyMember.where(name: "Brünhilde Meier")
  end

  def show
    render template: "pages/#{params[:page]}"
  end


end
