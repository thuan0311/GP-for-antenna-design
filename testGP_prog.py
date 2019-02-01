import GP_prog as gpg 
import Helper as hp 
import initGlobal as init 
initGP = init.GP()
a = gpg.makeGP_prog(initGP.maxSub,initGP.maxPat,initGP.maxBlue,True)
hp.drawtree(a)
#hp.drawNodeIDs(a)
#a.childs[1].valueofnode.plot()

hp.UpdateNodeIDs(a,0)

nodes = hp.nodelist()
xxx = hp.CreateNodeLists(a,nodes)
#print(a.substrate_size)
print(xxx.redlist)
print(xxx.type_of_each_red)
#print(xxx.subbluelist)
#print(xxx.bluelist)
#print(xxx.substratelist)
#print(xxx.gensublist)
#print(xxx.genpatlist)
hp.drawNodeIDs(a)

