class Contact < ApplicationRecord
 validates_presence_of :email, :name, :content
  validates_length_of :content, :maximum => 50
end
