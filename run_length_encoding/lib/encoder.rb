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

    def is_all_as?(string, letter = "a")
        string == letter * get_length(string).to_i
    end

    def is_all_this_letter?(string, letter)
        is_all_as?(string, letter)
    end

    def is_all_first_letter?(string)
        is_all_this_letter?(string, get_first_letter(string))
    end

    def get_length_of_first_run(string)
        first_run = []
        string_to_list(string).each { |letter| 
            if letter == get_first_letter(string)
                first_run << letter 
            else
                break
            end
        }
        first_run.length
    end
end
