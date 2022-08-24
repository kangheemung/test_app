class Post < ApplicationRecord
    def user
        User.find(self.user_id)
    end
end
