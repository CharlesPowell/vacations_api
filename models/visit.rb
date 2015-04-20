class User <ActiveRecord::Base
    has_many(:visits)
    has_many(:locations, :through => :visits)
end

class Visit <ActiveRecord::Base
  belongs_to (:location)
  belongs_to (:user)
end

class Location <ActiveRecord::Base
  has_many(:visits)
  has_many(:locations, :through => :visits)
end
