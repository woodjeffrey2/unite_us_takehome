class PrimeUtils
    # figure out if num is prime
    def self.is_prime?(num)
        # return false for 0 and 1
        return false if num <= 1
        # check all divisors from 2 to sqrt(num) because math
        Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
        true
    end

    # return the first x prime numbers
    def self.first_primes(num)
        if num <= 0
            []
        else
            # if num > 0, 2 will always be the first prime
            primes = [2]

            # start checking at 3 so we can skip all subsequent evens easily
            i = 3
            while primes.count < num do
                if is_prime?(i)
                    primes.push(i)
                end
                # skip checking all even numbers greater than 2 for efficiency
                i += 2
            end
            primes
        end
    end
end