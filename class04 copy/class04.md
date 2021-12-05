Introduction to R
================
andrea
2021-12-04

``` r
x <- 1:50
plot(x, sin(x))
```

![](class04_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

``` r
plot(x, sin(x), type=("l"))
```

![](class04_files/figure-gfm/unnamed-chunk-1-2.png)<!-- -->

``` r
plot(x, sin(x), type=("l"), col=("pink"))
```

![](class04_files/figure-gfm/unnamed-chunk-1-3.png)<!-- -->

``` r
plot(x, sin(x), type=("l"), col=("pink"), lwd=(3))
```

![](class04_files/figure-gfm/unnamed-chunk-1-4.png)<!-- -->

``` r
plot(x, sin(x), type=("l"), col=("pink"), lwd=(3), xlab=("my nice text"))
```

![](class04_files/figure-gfm/unnamed-chunk-1-5.png)<!-- -->
