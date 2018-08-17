def begins_with_r(tools)
	tools.all? do |r|
		r[0] == "r"
	end
end

def contain_a(array)
	array.select do |a|
		a.include?("a")
	end
end

def first_wa(array)
	array.find do |wa|
		wa[0] == "w" && wa[1] == "a"
	end
end

def remove_non_strings(array)
	array.select do |string|
		string.is_a? String
	end
end

def count_elements(array)
	array.each do |k|
    k[:count] = 0
    value = k[:name]
    array.each do |hash|
      if hash[:name] == value
        k[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  complete = []
  keys.each do |name|
    first = name[:first_name]
    values.each do |data|
      if data[first]
        merged_data = data[first]
        merged_data[:first_name] = first
        complete << merged_data
      end
    end
  end
  complete
end

def find_cool(array)
	array.select do |cool|
		cool[:temperature] == ("cool")
	end
end

def organize_schools(schools)
	schools_list = {}
	schools.each do |school, location|
		city = location[:location]
		if schools_list[city]
			schools_list[city] << school
		else
			schools_list[city] = []
			schools_list[city] << school
		end
	end
	schools_list
end