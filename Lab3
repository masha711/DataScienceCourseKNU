1.Функція add2(x, y), яка повертає суму двох чисел.
```r
> add2 <- function (x,y) {x+y}
> add2(2,8)
[1] 10
```
2.Функція above(x, n), яка приймає вектор та число n, та повертає всі
елементі вектору, які більше n. По замовчуванню n = 10.
```r
> above <- function (x,n) {x[x > n]}
> above(c(1,5,12,41,15,20,0,3,7,2), 6)
[1] 12 41 15 20  7
> above2 <- function (x,n=10) {x[x > n]}
> above2(c(1,5,12,41,15,20,0,3,7,2))
[1] 12 41 15 20
```
3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які
відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. 
Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
```r
> my_ifelse<-function(x,exp,n){if (exp == "<"){return(x[x<n])}
+     else if (exp==">"){return(x[x>n])}
+     else if (exp=="<="){return(x[x<=n])}
+     else if (exp==">="){return(x[x>=n])}
+     else if (exp=="=="){return(x[x==n])}
+     else x}

> v1 <- c(1,2,3,4,5,6,7,8,9,10)
> my_ifelse(v1,">",3)
[1]  4  5  6  7  8  9 10
> my_ifelse(v1,"<=",5)
[1] 1 2 3 4 5
```
4. Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр
removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
```r
> columnmean <- function(x, removeNA = TRUE) {return(colMeans(x, na.rm = removeNA))}
> columnmean(matrix(c(17, 21, 28, NA, 10, NA, NA, 14, 2), nrow = 3, ncol = 3), TRUE)
[1] 22 10  8
```
