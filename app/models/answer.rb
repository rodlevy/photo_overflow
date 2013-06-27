class Answer < ActiveRecord::Base
  attr_accessible :content, :file, :path, :user_id, :question_id
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
  belongs_to :user
  belongs_to :question

  mount_uploader :file, PhotoUploader
end
