require_relative '../lib/elementary.rb'
require_relative './spec_helper.rb'
require 'byebug'

RSpec.describe Elementary do
  let(:elementary) { Elementary.new }

  describe '#hello_world' do
    it 'simply says hello' do
      expect { elementary.hello_world() }.to output("Hello, World!\n").to_stdout
    end
  end

  describe '#say_hello' do
    it 'says hello by name to Alice and Bob only' do
      expect { elementary.say_hello('Alice', 'Mae') }.to output("Hello, Alice Mae!\n").to_stdout
    end
  end

  describe '#say_hello' do
    it 'says generic hello to ppl not named Alice or Bob' do
      expect { elementary.say_hello('Sally', 'Mae') }.to output("Hello!\n").to_stdout
    end
  end

  describe '#add_my_num' do
    it 'adds the sum of all numbers from 1 to a given number' do
      expect(elementary.add_my_num(8)).to eq(36)
    end
  end

  describe '#add_my_number' do
    it 'does add_my_num but only when those numbers are divisible by 3 or 5' do
      expect(elementary.add_my_number(17)).to eq(60)
    end
  end

  describe '#find_duplicates' do
    it 'finds the duplicates in an array' do
      array = [0, 1, 2, 2, 3]
      expect(elementary.find_duplicates(array)).to eq([2])
    end
  end
end
