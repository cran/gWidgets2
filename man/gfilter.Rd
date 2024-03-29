% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gfilter.R
\name{gfilter}
\alias{gfilter}
\alias{.gfilter}
\alias{svalue.GFilter}
\alias{[.GFilter}
\alias{.gfilter.default}
\title{A widget for filtering a data frame}
\usage{
gfilter(
  DF,
  allow.edit = TRUE,
  initial.vars = NULL,
  handler = NULL,
  action = NULL,
  container = NULL,
  ...,
  toolkit = guiToolkit()
)

.gfilter(
  toolkit,
  DF,
  allow.edit = TRUE,
  initial.vars = NULL,
  handler = NULL,
  action = NULL,
  container = NULL,
  ...
)

\method{svalue}{GFilter}(obj, index = NULL, drop = NULL, ...)

\method{[}{GFilter}(x, i, j, ..., drop = TRUE)

\method{.gfilter}{default}(
  toolkit = guiToolkit(),
  DF,
  allow.edit = TRUE,
  initial.vars = NULL,
  handler = NULL,
  action = NULL,
  container = NULL,
  ...
)
}
\arguments{
\item{DF}{a data frame or \code{GDf} instance to look variables up within.}

\item{allow.edit}{logical. If \code{TRUE} a user may add new
variables to filter by. If FALSE, then one should specify the
variables a user can filter by to \code{initial.vars}.}

\item{initial.vars}{When given, this is a data frame whose first
column specifies the variables within \code{DF} to filter by and
whose second column indicates the type of filter desired. The
available types are \code{single} to select one from many, 
\code{multiple}, for multiple selection; and \code{range}, to
specify a from and to value.}

\item{handler}{A handler assigned to the default change
signal. Handlers are called when some event triggers a widget to
emit a signal. For each widget some default signal is assumed, and
handlers may be assigned to that through \code{addHandlerChanged}
or at construction time. Handlers are functions whose first
argument, \code{h} in the documentation, is a list with atleast
two components \code{obj}, referring to the object emitting the
signal and \code{action}, which passes in user-specified data to
parameterize the function call.

Handlers may also be added via \code{addHandlerXXX} methods for
the widgets, where \code{XXX} indicates the signal, with a default
signal mapped to \code{addHandlerChanged}
(cf. \code{\link{addHandler}} for a listing). These methods pass
back a handler ID that can be used with \code{blockHandler} and
\code{unblockHandler} to suppress temporarily the calling of the
handler.}

\item{action}{User supplied data passed to the handler when it is called}

\item{container}{A parent container. When a widget is created it can be
incorporated into the widget heirarchy by passing in a parent
container at construction time. (For some toolkits this is not
optional, e.g. \pkg{gWidgets2tcltk} or \pkg{gWidgets2WWW2}.)}

\item{...}{dots argument}

\item{toolkit}{Each widget constructor is passed in the toolkit it
will use. This is typically done using the default, which will
lookup the toolkit through \code{\link{guiToolkit}}.}

\item{obj}{object of method call}

\item{index}{NULL or logical. If \code{TRUE} and widget supports it an index, instead of a value will be returned.}

\item{drop}{NULL or logical. If widget supports it, drop will work as it does in a data frame or perhaps someother means.}

\item{x}{the \code{GFilter} object}

\item{i}{passed to \code{get_items}}

\item{j}{passed to \code{get_items}}
}
\value{
returns \code{GFilter} object
}
\description{
This widget provides a simple means to subset, or filter, a data
frame.

The \code{svalue} method for a filter object returns a logical
containing which rows are selected. There is no assignment method.
}
\examples{
\dontrun{
DF <- mtcars[, c("mpg", "cyl", "hp", "am", "wt")]
w <- gwindow("Example of gfilter", visible=FALSE)
pg <- ggroup(container=w)
df <- gtable(DF, container=pg)
a <- gfilter(df, initial.vars=data.frame(names(DF), names(DF),
                   c("single", "multiple", "range", "single", "range"),
                   stringsAsFactors=FALSE),
             allow.edit=TRUE,
             container=pg,
             handler=function(h,...) {
               visible(df) <- h$obj$get_value()
             }
             )
size(w) <- c(600, 600)
visible(w) <- TRUE
}
}
