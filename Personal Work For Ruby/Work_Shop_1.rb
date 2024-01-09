puts "Coming soon~"

def find_missing(sequence)
  consecutive     = sequence.each_cons(2)
  differences     = consecutive.map { |a,b| b - a }
  sequence        = differences.max_by { |n| differences.count(n) }
  missing_between = consecutive.find { |a,b| (b - a) != sequence }
  missing_between.first + sequence

end

def get_numbers_stack(list)
  stack  = [[0, []]]
  output = []
  until stack.empty?
    index, taken = stack.pop
    next output << taken if index == list.size
    stack.unshift [index + 1, taken]
    stack.unshift [index + 1, taken + [list[index]]]
  end
  output
end

def longest_repetition(string)
  max = string
          .chars
          .chunk(&:itself)
          .map(&:last)
          .max_by(&:size)
  max ? [max[0], max.size] : ["", 0]
end

def reverse_alternate(string)
  string.gsub(/[^\s]+/).with_index { |w, idx| idx.even? ? w : w.reverse }
end