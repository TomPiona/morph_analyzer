import sys, re, subprocess, timeit

def format_text(txt):
	"""remove repeats and fix spacing"""

	# splitting the text into blocks of similar words
	word_splt = re.split('[\n][\n,\t]+', txt)
	# split within the tags
	different_tags = [x.split('\n') for x in word_splt]
	# use set to remove repeats
	sets = [set(each_tag) for each_tag in different_tags]
	# making it one string again
	return '\n\n'.join(['\n'.join(each) for each in sets])


def main(readfile, fomafile, writefile):
	start = timeit.default_timer()

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
	output_txt = output.decode("utf-8")
	formatted = format_text(output_txt)

	# writing into a new file
	f = open(writefile, 'w')
	f.write(formatted)
	f.close()

	stop = timeit.default_timer()
	print("{0:.2f} seconds".format(stop - start))

# USAGE;
# python parseRonnie.py texts/test.txt foma/akk.bin returntext.txt
#       (this script) (text to read in) (foma file) (where to write to)
main(sys.argv[1], sys.argv[2], sys.argv[3])