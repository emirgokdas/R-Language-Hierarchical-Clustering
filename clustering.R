install.packages("cluster")
dataset
d <- dist(dataset,method = "euclidian",upper = TRUE)
round(d,2)

plot(hclust(d,method = "complete"))
h <- hclust(d,method = "complete")
h$height
i <- which.max(diff(h$height))
cut_height <- (h$height[i] + h$height[i+1])/2
cut_height
clusters <- cutree(h,h=cut_height) 

clusters 
par(mfrow=c(1,2))
plot(h)
abline(h=cut_height,col="red",lty=2)
clusters <- cutree(h,h=cut_height)
clusters
