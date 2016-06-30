class String
  define_method (:coin_combinations) do
    coin_array = []
    values_array = [25, 10, 5, 1]
    amount = [0, self.to_i]
    values_array.each do |coin|
      amount = amount[1].divmod(coin)
      coin_array.push(amount[0])
    end
    return coin_array
  end
end
