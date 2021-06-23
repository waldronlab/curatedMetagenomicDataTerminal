#' Install the CLI
#'
#' Install the CLI along the default path or a custom path.
#'
#' If not installing along a `bin` path, you must add the path to $PATH. For
#' example, `export PATH=/path/to/cli:$PATH`.
#'
#' @param path A string representing the installation path
#'
#' @return
#' @export
#'
#' @examples
#' curatedMetagenomicDataCLI::install()
#' curatedMetagenomicDataCLI::install(".")
install <- function(path = "/usr/local/bin/curatedMetagenomicData") {
    source_file <-
        system.file("exec/curatedMetagenomicData", package = "curatedMetagenomicDataCLI")

    target_file <-
        as.character(path)

    system_link <-
        paste("ln -s", source_file, target_file)

    system(system_link)
}
