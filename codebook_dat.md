Codebook created on 2021-12-13 at 2021-12-13 15:15:29
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 295 cases and 15 variables.

## Codebook

| name                                    | type      |   n | missing | unique |   mean | median |   mode | mode_value           |     sd |    v |    min |     max |   range | skew | skew_2se |   kurt | kurt_2se |
|:----------------------------------------|:----------|----:|--------:|-------:|-------:|-------:|-------:|:---------------------|-------:|-----:|-------:|--------:|--------:|-----:|---------:|-------:|---------:|
| study name                              | character | 283 |    0.04 |    282 |        |        |  12.00 |                      |        | 1.00 |        |         |         |      |          |        |          |
| article code                            | character | 279 |    0.05 |    232 |        |        |  16.00 |                      |        | 0.99 |        |         |         |      |          |        |          |
| mean experimental group                 | character | 280 |    0.05 |    279 |        |        |  15.00 |                      |        | 1.00 |        |         |         |      |          |        |          |
| sd experimental group                   | numeric   | 279 |    0.05 |    273 |  56.17 |  18.33 |  18.33 |                      | 166.69 |      |   0.05 | 1522.11 | 1522.06 | 6.62 |    22.69 |  48.82 |    83.97 |
| number of animals in intervention group | numeric   | 280 |    0.05 |     23 |  10.32 |   9.00 |   9.00 |                      |   4.85 |      |   4.00 |   39.00 |   35.00 | 2.46 |     8.44 |   9.22 |    15.88 |
| mean control group                      | numeric   | 279 |    0.05 |    277 | 130.39 |  55.18 |  55.18 |                      | 366.60 |      | -10.59 | 4830.00 | 4840.59 | 9.17 |    31.44 | 102.46 |   176.22 |
| sd control group                        | numeric   | 279 |    0.05 |    271 |  53.63 |  19.12 |  19.12 |                      | 151.84 |      |   0.00 | 1417.13 | 1417.13 | 6.61 |    22.65 |  47.84 |    82.28 |
| number of animals in control group      | numeric   | 280 |    0.05 |     28 |  10.87 |   9.00 |   9.00 |                      |   5.61 |      |   2.00 |   40.00 |   38.00 | 2.15 |     7.37 |   6.11 |    10.52 |
| type of ssri                            | character | 280 |    0.05 |      9 |        |        | 119.00 | Fluoxetine           |        | 0.75 |        |         |         |      |          |        |          |
| frequency                               | character | 280 |    0.05 |     37 |        |        | 118.00 | Acute                |        | 0.80 |        |         |         |      |          |        |          |
| disease induction                       | character | 280 |    0.05 |     21 |        |        | 222.00 | None                 |        | 0.36 |        |         |         |      |          |        |          |
| species                                 | character | 280 |    0.05 |      7 |        |        | 170.00 | Rat                  |        | 0.51 |        |         |         |      |          |        |          |
| type of test                            | character | 280 |    0.05 |     13 |        |        | 219.00 | Conditioned freezing |        | 0.38 |        |         |         |      |          |        |          |
| sensitivity analysis                    | character | 116 |    0.61 |     32 |        |        | 179.00 |                      |        | 0.87 |        |         |         |      |          |        |          |
| Process                                 | character | 295 |    0.00 |      9 |        |        | 118.00 | Acq retr to ctx      |        | 0.77 |        |         |         |      |          |        |          |

### Legend

-   **Name**: Variable name
-   **type**: Data type of the variable
-   **missing**: Proportion of missing values for this variable
-   **unique**: Number of unique values
-   **mean**: Mean value
-   **median**: Median value
-   **mode**: Most common value (for categorical variables, this shows
    the frequency of the most common category)
-   **mode_value**: For categorical variables, the value of the most
    common category
-   **sd**: Standard deviation (measure of dispersion for numerical
    variables
-   **v**: Agresti’s V (measure of dispersion for categorical variables)
-   **min**: Minimum value
-   **max**: Maximum value
-   **range**: Range between minimum and maximum value
-   **skew**: Skewness of the variable
-   **skew_2se**: Skewness of the variable divided by 2\*SE of the
    skewness. If this is greater than abs(1), skewness is significant
-   **kurt**: Kurtosis (peakedness) of the variable
-   **kurt_2se**: Kurtosis of the variable divided by 2\*SE of the
    kurtosis. If this is greater than abs(1), kurtosis is significant.

This codebook was generated using the [Workflow for Open Reproducible
Code in Science (WORCS)](https://osf.io/zcvbs/)
