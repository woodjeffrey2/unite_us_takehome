require "prime_utils"

describe PrimeUtils do
    
    describe "is_prime?" do

        context "given 0" do
            it "returns false" do
                expect(PrimeUtils.is_prime?(0)).to eql(false)
            end
        end

        context "given 773" do
            it "returns true" do
                expect(PrimeUtils.is_prime?(23)).to eql(true)
            end
        end

        context "given 9" do
            it "returns false" do
                expect(PrimeUtils.is_prime?(9)).to eql(false)
            end
        end
    end

    describe "first_primes" do
        
        context "given 0" do
            it "returns []" do
                expect(PrimeUtils.first_primes(0)).to eql([])
            end
        end

        context "given 5" do
            it "returns [2,3,5,7,11]" do
                expect(PrimeUtils.first_primes(5)).to eql([2,3,5,7,11])
            end
        end
        
        context "given 15" do
            it "returns [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]" do
                expect(PrimeUtils.first_primes(15)).to eql([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47])
            end
        end
    end

    describe "print_multiplication_table" do
        
        context "given []" do
            it "returns 'No numbers specified'" do
                expect{PrimeUtils.print_multiplication_table([])}.to output("No numbers specified\n").to_stdout
            end
        end

        context "given [1,2,3]" do
            it "returns '  1 2 3 \n1 1 2 3 \n2 2 4 6 \n3 3 6 9 \n'" do
                expect{PrimeUtils.print_multiplication_table([1,2,3])}.to output("  1 2 3 \n1 1 2 3 \n2 2 4 6 \n3 3 6 9 \n").to_stdout
            end
        end
    end
    
end