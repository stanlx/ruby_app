class Email < ActiveRecord::Base
  attr_accessible :content, :id, :sender_id,, :subject,
end
