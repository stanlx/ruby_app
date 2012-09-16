class Persona < ActiveRecord::Base
  self.table_name = "iuser_persona"
  attr_accessible :user_id, :assigned_usertype_id, :match_status
  belongs_to :user
end
