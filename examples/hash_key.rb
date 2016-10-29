require 'map-rec'



REPLACED = 'REPLACED'


h1 = { foo: 'Hello', bar: 'world!' }

h2 = map_rec(h1, hash_key: false) do
  REPLACED
end

h1[:foo] = REPLACED
h1[:bar] = REPLACED

raise unless h1 == h2
