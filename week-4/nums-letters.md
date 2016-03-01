#Release 1: Summarize

1. What does puts do?
    puts simply writes onto the screen whatever comes after it.

    `puts 3`
2. What is an integer? What is a float?
    Interger:

    Integers are a special group or category of numbers that:

    Consist of the set of numbers: 
    >{…-4, -3, -2, -1, 0, 1, 2, 3, 4…}
    Are all positive and negative whole numbers, which do not include any fractional or decimal part.

    Floats:
    A float is a number with fractional parts, so basically a decimal 
    >(e.g. 1.00, 3.21).
3.  What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

    The difference between float and integers can be described as to how we use _Many_ and _Much_

    e.g. We say, how _many_ children do you have ? becuase we can quanitfy, we don't say how _much_ children do u've ?

    Similarly, we use _much_ when we cannot quantify. 
    e.g. How _much_ water is in this glass. 

#Release 2: Try it!

    In section 2.5, Pine provides two great mini-challenges.

    Mini-challenges

    write a program that calculates and outputs the:

    Hours in a year
https://github.com/kasper341/phase0/blob/master/week-4/hours-in-year.rb

    Minutes in a decade
https://github.com/kasper341/phase0/blob/master/week-4/minutes-in-decade.rb

#Release 5: Exercises
    
1. Defining Variables
    https://github.com/kasper341/phase0/blob/master/week-4/defining-variables.rb

2. Simple String Methods
    https://github.com/kasper341/phase0/blob/master/week-4/simple-string.rb
    
3. Local Variables and Basic Arithmetical Operations
    https://github.com/kasper341/phase0/blob/master/week-4/basic-math.rb

# Release 7: Reflect

1. How does Ruby handle addition, subtraction, multiplication, and division of numbers?
2. What is the difference between integers and floats?
    Interger:

    Integers are a special group or category of numbers that:

    Consist of the set of numbers: 
    >{…-4, -3, -2, -1, 0, 1, 2, 3, 4…}
    Are all positive and negative whole numbers, which do not include any fractional or decimal part.

    Floats:
    A float is a number with fractional parts, so basically a decimal 
    >(e.g. 1.00, 3.21).
3. What is the difference between integer and float division?
    
    **Interger division:**

    You first work out how many 4s will fit inside 9:

    ![4.2.1.png]
    (imgs/4.2.1.png)

    ```irb(main):001:0> 9 / 4
=> 2```

    This means, we can only divide 9 in two equals groups, remiaining is chopped off.
    
    **Float division:**

    It rounds to next possible value. 

    ```irb(main):002:0> 9.0 / 4.0
=> 2.25```


4. What are strings? Why and when would you use them?
    A string is a sequence of characters. 

    ```irb(main):007:0> puts "hello, world"
hello, world```
    
    We can represent punctuation, special charaacters that we cannot reprsent with anyother data type. 

5. What are local variables? Why and when would you use them?
    
    Local variables are limited in scope, such as method definition.
    Local can be re-used in different parts of the program.
6. How was this challenge? Did you get a good review of some of the basics?
    
    This was good re-fresher on arithematic division , strings. 
    I have not used IRB before, it is different way of doing things that i've seen before.