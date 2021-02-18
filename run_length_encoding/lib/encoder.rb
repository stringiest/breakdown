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
        # alternative option is string.chars
    end

    def is_all_as?(string, letter = "a")
        string == letter * get_length(string).to_i
        # alternatively, string_to_list(string).uniq == ["a"]
        # or iterating over a list:
        # letters = string_to_list(string)
        # letters.each do |letter|
        # if letter != "a"
        # return false
        # end
        # end
        # return true
    end

    def is_all_this_letter?(string, letter) # pass in my_letter here rather than letter
        is_all_as?(string, letter)
        # or:
        # letters = string_to_list(string)
        # letters.each do |letter|
        # if letter != my_letter
        # return false
        # end
        # end
        # return true 
        # then can refactor previous method to use this one
    end

    def is_all_first_letter?(string)
        is_all_this_letter?(string, get_first_letter(string))
    end

    def get_length_of_first_run(string)
        get_first_run(string).length
        # alternatively:
        # letters = string_to_list(string)
        # count = 0
        # letters.each do |letter|
        # if letter != get_first_letter(string)
        # return count
        # end
        # count += 1
        # end
        # return count
        # end
    end

    def get_first_run(string)
        first_run = ""
        string_to_list(string).each { |letter| 
            if letter == get_first_letter(string)
                first_run << letter 
            else
                break
            end
        }
        first_run
    end

    def get_after_first_run(string)
        string.delete_prefix(get_first_run(string))
    end

    def get_all_runs(string)
        all_runs = []
        while string.length > 0 do
            all_runs << get_first_run(string)
            string = get_after_first_run(string)
        end
        all_runs
    end

    def get_lengths_of_all_runs(string)
        get_all_runs(string).map! do |str|
            get_length(str)
        end
    end

    def get_first_letter_and_length_of_runs(string)
        get_all_runs(string).map! do |str|
            get_first_letter_and_length(str)
        end 
    end
end
