# morph_analyzer

Akkadian Morphological Analyzer

Program by David Bamman and Adam Anderson

What it takes to run this:

1. Install foma

    * Instructions here: https://blogs.cornell.edu/finitestatecompling/2016/08/24/installing-foma/
    
2. cd into FOMA directory

3. Run these commands

    1. foma (starting program)
    
    2. source akkadian.foma (compiling the rules)
    
    3. save stack akk.bin (saves rules into a comparable file)
    
    4. control-c (to exit program) 
    
4. Time to test! Run this: 

    * echo "ší-ma-am" | flookup akk.bin 
    
    * you should get an output that looks like this --> ší-ma-am	šīm+N+Masc+Sg+Acc
    
5. cd back to the parent directory, time to run on whole text files

6. Run this: python parseRonnie.py texts/test.txt foma/akk.bin writefile.txt

    * This will output everything into the file writefile.txt

Everytime you make changes to the lex files, you should recreate the akk.bin file (step 3)

Things to do: 

* Fix formatting of output of parseRonnie.py

* Make a script for parsing all of the files in a directory
