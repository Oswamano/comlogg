class ErrorReport < ActiveRecord::Base
  belongs_to :user
  belongs_to :equipment
end
