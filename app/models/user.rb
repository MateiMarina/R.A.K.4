class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


# before_save :format_name



  # def format_name
  #	  self.name   =  self.name.upcase
  # end
         
         
end
