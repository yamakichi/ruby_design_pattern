class AbstractDisplay
  def display
    open
     5.times { print }
    close
  end

  def open
    raise NotImplementedError
  end

  def close
    raise NotImplementedError
  end

  def print
    raise NotImplementedError
  end
end
