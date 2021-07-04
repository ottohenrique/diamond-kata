class Diamond
  def build(input)
    return "A\n" if input == 'A'

    @keys = ('B'..input.upcase).to_a

    out = ['A']

    @keys.each_with_index do |letter, idx|
      out << letter + separator(idx) + letter
    end

    out = centralize(out)

    (out + out.reverse[1..]).join("\n") + "\n"
  end

  private

  def centralize(list)
    list.map do |line|
      line.center(odd_number(@keys.size), '_')
    end
  end

  def separator(n)
    '_' * odd_number(n)
  end

  def odd_number(n)
    ((n + 1) * 2) - 1
  end
end