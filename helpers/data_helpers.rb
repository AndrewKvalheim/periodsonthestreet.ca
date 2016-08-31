# Helpers for manipulating site data
module DataHelpers
  # Find an item that meets the given conditions.
  def find(enumerable, **conditions)
    enumerable.find do |item|
      conditions.all? do |key, value|
        item.send(key) == value
      end
    end
  end
end
