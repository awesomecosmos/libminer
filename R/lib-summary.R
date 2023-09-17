#' R Library Summary
#'
#' Provides utility functions for inspecting and examining your local R package installations.
#'
#' @return A `data.frame` of library paths and total count of packages contained within.
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(sizes=FALSE) {
  if (!is.logical(sizes)) {
    stop("'sizes' must be either TRUE or FALSE. L.")
  }
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors=FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if (sizes == TRUE) {
    pkg_df$lib_size <- sapply(
      pkg_df$Library,
      function(x) {
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      }
    )
  }

  pkg_df
}
