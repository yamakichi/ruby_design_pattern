class Display
  def initialize(imp)
    @imp = imp
  end

  def open
    @imp.raw_open
  end

  def print
    @imp.raw_print
  end

  def close
    @imp.raw_close
  end

  def display
    open
    print
    close
  end
end
