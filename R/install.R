#' Install the CLI
#'
#' @return
#' @export
#'
#' @examples
install <- function(path = "/usr/local/bin/curatedMetagenomicData") {
    source_file <-
        system.file("exec/curatedMetagenomicData", package = "curatedMetagenomicDataCLI")

    target_file <-
        as.character(path)

    system_link <-
        paste("ln -s", source_file, target_file)

    system(system_link)
}
