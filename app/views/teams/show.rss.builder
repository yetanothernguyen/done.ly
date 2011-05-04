xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Done.ly team log for #{@team.name}"
    xml.description "Track what your team got done today. "
    xml.link team_url(@team)

    for day in @posts_by_days
      
      content = "<ul>"
      day[1].each { |post| content = content + "<li><em>#{post.user.name}</em> #{post.content}</li>" }
      content = content + "</ul"
      
      
      xml.item do
        xml.title day[0].to_date
        xml.description content
        xml.pubDate day[0].to_s(:rfc822)
        xml.link team_url(@team)
        xml.guid team_url(@team)
      end
    end
  end
end