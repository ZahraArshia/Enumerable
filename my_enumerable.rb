# reusable component for enumerable
module MyEnumerable
  def any?
    each do |item|
      return true if yield item
    end
    false
  end

  def all?
    each do |item|
      return false unless yield item
    end
    true
  end

  def filter
    filtered_list = []
    each do |item|
      filtered_list.push(item) if yield item
    end
    filtered_list
  end
end
