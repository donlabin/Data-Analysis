# 讀取檔案 --------------------------------------------------------------------
read.csv() #讀csv檔
read.table() #讀文字檔
read.delim("clipboard") #以複製的方式快速讀檔，可參考我最強25檔的R script
library(RODBC) # 若資料要從xls檔讀取的話，須先安裝此包，以下5行為範例
filename <- "data/dummmyData.xls"
xlsFile <- odbcConnectExcel(filename, readOnly = FALSE)
sqlSave(xlsFile, a, rownames = FALSE)
b <- sqlFetch(xlsFile, "a")
odbcCloseAll()

# 針對資料做初步的探索 --------------------------------------------------------------
dim() #取得資料維度
names() #取得自變數名稱
str() #structure
attributes()
class() #告訴你這是什麼資料類別
mode() #告訴你這是數值資料or字串or類別
typeof()#check mode屬性
head() #探索資料集前面幾筆的資料
tail() #探索資料集後面幾筆的資料

# Data Manipulation and Review -----------------------------------------------------

library(plyr) # 10大R必學package之一

## 先針對NA資料作處裡
na.omitmit()
## 若有需要，對變數做標準化
scale()
## 若有需要，對資料做轉置的動作
t()
## 若有需要，對資料做stack或unstack的動作
stack()
unstack()
## 其他
aggregate()
merge()
reshape()

# 資料簡單分析
summary()
aggregate() #aggregate(Sepal.Length ~ Species,summary,data=iris)
            #針對不同種類的鳶尾花跑出Sepal.Length 的summary
mean()
median()
range()
var()
sd()
cov()
cor()
quantile()
table()

# 可視化分析 -------------------------------------------------------------------
# R 內建的graphics的包
plot() #plot(jitter(iris$Sepal.Length), jitter(iris$Sepal.Width))
       #透過jitter( )增加一些noise來讓重複的點看起來不重複，但此圖並未針對不同的species畫出不同的legend

       #以下針對不同Species畫出不同的legend
       #plot(jitter(iris$Sepal.Length), jitter(iris$Sepal.Width),
       #     col=c(1,2,3)[iris$Species],pch=c(1,2,3)[iris$Species])

       #為上述的圖形加上圖例
       #legend(x=6.5,y=4.4,legend=c("setosa","versicolor","virginica"),
       #     col=c(1,2,3),pch=c(1,2,3))

pairs() # matrix scatter chart
barplot()
pie()
dotchart() # scatter chart
hist() #直方圖，適合畫x,y軸都是數值資料時使用
boxplot() #盒須圖，適合畫有類別資料及數值資料時使用
qqnorm() #用來檢測常態性質
qqplott()
qqline()
coplot() # Bi-variate plot
contour() 
filled.contour()
sunflowerplot()
interaction.plot()
matplot()
fourfoldplot()
assocplot()
mosaicplot()
heatmap()

# 利用scatterplot3d包
library(scatterplot3d)
scatterplot3d() # scatterplot3d(iris$Petal.Width,iris$Sepal.Length,iris$Sepal.Width)

# 利用rgl包
library(rgl)
plot3d() #plot3d(iris$Petal.Width,iris$Sepal.Length,iris$Sepal.Width)
         #package rgl supports interactive 3D scatterplot with plot3d( )

# 利用lattice包
library(lattice)
stripplot()
densityplot()
bwplot()
xyplot()
histogram()
parallel()

# 利用ggplot2包
library(ggplot2)

# 儲存圖型
pdf()
postscript()
win.metafilee()
jpeg()
bmp()
png()

# 畫圖時常常用到的設定
par(mfrow=c(m,n)) # 將當前窗口分割為m x n個窗口，m為列，n為欄
dev.off() # 將圖形窗口關閉，會關閉所有圖型

# 備註 ----------------------------------------------------------------------

# 若忘記函數怎麼用，括號裡用函數名稱
example()
# 搜尋R的Help file
?seq # for example
# 以google搜索的方式找
??seq
# 對某些保留字的用法不會用的話
?"if" # for example
# 開啟線上幫助文檔
help.start()



