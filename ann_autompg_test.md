---
title: "ann_autompg_test"
author: "Ahmed Assal"
date: "February 4, 2016"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
auto = read.table("D:\\DEV\\kth\\dd2432_ann\\Machine learning an algorithmic perspective(second Ed)-MLcode\\Data\\auto-mpg\\auto-mpg_no_missing.data")

auto$V9 = NULL
```

You can also embed plots, for example:

```{r}
indices = sample(nrow(auto), floor(nrow(auto) * 0.8))
training = auto[indices, ]
testing = auto[-indices, ]
```

```{r}
fit = lm(V1 ~ ., data= training)
pred = predict(fit, newdata = testing)
error = sum((testing[,1] - pred)^2)
error
```
Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
