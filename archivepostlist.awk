BEGIN {
  FS="::"
}
{
  gsub(/-[0-9][0-9]-[0-9][0-9]/, "", $1)
  #gsub(/ [0-9][0-9][0-9][0-9]$/, "", $3)
  if($1 != last) {
    if(!last) {
      printf "</ul>"
    }
    printf "<h3 class=\"archive-year\">%s</h3><ul class=\"data-list\">", $1
    last = $1
  }
  printf "<li><a href=\"%s\">%s</a> <span class=\"date\">(%s)</span></li>",\
    $4, $2, $3
}
END {
  printf "</ul>"
}

