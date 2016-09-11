class Hamming

    def initialize
    end #initialize

    def self.compute(arg_one, arg_two)
        raise ArgumentError if arg_one.length != arg_two.length

        distance = 0
        arg_one.length.times do |i|
            if arg_one[i-1] != arg_two[i-1]
                distance += 1
            end
        end
        return distance
    end

end #Hamming
