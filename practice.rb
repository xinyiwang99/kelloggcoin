# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

index = 0
kelloggCoin = { "ben"=> 0, "brian"=> 0, "evan" => 0,"anthony" => 0}
loop do
  if index == blockchain.size
    break
  end
  if kelloggCoin [blockchain[index]["from_user"]] != nil
     kelloggCoin [blockchain[index]["from_user"]] = kelloggCoin [blockchain[index]["from_user"]] - blockchain[index]["amount"]
  end
  if kelloggCoin [blockchain[index]["to_user"]] != nil
     kelloggCoin [blockchain[index]["to_user"]] = kelloggCoin [blockchain[index]["to_user"]] + blockchain[index]["amount"]
  end
 index = index + 1
end
account = ["ben","brian","evan","anthony"]
count = 0
loop do
  if count == account.size
    break
  end
  puts "#{account[count]}'s KelloggCoin balance is #{kelloggCoin[account[count]]}"
  count = count + 1
end 
