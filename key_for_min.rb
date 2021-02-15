# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    return nil if name_hash.empty?

    found_key = ""
    curr_value = 0

    name_hash.each_with_index do |(key, value), i|
        if i == 0
            curr_value = value
        end
        
        if value < curr_value
            curr_value = value
        end
    end

    found_key = name_hash.index(curr_value)

    return found_key
end