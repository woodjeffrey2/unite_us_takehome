require "prime_utils"

describe PrimeUtils do
    
    describe "is_prime?" do

        context "given 0" do
            it "returns false" do
                expect(PrimeUtils.is_prime?(0)).to eql(false)
            end
        end

        context "given 23" do
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
    
end