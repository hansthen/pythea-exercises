from cvxopt import solvers, matrix, spmatrix

Food = [
'R',
'Q',
'T',
'L',
'B']

Nutrients = [
'Carbohydrates',
'Protein',
'Fat']


AmountofNutrients_PerFood = matrix([
[53, 4.4, 0.4],
[40, 8, 3.6],
[12, 3, 2],
[53, 12, 0.9],
[6, 1.9, 0.3]
], tc='d');

Cost = matrix([0.5, 0.9, 0.1, 0.6, 0.4], tc='d')

Min_Nutrients = matrix([100,10,0], tc='d')
Max_Nutrients = matrix([1000, 100, 100], tc='d')


Id = spmatrix(1.0,range(5),range(5),(5,5))
G = matrix([AmountofNutrients_PerFood,-AmountofNutrients_PerFood, -Id ])
h = matrix([Max_Nutrients,-Min_Nutrients,matrix(0.0,(5,1))])
sol = solvers.lp(Cost, G, h)
x = sol['x']

for i,xi in enumerate(x):
    if xi > 1e-6: print("%-20s : %5.2f" %  (Food[i],xi))
