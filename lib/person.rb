class Person

  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def change_value(change_value)
    if change_value > 10
        10
    elsif change_value < 0
        0
    else
        change_value
    end
  end

  def happiness=(change_happiness)
     @happiness = self.change_value(change_happiness)
  end

  def happiness
    @happiness
  end

  def hygiene=(change_hygiene)
    @hygiene = self.change_value(change_hygiene)
  end

  def hygiene
    @hygiene
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness = @happiness - 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness = @happiness + 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else "blah blah blah blah blah"
    end
  end

end
