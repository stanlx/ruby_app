#class Email < ActiveRecord::Base
#  attr_accessible :content, :from_name, :from_user_id, :ps_id, :subject, :time_sent
#:end

class Email < ActiveRecord::Base
  self.table_name =  "message_email"
  self.primary_key = "id"

  #belongs_to :User, 
  #  :foreign_key => 'user_id'

  has_many :User, 
    :foreign_key => 'user_id', 
    :primary_key => 'id'
end

class User < ActiveRecord::Base
  self.table_name = "iuser_user"
  self.primary_key = "id"
end
