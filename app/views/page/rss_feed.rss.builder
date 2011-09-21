xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Page"
    xml.description "Listing Page"
    xml.link page_url(:rss)

 @pages.each do |page|
      xml.item do
        xml.title page.title
        xml.description page.page_description
        xml.pubDate page.created_at(:rfc822)
        xml.link page_url(:rss, :pages => page.menu_header)
      end
    end
  end
end