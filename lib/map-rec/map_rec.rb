def map_rec object, array_elem=true, hash_key=true, hash_value=true, &block
  case object
  when Array
    object.map do |elem|
      array_elem ? map_rec(elem) : elem
    end
  when Hash
    object.map do |key, value|
      [(hash_key ? map_rec(key) : key), (hash_value ? map_rec(value) : value)]
    end.to_h
  else
    block.call object
  end
end
