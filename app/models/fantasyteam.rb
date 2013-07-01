class Fantasyteam < ActiveRecord::Base
  attr_accessible :feepaid, :teamname, :athletes_attributes

  has_many :athletes

  has_one :proteam

  belongs_to :owner, class_name: "User"
  belongs_to :league


  accepts_nested_attributes_for :athletes
end
