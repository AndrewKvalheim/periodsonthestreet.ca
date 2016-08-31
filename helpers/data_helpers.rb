# Helpers for manipulating site data
module DataHelpers
  FRAGMENT_CLASSES = {
    '@' => 'at',
    '.' => 'dot'
  }.freeze

  # Find an item that meets the given conditions.
  def find(enumerable, **conditions)
    enumerable.find do |item|
      conditions.all? do |key, value|
        item.send(key) == value
      end
    end
  end

  # Mark up a fragmented string
  def mark_up_fragments(fragmented_string)
    tags = fragmented_string.fragments.map do |fragment|
      classes = ['string-fragment', FRAGMENT_CLASSES[fragment]].join(' ')

      content_tag(:span, fragment, class: classes)
    end

    tags.join
  end
end
