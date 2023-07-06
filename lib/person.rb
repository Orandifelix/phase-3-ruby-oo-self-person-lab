# your code goes here

class Person  
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account =25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        @happiness = value.clamp(0,10)
    end

        def hygiene=(value)
        @hygiene = value.clamp(0,10)
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7  
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
    if friend.class == Person
        [self, friend].each do |person|
        person.happiness += 3
        end
    end
    "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    #      def call_friend(friend)
    #     self.happiness += 3
    #     friend.happiness += 3
    #     "Hi #{friend.name}! It's #{self.name}. How are you?"
    # end

        def start_conversation(friend, topic)
        if topic == "politics"
            [self, friend].each do |person|
                person.happiness -= 2
            end
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [self, friend].each do |person|
                person.happiness += 1
            end
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
