---
title       : Pigeon Racing Results by Sex
subtitle    : Observing Differing Results by Color
author      : Ilana G.
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

### Pigeon racing is a very niche sport in the US

Hundreds of races occur every year, with each race being incredibly competitive. The races are monitored and tracked by the American Pigeon Racing Union (more information can be found here: http://www.pigeon.org/)

Races can be either short or long distances. In either case, however, pigeons can find themselves in dangerous situations, and are subject to the prey birds of North America. 

This app explores which birds are most successful at finishing one specific race. Data can be observed by pigeon gender, and additionally broken down by color. 

--- .class #id 

## Breakout by Pigeon Gender



There are 9 male pigeons in this dataset, and 391 female pigeons. The average speed for a male pigeon was 128.0361111 and the average speed for a female pigeon was 128.7261867. 

Because there are so few males in this particular race, gender is not a good measure for analysis. However, the lack of males could also indicate the training preference of the participants, or to some other reason why females are so heavily favored. 

--- .class #id 

## Breakout by Pigeon Color

When looking by color, there does not appear to be much deviation in average speed. 


```r
#dataset <- read.csv("data/pigeon-racing.csv")
tapply(dataset$Speed, dataset$Color, mean)
```

```
##       BB     BBPD     BBPI     BBSP     BBWF       BC      BCH     BCSP 
## 124.0063 153.5310 120.1236 136.3513 130.9791 135.3931  91.4760  97.9145 
##     BCWF     BKWF     BLCK      BLK       DC     DCWF     GRIZ     GRZL 
## 140.5683  99.4260 157.5410 125.7622 123.5477 137.2612 125.8385 161.8390 
##     OPAL     OPWF     PENC       RC     RCSP     RCWF      RED      SIL 
## 118.3735 146.0780 119.2740 128.6933 159.4440 104.2650 147.9162 107.1542 
##     SILV     SIWF     WGRZ     WHGR      WHT 
## 131.7518 163.5690 134.2665 152.5130 114.4720
```


--- .class #id 

## Other Observations


--- .class #id 

## Ideas for Future Use

This app uses the data available from only one race. In the future, exploring the breakdown of finishers, speed, and place by location of race could provide more robust analysis.

In general, pigeon racing is something many people are not familiar with. Prior to beginning this project, I was unaware it existed. 


--- .class #id 

