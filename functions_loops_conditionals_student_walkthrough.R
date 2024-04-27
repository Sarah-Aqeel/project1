## Functions and Conditionals

### Conditionals

The basic syntax for an if statement goes like this:

```{r}
if (logical statement) {
  do something
} else {
  do something else
}
```

The logical statements should boil down to a boolean; for example:

```{r}

```

We can also add else if statements in the middle if we need more options.

```{r}

```

Neat! We can also nest conditionals just like we do in Python.

```{r}

    
```

Neat! Now, let's look at another core part of R programming - Loops!

### Loops

```{r}

```

We can also do nifty stuff with our vectors, such as apply changes to specific indices of our data.

```{r}

```

We can loop over more than just lists:

```{r}

```

Like Python, we have while loops in R:

```{r}

```

## Functions

When should we use functions?

```{r}
our_function <- function(optional_params){
  # do some stuff
}
```

An example:

```{r}

```

This is all cool.. but it didn't do anything. We need to call the function!

```{r}

```

Notice that in the background here, we are looping over each item in the array, but we never write a for loop! Keep this in mind, since when you pass in a large data set, the changes made by functions aren't quite immediate - the computer does have to go over each item in your data set, and change them one at a time.

A shortcut of sorts is to use the `apply()` function, which operates very similarly to Python's `map()`. Note that `apply` syntax goes as follows: `apply(X, MARGIN, FUN)` where X is the data set to use, MARGIN is specification for rows or columns, and FUN is the function to apply.

```{r}

```

It is common to use `mean`, `median`, `sum`, `min`, or `max` with `apply`, but we can also use our user-defined functions as well. Note that apply() only works with matrices.

```{r}

```

### Homework

1.  Do 5 CodeWars problems in R. Share your solutions here:

    ```{r}

    ```
Count the divisors of a number


divisors <- function(n) {
  count <- 0
  for (i in 1:n) {
    if (n %% i == 0) {
      count <- count + 1
    }
  }
  return(count)
}



Bouncing Balls


bouncingBall <- function(h, bounce, window) {
  # Check conditions
  if (h <= 0 || bounce <= 0 || bounce >= 1 || window >= h) {
    return(-1)
  }
  
  # Initialize count
  count <- 0
  
  # Check if the ball is visible when dropped
  if (h > window) {
    count <- count + 1
  }
  
  # Calculate subsequent bounces until ball is no longer visible
  while (h * bounce > window) {
    h <- h * bounce
    count <- count + 2
  }
  
  return(count)
}




Highest and Lowest

high_and_low <- function(numbers) {
  # Split the input string into a vector of numbers
  nums <- as.numeric(strsplit(numbers, " ")[[1]])
  
  # Find the highest and lowest numbers
  highest <- max(nums)
  lowest <- min(nums)
  
  # Combine the highest and lowest numbers into a single string
  result <- paste(highest, lowest, sep = " ")
  
  return(result)
}





Beginner Series #3 Sum of Numbers

get_sum <- function(a, b) {
  # If a and b are equal, return a or b
  if (a == b) {
    return(a)
  }
  
  # Make sure a is smaller than b
  if (a > b) {
    temp <- a
    a <- b
    b <- temp
  }
  
  # Calculate the sum of integers from a to b
  sum <- 0
  for (i in a:b) {
    sum <- sum + i
  }
  
  return(sum)
}




Square Every Digit

square_digits <- function(num) {
  # Convert the number to a character vector and split it into individual digits
  digits <- strsplit(as.character(num), "")[[1]]
  
  # Square each digit and concatenate the squared digits
  result <- paste0(as.numeric(digits)^2, collapse = "")
  
  # Convert the concatenated string back to an integer
  result <- as.integer(result)
  
  return(result)
}







2.  Create a function that checks an input of type `int` and returns fizz if the number is a multiple of 3, buzz if the number is a multiple of 5, and fizzbuzz if the number is a multiple of 3 and 5.

    ```{r}

    ```

fizzbuzz <- function(num) {
  if (num %% 3 == 0 && num %% 5 == 0) {
    return("fizzbuzz")
  } else if (num %% 3 == 0) {
    return("fizz")
  } else if (num %% 5 == 0) {
    return("buzz")
  } else {
    return(num)
  }
}


# Test the function
print(fizzbuzz(3))    # Output: fizz
print(fizzbuzz(5))    # Output: buzz
print(fizzbuzz(15))   # Output: fizzbuzz
print(fizzbuzz(7))    # Output: 7




3.  **Mario Challenge:** In the classic Super Mario games, Mario ends each level by ascending a flight of stairs and leaping off the top to arrive at the castle at the end. (See [here](https://youtu.be/-avspZlbOWU?t=55) for details). We can imagine that each of the bricks of the stairs is a character X. Create a function that prints out a set of stairs. For example:

    If the function is called marioStairs() and we pass in the value 4, we would expect to see stairs with a length of 4 and a height of 4:

    X

    XX

    XXX

    XXXX

    ```{r}
    # You may feel more comfortable figuring this out in Python first, then translating into R later.
    ```

marioStairs <- function(n) {
  for (i in 1:n) {
    cat(rep("X", i), "\n")
  }
}

marioStairs(4)

#output
X 
XX 
XXX 
XXXX 