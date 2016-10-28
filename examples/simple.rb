require 'map-rec'


hash = map_rec({if_: [:and_, :only, :if_]}) do |x|
  x unless x.is_a? Symbol
  x.to_s.gsub('_', '').to_sym
end

p hash
