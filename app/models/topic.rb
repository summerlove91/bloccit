class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy
<<<<<<< HEAD
=======
  has_many :sponsored_posts, dependent: :destroy
>>>>>>> bloccit-checkpoint22
end
