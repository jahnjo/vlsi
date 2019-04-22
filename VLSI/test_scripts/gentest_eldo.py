# eldo test generator v69.1
# this work is protected under creative commons v69

import sys
import re

# reading from stdin, so usage is "python gentest_eldo.py < {input file name}"
# input format is:
# {signal name}
# {delay length}
# {inputs in test order, bits from len-1 downto 0, delimited by commas}
# new line to denote end of cases

# for python 2, because 213 computers use python 2.7
try: input = raw_input
except NameError: pass

name = input()
delay = int(input())
cases = input().split(',')

# must have cases
if(len(cases) < 1):
	sys.exit("no cases")

# parse strings and reverse them
for case in range(len(cases)):
	cases[case] = re.sub('[^0-1]', '', cases[case][::-1])

case_size = len(cases[0])
num_cases = len(cases)

# cases must be non-empty and all equal size
for case in cases:
	if(len(case) < 1):
		print('parsed cases: ', cases)
		sys.exit("found empty case")
	if(len(case) != case_size):
		print('parsed cases: ', cases)
		sys.exit("inconsistent case sizes")

# for anyone who is not me or jeremy "the price is right" price the third,
# you may have to change the naming convention because our signals are 
# named like a1, a2, ..., a8 instead of a0, a1, ..., a7 for 8 bits, etc

last_row_count = 0
row_count = 0

# loop for each bit
for bit in range(1, case_size + 1):

	# naming convention is {signal name}{bit number}_tests
	# no numbering for single bit signals
	if(case_size + 1 == 2):
		fp = open(name, 'w')
	else:
		fp = open(name + str(bit), 'w')
	 
		row_count = 0

	# first case always starts at 0n
	fp.write('0n ' + ('2.5V' if cases[0][bit - 1] == '1' else '0V') + '\n')
	row_count += 1

	# loop for all bits after first
	for case_num in range(1, num_cases):

		# store this value and last value
		last_value = cases[case_num - 1][bit - 1]
		curr_value = cases[case_num][bit - 1]

		# keep old value up to delay-1, then use new value at delay
		# redundant for continued signals, but makes row numbers consistent
		fp.write(str((case_num)*delay - 1) + 'n ' + ('2.5V' if last_value == '1' else '0V') + '\n')
		fp.write(str((case_num)*delay) + 'n ' + ('2.5V' if curr_value == '1' else '0V') + '\n')
		row_count += 2

fp.close()
print('row count ' + str(row_count))
