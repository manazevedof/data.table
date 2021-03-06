\name{transpose}
\alias{transpose}
\title{Efficient transpose of list}
\description{
  \code{transpose} is an efficient way to transpose \code{lists}, \code{data frames} or \code{data tables}. 
}

\usage{
transpose(l, fill=NA, ignore.empty=FALSE)
}
\arguments{
  \item{l}{ A list, data.frame or data.table. }
  \item{fill}{ Default is \code{NA}. It is used to fill shorter list elements so as to return each element of the transposed result of equal lengths. }
  \item{ignore.empty}{Default is \code{FALSE}. \code{TRUE} will ignore length-0 list elements.}
}
\details{
  The list elements (or columns of \code{data.frame}/\code{data.table}) should be all \code{atomic}. If list elements are of unequal lengths, the value provided in \code{fill} will be used so that the resulting list always has all elements of identical lengths. The class of input object is also preserved in the transposed result.

  The \code{ignore.empty} argument can be used to skip or include length-0 elements.

  This is particularly useful in tasks that require splitting a character column and assigning each part to a separate column. This operation is quite common enough that a function \code{\link{tstrsplit}} is exported.

  \code{factor} columns are converted to \code{character} type. Attributes are not preserved at the moment. This may change in the future.

}
\value{
  A transposed \code{list}, \code{data.frame} or \code{data.table}.
}

\examples{
ll = list(1:5, 6:8)
transpose(ll)
setDT(transpose(ll, fill=0))[]

dt = data.table(x=1:5, y=6:10)
transpose(dt)
}
\seealso{
  \code{\link{data.table}}, \code{\link{tstrsplit}}
}
\keyword{ data }

