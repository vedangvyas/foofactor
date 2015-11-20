foofactors
==========

The goal of foofactor is to [practice in the development of an R package](http://stat545-ubc.github.io/packages00_index.html). Functions include:

-   `fbind()`
-   `freq_out()`
-   `should_factor_be_factor()`

Installation
------------

You can try out the dev version from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("csiu/foofactor")
```

Usage
-----

We first load the package

``` r
library(foofactor)
```

In the package, I have also provided example factors

``` r
exampleFactor1
#> [1] setosa     versicolor virginica 
#> Levels: setosa versicolor virginica
exampleFactor2
#> [1] ctrl trt1 trt2
#> Levels: ctrl trt1 trt2
exampleFactor3
#>  [1] setosa     setosa     setosa     setosa     setosa     setosa    
#>  [7] setosa     setosa     setosa     setosa     versicolor versicolor
#> [13] versicolor versicolor versicolor versicolor versicolor versicolor
#> [19] versicolor versicolor versicolor versicolor versicolor versicolor
#> [25] versicolor virginica  virginica  virginica  virginica  virginica 
#> [31] virginica  virginica  virginica  virginica 
#> Levels: setosa versicolor virginica
```

### `fbind` - Bind two factors together

``` r
fbind(exampleFactor1, exampleFactor2, level.as.appears = TRUE)
#> [1] setosa     versicolor virginica  ctrl       trt1       trt2      
#> Levels: setosa versicolor virginica ctrl trt1 trt2
```

Here we bind together two factors. When we specify `level.as.appears = FALSE`, the order of the levels will seemingly be random.

### `freq_out` - Create a frequency table for a factor

``` r
freq_out(exampleFactor3, n.sort = "descending")
#> Source: local data frame [3 x 2]
#> 
#>            x     n
#>       (fctr) (int)
#> 1 versicolor    15
#> 2     setosa    10
#> 3  virginica     9
```

`n.sort` can take the values of `ascending`, `descending`, or `NULL` (where `NULL` refers to the default behaviour without sorting on the frequency column).

### `should_factor_stay_factor` - Should factor stay as factor?

``` r
should_factor_stay_factor(exampleFactor3)
#> [1] TRUE
```

Here we ask whether it makes sense for a factor to stay as a factor e.g. if the number of unique values of a factor is equal to the length, then maybe the factor would be better suited as a character vector.

Vignettes
---------

For more information, please check out the vignette at:

``` r
vignette("foofactor")
```

Acknowledgements
----------------

-   [Jenny Bryan](http://github.com/jennybc) and [STAT 545/547M](http://stat545-ubc.github.io/packages00_index.html) for teaching and providing resources to simplify writing an R package
-   [parent `foofactors` repo](https://github.com/STAT545-UBC/foofactors)
