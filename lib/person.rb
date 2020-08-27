require 'pry'
class Person
    attr_reader :name, :happiness, :salary
    attr_writer :balance, :happiness 
    attr_accessor :bank_account, :hygiene

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
        
    end


    def bank_account=(balance)
        @balance = balance 
    end

    def happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
        @happiness
    end
    
    def hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end

    def happy?
       happiness > 7 
    end

    def clean?
       hygiene > 7
    end

    def get_paid(salary)
        @bank_account = self.bank_account += salary
        #if salary == 100
            "all about the benjamins"
        end

        def take_bath
            self.hygiene += 4
            "♪ Rub-a-dub just relaxing in the tub ♫"
            #binding.pry
        end

        def work_out
            self.hygiene -= 3
            self.happiness += 2
            "♪ another one bites the dust ♫"
        end

        def call_friend(caller)
            self.happiness += 3
            caller.happiness += 3
            "Hi #{caller.name}! It's #{self.name}. How are you?"
            #binding.pry
        end

        def start_conversation(caller, topic)
            if topic == "politics"
                self.happiness -= 2
                caller.happiness -=2
                "blah blah partisan blah lobbyist"
            elsif topic == "weather"
            self.happiness += 1
            caller.happiness += 1
            "blah blah sun blah rain"
            else 
                "blah blah blah blah blah"
            #binding.pry
            end

        end


end

#binding.pry
