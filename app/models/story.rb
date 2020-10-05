class Story < ApplicationRecord
    belongs_to :user

    delegate :name, to: :user, prefix: true
end
