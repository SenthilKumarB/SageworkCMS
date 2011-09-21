xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Articles"
    xml.description "Many articles"
    xml.link article_url(:rss)

    xml.item do
      xml.title @article.title
      xml.description @article.body_part
      xml.pubDate @article.created_at(:rfc822)
      xml.link article_url(:rss, :articles => @article.title)
    end
  end
end