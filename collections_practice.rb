# your code goes here
def begins_with_r(list)
  list.all? { |e| e.start_with?('r') }
end

def contain_a(list)
  list.select { |e| e.include?('a') }
end

def first_wa(list)
  list.find {|e| String(e).start_with?('wa')}
end

def remove_non_strings(list)
  list.grep(String)
end

def count_elements(list)
  all_uniq = list.uniq
  all_uniq.map do |uniq|
    count = list.count {|el| el == uniq}
    uniq.merge({count: count})
  end
end

def merge_data(keys, data)
  # TODO: Totally not the way to do this
  data.first.map do |name, attributes|
    attributes.merge({first_name: name})
  end
end

def find_cool(potential_cool_list)
  potential_cool_list.select do |person|
    person[:temperature] == "cool"
  end
end

def organize_schools(schools)
  result = Hash.new {|h,k| h[k] = []}
  schools.reduce(result) do |map, (school, attrib)|
    location = attrib.fetch(:location)
    map[location] << school
    map
  end
end
