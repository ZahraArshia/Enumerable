module MyEnumerable
  def any?
    each { |item|
      return true if yield item
    }
    false
  end

  def all?
    each { |item|
      return false unless yield item
    }
    true
  end

  def filter
    filtered_list = []
    each { |item|
      filtered_list.push(item) if yield item
    }
    return filtered_list
  end
end
