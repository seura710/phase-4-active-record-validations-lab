class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, { :length => {:minimum => 250}}
    validates :summary, { :length => {:maximum => 250}}
    validates :category, inclusion: ["Fiction", "Non-Fiction"]

    def category_type
        # if category !== "Non-Fiction" || "Fiction"
        #     errors.add(:category, "Error!")
        # end
    end
end
