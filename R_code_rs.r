#R code for remote sensing course

install.packages("raster")
library(raster)

#create a new library in C called lab

setwd("C:/lab/")
p224r63_2011 <- brick("p224r63_2011_masked.grd")

#for Landsat B1 blu, B2 green, B3 red, B4 NIR
#to plot the images use 

plot(p224r63_2011)

#to change the framework of the plotted images
par(mfrow=c(2,2))

#create different color palettes for each band
clb <- colorRampPalette(c('dark blue','blue','light blue'))(100) # 
plot(p224r63_2011$B1_sre, col=clb)
clg <- colorRampPalette(c('dark green','green','light green'))(100) # 
plot(p224r63_2011$B2_sre, col=clg)
clr <- colorRampPalette(c('dark red','red','pink'))(100) # 
plot(p224r63_2011$B3_sre, col=clr)
cln <- colorRampPalette(c('red','orange','yellow'))(100) # 
plot(p224r63_2011$B4_sre, col=cln)
