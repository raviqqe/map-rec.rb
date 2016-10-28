def map_rec(object, array_elem: true, hash_key: true, hash_value: true, &block)
  map = lambda { |o| map_rec(o, &block) }

  case object
  when Array
    object.map do |elem|
      array_elem ? map.call(elem) : elem
    end
  when Hash
    object.map do |key, value|
      [(hash_key ? map.call(key) : key), (hash_value ? map.call(value) : value)]
    end.to_h
  else
    block.call object
  end
end
