class PrimeUtils
    # figure out if num is prime
    def self.is_prime?(num)
        # return false for 0 and 1
        return false if num <= 1
        # check all divisors from 2 to sqrt(num) because math
        Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
        true
    end
end