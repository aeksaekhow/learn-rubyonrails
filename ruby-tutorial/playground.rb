require 'bcrypt'

class User

  #attr_accessor @firstname, @lastname, @username, @password

  def initialize(firstname, lastname, username, password)
    @firstname = firstname
    @lastname = lastname
    @username = username
    @password = BCrypt::Password.create(password)
  end

  def to_s()
    "First Name = #{@firstname}, Last Name = #{@lastname}"
  end

  def login(username, password)
    loginSuccess = @username == username && @password == password
    if loginSuccess
      puts "You login as #{@username} successfully"
    else
      puts "Fail to login as #{@username}"
    end
  end

end

aek = User.new('Aek', 'Sae-khow', 'aeksaekhow', 'aek-password')
mook = User.new('Chotmanee', 'Thong-aom', 'mookingpotter', 'mook-password')

puts aek
puts mook

aek.login('aeksaekhow', 'aek-password')
mook.login('mookingpotter', 'wrong-password')