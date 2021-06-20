function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

html_img_click(src, alt) = "[![$(Franklin.htmlesc(alt))]($src)]($src)"

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end

function lx_figclick(lx, _)
  # keep this first line
  brace_content = Franklin.content(lx.braces[1]) # input string
  alt, rpath = strip.(split(brace_content, ','))
  path  = Franklin.parse_rpath(rpath; canonical=false, code=true)
  return html_img_click(path, alt)
end