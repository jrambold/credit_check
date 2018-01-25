cardnum = ARGV[0]
cardnum = cardnum.split("").map { |cardnum| cardnum.to_i }

sum = 0
digits = cardnum.length
odd_check = digits % 2

for i in 0..(digits - 2) do
    if i%2 == odd_check
      cardnum[i] = cardnum[i] * 2
    end
    if cardnum[i] > 9
      cardnum[i] = cardnum[i] - 9
    end
    sum = sum + cardnum[i]
end
sum *= 9
valid = (sum%10 == cardnum.last)

if valid
  puts "The number is valid!"
else
  puts "The number is invalid!"
end
