% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time-zones.r
\name{force_tz}
\alias{force_tz}
\title{Replace time zone to create new date-time}
\usage{
force_tz(time, tzone = "", roll = FALSE)
}
\arguments{
\item{time}{a POSIXct, POSIXlt, Date, chron date-time object, or a data.frame
object. When a data.frame all POSIXt elements of a data.frame are processed
with \code{force_tz()} and new data.frame is returned.}

\item{tzone}{a character string containing the time zone to convert to. R
must recognize the name contained in the string as a time zone on your
system.}

\item{roll}{logical. If TRUE, and \code{time} falls into DST skip assume the next
valid civil time, otherwise return NA. See examples.}
}
\value{
a POSIXct object in the updated time zone
}
\description{
force_tz returns a the date-time that has the same clock time as x in the new
time zone.
Although the new date-time has the same clock time (e.g. the
same values in the year, month, days, etc. elements) it is a
different moment of time than the input date-time. force_tz defaults to the
Universal Coordinated time zone (UTC) when an unrecognized time zone is
inputted. See \code{\link[=Sys.timezone]{Sys.timezone()}} for more information on how R
recognizes time zones.
}
\examples{
x <- ymd_hms("2009-08-07 00:00:01", tz = "America/New_York")
force_tz(x, "UTC")
force_tz(x, "Europe/Amsterdam")
## DST skip:
y <- ymd_hms("2010-03-14 02:05:05 UTC")
force_tz(y, "America/New_York", roll=FALSE)
force_tz(y, "America/New_York", roll=TRUE)
}
\seealso{
\code{\link[=with_tz]{with_tz()}}
}
\keyword{chron}
\keyword{manip}
