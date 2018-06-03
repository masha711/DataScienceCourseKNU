1. Створить вектор v із 100 елементів командою v <- rnorm(100). Для цього
вектору виведіть: 10-й елемент; елементи з 10-го по 20-й включно; 10
елементів починаючи з 20-го; елементи більше 0.
```r
> v <- rnorm(100)
> v[10]
[1] -0.2426434
> v[10:20]
 [1] -0.2426434  0.4127756  0.8352075 -2.7143101 -0.4813756  1.4328116  0.6666594
 [8] -0.4713096  0.6092565  0.8275631  1.3990836
> v[20:29]
 [1]  1.39908356 -0.98745161 -0.73337016  0.24342756  0.08087797 -1.02332426
 [7] -1.00911788  0.42859056  0.42025415 -0.11406082
> v[v>0]
 [1] 0.18991211 0.59045308 0.82881937 0.94732237 0.41277557 0.83520746 1.43281162
 [8] 0.66665936 0.60925648 0.82756314 1.39908356 0.24342756 0.08087797 0.42859056
[15] 0.42025415 0.09574875 1.18587520 0.51953943 0.68553496 0.51084518 0.47953528
[22] 0.77221149 1.17349378 0.23292194 1.69191629 0.88738865 0.74942525 0.32840034
[29] 0.13840701 0.43098762 0.04239440 1.40328632 1.79601161 0.57339935 0.60913016
[36] 0.21419281 0.01053669 1.83645868 0.31522457 2.29094996 0.10009537 1.24467969
[43] 1.18874258 0.15119637 1.30568206 0.02142874 1.44026986 1.28142012 0.06530628
```

2. Створити фрейм (data frame) y командою y <- data.frame(a = rnorm(100), b
= 1:100, cc = sample(letters, 100, replace = TRUE)). Для цього data frame
виведіть: останні 10 строк; строки з 10 по 20 включно; 10-й елемент
стовпця b; повністю стовпець cc, при цьому використайте ім’я стовпця.
```r
> y <- data.frame(a = rnorm(100), b= 1:100, cc = sample(letters, 100, replace = TRUE))
> tail(y,10)
             a   b cc
91   0.1593488  91  r
92   2.2585731  92  o
93  -0.9691634  93  p
94   0.5781462  94  w
95   0.6715022  95  b
96  -0.4998253  96  t
97   0.7667603  97  r
98  -0.7055314  98  d
99   0.3124673  99  r
100 -0.2543408 100  r
> y[10:20, 1:3]
            a  b cc
10 -0.7321832 10  p
11  0.6666828 11  t
12  0.4759714 12  z
13 -0.4942255 13  v
14 -0.2581217 14  r
15  1.1803859 15  n
16  0.1288444 16  x
17 -0.8468175 17  c
18  0.7629927 18  t
19 -1.4477640 19  f
20 -0.9804349 20  c
> y[10,2]
[1] 10
y[["cc"]]
  [1] g o n d d o x u l p t z v r n x c t f c b o x n s l i l f s a z y y p q g v b q
 [41] v o b u h o l j t v k i o l l u z f i i s g r t i c d a e e i z q g o i i w g v
 [81] e n b k u p m m i d r o p w b t r d r r
Levels: a b c d e f g h i j k l m n o p q r s t u v w x y z
```

3.Створити вектор z з елементами 1, 2, 3, NA, 4, NA, 5, NA. Для цього
вектору: виведіть всі елементи, які не NA; підрахуйте середнє значення
всіх елементів цього вектору без NA значень та з NA значеннями.
```r
> z <- c(1, 2, 3, NA, 4, NA, 5, NA)
> z[!is.na(z)]
[1] 1 2 3 4 5
> mean(z[!is.na(z)])
[1] 3
> mean(z)
[1] NA
```