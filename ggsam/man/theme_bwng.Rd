\name{theme_bwng}
\alias{theme_bwng}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Black and white theme without grid lines}
\description{
Black and white theme without grid lines.
}
\usage{
theme_bwng()
}
%- maybe also 'usage' for other objects documented here.
%% \arguments{
%%   \item{aes}{aesthetic, ymin and ymax are required}
%% }
%\details{
%  ~~ If necessary, more details than the description above ~~
%}
%% \value{
%% a vector of the same mode as the input vector, flipped in the left right direction
%% }
%\references{ ~put references to the literature/web site here ~ }
\author{Samuele Carcagno}
}
%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
dat = data.frame(x=rnorm(50), y=rnorm(50))
ggplot(dat, aes(x,y)) + geom_point() + theme_bwng()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
