# Things I learned in this chapter

We're combining this chapter with the introduction as there's no code in there.

## Key Characteristics of Haskell

### Purely Functional Programming Language
To me, it seems like the most 'math like' programming language I've worked with. Usually I think of a function as
a repeatable subset of your list of instructions for the computer. In functional land, you define a function more like
one would in math. A mapping of inputs (of whatever type) to an output. You also get referential transparency. Basically
every variable is treated as constant. From the book: "If you say that a is 5, you can't say it's something else later
because you just said it was 5. What are you, some kind of liar?" Combine these things and you get a language with no
side effects.

### It's Lazy
Haskell won't compute the result of a calculation until the result is needed (and why should it?).  

### Statically Typed
That part isn't too interesting, but what's cool is type inference. If your declaration is clear enough, Haskell knows
what type your variable is so you don't need to tell it.

## Time for functions!

### Difference between infix and prefix
Infix function ```5 + 5```
The '+' here is a infix function. It takes its arguments on both the left and right side

Prefix ```succ 8```
Here the argument(s) is passed on the right side, like most other programming languages. In Haskell though, you pass two
 or more arguments into a function w/o commas ```min 1 2```

#### Something weird to me
You can call prefix functions as infix if you surround the function name with back ticks:
```
 10 `div` 2
 ```

### If statements (expressions) are weird
In Haskell, every function and expression must return something. As a result, the else part of an if statement is
mandatory. It's important to note here that EVERY EXPRESSION AND FUNCTION RETURNS SOMETHING. That makes an if statement
an expression (weird isn't it)?

## Lists

### They're homogenous
They only store elements of the same type

### Strings are Lists
Just like C, strings are just a list of characters. ```"hello" => ['h','e','l','l','o']```

So for string concatenation, ```"hello" + "world"``` won't work. You'd do ```"hello" ++ "world"```

### ++ and :
++ will return two lists appended together
```
[1,2,3] ++ [4,5,6] --[1,2,3,4,5,6]
```

: puts an element at the beginning of a lists
```
5:[1,2,3,4] --[5,1,2,3,4]
```

### Access Member of List by Index (!!)
List indices start at 0 (duh!) and to access by index, you use the !! operator
```
[1,2,3,4,5,6] !! 3 --4
```

### Comparing Lists
This is cool. You can compare lists by what they contain, element by element
```
[3,2,1] > [2,1,0] --true
```
In the above example, 3 is compared to 2. It evaluates to true, so it keeps going down the list.


There's a bunch of list functions, so I won't go through each one. Just Google them

## Ranges
They're pretty neat

```
[1..10] --[1,2,3,4,5,6,7,8,9,10]
```
Ranges are great ways to create large lists with small snippets of code. The above example shows the most basic range syntax

You can also get ranges with steps. Here we specify the first two members of the list we want and give the last value
```
[2,4..30]
[2,4,6,8,10,12,14,16,18,20,22,24,26,28,30]
```
Haskell is awesome, but it can't read your mind. Steps are limited. There's a lot of cases of this in the book, so find them there.

## List comprehensions
Another strong tie between Haskell and math

Basic example
```
[x*2 | x <- [1..10]]
[2,4,6,8,10]
```
This is very similar to set theory. You have the output function (x * 2) and the input set [1..10].
I think of it as a for each loop in the list range [1..10]. For each x in that range, double it

You can also have a predicate
```
[x | x <- [50..100], x `mod` 7 == 3]
[52,59,66,73,80,87,94]
```
A few things to note here. Don't forget about infix functions (`mod`). A predicate in set theory is analogous to a predicate in math.
For each x in the range 50 to 100, if x % 7 = 3, add it to our list comprehension.

Note that the output function is just that, a function!
```
[if x `mod` 2 == 0 then x + 1 else x | x <- [1..10]]
[1,3,3,5,5,7,7,9,9,11]
```
I'm not sure why I made that example up, but it illustrates a small example of what can go inside our input function

There are a lot more examples of things to do with list comprehensions in the book
