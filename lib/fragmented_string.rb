# Fragmented string
FragmentedString = Struct.new(:fragments) do
  def to_s
    fragments.join
  end
end
