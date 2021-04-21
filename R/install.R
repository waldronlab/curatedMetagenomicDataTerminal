#' Install the CLI
#'
#' @return
#' @export
#'
#' @examples
install <- function() {
    source_file <-
        system.file("exec/curatedMetagenomicData", package = "curatedMetagenomicDataCLI")

    target_file <-
        as.character("/usr/local/bin/curatedMetagenomicData")

    system_link <-
        paste("ln -s", source_file, target_file)

    system(system_link)
}
