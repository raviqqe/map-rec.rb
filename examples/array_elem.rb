require 'map-rec'



a1 = ['Hello', 'world!']

a2 = map_rec(a1, array_elem: false) do
  "REPLACED"
end

raise unless a1 == a2
