class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  # dependent: :destroy ，可保证删除文章的时候评论也会删除，节省数据库空间；
  validates :title, presence: true,
                    length: { minimum: 5}
end
