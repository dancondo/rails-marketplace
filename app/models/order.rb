class Order < ApplicationRecord
  belongs_to :user
  belongs_to :post
  # validates_numericality_of :amount, greater_than_or_equal_to: 0, less_than_or_equal_to: 5
  validate :check_amount
  validates :status, inclusion: ['Pendente', 'Completa', 'Cancelada']

  def check_amount
    return errors.add(:amount, "is too much") if amount > post.amount
  end

end
