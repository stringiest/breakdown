class Encoder
    def get_length(string)
        string.length
    end

    def get_first_letter(string)
        string[0]
    end

    def get_first_letter_and_length(string)
         get_first_letter(string) + get_length(string).to_s
    end

    def string_to_list(string)
        string.split("")
    end

    def is_all_as?(string)
        if string == "a" * get_length(string).to_i
            true
        else
            false
        end
    end
end
