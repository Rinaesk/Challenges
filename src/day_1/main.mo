import Debug "mo:base/Debug";
import Array "mo:base/Array";

actor {
   
  // Challenge 1 : Write a function add that takes two natural numbers n and m and returns the sum.
 public func sum(number1 : Nat, number2 : Nat) : async Nat {
  return(number1 + number2);
};

  // Challenge 2 : Write a function square that takes a natural number n and returns the area of a square of length n.
public func square(number1 : Nat) : async Nat {
  return(number1 * number1);
};

// Challenge 3 : Write a function days_to_second that takes a number of days n and returns the number of seconds.
public func days2sec(n : Nat) : async Nat {
  return(n * 86400);
};

// Challenge 4 : Write two functions increment_counter & clear_counter . 
  // increment_counter returns the incremented value of counter by n.

  var counter : Nat = 0;

  public func inc(n: Nat) : async Nat {
  counter := counter + n;
  return(counter);
};

  // clear_counter sets the value of counter to 0. 
public func clear_counter() : async Nat {
  counter := 0;
  return(counter);
};

/*Challenge 5 : Write a function divide that takes two natural numbers n and m 
and returns a boolean indicating if n divides m.

modulo % --> Rest bei Division gleich Null.*/

public func divide(n : Nat, m : Nat) : async Bool {
  if(n % m == 0) {
    return(true);
  } else {
    return(false);
  };

};

/* Challenge 6 : Write a function is_even that takes a natural number n 
and returns a boolean indicating if n is even.*/

public func is_even(n : Nat) : async Bool {
  if(n % 2 == 0) {
    return(true);
  } else {
    return(false);
  };
};

/* Challenge 7 : Write a function sum_of_array that takes an array of natural numbers 
and returns the sum. This function will returns 0 if the array is empty.
*/

public func sum_of_array(a : [Nat]) : async Nat {
  var counter = 0; // initialise counter
  for(value in a.vals()) {  // go through array
    counter := value + counter;
  };
  if(counter == 0){
    return(0);
  } else{
    return(counter);
  }
};

/* Challenge 8 : Write a function maximum that takes an array of natural numbers and returns 
the maximum value in the array. This function will return 0 if the array is empty.*/

public func max(a : [Nat]) : async Nat {
  var n : Nat = 0;
  for (val in a.vals()){
    if(val > n) {
      n := val
    };
  };
  return (n);
};


/* Challenge 9 : Write a function remove_from_array that takes 2 parameters : 
an array of natural numbers and a natural number n and returns a new array 
where all occurences of n have been removed (order should remain unchanged).*/

public func remove_from_array(a : [Nat], n : Nat, m : Nat) :async [Nat] {
    let f = func(n :Nat) : Bool{
        if(n == m){
            return false
        } else {
            return true
        }
    };
    return(Array.filter(a,f));
};

/* Challenge 10 : Watch this video on selection sort.
Implement a function selection_sort that takes an array of natural numbers 
and returns the sorted array .*/



};