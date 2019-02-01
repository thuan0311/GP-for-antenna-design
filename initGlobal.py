# linh.homanh@hust.edu.vn - 2018
# bachthuan03111997@gmail.com - 2018
numProcess = 2 # number of the script process would be run in each computer.
# = ['CRD02-PC'] #-- list of exist computers for running scripts.
PCnames = ['DESKTOP-K6646BG']
#PCnames = ['CRD03-PC']
# related to antenna.
class AnT:
	def __init__(self):
		self.c = 3e8
		self.fC = 3.5e9 
		self.fStart = 3.3
		self.fStop = 3.7
		self.npoints = 200
		self.Band_fitness = [3.4,3.6]
		self.Point_start_eval,self.Point_stop_eval = self.__getNum_point_for_evaluation()
		self.Center_start_eval,self.Center_stop_eval = self.__getNum_center_point_evaluation()
		self.substrate_material = 'FR4_epoxy'
		self.hfssExePath   = r'C:\"Program Files"\Ansoft\HFSS14.0\Win64\hfss.exe'; # location of hfss executable (needs to be the 
		self.resultsDir    = 'C:\\Opt_files\\';   # location of results folders (containing final .hfss files)
		self.tmpDir        = 'C:\\Opt_files\\temp\\';  # location of hfss temp files
		self.tmpTab 	   = 'C:\\Opt_files\\temp_tab\\'
		self.overcome_desired = r'C:\Opt_files\overcome_desired'  # folder save any best found antenna structure with overcome of the
																	# fitness.
		self.Antenna_Name  	   = 'patch_antenna'
		self.maxTime = 7.5; # maximum allowed time (in minutes) for each computer to solve batch of files,
							# where the batch size is equal to the number of
							# processors on a computer
	def __getNum_point_for_evaluation(self):
		# function gets two specified points for evaluation_band.
		# for automated finding these two points.
		step = (self.fStop - self.fStart)/(self.npoints-1)
		temp = self.fStart
		i = 0
		while (temp < self.Band_fitness[0]):
			temp = temp + step
			i = i + 1
		temp = self.fStart
		j = 0
		while (temp < self.Band_fitness[1]):
			temp = temp + step
			j = j + 1
		return i,j
	def __getNum_center_point_evaluation(self):
		# similarly with above function.
		step = (self.fStop - self.fStart)/(self.npoints-1)
		temp = self.fStart
		i = 0
		center = self.fC/1e9
		while (temp < (center-0.02)):
			temp = temp + step
			i = i + 1
		temp = self.fStart
		j = 0
		while (temp < (center+0.02)):
			temp = temp + step
			j = j + 1
		return i,j

# related substrate.
class Sub:
	def __init__(self):
		self.rangeOx = [15,19] # min/max range of width of patch antenna.
		self.rangeOy = [15,19] # min/max range of length of patch antenn.
		self.rangeOz = [0.8,1.5] # min/max range of 
		self.addition = 0 # 'mm' # increase the range of substrate.
		self.decrease = 0 # 'mm' # number mm of substrate's both width and length will be decrease before create any pattern.

sub = Sub()
# L parameter.
min_basic_pattern = min(min(sub.rangeOx),min(sub.rangeOy))
minL_x = min_basic_pattern*0.2
maxL_x = min_basic_pattern*0.4
minL_y = min_basic_pattern*0.2
maxL_y = min_basic_pattern*0.4
# U parameter.
minU_x = min_basic_pattern/6
maxU_x = (min_basic_pattern*0.8)/3
minU_y = min_basic_pattern/4
maxU_y = min_basic_pattern/2
# related to 2D polygon.
class L:
	# L terminal.
	def __init__(self):
		self.rangex1 = [minL_x,maxL_x] #min/max range of x1.
		self.rangex2 = [minL_x,maxL_x]
		self.rangey1 = [minL_y,maxL_y]
		self.rangey2 = [minL_y,maxL_y]
class U:
	# U terminal.
	def __init__(self):
		self.rangex1 = [minU_x,maxU_x]
		self.rangex2 = [minU_x,maxU_x]
		self.rangex3 = [minU_x,maxU_x]
		self.rangey1 = [minU_y,maxU_y]
		self.rangey2 = [minU_y/2,minU_y]
		self.rangey3 = [minU_y,maxU_y]

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


		self.numpop = 12 # number of the individuals in a population.
		self.numgen =  30 # number of generation in a GP process.
		self.reprorate = 0.1  # the rate of the best individuals that will be remained to the next generation. 
		self.crossrate = 0.4  # the probability selects the crossover operator.
		self.mutarate = 1 - self.reprorate - self.crossrate # the probability selects mutation operator.

		self.desired_fitness = 1500 # parameter for evaluating wheather a antenna structure is good enough or not, and then if it's 
									# good enough. It will be saved in a specified result folder.
		self.overcome_fitness = 1000 # parameter for evaluating wheather a antenna structure is overcome the desired result. It's will be
									# saved in specified result folder.
class lowlevel:
	def __init__(self):
		self.number_iters = 5  
		self.step_size = 0.01
		self.init_number = 5
