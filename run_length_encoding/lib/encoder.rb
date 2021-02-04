class Encoder
    def get_length(string)
        string.length
    end

    def get_first_letter(string)
        string[0]
    end

    def get_first_letter_and_length(string)
        length = string.length.to_s
        first_letter = string[0]
        return  first_letter + length
    end
end
