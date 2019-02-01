
numProcess = 2 # number of the script process would be run in each computer.
PCnames = ['CRD02-PC'] #-- list of exist computers for running scripts.
# related to antenna.

class AnT:
	def __init__(self):
		self.c = 3e8
		self.fC = 3.5e9 
		self.fStart = 3.3
		self.fStop = 3.7
		self.npoints = 200
		self.Band_fitness = [3.4,3.6]
		self.hfssExePath   = r'C:\"Program Files"\Ansoft\HFSS14.0\Win64\hfss.exe'; # location of hfss executable (needs to be the 
		self.resultsDir    = 'C:\\Opt_files\\';   # location of results folders (containing final .hfss files)
		self.tmpDir        = 'C:\\Opt_files\\temp\\';  # location of hfss temp files
		self.tmpTab 	   = 'C:\\Opt_files\\temp_tab\\'
		self.Antenna_Name  	   = 'patch_antenna'
		self.maxTime = 7.5; # maximum allowed time (in minutes) for each computer to solve batch of files,
							# where the batch size is equal to the number of
							# processors on a computer

# related substrate.
class Sub:
	def __init__(self):
		self.rangeOx = [18,20] # min/max range of width of patch antenna.
		self.rangeOy = [18,20] # min/max range of length of patch antenn.
		self.rangeOz = [0.8,1.5] # min/max range of 
		self.addition = 2 # 'mm' # increase the range of substrate.


# related to 2D polygon.
class L:
	# L terminal.
	def __init__(self):
		self.rangex1 = [3,7] 
		self.rangex2 = [3,7]
		self.rangey1 = [3,7]
		self.rangey2 = [3,7]
class U:
	# U terminal.
	def __init__(self):
		self.rangex1 = [3,6]
		self.rangex2 = [3,6]
		self.rangex3 = [3,6]
		self.rangey1 = [4,8]
		self.rangey2 = [3,6]
		self.rangey3 = [4,8]

class GP:
	def __init__(self):
		self.maxSub = 1 # maxdep of the the gensubstrate tree.
		self.maxPat = 1 
		self.maxBlue = 3

		self.rate = 0.6 # is the rate of number grow type of ind in all popsize.
		self.proRed = 0.2 # the probability selects red node to apply GP operators. 
		self.prosubBlue = 0.6 # the probability selects subBlue node(like union node, Usubtree9 node,...)
		self.proBlue = 0.05 # the probability selects Blue node(Bluetree).
		self.proSubstrate = 0.05 # .............................
		self.proGensub = 0.05 # ...............................
		self.proGenpat = 1 - self.proRed - self.prosubBlue\
        - self.proBlue - self.proSubstrate - self.proGensub # Don't change, and make sure it's not negative.


		self.numpop = 30 # number of the individuals in a population.
		self.numgen =  50 # number of generation in a GP process.
		self.reprorate = 0.1  # the rate of the best individuals would be remained to the next generation. 
		self.crossrate = 0.5  # the probability selects the crossover operator.
		self.mutarate = 1 - self.reprorate - self.crossrate # the probability selects mutation operator.
