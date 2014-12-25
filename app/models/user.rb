class User < ActiveRecord::Base
  has_many :identities, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :confirmable

  validates :email, presence: true

  def self.find_for_oauth(auth)

    identity = Identity.find_for_oauth(auth)

    user = User.where(:email => auth.info.email).first if auth.info.email

    if !user.nil?
      identity.user = user
      identity.save!
    end
    user
  end

  def email_verified?
    self.email
  end

end