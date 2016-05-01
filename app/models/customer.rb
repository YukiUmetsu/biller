class Customer < Account
  has_many :time_entries
  has_many :projects
end
