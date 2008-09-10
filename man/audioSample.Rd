\name{audioSample}
\alias{audioSample}
\title{
  Audio sample class and constructor
}
\description{
  \code{audioSample} is a class encapsulating digitalized (sampled)
  audio data. Essentiually it tags numeric vectors and matrices with
  additional audio information (most importantly sample rate).

  \code{audioSample} is the designated constructor of such objects.

  Instances of the \code{audioSample} are numeric vectors or matrices
  with the following additional attributes:

  \itemize{
    \item{rate}{sample rate (in Hz), mandatory}
    \item{bits}{resolution of the source (in bits), optional}
  }

  If the object itself is a vector, it contains only one
  channel. Otherwise it is a matrix with as many rows as there are
  channels (hence 2 for stereo).
}
\usage{
  audioSample(x, rate=44100, bits=16, clip = TRUE)
  as.audioSample(x, ...)
}
\arguments{
  \item{x}{object to convert or initilize with}
  \item{rate}{sample rate}
  \item{bits}{resolution of the source. It doesn't affect the data
  itself and is only used for playback and export.}
  \item{clip}{boolean value determining whether the source should be
  clipped to a range between -1 and 1. Values outside this range
  result in undefined behavior.}
  \item{...}{parameters passed to the object-specific method}
}
\value{
  \code{audioSample} and \code{as.audioSample} return an audio sample
  object.
}
%\seealso{
%  \code{\link{.jcall}}, \code{\link{.jnull}}
%}
\examples{
x <- audioSample(sin(1:8000/10), 8000)
play(x)
}
\keyword{interface}