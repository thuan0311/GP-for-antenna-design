import InitPopMethods as initpop 
import initGlobal as init 
import Helper as hp
inGP = init.GP() 
[a,b] = initpop.NewInd(0,inGP.maxSub, inGP.maxPat, inGP.maxBlue,False)
hp.drawtree(a.tree)
hp.drawNodeIDs(a.tree)
print(a.nodelist.redlist)
print(a.nodelist.subbluelist)
a.tree.childs[1].valueofnode.plot()
pop = initpop.rampinit(5,inGP.maxSub, inGP.maxPat, inGP.maxBlue,0.6)
for i in range(len(pop)):
    print(pop[i].id)
    print(pop[i].tree.MaxXY)
    hp.drawtree(pop[i].tree)
    hp.drawNodeIDs(pop[i].tree)
    pop[i].tree.childs[1].valueofnode.plot()