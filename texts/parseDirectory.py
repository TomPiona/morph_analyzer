import sys, re, subprocess, timeit
from os import listdir
from os.path import isfile


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

def main(fomafile):
	# list of all files in directory
	files = [f for f in listdir() if isfile(f)]

	for filename in files:
		# skipping files that aren't txt files, or are already tagged outputs
		if not filename.endswith('.txt') or filename.endswith('_tagged.txt'):
			print('skipping file: {}'.format(filename))
			continue

		# creating output file name
		x = filename.split('.')
		x.insert(1, '_tagged.')
		outputFile = ''.join(x)

		# making sure you want to overwrite files
		if outputFile in files:
			print('You will overwrite {}'.format(outputFile))
			usrinp = input('Do you want to overwrite? y/n:')
			if usrinp == 'n':
				print('Choosing not to overwrite {}'.format(filename))
				continue

		start = timeit.default_timer()

		# breaking the words up so that they can be fed into the analyzer
		allWords = []
		p=re.compile("[\t ]")
		file=open(filename)
		print(filename)
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
		f = open(outputFile, 'w')
		f.write(formatted)
		f.close()

		stop = timeit.default_timer()
		print("{0:.2f} seconds".format(stop - start))

# USAGE;
# python parseDirectory.py ../foma/akk.bin
#         (this script)    (foma file)
main(sys.argv[1])