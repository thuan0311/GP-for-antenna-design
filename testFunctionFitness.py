import numpy as np 

def fitness(inputdata):
	m = 0
	for i in range(len(inputdata)):
		m = m + len(inputdata[i])
	X = np.zeros((m,2))
	ii = 0
	for i in range(len(inputdata)):
		for j in range(len(inputdata[i])):
			X[ii][0] = inputdata[i][j][0]
			X[ii][1] = inputdata[i][j][1]
			ii +=1
	fit_ness = sum(0.26*(X[:,0]**2 + X[:,1]**2)-0.48*X[:,0]*X[:,1])/m
	return fit_ness