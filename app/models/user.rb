class User < ActiveRecord::Base
    has_secure_password
  
    def check_balance
        "You have #{self.balance} available for your account"
    end

    def withdraw_money(amount)
       self.balance -= amount unless self.balance < amount
       if nil
        "You have no money available"
       end
    end

    def deposit_money(amount)
        self.balance += amount
    end
binding.pry
end
