import Nat8 "mo:base/Nat8";

actor{

/* Challenge 1 : Write a function nat_to_nat8 that converts a Nat n to a Nat8. 
Make sure that your function never trap.*/

public func nat2nat8(n : Nat) : async Nat8 {
        return(Nat8.fromNat(n));
};

/* Challenge 2 : Write a function max_number_with_n_bits that takes a Nat n 
and returns the maximum number that can be represented with only n-bits.
    8 bits = 1 byte (0-255) = (00000000 - 11111111) */

public func max_number_with_n_bits ( b : Nat) : async Nat {
 return(2 ** b) -1; 
};


/* Challenge 3 : Write a function decimal_to_bits that takes a Nat n and 
returns a Text corresponding to the binary representation of this number. 
Note : decimal_to_bits(255) -> "11111111".
- Divide n by 2 with modulus --> store in remainder in array
- Divide the number by 2 through division operator
- repeat step 2 until n> 0
*/

public func dec2bit (n : Nat) : async Text { 
        var result : Text = " ";
        for(i in Iter.range(0, n)){
            result.Text.concat((n % 2) : Text, result : Text);
            n := n/2;
        };
    return(result);
    };

/* Challenge 4 : Write a function capitalize_character that takes a Char c 
and returns the capitalized version of it.*/

 public func capitalize_character( c : Char) : async Char {
        var tmp : Nat32 = Char.toNat32(c);
        if( tmp > 122 or tmp > 97 ) {
            return c;
        };
        tmp -= 32;
        var out : Char = Char.fromNat32(tmp);
        return(out);
    };

/* Challenge 5 : Write a function capitalize_text that takes a Text t 
and returns the capitalized version of it.*/

// Help from Seb via Discord...

 public func capitalize_text( t : Text) async Text{
        for(c in t.chars(){
            var uc : Nat32 = Char.toNat32(c);
            if( uc > 122 or tmp > 97 ) {
            return (Text.fromChar(c));;
        } else {
            let uvc = uc -32;
            let char_capital = Char.fromNat32(uvc);
            return(Text.fromChar(char_Capital));
        };
    

    }


/* Challenge 6 : Write a function is_inside that takes two arguments : 
a Text t and a Char c and returns a Bool indicating if c is inside t .*/


/* Challenge 7 : Write a function trim_whitespace that takes a text t 
and returns the trimmed version of t. Note : Trim means removing any leading 
and trailing spaces from the text : trim_whitespace(" Hello ") -> "Hello".*/


/* Challenge 8 : Write a function duplicated_character that takes a Text t 
and returns the first duplicated character in t converted to Text. 
Note : The function should return the whole Text if there is no duplicate 
character : duplicated_character("Hello") -> "l" & duplicated_character("World") -> "World".*/


/* Challenge 9 : Write a function size_in_bytes that takes Text t and returns the 
number of bytes this text takes when encoded as UTF-8.*/


/* Challenge 10 : Watch this video on bubble sort.
Implement a function bubble_sort that takes an array of natural 
numbers and returns the sorted array .*/


};