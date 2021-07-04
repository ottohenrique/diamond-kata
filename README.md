Diamond Kata
============

The Diamond Kata is a TDD exercise. We have already provided a small collection of unit tests that
correctly assert the expected behaviour of the application.

The task is to get all the tests passing and have the code generate the expected string for a given
single character input.

Resolution
----------

This exercices asks for a 'odd number generator', where each number is the next row of a pyramid.

I tried a simple resolution where the result for the first row is fixed ('A\n') and we calculates
each iteration based on index of the letter in the range 'B'..x, where 'x' is the given input.

The easy part of the challenge is once I resolved the pyramid ('A'..'J', by example) the second part is
just a mirror of the result without the last element.


Examples
--------

    input:
      A
    output:
      A

    input:
      B
    output:
      _A_
      B_B
      _A_

    input:
      E
    output:
      ____A____
      ___B_B___
      __C___C__
      _D_____D_
      E_______E
      _D_____D_
      __C___C__
      ___B_B___
      ____A____

Usage
-----

To run the tests you need to do the following:

1. Ensure you are using a compatible ruby version (>= 2.3.0)
2. `bundle install`
3. `bin/rspec`
