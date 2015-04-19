class User <ActiveRecord::Base
  belongs_to :visits
end

class Visit <ActiveRecord::Base
  has_one :users
  has_one :locations
end

class Location <ActiveRecord::Base
  belongs_to :visits
end
