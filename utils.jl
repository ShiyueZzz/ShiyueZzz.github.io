using Dates

function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end

function hfun_show_tags()
  tags = locvar("tags")
  html_tags = map(x->"<a href=\"../../tag/$x\">$x</a>", tags)
  return join(html_tags, ", ")
end

function hfun_formatted_date()
  date = locvar("date")
  return Dates.format(date, "dd.mm.Y")
end