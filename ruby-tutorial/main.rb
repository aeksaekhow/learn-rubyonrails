require_relative 'Human'

class Student
  include Human
end

aek = Student.new

aek.talk()
aek.walk