class User < ApplicationRecord
    scope :pending, -> { where(status: 'pending') }
end
