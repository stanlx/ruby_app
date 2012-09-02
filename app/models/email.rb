class Email < ActiveRecord::Base
  attr_accessible :content, :from_name, :from_user_id, :ps_id, :subject, :time_sent
end
