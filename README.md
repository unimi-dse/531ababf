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
It’s useful to both see the correlation between the variables ‘arrival
delay’ and ‘distance’ and to calculate the average delay for American
Airlines flights departed from New York in 2013. Since the dataset is
quite big, you might have to wait a bit for the download to be
completed.

### Select a carrier

The function `select_carrier()` shows the average arrival delay for a
selected carrier. But first type `?select_carrier` to understand how it
works.
