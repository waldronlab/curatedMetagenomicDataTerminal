#' Symlink the curatedMetagenomicData Command-Line Interface
#'
#' The command-line interface is an executable R script that lives in the
#' curatedMetagenomicDataTerminal package. It must be symlinked to a location on
#' your `$PATH` to be used from a terminal - the `install()` function does this
#' by making use of the `ln` system command. So, this won't work if you have
#' Windows, but get in touch if you need it to.
#'
#' @param linked_file the path to the linked file that will be created,
#' `"/usr/local/bin/curatedMetagenomicData"` by default
#'
#' @return the exit status of the system command, invisibly
#' @export
#'
#' @examples
#' \dontrun{
#' install()
#' }
install <- function(linked_file = "/usr/local/bin/curatedMetagenomicData") {
    source_file <-
        base::system.file("exec/curatedMetagenomicData", package = "curatedMetagenomicDataTerminal")

    base::paste("ln -fs", source_file, linked_file) |>
        base::system()
}
