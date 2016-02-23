class User < ActiveRecord::Base

	#Will need this for clearing out the database
	#has_many :games, dependent: :destroy

	validates :email, presence: true, uniqueness: true,
 	 format: { with: /[^@\s]+@(?:[-a-z0-9]+\.)+[a-z]{2,}/i,
 	           message: 'format is invalid'}

 	 validates :password, length: { in: 6...255},
 	            :on => :create

	has_secure_password

	def self.confirm(params)
	  @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
