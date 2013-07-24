class User < ActiveRecord::Base
  has_many :links, :foreign_key => "owner_id"
  has_many :snippets, :foreign_key => "owner_id"
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
end
