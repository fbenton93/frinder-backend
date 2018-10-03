class User < ApplicationRecord
  has_many :likee_relationships, class_name: "Relationship", foreign_key: 'likee_id'
  has_many :liker_relationships, class_name: "Relationship", foreign_key: 'liker_id'

  has_many :likees, through: :liker_relationships, class_name: "User", foreign_key: 'liker_id'
  has_many :likers, through: :likee_relationships, class_name: "User", foreign_key: 'likee_id'
end
