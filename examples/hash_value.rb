require 'map-rec'



REPLACED = :REPLACED


hash = map_rec({ foo: 'Hello', bar: 'world!' }, hash_value: false) do
  REPLACED
end

raise unless hash == { REPLACED: 'world!' }
