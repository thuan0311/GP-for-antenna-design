import GPoperators as op 
import initGlobal as init
import InitPopMethods as initpop
import Helper as hp
import matplotlib.pyplot as plt 

# import os

inGP = init.GP()
pop = initpop.rampinit(5,inGP.maxSub, inGP.maxPat, inGP.maxBlue,0.5)
a = pop[0]
m,n,t = hp.getChrom(a)
a.tree.childs[1].valueofnode.plot()
print(m)
#a=op.crossover(pop,inGP.proRed,inGP.prosubBlue,inGP.proBlue,inGP.proSubstrate,inGP.proGensub,inGP.proGenpat)
#hp.drawNodeIDs(pop[0].tree)
#hp.drawNodeIDs(pop[4].tree)
#a = pop[1].tree
#hp.drawNodeIDs(a)
#m = a.childs[1].valueofnode
#hp.drawtree(a,r'C:\Opt_files\myfig')
#m.plot()
#plt.savefig(r'C:\Opt_files\myfig')
#plt.show()
[x,y,z] = hp.get_all_para_for_hfss(a.tree)
#print(y)

from genscript import genscript
genscript(x,y,z,r'C:\Users\DELL\Desktop' + r'\test1.vbs',r'C:\Users\DELL\Desktop\test',r'C:\Users\DELL\Desktop' + r'\test.hfss')

m1 = [1, 1, 1, 1, 1, 1, 1, 1, 1]
m2 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

if len(m) == 9:
    a.tree = hp.insert_chrom(a.tree,m1,n,t)
else:
    a.tree = hp.insert_chrom(a.tree,m1,n,t)
a.tree.childs[1].valueofnode.plot()
[x,y,z] = hp.get_all_para_for_hfss(a.tree)
#print(y)

from genscript import genscript
genscript(x,y,z,r'C:\Users\DELL\Desktop' + r'\test2.vbs',r'C:\Users\DELL\Desktop\test',r'C:\Users\DELL\Desktop' + r'\test.hfss')

#x = hp.getBoundary(y)
#xxx = hp.get2_suitable_edges_for_coaxial_cable(x,z)
#from testFunctionFitness import fitness
#print(fitness(x))
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