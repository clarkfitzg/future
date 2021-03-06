% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resolve.R
\name{resolve}
\alias{resolve}
\title{Wait until all existing futures in an environment are resolved}
\usage{
resolve(x, idxs = NULL, value = FALSE, recursive = 0, sleep = 1,
  progress = getOption("future.progress", FALSE), ...)
}
\arguments{
\item{x}{an environment holding futures.}

\item{idxs}{subset of elements to check.}

\item{value}{If TRUE, the values are retrieved, otherwise not.}

\item{recursive}{A non-negative number specifying how deep of
a recursion should be done.  If TRUE, an infintive recursion
is used.  If FALSE or zero, no recursion is performed.}

\item{sleep}{Number of seconds to wait before checking
if futures have been resolved since last time.}

\item{progress}{If TRUE textual progress summary is outputted.
If a function, the it is called as \code{progress(done, total)}
every time a future is resolved.}

\item{\dots}{Not used}
}
\value{
Returns \code{x} (regardless of subsetting or not).
}
\description{
The environment is first scanned for futures and then the futures
are polled until all are resolved.  When a resolved future is
detected its value is retrieved (optionally).
This provides an efficient mechanism for waiting for a set of
futures to be resolved and in the meanwhile retrieving values
of already resolved futures.
}
\seealso{
futureOf
}

