% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gexpandgroup.R
\name{gexpandgroup}
\alias{gexpandgroup}
\alias{.gexpandgroup}
\alias{visible<-.GExpandGroup}
\alias{addHandlerChanged.GExpandGroup}
\title{Constructor of box container widget with disclosure trigger and label}
\usage{
gexpandgroup(
  text = "",
  markup = FALSE,
  horizontal = TRUE,
  handler = NULL,
  action = NULL,
  container = NULL,
  ...,
  toolkit = guiToolkit()
)

.gexpandgroup(
  toolkit,
  text = "",
  markup = FALSE,
  horizontal = TRUE,
  handler = NULL,
  action = NULL,
  container = NULL,
  ...
)

\method{visible}{GExpandGroup} (obj) <- value

\method{addHandlerChanged}{GExpandGroup}(obj, handler, action = NULL, ...)
}
\arguments{
\item{text}{Label text}

\item{markup}{logical. Does text have markup? (Toolkit dependent: only implemented for \code{RGtk2}, in \code{qtbase} one can pass HTML formatted text)}

\item{horizontal}{horizontal (\code{TRUE}) or vertical packing.}

\item{handler}{handler called when state is toggled}

\item{action}{passed to handler}

\item{container}{parent container}

\item{...}{passed to parent's \code{add} method}

\item{toolkit}{toolkit}

\item{obj}{object receiving event and emitting a signal to the handler}

\item{value}{logical. If \code{TRUE} show, \code{FALSE} hide.}
}
\value{
An object of class \code{GExpandGroup}
inheriting from \code{GFrame}
}
\description{
For gexpandgroup, the visible assignment method is overridden to change the disclosure state

The change handler for a expandGroup is called when the group changes visibility
}
\examples{
 if(interactive()) {
    w <- gwindow("Box containers")
    g <- gvbox(cont=w)                         # ggroup(horizonta=FALSE, ...)
    nb <- gnotebook(cont=g); gbutton("one", label="one", cont=nb)
    gframe("Frame", cont=g)
    pg <- gpanedgroup(cont=g);
    gbutton("one", cont=pg);
    gbutton("two", cont=pg)

    eg <- gexpandgroup(cont=g, horizontal=FALSE);
    glabel("Click above to hide", cont=eg);
    gbutton("one", cont=eg);
    gbutton("two", cont=eg)
}
}
\seealso{
\code{\link{ggroup}} and \code{\link{gframe}}
}
