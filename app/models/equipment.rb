class Equipment < ActiveRecord::Base
  has_many :error_reports
end
