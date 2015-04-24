class Equipment < ActiveRecord::Base
belongs_to :team
belongs_to :room
has_one :issue
end
