import GPoperators as op 
import initGlobal as init
import InitPopMethods as initpop
import Helper as hp
import matplotlib.pyplot as plt 
from testFunctionFitness import fitness
import numpy as np 
class state:
    pass 
#import os
state.best_hisFitness = []
inGP = init.GP()
pop = initpop.rampinit(inGP.numpop,inGP.maxSub, inGP.maxPat, inGP.maxBlue,inGP.rate)
# calculate the fitness.
best_hisGP = [] 
for ii in range(inGP.numgen):
	state.curFitness = []
	for i in range(len(pop)):
		[x,y,z] = hp.get_all_para_for_hfss(pop[i].tree)
		bound = hp.getBoundary(y)
		fitnesss = fitness(bound)
		pop[i].fitness = fitnesss
		state.curFitness.append(fitnesss)
		#print(fitnesss)
	temp2 = []
	for i in range(len(state.curFitness)):
		temp = (state.curFitness[i],i)
		temp2.append(temp)
	print(temp2)
	#print(sorted(temp2))
	state.curFitness = sorted(temp2)

	state.best_hisFitness.append(state.curFitness[0][0])

	## Create next generation.
	newpop = []
	numRepro = round(inGP.reprorate*inGP.numpop)
	numCross = round(inGP.crossrate*inGP.numpop)
	numMuta = inGP.numpop - numRepro - numCross
	# create list of index that is the best.
	indexlist = []
	for i in range(len(state.curFitness)):
		indexlist.append(state.curFitness[i][1])
	for i in range(numRepro):
		newpop.append(pop[indexlist[i]])
	# apply the operator.
	for i in range(numCross):
		ind = initpop.Individual()
		ind.tree = op.crossover(pop,state,inGP.proRed,inGP.prosubBlue,inGP.proBlue,inGP.proSubstrate,inGP.proGensub,inGP.proGenpat)
		ind.fitness = []
		temp = hp.nodelist()
		ind.nodelist = hp.CreateNodeLists(ind.tree,temp)
		newpop.append(ind)
	# apply the operator.
	for i in range(numMuta):
		ind = initpop.Individual()
		ind.tree = op.mutation(pop,state,inGP.proRed,inGP.prosubBlue,inGP.proBlue,inGP.proSubstrate,inGP.proGensub,inGP.proGenpat)
		ind.fitness = []
		temp = hp.nodelist()
		ind.nodelist = hp.CreateNodeLists(ind.tree,temp)
		newpop.append(ind)
	print(len(pop))
	print(len(newpop))
	pop = newpop
	best_hisGP.append(pop[state.curFitness[0][1]])
print(state.best_hisFitness)
temp = np.zeros((len(state.best_hisFitness),2))
for i in range(len(state.best_hisFitness)):
	temp[i][0] = i 
	temp[i][1] = state.best_hisFitness[i]
plt.plot(temp[:,0],temp[:,1])
plt.show()

xxx = state.curFitness[0][1]
hp.drawtree(pop[xxx].tree)
pop[xxx].tree.childs[1].valueofnode.plot()
plt.show()


# sort the pop.
'''
hfssExePath = r'C:\"Program Files"\Ansoft\HFSS14.0\Win64\hfss.exe'
tmpScriptFile = 'tempPatch.vbs'
theHFSS = 'start ' + hfssExePath + ' /RunScriptAndExit ' + tmpScriptFile;
os.system(theHFSS)
#m.envelope.plot()'''


'''
import GP as gp 
a = gp.makeBlueTree(5,False,0,10,10)
a = a[0]
hp.UpdateNodeIDs(a,0)
hp.drawNodeIDs(a)'''