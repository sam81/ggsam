\name{geom_floating_errorbar}
\alias{geom_floating_errorbar}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Horizontal error bars without a vertical line connecting them}
\description{
Horizontal error bars without a vertical line connecting them.
}
\usage{
geom_floating_errorbar(aes(ymin=lower, ymax=upper))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{aes}{aesthetic, ymin and ymax are required}
}
%\details{
%  ~~ If necessary, more details than the description above ~~
%}
%% \value{
%% a vector of the same mode as the input vector, flipped in the left right direction
%% }
%\references{ ~put references to the literature/web site here ~ }
\author{Samuele Carcagno}

%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
## Example 1
df = data.frame(
    trt = factor(c(1, 1, 2, 2)),
    resp = c(1, 5, 3, 4),
    group = factor(c(1, 2, 1, 2)),
    upper = c(1.1, 5.3, 3.3, 4.2),
    lower = c(0.8, 4.6, 2.4, 3.6)
)
    
p = ggplot(df, aes(trt, resp, colour = group))
p = p + geom_floating_errorbar(aes(ymin = lower, ymax = upper), width = 0.2)
print(p)

##Example 2
## NOT RUN
## library(dplyr)
## library(grDevices)
## set.seed(123)
## x = rep(c("A", "B"), each=10)
## y = numeric(20)
## y[1:10] = rnorm(10, mean=5, sd=1)
## y[11:20] = rnorm(10, mean=8, sd=1.5)

## dat = data.frame(x=x, y=y)
## barColor = adjustcolor("grey10", alpha.f=0.6)
## summDat = dat %>% group_by(x) %>% summarize(mean_y=mean(y), sd_y=sd(y))
## summDat$y = summDat$mean_y

## ##plot the individual points
## p = ggplot(dat, aes(x, y)) + geom_point(position=position_jitter(0.125))
## ##plot the mean denoted by a thick horizontal bar
## p = p + geom_midbar(data=summDat, aes(x=x, y=y), width=0.4, size=1.2, color=barColor)
## ## plot the error bars (thinner and narrower)
## p = p + geom_floating_errorbar(data=summDat, aes(x=x, ymin=y-sd_y, ymax=y+sd_y), width=0.25, color=barColor)
## print(p)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
