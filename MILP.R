# Mixed Integer Linear Programming (MILP)

install.packages("lpSolve",dependencies=T)
library(lpSolve)

# weight of elements (A,B,C)
f.obj <- c(1,2,1)
f.con <- matrix (c(1, 1, 1,
                   1, 0, 0,
                   1, 1, 0,
                   0, 1, 0,
                   0, 0, 1), nrow=5, byrow=T)

f.dir <- c( "<=", ">=", "<=", ">=",">=")
f.rhs <- c(90,30,75,10,20)

lp ("max", f.obj, f.con, f.dir, f.rhs)
lp ("max", f.obj, f.con, f.dir, f.rhs)$solution
