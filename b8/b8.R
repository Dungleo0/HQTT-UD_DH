#17/04/2024

 #phan tich tp chnh 
#sd ma tran hiep phuong sai khi cac bien cung thang do do
#sd ma tran tuong quan khi cac bien dc do o cac thang do khac nhau
# data 1 khuyen nghi pbo dau tu
invest = read.table("D:\\PTHQ\\b8\\investment.txt",header = T)
View(invest)
head(invest,2)

rownames(invest)=invest$Manager
#doi ten cac hanh thanh ten manager tuong ung
invest = invest[,-1]
#chi phan tich tren du lieu numberic

head(invest,1)

#Xet tren tap du lieu
pc=princomp(invest) # phan tich thanh phan chinh tren chinh du lieu(gan xap xi pttpc tren ma tran hiep phuong sai)/phan tich tp chinh tren mtran tuong quan
s=summary(pc)
s

#xet tren ma tran hiep phuong sai cua tap du lieu
pcacov=princomp(covmat = cov(invest))
# standar deviation la sqrt(D(Y_i)) = sqrt(lambda_i) voi lambda_i la gtri rieng thu i cua mtran hiep phuong sai
summary(pcacov)

eigen(cov(invest))$values
sqrt(eigen(cov(invest))$values)
            
# proportion of variance = lambda_i / sum(lambda_i) : ti le bien sai tong cong
# cumulative proportion = sum(lambda_1 + ... + lambda_m) / sum(lambda_j) dung de xac dinh so tp chinh de co dc % thong tin ve bo du lieu

pcacov$loading # factor loadings : ma tran tai trong Y_i = e_i + X

eigen(cov(invest))$vectors[,-1] # vecto rieng thu nhat cua mtran hiep phuong sai
summary(pcacov,loadings = T)

#Bieu dien tpc thu nhat theo cac bien ban dau:PC_1 = 0.706 * S.US + 0.114 * B.US - 0.109 * B.Non.US = 0.686 * A.native

screeplot(pc,col = " red",pch = 16, type = "lines", cex = 2, lwd = 2, main = "")

pc = princomp(invest)
biplot(pc , col = c(2,4), cex = c(.5,1.25),xlim = c(-.45, .45), xlab ="First principal component", ylab ="Second principal component",main="Biplot for invesment allocations")

invest["BankofAmerica",]

invest["FifthThirdBank",]

invest["HighmountCapital",]
















