class GooglePage < SitePrism::Page
  set_url("https://google.com")
  
  element :input, "input[name=\"q\"]"

  def has_hyperlink_to?(url)
    page.find("a[href=\"#{url}\"]")
  end
end