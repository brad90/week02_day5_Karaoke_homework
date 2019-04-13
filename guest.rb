class Guest

attr_reader :name, :age, :song_choice
attr_accessor :wallet

  def initialize(name, age, wallet, song_choice)
    @name = name
    @age = age
    @wallet = wallet
    @song_choice = song_choice
  end

  def return_a_yell
    return "Whoooo"
  end

  def return_a_sad_yell
    return "Awww"
  end



end
