#1
x = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
y = c(1.5, 2.3, 3.2, 4.6, 5.4, 6.6, 7.6, 8.6, 9.1)
#aTính độ dài hai vectơ.
length(x)
length(y)
#bTrích phần tử thứ 2 trong vectơ X và trích các phần tử thứ 1, 4, 7 trong vectơ Y.
vi_tri = x[2]
vi_tri

vi_tri1 = y[c(1, 4, 7)]
vi_tri1

#cThay giá trị của phần tử thứ 4 trong X bởi 215. Thay các giá trị của các phần tử thứ 1, 5 trong Y bởi 99, 199.
x[4] = 215
x

y[c(1, 5)] = c(99, 199)
y

#dLàm tròn giá trị các phần tử của Y.
lam_tron = round(y)
lam_tron

#eTính tổng X + Y; tích của 5 và Y.
tong = x + y
tong

tich = 5 * y
tich

#2

#aĐổi tên các hàng của ma trận A theo thứ tự lần lượt là “X”, “Y”, “Z”, “T” và đặt tên ma trận này là C.

matr_A = matrix(c(1, 2, 1, 3, 3, 6, 5, 4, 2, 4, 3, 2, 8, 7, 5, 1), nrow = 4)
matr_A

matr_B = matrix(c(1, 2, 3, 4, 4, 1, 5, 3, 1, 7, 8, 9, 4, 6, 3, 7), nrow = 4)
matr_B


rownames(matr_A) = c("X", "Y", "Z", "T")
matr_A

#bTính tổng các phần tử theo hàng và tổng các phần tử theo cột của ma trận B.
for (i in 1:nrow(matr_B)) {
  print(paste("hang ", i, " la ", sum(matr_B[i,])))
}

for (i in 1:ncol(matr_B)) {
  print(paste("cot ", i, "la", sum(matr_B[, i])))
}


#c) Đưa ra giá trị ở hàng 2, cột 3 của ma trận A.

matr_A[c(2), ]
matr_A[, c(3)]

#d) Đưa ra ma trận D với D là ma trận cỡ 2x4 gồm các phần tử ở hàng 1 và hàng 2 của ma trận A.

matr_D = matrix(matr_A[c(1, 2), ], nrow = 2, ncol = 4)
matr_D

#e) Đưa ra ma trận E với E là ma trận cỡ 4x3 gồm các phần tử trừ cột 3 của ma trận B.
matr_E = matrix(matr_B[, -3], nrow = 4, ncol = 3)
matr_E

#f) Tính ma trận chuyển vị và ma trận nghịch đảo của ma trận A.
chuyen_vi_A = t(matr_A)
chuyen_vi_A

nghich_dao_A = solve(matr_A)
nghich_dao_A
#g) Đưa ra giá trị riêng và vectơ riêng của ma trận B.
eigen(matr_A)$values
eigen(matr_A)$vectors
#h) Tính định thức của ma trận B.
det(matr_B)

#i) Tính tích AB.

tich_matrix = matr_A %*% matr_B
tich_matrix

#j) Biết Z là tích của ma trận A và ma trận nghịch đảo của B. Tìm Z.

matrix_Z = matr_A %*% solve(matr_B)
matrix_Z

#3
#a. P{X >;2400}
xac_suat = 1 - pnorm(2400, 2100, 200)
xac_suat
#bP{1700<X<2200}
xs_chuan = pnorm(2200, 2100, 200) - pnorm(1700, 2100, 200)
xs_chuan
#c Xác định a để P(X > a) = 0.03
a = qnorm(1 - 0.03, 2100, 200)
a
#d
random_values = rnorm(1000, 2100, 200)

plot(random_values, main = "Biểu đồ Plot của 1000 giá trị X",
     xlab = "Số Lượng", ylab = "Giá trị X")

