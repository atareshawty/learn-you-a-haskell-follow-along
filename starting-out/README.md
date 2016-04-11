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
