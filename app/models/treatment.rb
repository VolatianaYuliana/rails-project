class Treatment < ActiveRecord::Base
    belongs_to :user
    has_one :category
end
