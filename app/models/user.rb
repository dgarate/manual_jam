class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: {case_sensitive: false}

    has_many :stories
    delegate :count, to: :stories, prefix: true

    def story_name
        stories.name
    end
     
    # def average_weight
    #     pet_histories.average(:weight)
    # end

end

