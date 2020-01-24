#!/usr/bin/ruby
require 'byebug'
# Based on https://adriann.github.io/programming_problems.html 

class Elementary
  def hello_world
    puts 'Hello, World!'
  end

  def say_hello(first_name, last_name)
    if first_name == "Alice" || first_name == "Bob"
      puts "Hello, #{first_name} #{last_name}!"
    else
      puts "Hello!"
    end
  end

  def add_my_num(n)
    (1..n).inject(:+)
  end

  def add_my_number(n)
    sum = 0

    for i in (1..n) do
      sum += i if div_by_three_or_five?(i)
    end

    sum
  end

  def div_by_three_or_five?(n)
    n % 3 == 0 || n % 5 == 0
  end

  def find_duplicates(array)
    duplicates = array.select { |e| array.count(e) > 1 }
    duplicates.uniq
  end
end
