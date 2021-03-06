#' tsibble scales for ggplot2
#'
#' Defines ggplot2 scales for tsibble custom index: [yearweek], [yearmonth],
#' and [yearquarter].
#'
#' @param ... Arguments passed to [`ggplot2::scale_x_date()`].
#'
#' @return A ggproto object inheriting from `Scale`
#'
#' @name tsibble-scales
NULL

scale_type.yearquarter <- function(x) c("yearquarter", "date", "continuous")

yearquarter_trans <- function() {
  scales::trans_new(
    "yearquarter",
    transform = function(x) {
      scales::date_trans()$transform(as_date(x))
    },
    inverse = function(x) {
      yearquarter(scales::date_trans()$inverse(x))
    },
    breaks = function(x) {
      yearquarter(scales::breaks_pretty()(as_date(x)))
    }
  )
}

#' @rdname tsibble-scales
#' @export
scale_x_yearquarter <- function(...) {
  pkg_not_available("ggplot2", "3.3.0")
  pkg_not_available("scales", "1.1.0")
  ggplot2::ggproto("ScaleContinuousYearmonth", ggplot2::scale_x_date(...),
    trans = yearquarter_trans())
}

#' @rdname tsibble-scales
#' @export
scale_y_yearquarter <- function(...) {
  pkg_not_available("ggplot2", "3.3.0")
  pkg_not_available("scales", "1.1.0")
  ggplot2::ggproto("ScaleContinuousYearmonth", ggplot2::scale_y_date(...),
    trans = yearquarter_trans())
}

scale_type.yearmonth <- function(x) c("yearmonth", "date", "continuous")

yearmonth_trans <- function() {
  scales::trans_new(
    "yearmonth",
    transform = function(x) {
      scales::date_trans()$transform(as_date(x))
    },
    inverse = function(x) {
      yearmonth(scales::date_trans()$inverse(x))
    },
    breaks = function(x) {
      yearmonth(scales::breaks_pretty()(as_date(x)))
    }
  )
}

#' @rdname tsibble-scales
#' @export
scale_x_yearmonth <- function(...) {
  pkg_not_available("ggplot2", "3.3.0")
  pkg_not_available("scales", "1.1.0")
  ggplot2::ggproto("ScaleContinuousYearmonth", ggplot2::scale_x_date(...),
    trans = yearmonth_trans())
}

#' @rdname tsibble-scales
#' @export
scale_y_yearmonth <- function(...) {
  pkg_not_available("ggplot2", "3.3.0")
  pkg_not_available("scales", "1.1.0")
  ggplot2::ggproto("ScaleContinuousYearmonth", ggplot2::scale_y_date(...),
    trans = yearmonth_trans())
}

scale_type.yearweek <- function(x) c("yearweek", "date", "continuous")

yearweek_trans <- function() {
  scales::trans_new(
    "yearweek",
    transform = function(x) {
      scales::date_trans()$transform(as_date(x))
    },
    inverse = function(x) {
      yearweek(scales::date_trans()$inverse(x))
    },
    breaks = function(x) {
      yearweek(scales::breaks_pretty()(as_date(x)))
    }
  )
}

#' @rdname tsibble-scales
#' @export
scale_x_yearweek <- function(...) {
  pkg_not_available("ggplot2", "3.3.0")
  pkg_not_available("scales", "1.1.0")
  ggplot2::ggproto("ScaleContinuousYearweek", ggplot2::scale_x_date(...),
    trans = yearweek_trans())
}

#' @rdname tsibble-scales
#' @export
scale_y_yearweek <- function(...) {
  pkg_not_available("ggplot2", "3.3.0")
  pkg_not_available("scales", "1.1.0")
  ggplot2::ggproto("ScaleContinuousYearweek", ggplot2::scale_y_date(...),
    trans = yearweek_trans())
}
