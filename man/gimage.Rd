% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gimage.R
\name{gimage}
\alias{gimage}
\alias{.gimage}
\title{A widget for displaying an image file}
\usage{
gimage(
  filename = "",
  dirname = "",
  stock.id = NULL,
  size = "",
  handler = NULL,
  action = NULL,
  container = NULL,
  ...,
  toolkit = guiToolkit()
)

.gimage(
  toolkit,
  filename = "",
  dirname = "",
  stock.id = NULL,
  size = "",
  handler = NULL,
  action = NULL,
  container = NULL,
  ...
)
}
\arguments{
\item{filename}{basename of file}

\item{dirname}{dirname of file}

\item{stock.id}{stock id of icon (if non NULL)}

\item{size}{size of icon when a stock id (toolkit dependent)}

\item{handler}{handler if image is clicked on.}

\item{action}{passed to handler}

\item{container}{parent container}

\item{...}{passed to add method of parent}

\item{toolkit}{toolkit}
}
\description{
A widget for displaying an image file

generic for toolkit dispatch
}
