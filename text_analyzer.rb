def text_file_analyzer(text_file)
    puts "
    _______        _                          _                    
   |__   __|      | |       /\\               | |                   
      | | _____  _| |_     /  \\   _ __   __ _| |_   _ _______ _ __ 
      | |/ _ \\ \\/ / __|   / /\\ \\ | '_ \\ / _` | | | | |_  / _ \\ '__|
      | |  __/>  <| |_   / ____ \\| | | | (_| | | |_| |/ /  __/ |   
      |_|\\___/_/\\_\\__| /_/    \\_\\_| |_|\\__,_|_|\\__, /___\\___|_|   
                                                 __/ |             
                                                |___/              
  "
    text = ''
    line_count = 0

    File.open(text_file).each do |line|
        text << line
        line_count+=1
    end
    char_count = text.length
    char_count_nospaces = text.gsub(/\s+/, '').length
    word_count = text.split.length
    sentence_count = text.split(/\.|\?|!/).length
    paragraph_count = text.split(/\n\n/).length

    puts "  Below are are the stastics of the text file.\n"
    puts '^*********************************************^'
    puts "#{char_count} characters"
    puts "#{char_count_nospaces} total characters without spaces"
    puts "#{word_count} words"
    puts "#{sentence_count} sentences"
    puts "#{paragraph_count} paragraphs" 
    puts '------------------------------------------------'
    puts 
    puts "#{sentence_count / paragraph_count} average sentences per paragraph."
    puts
    puts "#{word_count / sentence_count} average words per sentence."
end

text_file_analyzer('oliver.txt')