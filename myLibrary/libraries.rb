# require_relative '../../myLibrary/libraries'

# ruby2.3ではsumがない
class Array
  def sum
    self.inject(0, :+)
  end
end
