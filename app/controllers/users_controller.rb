class UsersController < ApplicationController

	def index

  end

  def login
    @user = User.koala(request.env['omniauth.auth']['credentials'])
		u = User.find_or_create_by(facebook_id: @user.entries[2][1])
		u.name = @user.entries[0][1]
		u.save!
    @pins = Pin.all
  end


end
