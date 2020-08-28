# your code goes here


class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0    # needed some guidance
    end
    
    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def happy?
        happiness > 7
    end

    def clean? 
        hygiene > 7
    end
    
    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        [friend, self].each {|person| person.happiness += 3} # got confused on this part 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        object = [self, person] #got confused on this part
        
        if topic == "politics"
            object.each do |o| 
                o.happiness -= 2
            end
            first, second = ["partisan", "lobbyist"] #this part needs some guidance
        elsif topic == "weather"
            object.each do |o| 
                o.happiness += 1
            end
            first, second = ["sun", "rain"]
        end
        first ||= "blah"
        second ||= "blah"
        return_string = "blah blah #{first} blah #{second}"
                  
    end
end