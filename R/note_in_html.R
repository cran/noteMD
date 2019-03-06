#' Print text input in html
#'
#' @param input tags id of textarea from shiny ui
#'
#' @return
#' @export
#' @examples
#' note_in_html("Please write note using **Markdown** syntax! ")
note_in_html=function(input=NULL){
#  rmarkdown:::find_pandoc()
  f1 = tempfile()
  f2 = tempfile()

  f1 <- tempfile()
  writeLines(input, f1)

  ## convert input to html
  rmarkdown::pandoc_convert(f1, to = 'html', from = 'markdown', output = f2)
  ## read results
  res <-readLines(f2)
  paste(res, collapse = '\n')
}
