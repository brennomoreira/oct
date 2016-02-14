class Product < ActiveRecord::Base
  validates :description, :name, presence: true
  validates :price_in_dollars, numericality: {only_integer: true, greater_than: 0}
  has_many :reviews

  def formatted_price
    pdolla = price_in_dollars.to_f 
    format("%.2f", pdolla)
  end
end
