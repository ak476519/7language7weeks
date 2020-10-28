file = 'cashless_payment_china.txt'
File.readlines(file).each do |line|
  if line.index(/[\W]apps?/) != nil
    puts line
  end
end
