def sort_array_asc(int_array)
  int_array.sort
end

def sort_array_desc(int_array)
  int_array.sort {|a,b| b <=> a }
end

def sort_array_char_count(char_array)
  char_array.sort {|a,b| a.length <=> b.length}
end

def swap_elements(array)
  second_element = array[1]
  third_element = array[2]
  array[1] = third_element
  array[2] = second_element
  return array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.collect do |word|
    word.delete(word[2]).insert(2, '$')
  end
end

def find_a(array)
  array.select {|word| word.start_with?("a")}
end

def sum_array(int_array)
  total = 0
  int_array.each do |number|
    total += number
  end
  return total
end

def add_s(word_array)
  return_array = []
  word_array.each do |word|
    if word == word_array[1]
      return_array << word
    else
      return_array << word.insert(-1, 's')
    end
  end
  return return_array
end
