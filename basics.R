# Basic Knowledge of R ----------------------------------------------------
index / subscript,從1開始而不是0
image/工作空間,可儲存變數
在寫程式時,盡量讓迴圈結構保持簡單
  ex:for( n in x){
      if( n %% 2 ==1){
        ...
      }
     }
而不是:for( i in 1:length(x)){
        if(x[i] %% 2) == 1{
         ...
        }
       }

全域變數(global variable)可透過 "<<- "來指定

vector 是R語言的心臟,需有相同的mode

R語言的三個重要面向:
  1.Recycling
  2.Filtering (在R中最常使用的)
  3.Vectorization(vector in,vector out)

資料類型:
  1.vector;scalar也被視為vector
  2.character string
  3.matrices(Much of R’s power comes from the various operations 
             you can perform on matrices;矩陣乘法透過"%*%")

  

NA and NULL #計算平均數時，NULL會被跳過，因為被當作不存在
#NA則不會，因此計算不出來


# 常用函數 --------------------------------------------------------------------

seq() #產生向量,ex:seq(from=12,to=30,by=3),seq(from=1.1,to=2,length=10)
example(line) #讓你知道函數大概怎麼用
args(plot.default) #可看到一個函數中的參數
rep(x,times) #rep(c(5,12,13),3),rep(c(5,12,13),each=2)
any() #x <- 1:10;any(x > 8)
all() #x <- 1:10;all(x > 8)


subset() #透過此法篩選出來的結果可排除掉NA
which() #找出滿足條件的位置 z <- c(5,2,-3,8);which(z*z > 8) 得到1,3,4
which.max()
ifelse() #x <- 1:10;y <- ifelse(x %% 2 == 0,5,12)
         #y 會得到 12 5 12 5 12 5 12 5 12 5
         
         # g <- c("M", "F", "F", "I", "M", "M", "F")
         # ifelse(g=="M",1,ifelse(g=="F",2,3))
         # 會得到 1 2 2 3 1 1 2

identical(x,y) #測試兩個object是否相等

paste() #string manipulation
strsplit() #string manipulation
as.matrix() #as系列的函數是用來做資料轉型的


# lines的簡易用法 ---------------------------------------------------------------
height <- c(1.78,1.66,1.55,1.79,1.73)
weight <- c(60,66,80,50,90)
plot(height,weight,pch=2,col=2) #pch是用來改圖釋的
lines(height,22.5*height^2,col=3)


# 備註 ----------------------------------------------------------------------

有時從矩陣取出子矩陣時會讓子矩陣變成是向量，而非矩陣
這樣的情形會發生在僅有取出一列或一欄的矩陣資料時
  解決方法:透過drop引數設為FALSE
  z
      [,1] [,2]
  [1,] 1    5
  [2,] 2    6
  [3,] 3    7
  [4,] 4    8
  
  r <- z[2,, drop=FALSE]
  r
  [,1] [,2]
  [1,] 2 6
  
  dim(r)
  [1] 1 2


  
