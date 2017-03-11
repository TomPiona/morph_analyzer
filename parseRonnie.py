import sys,re, subprocess

def main(readfile, fomafile, writefile):
	
	# breaking the words up so that they can be fed into the analyzer
	allWords = []
	p=re.compile("[\t ]")
	file=open(readfile)
	for line in file:
		line=re.sub("[\*\[\]/]", "", line)
		text=p.split(line.rstrip())
		for word in text:
			allWords.append(word)
	
	# running through the foma file thing
	together = '\n'.join(allWords)
	output = subprocess.Popen('echo "'+ together +'" | flookup ' + fomafile, shell=True, stdout=subprocess.PIPE).stdout.read()
	
	# writing into a new file
	f = open(writefile, 'w')
	f.write(output.decode("utf-8"))
	f.close()

# USAGE;
# python parseRonnie.py texts/test.txt foma/akk.bin returntext.txt
#       (this script) (text to read in) (foma file) (where to write to)
main(sys.argv[1], sys.argv[2], sys.argv[3])