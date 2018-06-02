1.Створити змінні базових (atomic) типів.
```r
> a=-1
> typeof(a)
[1] "double"
> b=15L
> typeof(b)
[1] "integer"
> c=TRUE
> typeof(c)
[1] "logical"
> d="male"
> typeof(d)
[1] "character"
> e=7i+5
> typeof(e)
[1] "complex"
```

2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14,
2.71, 0, 13; 100 значень TRUE.
```r
> v1 <- 1:75
> v2 <- c(3.14, 2.71, 0, 13)
> v3 <- replicate(100, c(TRUE))
```

3.Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind.
0.5 1.3 3.5
3.9 131 2.8
0 2.2 4.6
2 7 5.1

```r
> my_mat <- matrix(c(0.5, 3.9, 0, 2, 1.3, 131, 2.2, 7, 3.5, 2.8, 4.6, 5.1), nrow=4, ncol=3)
> my_mat
     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1

> row1 <- c(0.5, 1.3, 3.5)
> row2 <- c(3.9, 131, 2.8)
> row3 <- c(0, 2.2, 4.6)
> row4 <- c(2,7,5.1)
> my_mat2 <- rbind(row1,row2,row3,row4)
> my_mat2
     [,1]  [,2] [,3]
row1  0.5   1.3  3.5
row2  3.9 131.0  2.8
row3  0.0   2.2  4.6
row4  2.0   7.0  5.1
```

4.Створити довільний список (list), в який включити всі базові типи.
```r
> my_list <- list(a,b,c,d,e)
> my_list
[[1]]
[1] -1

[[2]]
[1] 15

[[3]]
[1] TRUE

[[4]]
[1] "male"

[[5]]
[1] 5+7i
```

5.Створити фактор з трьома рівнями «baby», «child», «adult».
```r
> age <- factor(c("baby", "child", "adult", "child","adult","baby","child","baby","child","adult","adult","baby"), 
+ levels=c("baby", "child", "adult"))
> class(age)
[1] "factor"
```

6.Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.
```r
> find_na <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
> which(is.na(find_na)) [1]
[1] 5
> sum(is.na(find_na))
[1] 3
```
7-8.Створити довільний data frame та вивести в консоль. Змінити імена стовпців цього data frame.
```r
> name <- c("Maria", "Stepan", "Natalya", "Oleg", "Sergiy", "Vlad", "Olga", "Daria")
> age <- c(16, 27,31,21,30,17,41,27)
> sex_is_male <- c(F,T,F,T,T,T,F,F)
> df <- data.frame(Name = name, Age = age, Male = sex_is_male)
> df
     Name Age  Male
1   Maria  16 FALSE
2  Stepan  27  TRUE
3 Natalya  31 FALSE
4    Oleg  21  TRUE
5  Sergiy  30  TRUE
6    Vlad  17  TRUE
7    Olga  41 FALSE
8   Daria  27 FALSE
> colnames(df) <- c("Имя", "Возраст", "Мужской пол")
> df
      Имя Возраст Мужской пол
1   Maria      16       FALSE
2  Stepan      27        TRUE
3 Natalya      31       FALSE
4    Oleg      21        TRUE
5  Sergiy      30        TRUE
6    Vlad      17        TRUE
7    Olga      41       FALSE
8   Daria      27       FALSE
```
