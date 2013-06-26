class Fantasyteam < ActiveRecord::Base
  attr_accessible :feepaid, :owner, :teamname, :athletes_attributes
  has_many :athletes
  accepts_nested_attributes_for :athletes
end
