class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end

# UserƒNƒ‰ƒX‚Ì“®ìÀŒ±
def user_example
  user = User.new(name: "Michael Hartl", email: "mhartl@example.com")
  user.formatted_email
end


# ‰‰K
# 1.
def string_shuffle(s)
  s.split('').shuffle.join
end

# 2.
class String
  def shuffle
    self.split('').shuffle.join
  end
end

# 3.
def hash_test

  person1 = { first: "taro", last: "yamada" }
  person2 = { first: "hanaco", last: "yamada" }
  person3 = { first: "jiro", last: "yamada" }

  params = { father: person1, mother: person2, child: person3 }

  params.each do |key, value|
    puts "#{key.inspect} "
    value.each do |sub_key, sub_value|
      puts "  #{sub_key.inspect} #{sub_value.inspect}"
    end
  end

end