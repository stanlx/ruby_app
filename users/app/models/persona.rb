class Persona < ActiveRecord::Base
  self.table_name = "iuser_persona"
  self.primary_key = "id"
  #attr_accessible :id, :user_id, :assigned_usertype_id, :match_status
  belongs_to :user
end

