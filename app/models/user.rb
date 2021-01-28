class User < ActiveRecord::Base
    has_one :treatment
end
