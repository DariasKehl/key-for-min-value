# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
keys = []
values = []
def key_for_min_value(name_hash)
    if name_hash.length == 0
        return nil
      else
        array = []
        name_hash.each do |key, value|
          array << value
        end
        min_num = array[0]
        array.each do |value|
          min_num = value if value < min_num
        end
        name_hash.each do |key, value|
          if min_num == value
            return key
          end
        end
      end
end


=begin
ikea = {:chair => 25, :table => 85, :mattress => 450}
key_for_min_value(ikea)
# => :chair

veggies = {"apple" => -45, "banana" => -44.5, "carrot" => -44.9}
key_for_min_value(veggies)
# => "apple"
=end
