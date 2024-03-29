% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guiToolkit.R, R/BasicInterface.R,
%   R/command-stack.R, R/ws-model.R, R/icons.R
\docType{class}
\name{guiWidgetsToolkit-class}
\alias{guiWidgetsToolkit-class}
\alias{Observer-class}
\alias{Observer}
\alias{Handler-class}
\alias{Handler}
\alias{Observable-class}
\alias{Observable}
\alias{BasicToolkitInterface-class}
\alias{BasicToolkitInterface}
\alias{Command-class}
\alias{Command}
\alias{CommandList-class}
\alias{CommandList}
\alias{CommandStack-class}
\alias{CommandStack}
\alias{WSWatcherModel-class}
\alias{WSWatcherModel}
\alias{GWidgets2Icons-class}
\alias{GWidgets2Icons}
\title{A class to record the toolkit a gui object uses}
\arguments{
\item{...}{passed to constructor}
}
\description{
An observer can be observed

This interface is inherited by the base GComponent classes in the
toolkit implementations. The methods defined here are referenced
by the S3 methods. For exampe, \code{svalue} dispatches to
\code{get_value} or \code{get_index}.

Class for commands. Has methods do, redo, undo

A list with ptr. delegates call of do or undo to appropriate command

A reference class to create a model that monitors the global
workspace. The class has method \code{update_state} and the
"getting" methods \code{get_by_class}, \code{get_by_function}
(filter), \code{get_changes}. Use with a \code{gtimer} instance to
keep up to date with changes to the workspace.
}
\details{
We combine both widget and container methods here. It isn't
perfect, but they do share quite a bit. Perhaps, we could make the
container class subclass the basic interface.
}
\section{Methods}{

\describe{
\item{\code{update(...)}}{Call self.}

\item{\code{update(...)}}{Call self.}

\item{\code{add_observer(o, signal = "DEFAULT")}}{Add an observer. Return id for block/remove/...}

\item{\code{block_observer(id)}}{Block observers. If o missing, block all}

\item{\code{block_observers()}}{Block all observers}

\item{\code{notify_observers(..., signal = "DEFAULT")}}{Call each non-blocked observer}

\item{\code{remove_observer(id)}}{Remove observer}

\item{\code{unblock_observer(id)}}{Unblock observer. If id missing, unblock global block}

\item{\code{unblock_observers()}}{Remove block of all observers. Keeps count, so may need to call again}

\item{\code{add_handler(signal, handler, action, ...)}}{Add a handler to be called for the event indicated by signal}

\item{\code{get_enabled()}}{is widget sensistive to user input}

\item{\code{get_index(drop = NULL, ...)}}{svalue; index=TRUE}

\item{\code{get_value(drop = NULL, ...)}}{Get main value of widget. From `svalue` when index = FALSE or NULL}

\item{\code{set_enabled(value, ...)}}{specify with logical if widget is sensistive to user input}

\item{\code{set_value(value, ..., drop = NULL)}}{for `svalue<-` when index = FALSE or NULL}

\item{\code{any_changes(...)}}{Report  if any changes}

\item{\code{filter_names(f)}}{Filter the names by f}

\item{\code{get_by_class(classes = character(0))}}{Return objects matching any of classes}

\item{\code{get_by_function(f)}}{Filter objects by function f}

\item{\code{get_changes()}}{Return list of changes}

\item{\code{initialize(...)}}{Initialze state of cached objects}

\item{\code{pop_changes()}}{pop changes, reset}

\item{\code{update_state(...)}}{update cache of names/digests, then notify observers if there are changes}
}}

