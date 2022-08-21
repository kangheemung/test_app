class User < ApplicationRecord
    has_secure_password
    def posts
        Post.where(user_id:self.id)
    end
end
