#加载包
# install.packages('ggplot2')
library(ggplot2)

#读入数据
data <- read.table('C:/Users/86132/Downloads/outFileBC_1CNN_relu.txt', sep = '\t')
data2 <- read.table('C:/Users/86132/Downloads/outFileBC_2CNN_relu.txt', sep = '\t')
data3 <- read.table('C:/Users/86132/Downloads/outFileBC_3CNN_tanh.txt', sep = '\t')
data4 <- read.table('C:/Users/86132/Downloads/outFileBC_3cnn_RELU.txt', sep = '\t')
x <- seq(from=0, to=49);x #设置横坐标。由于每个纵坐标对应的横坐标个数不一样，因此每一个都要单独设置
# x <- seq(from=0, to=length(data$v1)-1) # 这也是一种定义方式
x2 <- seq(from=0, to=37)
x3 <- seq(from=0, to=76)
x4 <- seq(from=0, to=72)

tmp <- data[data$V3>0.8,] #提取数据。根据某列元素判断，如果该元素大于0.8，则取出该元素所在行

ggplot()+
  # geom_line(data = data,aes(x = x ,y = V3,colour = "1CNN_train_acc"),size=1)+ #把点用线连起来，如果不加，就是点图
  geom_point(data = data,aes(x = x,y=V3,colour = "1CNN_train_acc"),size=3)+
  # geom_line(data = data,aes(x=x,y = V5,colour ="1CNN_test_acc"),size=1) + 
  geom_point(data = data,aes(x=x,y = V5,colour = "1CNN_test_acc"),size=3)+
  
  geom_point(data = data2,aes(x=x2,y = V3,colour = "2CNN_train_acc"),size=3)+
  geom_point(data = data2,aes(x=x2,y = V5,colour = "2CNN_test_acc"),size=3)+
  
  geom_point(data = data3,aes(x=x3,y = V3,colour = "3CNN_train_tanh_acc"),size=3)+
  geom_point(data = data3,aes(x=x3,y = V5,colour = "3CNN_test_tanh_acc"),size=3)+  

  geom_point(data = data4,aes(x=x4,y = V3,colour = "3CNN_train_relu_acc"),size=3)+
  geom_point(data = data4,aes(x=x4,y = V5,colour = "3CNN_test_relu_acc"),size=3)+
  
  scale_colour_manual("",values = c("1CNN_train_acc" = "red","1CNN_test_acc" = "blue", 
                                    "2CNN_train_acc"="green", "2CNN_test_acc"="#999900",
                                    "3CNN_train_tanh_acc"="aliceblue", "3CNN_test_tanh_acc"="beige", 
                                    "3CNN_train_relu_acc"="#999966", "3CNN_test_relu_acc"="#CCCCFF"))+
  xlab("parameters")+ylab("acc")+
  theme_bw() + #去掉背景灰色
  theme(
          # panel.grid.major=element_line(colour=NA),
        # panel.background = element_rect(fill = "transparent",colour = NA),
        # plot.background = element_rect(fill = "transparent",colour = NA),
        # panel.grid.minor = element_blank(),#以上theme中代码用于去除网格线且保留坐标轴边框
        text=element_text(size=13, family="Comic Sans MS"),
        )







