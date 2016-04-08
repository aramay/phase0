# OO Basics: Student


# I worked on this challenge with Abid Ramay & Robin Soubry
# This challenge took us [4] hours.



# Pseudocode
=begin
Input: The class 'Student' takes two arguments: name (string) and scores (array with 5 numbers)
Output: There are 3 different methods:
  * average: Returns the average score for a particular student in the student-list
  * letter_grade: Returns the a score from A-D + F, based on the average score of a student.
  * linear_search: Checks if the student exists in the student-list.
Steps:
  * Step1: Define a class 'Student'
  * Step2: initialize the new class with 3 instance variables:
    - @first_name: Takes value from the 'name' argument
    - @scores: Takes an array of 5 numbers from the scores argument
    - @grade: Is pre-defined with an empy string
  * Step3: Calculate average
    - Sum up all elements in the score-array and divide that value by the number of elements in the array
  * Step4: Define letter grade: Return a letter, based on the average score of the student:
      IF average >= 90 return A
      IF average >= 80 return B
      IF average >= 70 return C
      IF average >= 60 return D
      IF average < 60 return F
  * Step5: Define a linear_search method that checks if a string exists as a first name in the collection of 'students'
      FOR EACH student in students, RETURN 0 IF the name to check matches the firstname of a student ELSE -1.
=end


# Initial Solution
=begin
class Student
  attr_accessor :scores, :first_name

  def initialize(name, scores)   #Use named arguments!
    @first_name = name
    @scores = scores
    @grade = ""
  end

  def average
    @avg = 0
    @scores.each do |x|
      @avg += x
    end
    @avg = @avg / @scores.length
    p @avg
  end

  def letter_grade
    # (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%).
    if (@avg >= 90)
      @grade =  "A"
    elsif (@avg >= 80)
      @grade = "B"
    elsif (@avg >= 70)
      @grade = "C"
    elsif (@avg >= 60)
      @grade = "D"
    else
      @grade = "F"
    end
    p @grade
  end
end

student1 = Student.new("Alex",[100,100,100,0,100])
student2 = Student.new("John",[80,100,70,0,100])
student3 = Student.new("Doe",[100,100,100,0,50])
student4 = Student.new("Abid",[100,100,100,100,100])
student5 = Student.new("Robin",[100,100,100,100,100])

students = [student1, student2, student3, student4, student5]

student1.average
  def linear_search(list, name)
    list.each do |individual|
      if (individual.first_name == name)
        return 0
      else
        return -1
      end
    end
  end
=end

# Refactored Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(name, scores)   #Use named arguments!
    @first_name = name
    @scores = scores
    @grade = ""
  end

  def average
    @avg = 0
    @scores.each do |x|
      @avg += x
    end
    @avg = @avg / @scores.length
    p @avg
  end

  def letter_grade
    # (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%).
    if (@avg >= 90)
      @grade =  "A"
    elsif (@avg >= 80)
      @grade = "B"
    elsif (@avg >= 70)
      @grade = "C"
    elsif (@avg >= 60)
      @grade = "D"
    else
      @grade = "F"
    end
    p @grade
  end
end

student1 = Student.new("Alex",[100,100,100,0,100])
student2 = Student.new("John",[80,100,70,0,100])
student3 = Student.new("Doe",[100,100,100,0,50])
student4 = Student.new("Abid",[100,100,100,100,100])
student5 = Student.new("Robin",[100,100,100,100,100])

students = [student1, student2, student3, student4, student5]

student1.average

  def linear_search(list, name)

    list.each do |individual|
      if (individual.first_name == name)
        return 0
      end
    end
    return -1

  end

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

Additional Tests 2:

 p linear_search(students, "Robin") == 0
p linear_search(students, "NOT A STUDENT") == -1

p binary_search(students, "Alex") == 0



# Reflection

=begin

answer the following questions:

1. What concepts did you review in this challenge?
  # Classes and methods. Working with attr_*, manipulating class objects
2. What is still confusing to you about Ruby?
  # OO concepts like inheritance is still confusing.
3. What are you going to study to get more prepared for Phase 1?
  # Class and Objects


=end