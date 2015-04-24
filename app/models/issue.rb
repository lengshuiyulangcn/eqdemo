class Issue < ActiveRecord::Base
belongs_to :user
belongs_to :equipment
enum state: {:open=>0, :closed=>2, :proceeding=>1}
end
