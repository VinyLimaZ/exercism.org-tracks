class Hamming
  class << self
    def compute(strand_one, strand_two)
      raise ArgumentError if strand_one.size != strand_two.size
      return 0 if strand_one.eql?(strand_two)

      how_much_difference?(strand_one.chars, strand_two.chars)
    end

    def how_much_difference?(strand_one, strand_two)
      size_of_differences(strand_one, strand_two)
    end

    def size_of_differences(strand_one, strand_two)
      strand_one.zip(strand_two).inject(0) do |total_differences, strands|
        different?(strands.first, strands.last) ? total_differences + 1 : total_differences
      end
    end

    def different?(dna_one, dna_two)
      dna_one != dna_two
    end
  end
end
