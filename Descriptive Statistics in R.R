# choose(n, k) = nCk
choose(8, 2)

# rbinom, rgamma, rnorm etc for random number generation of a specific dist.
rbinom(1, 1, 0.5)

# Hypergeometric Function

"
Suppose that 10000 lines of code have 30 lines which could beimproved 
(for example by clarification of purpose, simplification ordocumentation). 
If a random sample of 10 lines of code is taken,what is the chance that:
(a) 1 or
(b) 0
lines of the code sampled could be improved?
"
# The probability of 0 lines

# The probability of 1 lines
dhyper(0, 30, 10000-30, 10)
# The probability of at most 1 lines
phyper(1, 30, 10000-30, 10)

x<- 0:10
plot(x, dhyper(x, 30, 10000-30, 10), type= 'o', ylab="pmf", 
     main="hypergeometric probabilities",lwd=2,cex.main=1)
plot(x, dhyper(x, 30, 1000-30, 10), type= 'o', ylab="pmf", 
     main="hypergeometric probabilities",lwd=2,cex.main=1)
points(dhyper(x, 30, 100-30, 10), col = 'red',lwd=2)
points(dhyper(x, 30, 50-30, 10), col = 'blue',lwd=2)
legend(6, 0.7, legend = c("N= 10000", "N = 100", "N = 50"), 
       col = c("black", 'red', 'blue'), lwd = 2)


# Binomila Distribution
x<- 0:40
y1<- dbinom(x, 40, 0.1)
y2<- dbinom(x,40,0.5)
y3<- dbinom(x,40,0.7)
y4<- dbinom(x,40,0.9)

plot(x,y1,ylab="pmf", main="binomial probabilities",lwd=2,cex.main=1,
     col="blue",pch=1,type="o")
lines(x,y2,lwd=2,col="orange", pch=0, type="o")
lines(x,y3,lwd=2,col="green", pch=5 ,type="o")
lines(x,y4,lwd=2,col="red", pch=2, type="o")
# type="o" for points connected with a line
# pch=0, 1, 2, 5 for squares, circles, triangles and diamonds


# normal distribution
x<-rnorm(500, 3, 4)
mean(x)
var(x)


x = seq(-12, 12, by = 0.1)
length(x)
x
