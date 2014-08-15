BEGIN {
  FS="::"
}
{
  printf "<li><a href=\"%s\">%s</a> <span class=\"date\">(%s)</span></li>",\
    $4, $2, $3
}
