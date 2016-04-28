class Dog < ActiveRecord::Base
  belongs_to :owner
  belongs_to :breed

  validates :name, presence: true, length: {minimum: 1}
  validates :breed, presence: true, length: {minimum: 1}
  validates :age, presence: true, length: {minimum: 1}, numericality: { only_integer: true }
end
