# README

Ruby app for the Uniteus interview take home assignment by Jeff Wood

* Ruby version - 2.3.1p112

* System dependencies
    -rspec 3.6

* How to run the test suite
    - 'bundle exec rspec'

* Deployment instructions
    1. clone repository
    2. run 'bundle install --path .bundle'
    3. run 'ruby main.rb'

* Complexity
    - Checking if an individual number is prime has a complexity of O(√n). There may be a faster way to do it using the AKS primality test (https://en.wikipedia.org/wiki/AKS_primality_test), but that seems out of the scope of this assignment and may not be applicable.

    - Getting the first n prime numbers is O(p(n) * √p(n)), where p(n) is the nth prime. Skipping checking even numbers > 2 decreases the complexity for smaller values of n. There may be faster ways of doing this for large values using the sieve of atkin (https://en.wikipedia.org/wiki/Sieve_of_Atkin) or the sieve of eratosthenes, but once again it's probably out of the scope of this assignment.
