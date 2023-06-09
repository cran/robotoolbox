% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kobo_token.R
\name{kobo_token}
\alias{kobo_token}
\title{Get your KoboToolbox API token}
\usage{
kobo_token(username = NULL, password = NULL, url = NULL, overwrite = FALSE)
}
\arguments{
\item{username}{character, KoboToolbox account username.}

\item{password}{character, KoboToolbox account password.}

\item{url}{character, KoboToolbox server URL.}

\item{overwrite}{logical, if \code{TRUE}, it overwrites the existing token.
Default to \code{FALSE}.}
}
\value{
A \code{character}, the KoboToolbox API token. It also stores, as a side effect,
the URL and token as the environment variables \code{KOBOTOOLBOX_URL} and
\code{KOBOTOOLBOX_TOKEN} respectively.
}
\description{
Get your KoboToolbox API token from your username and password.
}
\examples{
\dontrun{
# use your own KoboToolbox URL, username and password
if (require(askpass)) {
 token <- kobo_setup(username = "cool_user_name",
                     password = askpass::askpass(),
                     url = "https://kf.kobotoolbox.org/")
 token
 }
}

}
