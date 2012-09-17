#class Email < ActiveRecord::Base
#  self.table_name =  "message_email"
#  self.primary_key = "id"

  #belongs_to :User,
  #  :foreign_key => 'user_id'

#  has_many :User,
#    :foreign_key => 'user_id',
#    :primary_key => 'id'
#end

class User < ActiveRecord::Base
  self.table_name = "iuser_user"
  self.primary_key = "id"
  
  has_many :personas, :foreign_key => "user_id"
end

#class Persona < ActiveRecord::Base
#  self.table_name = "iuser_persona"
#  self.primary_key = "id"
#  
#  #attr_accessible :id, :user_id, :assigned_usertype_id, :match_status
#  belongs_to :user 
#end

