class UsersController < ApplicationController

	def index

  end

  def login
    @user = User.koala(request.env['omniauth.auth']['credentials'])
		u = User.find_or_create_by(facebook_id: @user.entries[0][1])
		u.name = @user.entries[1][1] + " " + @user.entries[3][1]
		u.save!
		binding.pry
    @pins = Pin.all
  end


end
