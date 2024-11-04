
#1 Create a 3x3 matrix with values from 1 to 9, filled by rows.
matrix(1:9,nrow = 3,ncol = 3,byrow = TRUE)

#2 Generate a 2x4 matrix with values from 1 to 8, filled by columns.
matrix(1:8,nrow = 2,ncol = 4,byrow = TRUE)

#3. Create a 4x4 matrix with random numbers between 1 and 20.
matrix(sample(1:20,16),nrow = 4,ncol = 4,byrow=TRUE)

#4. Calculate the sum of all elements in a 3x3 matrix with values from 1 to 9.
m4<-matrix(1:9,nrow = 3,ncol = 3)
sum(m4)

#5. Find the transpose of a 2x3 matrix with values from 1 to 6.
mat<-matrix(1:6,nrow = 3,ncol = 2,byrow = TRUE)
mat
t(mat)

#6. Add two 2x2 matrices, where one matrix has values 1 to 4 and the other has values 4 to 1.
mat1 <- matrix(1:4, nrow = 2, ncol = 2)
mat2 <- matrix(5:8, nrow = 2, ncol = 2)

mat1
mat2

#7. Create a 3x3 identity matrix.
m<-matrix(1:9,3)
m


?diag
identity_matrix <- diag(3)
print(identity_matrix)


#8. Multiply each element of a 2x2 matrix with values 1 to 4 by 3.
m8<-matrix(1:4,2)
m8
m83<-m8*3
m83


#9. Subtract two 2x2 matrices, one with values from 5 to 8 and the other with values from 1 
#   to 4.
m1<-matrix(5:8,2)
m1
m2<-matrix(1:4,2)
m2
answer<-m1-m2
answer


#10. Check if a given 3x3 matrix is symmetric.
?all
?t()
#1
matrix_3x3<-matrix(1:9,nrow = 3,byrow = FALSE)
matrix_3x3
trns<-t(matrix_3x3)
trns
isSymmetric<-all(matrix_3x3==t(matrix_3x3))
print(isSymmetric)

#2
matrix_3x3<-matrix(c(1,2,3,2,4,5,3,5,6),nrow = 3)
matrix_3x3
trns<-t(matrix_3x3)
trns
isSymmetric<-all(matrix_3x3==trns)
isSymmetric


#11. Calculate the mean of each row in a 4x3 matrix with values from 1 to 12.
ma11<-matrix(1:12,4)
ma11
mean11<-rowMeans(ma11)
mean11


#12. Find the maximum value in each column of a 3x3 matrix with values from 1 to 9.
?apply
matrix3x3<-matrix(1:9,nrow=3)
matrix3x3
colmax<-apply(matrix3x3,2,max)
colmax


#13. Replace the second row of a 3x3 matrix (with values 1 to 9) with values 10 to 12.
matrix3x3<-matrix(1:9,3)
matrix3x3
matrix3x3[2,]<-c(10:12)
matrix3x3


#14. Find the product of two matrices: a 2x3 matrix with values from 1 to 6 and a 3x2 matrix 
#    with values from 7 to 12. 
matrix2x3<-matrix(1:6,nrow=2)
matrix2x3
matrix3x2<-matrix(7:12,nrow=3)
matrix3x2
product<-matrix2x3 %*% matrix3x2
product


#15. Extract the third column from a 4x4 matrix with values from 1 to 16.
matrix4x4<-matrix(1:16,4)
matrix4x4
col3<-matrix4x4[,3]
col3


#16. Divide each element of a 2x2 matrix by 2, where the matrix has values 1 to 4.
matrix2x2<-matrix(1:4,nrow=2)
matrix2x2
divmat<-matrix2x2 / 2
divmat


#17. Create a 5x5 matrix filled with zeros.
matrix5x5<-matrix(0,nrow=5,ncol=5)
matrix5x5


#18. Construct a 3x3 matrix and calculate the sum of each column.
matrix3x3<-matrix(1:9,3)
matrix3x3
colsum<-colSums(matrix3x3)
colsum


#19. Replace the diagonal of a 4x4 matrix with values from 1 to 4.
matrix4x4<-matrix(1:16,nrow=4)
matrix4x4
diagMatrix4x4<-diag(matrix4x4)
diag(matrix4x4)<-1:4
matrix4x4


#20. Create a 3x3 matrix with values from 1 to 9 and find the sum of the elements on its 
#    diagonal.
matrix3x3<-matrix(1:9,3)
matrix3x3
sumdiag<-sum(diag(matrix3x3))
sumdiag

