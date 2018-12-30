class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Check out https://guides.rubyonrails.org/association_basics.html for more information on active record associations.
  belongs_to :plan
end
