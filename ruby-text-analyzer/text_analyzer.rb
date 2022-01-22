require 'set'
def text_file_analyzer(text_file)
    puts "
    _______        _                          _                    
   |__   __|      | |       /\\               | |                   
      | | _____  _| |_     /  \\   _ __   __ _| |_   _ _______ _ __ 
      | |/ _ \\ \\/ / __|   / /\\ \\ | '_ \\ / _` | | | | |_  / _ \\ '__|
      | |  __/>  <| |_   / ____ \\| | | | (_| | | |_| |/ /  __/ |   
      |_|\\___/_/\\_\\__| /_/    \\_\\_| |_|\\__,_|_|\\__, /___\\___|_|   
      --- --- --- --- --- --- --- --- ---  ---  __/ |             
                                                |___/              
  "
    text = ''
    line_count = 0
    stopwords = %w{the a by on for of are with just but and to the my i has some in it be or will if is as had not } #You can add in the array any other word you want to exclude from the results

    File.open(text_file).each do |line|
        text << line
        line_count+=1
    end
    char_count = text.length
    char_count_nospaces = text.gsub(/\s+/, '').length
    word_count = text.split.length
    sentence_count = text.split(/\.|\?|!/).length
    paragraph_count = text.split(/\n\n/).length
    key_words = text.downcase.scan(/\w+/).reject{|word| stopwords.include?(word)}.to_set #This are words without articles. The same concept search engine uses. For SEOs, you may want to omit the set method, if you are keen on the number of times the same keyword has been used
    key_word_count = key_words.length
    puts "  Below are are the stastics of the text file.\n"
    puts '^*********************************************^'
    puts "#{char_count} characters"
    puts "#{char_count_nospaces} total characters without spaces"
    puts "#{word_count} words"
    puts "#{sentence_count} sentences"
    puts "#{paragraph_count} paragraphs" 
    puts '------------------------------------------------'
    puts 
    puts "#{sentence_count / paragraph_count} sentences per paragraph.(Average)"
    puts
    puts "#{word_count / sentence_count} words per sentence. (Average)"
    puts "#{key_word_count} Unique Keywords availabe in the text. Check keywords.txt to have a look"
    puts "#{((key_word_count.to_f / word_count)*100).round}% of the words are unique and non fluffy"

    puts "*"*50
    # Create a File to save Keywords in write mode
    File.open('keywords.txt', 'w' ) do |f|
        f.write(key_words.sort.join(' '))
    end
    puts "
    ╔═╗┬─┐┌─┐┌─┐┬─┐┌─┐┌┬┐  ╔═╗─┐ ┬┬┌┬┐┬┌┐┌┌─┐
    ╠═╝├┬┘│ ││ ┬├┬┘├─┤│││  ║╣ ┌┴┬┘│ │ │││││ ┬
    ╩  ┴└─└─┘└─┘┴└─┴ ┴┴ ┴  ╚═╝┴ └─┴ ┴ ┴┘└┘└─┘    
    "

end

text_file_analyzer('oliver.txt')