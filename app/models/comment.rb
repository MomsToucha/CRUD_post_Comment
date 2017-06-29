class Comment < ActiveRecord::Base
    # Post에 속해있다.
    belongs_to :Post
end
