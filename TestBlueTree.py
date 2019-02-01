import Helper as hp 
import InitPopMethods as inPopMe
import GP
import Terminalset as ts
import copy 

[tree,lastnode] = GP.makeBlueTree(1,True,0,10,10)
tree = GP.genFullBlueTree(tree)
hp.drawtree(tree)
tree = GP.updateFullBlueTree(tree,[10,10],1)
hp.drawtree(tree)

bluetree = GP.convertFullBluetree_to_oriBluetree(copy.deepcopy(tree))
hp.drawtree(tree)
bluetree.valueofnode.plot()

tree = GP.updateFullBlueTree(tree,[13,13],3)
bluetree = GP.convertFullBluetree_to_oriBluetree(copy.deepcopy(tree))
hp.drawtree(tree)
bluetree.valueofnode.plot()