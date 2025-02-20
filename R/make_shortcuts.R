# Copyright 2017 Province of British Columbia
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and limitations under the License.

#' Make shortcut functions for data objects in bcmaps from B.C. Data Catalogue
#'
#' This generates a `shortcuts.R` file in the `R` directory, with function definitions
#' and roxygen blocks for each data object in `bcmaps`. This ensures that each
#' data object can be accessed directly from `bcmaps` by a
#' function such as `bc_bound()`, or `airzones("sp")`.
#'
#' Run this function each time you add a new data object.
#'
#' @param file the R file where the shortcut file is. Default "R/shortcuts.R"
#'
#' @examples
#' \dontrun{
#' make_shortcuts()
#' }
#'
#' @return TRUE (invisibly)
make_shortcuts <- function(file = "R/shortcuts.R") {

  if (!requireNamespace("bcmaps") || !requireNamespace("glue")) {
    stop("bcmaps, and glue all need to be installed.")
  }

  layers <- shortcut_layers()

  cat(
    glue::glue("
      #############################################################
      # This file is automatically generated by running the function
      # bcmaps:::make_shortcuts(). Do not edit by hand.
      #############################################################

      "
    ),
    file = file, append = FALSE)

  for (i in seq_len(nrow(layers))) {
    fn_name <- layers[i, "layer_name"]
    fn_title <- layers[i, "title"]

    if (fn_name %in% c("regional_districts", "municipalities")) {
      seealso <- "@seealso [combine_nr_rd()] to combine Regional Districts and the Northern Rockies Regional Municipality into one layer"
    } else {
      seealso <- ""
    }

    fn_defn <- glue::glue("

         roxygen_blocker#' {fn_title}
         roxygen_blocker#'
         roxygen_blocker#'
         roxygen_blocker#' @inheritParams bc_bound_hres
         roxygen_blocker#'
         roxygen_blocker#' @return The spatial layer of `{fn_name}` in the desired class
         roxygen_blocker#'
         roxygen_blocker#' @source `bcdata::{make_bcdata_fn(fn_title)}`
         roxygen_blocker#'
         roxygen_blocker#' {seealso}
         roxygen_blocker#'
         roxygen_blocker#' @examples
         roxygen_blocker#' \\dontrun{{
         roxygen_blocker#' my_layer <- {fn_name}()
         roxygen_blocker#' }}
         roxygen_blocker#'
         roxygen_blocker#' @export
         {fn_name} <- function(class = deprecated(), ask = interactive(), force = FALSE) {{

            if (lifecycle::is_present(class)) {{
              deprecate_sp('bcmaps::{fn_name}(class)')
              class <- match.arg(class, choices = c('sf', 'sp'))
            }}

            get_layer('{fn_name}', class = class, ask = ask, force = force)
         }}

         ")
    fn_defn <- gsub("roxygen_blocker", "", fn_defn)
    cat(fn_defn, file = file, append = TRUE)
    message("Success! Shortcut function for '", fn_name, "' added to ", file)
  }

  add_license_header(file)
  message("Don't forget to run devtools::document to rebuild documentation.")

  invisible(TRUE)
}
