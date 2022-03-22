class CashRegister


    attr_accessor :cash_register, :total, :discount, :items, :last_item

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        self.total = @total += (price * quantity)
        quantity.times{@items.push(title)}
        @last_item = price * quantity
    end

    def apply_discount
        if @discount > 0
            @total *= (100-@discount)
            @total /= 100
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_item
    end

end
