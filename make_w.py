#!/usr/bin/env python3
import sys
import lief
import getopt


def usage():
	print("Makes ELF .text section writeable")
	print('make_w -i <inputfile> -o <outputfile>')
	sys.exit(2)


def main(argv):
	inputfile = ''
	outputfile = ''
	try:
		opts, args = getopt.getopt(argv, "hi:o:", ["ifile=", "ofile="])
	except getopt.GetoptError:
		usage()
	if len(argv) != 4:
		usage()

	for opt, arg in opts:
		if opt == '-h':
			usage()
		elif opt in ("-i", "--ifile"):
			inputfile = arg
		elif opt in ("-o", "--ofile"):
			outputfile = arg

	bot = lief.parse(inputfile)
	text = bot.get_section(".text")
	seg = bot.segments[0]
	text.flags = text.flags | 0x1
	bot.extend(seg, 0x400-text.size)
	seg.add(lief.ELF.SEGMENT_FLAGS.W)
	text.size = 0x400
	bot.write(outputfile)


if __name__ == "__main__":
	main(sys.argv[1:])
