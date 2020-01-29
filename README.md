flightsanalysis
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
```

### Get data

The function `catch_data()` reads a .csv file from an URL and filters
American Airlines data. Since the dataset is quite big, you might have
to wait a bit for the download to be completed.

### Plot

### Average American Airlines arrival delay
