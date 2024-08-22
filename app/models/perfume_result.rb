class PerfumeResult < ApplicationRecord
  belongs_to :perfume
  validates :content, presence: true
end
