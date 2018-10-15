class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_and_belongs_to_many :organizations
  
  validates :sub_domain, presence: true, format: { without: /^((http|https):\/\/)[a-z0-9]*(\.?[a-z0-9]+)\.[a-z]{2,5}(:[0-9] {1,5})?(\/.)?$/ix, multiline: true }

  
end
