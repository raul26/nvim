local state, colorizer = pcall(require, "colorizer")
if not state then
  return
end

colorizer.setup({
  user_default_options = {
      RGB = true, -- #RGB hex codes
      RRGGBB = true, -- #RRGGBB hex codes
      names = true, -- "Name" codes like Blue or blue
      rgb_fn = true, -- CSS rgb() and rgba() functions
      css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      virtualtext = "■",
    },
})
