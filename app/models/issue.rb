class Issue < ActiveRecord::Base
has_one :user
has_one :equipment
end
