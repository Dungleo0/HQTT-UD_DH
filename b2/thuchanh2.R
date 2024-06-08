install.packages("MASS")
install.packages("ISLR")
library(MASS)
library(ISLR)

?Boston
names(Boston) #đưa ra tên các biến trong bộ dữ liệu Boston
?lm # Bieu dien hoi quy tuyen tinh cua Y theo X, vd Y = a +bX
lm.fit(medv~lstat, data = Boston) #cach 1

attach(Boston)  # Cach 2
lm.fit = lm(medv~lstat)
lm.fit # uoc luong cua cac he so a, b trong mo hinh hoi quy tuyen tinh
## phuong trinh duong thang HQTT cua medv theo lstat: medv = 34.55 - 0.95*lstat

summary(lm.fit) # tom tat ket qua 
# Bieu dien HQTT cua medv theo lstat
# Phan du e = y - y_h, voi y la gia tri medv thuc, y_h la gia tri medv theo mo hinh
# medv = a + b*lstat, thay cac gtri thuc cua lstat trong bo du lieu vao mo hinh thi thu dc y_h = me
# he so: uoc luong, sai so chuan, test tke T(t value), p-value (Pr(>|t|))
# kiem dinh cac he so trong mo hinh hoi quy co thuc su khac 0 khong

# bai toan 1: H0: a = 0 vs H1: a!= 0
# Do p-value < 2.10^(-16) nen bac bo H0, hay co co so de noi a khac 0


names(lm.fit)
lm.fit$coefficients
lm.fit$residuals # phan du epsilon
# Kiem dinh xem phan du co tuan theo phan phoi chuan voi gia tri trung binh = 0 ?
shapiro.test(lm.fit$residuals) # kiem tra pp chuan

# bai toan: H0: X tuan theo pp chuan vs H1: X k tuan theo pp chuan
# Do p-value < 2.10^(-16) nen bac bo H_), hay X k tuan theo pp chuan
# muon ktra 1 bien co gtri Tb = 0 ?
# neu bien do tuan theo pp chuan thi dung t.test()
# neu bien do k tuan theo pp chuan thi dung wilcox.test()
wilcox.test(lm.fit$residuals)

# H0: EX = 0
t.test(lm.fit$residuals) # neu pp chuan









