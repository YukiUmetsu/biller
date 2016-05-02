class TimeEntry < AccountEntry
  belongs_to :customer
  belongs_to :employee

  validates :time, numerically: {greater_than: 0, less_than: 24}

  def cost
    time * 34
  end
end
