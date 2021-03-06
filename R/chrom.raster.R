##' Function to plot a picture AND the 3 channel of an array as chromatograms,
##'
##' @param data a 3D array of dim[3] = 3
##' @param x the x coordinate to look at
##' @param normalization either or not normalisation should happen before plotting the chromatograms
##' @param edge allow to apply the mean function over a range to increase teh signal/noise ratio
##' @param ... extra parameters to be passed to the plot function
##' @examples
##' data <- f.read.image(source='www/rTLC_demopicture.JPG',height=128)
##' data %>% chrom.raster(x=140)
##' @author Dimitri Fichou
##' @export
##'

chrom.raster <- function(data,x,normalization=F,edge=0,...){
  plot(c(0,dim(data)[2]*1.2),c(0,dim(data)[1]), type='n',ylab="",xlab="",...)
  rasterImage(data,0,0,dim(data)[2],dim(data)[1],interpolate=F)
  abline(v=c((x-edge),(x+edge)),col="red",lty=2,...)
  color <- c('red','green','blue','black')
  if(normalization==T){data <- data %>% normalize}
  data <- data * 0.2*dim(data)[2]+dim(data)[2]
  if(edge == 0){
    if(length(dim(data)) == 2){
      par(new=T)
      plot(x=data[dim(data)[1]:1,x],y=seq(dim(data)[1]),xlim=c(0,1.2*dim(data)[2]),type='l',xlab="",ylab="",xaxt="n",yaxt="n",...)
    }else{
      for(i in seq(dim(data)[3])){
        par(new=T)
        plot(x=data[dim(data)[1]:1,x,i],y=seq(dim(data)[1]),xlim=c(0,1.2*dim(data)[2]),type='l',xlab="",ylab="",xaxt="n",yaxt="n",col=color[i],...)
      }
    }
  }else{
    if(length(dim(data)) == 2){
      par(new=T)
      plot(x=apply(data[dim(data)[1]:1,(x-edge):(x+edge)],1,mean),y=seq(dim(data)[1]),xlim=c(0,1.2*dim(data)[2]),type='l',xlab="",ylab="",xaxt="n",yaxt="n",...)
    }else{
      for(i in seq(dim(data)[3])){
        par(new=T)
        plot(x=apply(data[dim(data)[1]:1,(x-edge):(x+edge),i],1,mean),y=seq(dim(data)[1]),xlim=c(0,1.2*dim(data)[2]),type='l',xlab="",ylab="",xaxt="n",yaxt="n",col=color[i],...)
      }
    }
  }

}

# data %>% chrom.raster(x=140)

