```{r}
#8.1

# Legg Mason (LM) và Harris (HPB ở 8.2: cho ta biết những công ty này 
# có mối quan hệ tích cực với các thuộc tính 
# được đại diện bởi thành phần chính đầu tiên 

#Highmount (HC) :Highmount có mối quan hệ tiêu cực với thành phần chính đầu tiên.

eigen_values = eigen(cor(invest))$values
eigen_vectors = eigen(cor(invest))$vectors

variances = sqrt(eigen_values)

pca_result = princomp(invest, cor = TRUE)
summary(pca_result)


```

#8.1

# Legg Mason (LM) và Harris (HPB ở 8.2: cho ta biết những công ty này

# có mối quan hệ tích cực với các thuộc tính

# được đại diện bởi thành phần chính đầu tiên

#Highmount (HC) :Highmount có mối quan hệ tiêu cực với thành phần chính đầu tiên.

eigen_values = eigen(cor(invest))$values eigen_vectors = eigen(cor(invest))$vectors

variances = sqrt(eigen_values)

pca_result = princomp(invest, cor = TRUE) summary(pca_result)

```{r}
#8.5

library(datasets)
data("USJudgeRatings")
data
pairs(USJudgeRatings)

# Thực hiện PCA
pca_result <- prcomp(USJudgeRatings, scale. = TRUE)

# Tóm tắt PCA
summary(pca_result)
```

#8.5

library(datasets) data("USJudgeRatings") data pairs(USJudgeRatings)

# Thực hiện PCA

pca_result \<- prcomp(USJudgeRatings, scale. = TRUE)

# Tóm tắt PCA

summary(pca_result)
