```

  _______               .             .                   .                             
 '   /      ___  _  .- _/_           /|    , __     ___   |   ,    .  ____    ___  .___ 
     |    .'   `  \,'   |           /  \   |'  `.  /   `  |   |    `     /  .'   ` /   \
     |    |----'  /\    |          /---'\  |    | |    |  |   |    |   ,/   |----' |   '
     /    `.___, /  \   \__/     ,'      \ /    | `.__/| /\__  `---|. /__.' `.___, /    
                                                               \___/  `                          
```

This is a command line tool to analyze a text file provided to the program. The program gives the following outputs when given a valid file.
- Total character count
- Total character count without spaces
- Total number of words
- Total number of sentences
- Total number of paragraphs
- Average sentences per paragraph
- Average words per sentence
- The number of unique words in the file. By default the program does not count words like; a, an the etc.
- The percentage of words that are unique and non fluffy.
- A new file called kewords.txt with unique keywords

### Usage
- As a prerequisite, confirm that you have Ruby 2+ installed.
- Clone the project to your prefered directory/ folder.
- Add the file you need to analyze in the same path where you cloned the project.
- In **text_anlyzer.rb** under the function call replace the file with your own text file.
- Open the command line and run `ruby text_analyzer.rb`


### Backlog
- Making the script executable - Easy
- Making the script receive arguments as options from the command line instead of editing the function call
- Making the script take links as inputs
- Making the script take in multiple links or files as inputs (This is an invaluable feature for SEOs when performing competitor analysis)

### Contribution
Feel free to fork the repo and do your thing. Raise a PR if you find it worth.

##### MIT LICENSE



```

                           ╔╦╗┬ ┬┌─┐┌┐┌┬┌─  ┬ ┬┌─┐┬ ┬
                            ║ ├─┤├─┤│││├┴┐  └┬┘│ ││ │
                            ╩ ┴ ┴┴ ┴┘└┘┴ ┴   ┴ └─┘└─┘

```