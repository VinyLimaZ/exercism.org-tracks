class Hamming
  class << self
    def compute(strand_one, strand_two)
      how_much_difference(strand_one, strand_two)
    end

    def how_much_difference(strand_one, strand_two)
      raise ArgumentError unless strand_one.size == strand_two.size
      return 0 if strand_one.eql?(strand_two)
      compare(strand_one, strand_two)
    end

    def compare(strand_one, strand_two)
      differences = 0
      strand_one.size.times do |i|
        differences += 1 unless strand_one[i] == strand_two[i]
      end
      differences
    end
  end

  module BookKeeping
    VERSION = 3
  end
end

