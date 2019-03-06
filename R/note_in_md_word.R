#' Print text input in word
#'
#' @param input tags id of textarea from shiny ui
#'
#' @return
#' @export
#' @examples
#' note_in_md_word("Please write note using **Markdown** syntax! ")
note_in_md_word=function(input=NULL){
  f1 = tempfile()
  writeLines(input, f1)
  return(knitr::asis_output(readLines(f1, encoding = 'UTF-8')) )
}

