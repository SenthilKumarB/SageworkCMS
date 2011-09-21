xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Pages"
    xml.description "Listing Pages"
    xml.link page_url(:rss)

    xml.item do
      xml.title @page.title
      xml.description @page.page_description
      xml.pubDate @page.created_at(:rfc822)
      xml.link page_url(:rss, :articles => @page.menu_header)
    end
  end
end