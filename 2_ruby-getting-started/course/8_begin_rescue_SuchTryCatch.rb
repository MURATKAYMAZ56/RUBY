

begin 
    words_from_file("not_exist.txt")
rescue
    puts  "Give me #{TEXT_FILE} to ...."


        begin
        login()
        rescue UnknownUsernameError
            log("`uknown username")
            raise e
        else
            puts "welcome back"
        ensure
            log("user login")
        end