class CreditCheck
  def validate(num)
    split_double = split_multiplier(num)
    if split_double.sum % 10 == 0
      puts "valid"

    else
      puts "invalid"
    end
  end

  def split_multiplier(card_number)
    card_number.split("").map.with_index do |num, index|

      num = num.to_i
      doubled_even(num, index)
    end
  end

  def doubled_even(num, index)
    if index.even?
      doubled = double(num).digits.sum

    elsif index.odd?
      num
    end
  end

  def double(num)
    num * 2
  end
end


valid_num_1 = "5541808923795240"
valid_num_2 = "4024007136512380"
valid_num_3 = "6011797668867828"
invalid_num_1 = "5541801923795240"
invalid_num_2 = "4024007106512380"
invalid_num_3 = "6011797668868728"

CreditCheck.new.validate(valid_num_1)
CreditCheck.new.validate(valid_num_2)
CreditCheck.new.validate(valid_num_3)
CreditCheck.new.validate(invalid_num_1)
CreditCheck.new.validate(invalid_num_2)
CreditCheck.new.validate(invalid_num_3)
