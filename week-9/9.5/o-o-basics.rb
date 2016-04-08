# OO Basics: Student


# I worked on this challenge with Abid Ramay & Robin Soubry
# This challenge took us [#] hours.

=begin
Release 1: Create an Array of Students
Create an array students with 5 Student objects (HINT: You'll need to create the student objects first). Each student should be assigned a first_name, and 5 test scores (scores are between 0 and 100) when it is created. The first Student should be named "Alex" with scores [100,100,100,0,100]. Once you've done this properly, the Release 0 tests should pass.

Release 2: Average Scores
Compute and assign a score average and a letter grade to each student. Letter grades are based on the average (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%).

Release 3: Linear Search
Write a linear_search (Links to an external site.) method that searches the student array for a student's first_name and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1.

Release 4: Binary Search
Write a binary_search (Links to an external site.) method that searches the student array for a student's first_name and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1. You can write a iterative (or recursive, if you are comfortable with that) version of binary_search.
=end

# Pseudocode



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

#p students

  def linear_search(list, name)

    list.each do |individual|
      if (individual.first_name == name)
        return 0
      end
    end
    return -1

  end

  def binary_search(list, name)
    x = []
    list.each do |individual|
      p individual.select { |x| p x }
      # .first_name.bsearch { |x| x == name }
      # x << individual.first_name

    end
    # p x
    # if x.bsearch { |individual| individual == name }
    #   return 0
    # else
    #   return -1
    # end

  end

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

# p students[0].first_name == "Alex"
# p students[0].scores.length == 5
# p students[0].scores[0] == students[0].scores[4]
# p students[0].scores[3] == 0


# # Additional Tests 1:

# p students[0].average == 80
# p students[0].letter_grade == 'B'

# Additional Tests 2:

 #p linear_search(students, "Robin") == 0
# p linear_search(students, "NOT A STUDENT") == -1

#p binary_search(students, "Alex") == 0

students.sort! { |a,b| a.first_name <=> b.first_name }
p students
p students.bsearch{|x| p x }



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