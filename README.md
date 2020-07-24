# Quantitative analysis genotypes of VDR genes people with colorectal cancer vs. healthy control

## Material
The study covered 645 subjects, including 276 colorectal cancer patients and 369 healthy subjects.

## Methods
* Genotype frequency was tested for compliance with Hardy-Weinberg equilibrum by analysis &chi;<sup>2</sup> to determine the relationship between allele frequency and the frequency of genotypes in the population and the conditions under which this relationship will be maintained.
* Using a statistical test we checked for significant differences between the observed and predicted numbers of individual genotypes, considering p < 0, 05 to be statistically significant. The p values are shown without correction for many comparisons.
* Calculated OR (odds ratio) to compare the odds between the treatment and control group.

### Technologies
 package R
 
## Results

Table 1: Locus GT analysis in cancer patients

|                                  |    GG    |    GT     | TT         |
:---------------------------------:|:--------:|:---------:|:-----------:|
|observed numbers                  |     57.00|  140.00   | 79.00      |
|observed frequency of genotypes|0.2065217 | 0.5072464 | 0.2862319  |
|expected number of genotypes |58.4384058|137.1231884| 80.4384058 |
|expected frequency of genotypes|0.2117334 | 0.4968231 |0.2914435   |



Table 2: Locus GT analysis in the control group
|                                  |    GG    |    GT     | TT         |
:---------------------------------:|:--------:|:---------:|:-----------:|
|observed numbers       |  79.00   |  178.00   | 112.00      |
|observed frequency of genotypes |0.2140921 | 0.4823848 | 0.3035230  |
|expected number of genotypes |76.4878049|183.0243902| 109.4878049 |
|expected frequency of genotypes |0.2072840 | 0.4960011 |0.2967149   |

Based on c2 statistics, we have determined the probability of rejecting the hypothesis assuming no differences between 
the compared distribution of genotypes. In the case of the test group with colorectal cancer the statistic c2 = 0.1216031, df = 2. The value of p (=0.94101) is greater than the assumed value and therefore we have no grounds to reject the null hypothesis. Hence the conclusion that this locus is in Hardy-Weinberg's equilibrium. In the same way we also defined the control group. The statistic c2 was 0.27806 with df equal to 2. The value p(=0.8702019) was again greater than the assumed value a. That means,  that there are no differences between the observed and expected genotypes in both groups.


OR<sub>GG/TT</sub> | OR<sub>GG+GT/TT</sub> | OR<sub>GG/GT+TT</sub>
-----------|---------------|---------------
1.022913   | 1.086736      | 0.9554361

The chance quotients calculated on the basis of different genotypic numbers do not differ significantly. On the basis of this study, it is not possible to clearly state a genotype that increases the incidence of the disease, however, we can conclude that the GG genotype in relation to TT shows a slightly higher incidence. 
