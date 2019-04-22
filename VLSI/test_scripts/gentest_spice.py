# spice test generator for vasim v69.2
# this work is protected under creative commons v69

import sys
import re

# reading from stdin, so usage is "python gentest_spice.py < {input file name}"
# input format is:
# {component name}
# {delay length}
# {input name} {inputs in test order, bits from len-1 downto 0, delimited by commas}
# continue with as many inputs as needed
# ~
# {output name} {number of bits in output}
# continue with as many outputs as needed

signals = {}
outputs = {}

# for python 2, because 213 computers use python 2.7
try: input = raw_input
except NameError: pass

ordered_signals = []
ordered_outputs = []
has_outputs = False

component = input()
delay = int(input())
for line in sys.stdin:
	# ignore empty lines
	if(line == ''):
		continue
	
	if(line[0] == '~'):
		has_outputs = True
		break
	
	# first token is name of signal
	signal_name = line[0:line.index(' ')]
	ordered_signals.append(signal_name)

	# parse strings and reverse them
	cases = line[line.index(' '):].split(',')
	for case in range(len(cases)):
		cases[case] = re.sub('[^0-1]', '', cases[case][::-1])
	
	# store in dictionary with signal name for key
	signals[signal_name] = cases

# parse outputs if user put ~
if(has_outputs):
	for line in sys.stdin:
		# ignore empty lines
		if(line == ''):
			continue
		
		# first token is name of signal
		output_name = line[0:line.index(' ')]
		ordered_outputs.append(output_name)
		
		# width of output
		outputs[output_name] = int(line[line.index(' '):])
	
# must have cases
if(len(signals) < 1):
	sys.exit('no signals')

# reference number of cases, should all be equal
num_cases = len(signals[list(signals.keys())[0]])

# cases must be non-empty and all equal size
for signal in signals:
	if(len(signals[signal]) != num_cases):
		print('parsed signals: ' + str(signals))
		sys.exit('inconsistent number of cases in ' + signal + ', expected ' + str(num_cases) + ' but found ' + str(len(signals[signal])))

	signal_width = len(signals[signal][0])
	for case in signals[signal]:
		# non-empty cases
		if(len(case) < 1):
			print('parsed cases: ' + str(cases))
			sys.exit('empty case in ' + signal)
		# case width not equal to first case width
		if(len(case) != signal_width):
			print('parsed cases: ' + str(cases))
			sys.exit('inconsistent signal width in ' + signal + ', expected ' + str(signal_width) + ' but found ' + str(len(case)))

# for anyone who is not me or jeremy "the price is right" price the third,
# you may have to change the naming convention because our signals are 
# named like a1, a2, ..., a8 instead of a0, a1, ..., a7 for 8 bits, etc

# file name is just {component}.do
fp = open(component + '.do', 'w')

# add wave statements, using ordered so waveform matches input
add_wave_statement = 'add wave :' + component + ':'
for signal_num in range(len(signals)):
	signal_width = len(signals[ordered_signals[signal_num]][0])
	# no numbering for single bit signals
	if(signal_width == 1):
		fp.write(add_wave_statement + ordered_signals[signal_num] + '\n')

	# otherwise, add bits individually
	else:
		for bit_num in range(1, signal_width + 1):
			fp.write(add_wave_statement + ordered_signals[signal_num] + str(bit_num-1) + '\n')
fp.write('\n')

# add wave statements for outputs
for output_num in range(len(outputs)):
	output_width = outputs[ordered_outputs[output_num]]
	# no numbering for single bit outputs
	if(output_width == 1):
		fp.write(add_wave_statement + ordered_outputs[output_num] + '\n')

	# otherwise, add bits individually
	else:
		for bit_num in range(1, output_width + 1):
			fp.write(add_wave_statement + ordered_outputs[output_num] + str(bit_num-1) + '\n')
fp.write('\n')

# force and run statements
force_statement = 'force -source :' + component + ':'
run_statement = 'run ' + str(delay) + ' ns\n\n'
for case_num in range(0, num_cases):
	for signal in signals:
		signal_width = len(signals[signal][0])
		
		# no numbering for single bit signals
		if(signal_width == 1):
			fp.write(force_statement + signal + (' 2.5V' if signals[signal][case_num] == '1' else ' 0V')  + '\n')

		# otherwise, add bits individually
		else:
			for bit_num in range(1, signal_width + 1):
				fp.write(force_statement + signal + str(bit_num-1) + (' 2.5V' if signals[signal][case_num][bit_num - 1] == '1' else ' 0V')  + '\n')

	fp.write(run_statement)

fp.close()
