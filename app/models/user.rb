class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  # source:http://railscasts.com/episodes/235-devise-and-omniauth-revised?view=asciicast
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      # user.username = auth.info.nickname
      # I don't have a username field in my model
    end
  end

  # source:http://railscasts.com/episodes/235-devise-and-omniauth-revised?view=asciicast
  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  # source:http://railscasts.com/episodes/235-devise-and-omniauth-revised?view=asciicast
  def password_required?
    super && provider.blank?
  end


  # source:http://railscasts.com/episodes/235-devise-and-omniauth-revised?view=asciicast
  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end

end
