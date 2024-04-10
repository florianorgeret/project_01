
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Reproducibility demo

<!-- badges: start -->
<!-- badges: end -->

The goal of this repository (**project_01**) is to make of small example
on how to make a r project reproducible.

In order to reproduce what I’m about to show, you can download the
repository by clicking on the green `< > Code` button, at the top of the
file list, then click on “*Download ZIP*” to save the whole project
somewhere on your computer.

Alternatively, in RStudio you can do as follows: File \> New Project \>
Version Control \> Git and copy/paste the repository URL:
<https://github.com/florianorgeret/project_01>

When loading the R project with RStudio, pay attention to the message in
the console, you will be inform of the R packages used for this project
by runnin renv::status(). To actually install the same exact R packges
version, then you could type renv::restore().

For the demo we will use the penguins dataset from the R package
[palmerpenguins](https://allisonhorst.github.io/palmerpenguins/)

![](https://allisonhorst.github.io/palmerpenguins/logo.png)

``` r
library(palmerpenguins)

citation("palmerpenguins")
#> To cite palmerpenguins in publications use:
#> 
#>   Horst AM, Hill AP, Gorman KB (2020). palmerpenguins: Palmer
#>   Archipelago (Antarctica) penguin data. R package version 0.1.0.
#>   https://allisonhorst.github.io/palmerpenguins/. doi:
#>   10.5281/zenodo.3960218.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {palmerpenguins: Palmer Archipelago (Antarctica) penguin data},
#>     author = {Allison Marie Horst and Alison Presmanes Hill and Kristen B Gorman},
#>     year = {2020},
#>     note = {R package version 0.1.0},
#>     doi = {10.5281/zenodo.3960218},
#>     url = {https://allisonhorst.github.io/palmerpenguins/},
#>   }
```

## License for this demo

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/">
<a property="dct:title" rel="cc:attributionURL" href="https://github.com/florianorgeret/project_01">Small
reproducibility demo</a> by
<a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://florianorgeret.github.io/">Florian
Orgeret</a> is licensed under
<a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC
BY
4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a>
</p>
