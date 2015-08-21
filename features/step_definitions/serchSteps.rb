前提(/^"([^"]*)"を表示する$/) do |url|

$agent = Mechanize.new
$agent.user_agent_alias = 'Windows IE 9'
   
$page = $agent.get(url)
end

もし(/^"([^"]*)"クラスがある$/) do |class1|
 $topicLinks = $page.links_with(:text => $page.root.search('.'+class1)[0].text)
end

ならば(/^先頭のリンク先をクリックする$/) do

$page2 = $agent.get($topicLinks[0].click)
end

ならば(/^遷移したURLがリンクのそれと同じである$/) do
puts "TITLE"+$page2.root.title
end

ならば(/^"([^"]*)"クラスのテキストを表示する$/) do |topicText|
puts "TOPIC" +$page2.root.search('.'+topicText).text

end
