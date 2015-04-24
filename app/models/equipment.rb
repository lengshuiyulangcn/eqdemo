class Equipment < ActiveRecord::Base
belongs_to :team
belongs_to :room
belongs_to :issue
end
