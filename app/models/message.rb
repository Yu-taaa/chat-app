class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?
  #unless:は、メソッドの返り値がfalseならばバリデーションによる検証を行うという条件
  
  def was_attached?
    self.image.attached?
  end

end
