Flightsanalysis
================

This package analyzes data of American Airlines flights departed from
NYC in 2013.

## Installation

``` r
# first install the R package "devtools" if not installed
devtools::install_github("unimi-dse/531ababf")
```

## Usage

``` r
# load the package
require(flightsanalysis)
# find out more about it
?flightsanalysis
```

### Analyze

The main function of the package is `analyze()` with no input values.
It’s useful to see the correlation between the variables ‘arrival
delay’ and ‘distance’. It also calculates the average arrival delay for
American Airlines flights departed from New York in 2013. Since the
dataset is quite big, you might have to wait a bit for the download to
be completed.

### Select a carrier

The function `select_carrier()` shows the average arrival delay for a
selected carrier. Type `?select_carrier` before using it to understand
how it works.

### Interactive interface

The function `runEXP()` with no inputs launches an interactive interface
from which you can explore the variables used in the package. type
`?runEXP` for more info.
