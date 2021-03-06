% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprec-tile.R
\name{tile}
\alias{tile}
\alias{tile_dfr}
\alias{tile_dfc}
\title{Tiling window calculation}
\usage{
tile(.x, .f, ..., .size = 1, .bind = FALSE)

tile_dfr(.x, .f, ..., .size = 1, .bind = FALSE, .id = NULL)

tile_dfc(.x, .f, ..., .size = 1, .bind = FALSE)
}
\arguments{
\item{.x}{An object to slide over.}

\item{.f}{A function, formula, or vector (not necessarily atomic).

If a \strong{function}, it is used as is.

If a \strong{formula}, e.g. \code{~ .x + 2}, it is converted to a function. There
are three ways to refer to the arguments:
\itemize{
\item For a single argument function, use \code{.}
\item For a two argument function, use \code{.x} and \code{.y}
\item For more arguments, use \code{..1}, \code{..2}, \code{..3} etc
}

This syntax allows you to create very compact anonymous functions.

If \strong{character vector}, \strong{numeric vector}, or \strong{list}, it is
converted to an extractor function. Character vectors index by
name and numeric vectors index by position; use a list to index
by position and name at different levels. If a component is not
present, the value of \code{.default} will be returned.}

\item{...}{Additional arguments passed on to the mapped function.}

\item{.size}{An integer for window size. If positive, moving forward from left
to right; if negative, moving backward (from right to left).}

\item{.bind}{If \code{.x} is a list, should \code{.x} be combined before applying \code{.f}?
If \code{.x} is a list of data frames, row binding is carried out.}

\item{.id}{Either a string or \code{NULL}. If a string, the output will contain
a variable with that name, storing either the name (if \code{.x} is named) or
the index (if \code{.x} is unnamed) of the input. If \code{NULL}, the default, no
variable will be created.

Only applies to \code{_dfr} variant.}
}
\description{
\lifecycle{soft-deprecated}

Please consider using the \href{https://davisvaughan.github.io/slider}{slider} package.

Tiling window without overlapping observations:
\itemize{
\item \code{tile()} always returns a list.
\item \code{tile_lgl()}, \code{tile_int()}, \code{tile_dbl()}, \code{tile_chr()} use the same
arguments as \code{tile()}, but return vectors of the corresponding type.
\item \code{tile_dfr()} \code{tile_dfc()} return data frames using row-binding & column-binding.
}
}
\examples{
x <- 1:5
lst <- list(x = x, y = 6:10, z = 11:15)
tile_dbl(x, mean, .size = 2)
tile_lgl(x, ~ mean(.) > 2, .size = 2)
tile(lst, ~., .size = 2)
}
\seealso{
\itemize{
\item \link{future_tile} for tiling window in parallel
\item \link{slide} for sliding window with overlapping observations
\item \link{stretch} for expanding more observations
}

Other tiling window functions: 
\code{\link{tile2}()}
}
\concept{tiling window functions}
\alias{tile_lgl}
\alias{tile_chr}
\alias{tile_dbl}
\alias{tile_int}
