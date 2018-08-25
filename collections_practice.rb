# your code goes here

def begins_with_r(arr)
  count = 0 
  while count < arr.size 
    if(arr[count].chars.first != "r")
      return false 
    end 
    count += 1 
  end
  return true 
end 

def contain_a(arr)
  arr.select do|word|
    word.include?("a")
  end 
end 
    
def first_wa(arr)
  count = 0 
  while count < arr.size 
    str = arr[count].to_s
    if(str.start_with?("wa"))
      return arr[count]
    end
    count+=1
  end
end

def remove_non_strings(arr)
  arr.delete_if do|elem|
    !elem.is_a?(String)
  end 
end 

def count_elements(array)
  result = []
  uniqueArray = array.uniq
  uniqueArray.each do |element|
    element[:count] = array.count(element)
    result << element
  end
  result
end


def merge_data(data1, data2)
  mergedArray = []
  data1.each do |element|
  	name = element[:first_name]
	data2.each do |n|
	  info = n[name]
  	  mergedArray << element.merge(info)
	end
  end
  mergedArray 
end

def find_cool(arr)
  arr.select do|element|
    element[:temperature] == "cool"
  end 
end 

def organize_schools(schools)
  names = []
  schools.each do |school, location|
  	names << [school, location[:location]]
  end
  
  locations = []
  names.each do |school|
  	locations << school[1]
  end
  locations.uniq!
  result = {}
  locations.each do |location|
  	result[location] = []
  	names.each do |school|
  	  if school.include? location
  	  	result[location] << school[0]
  	  end
  	end
  end
  result
end 


  
  