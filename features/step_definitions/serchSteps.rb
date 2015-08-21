前提(/^"([^"]*)"を表示する$/) do |url|

$agent = Mechanize.new
$agent.user_agent_alias = 'Windows Mozilla'
   
$page = $agent.get(url)
end

もし(/^"([^"]*)"クラスがある$/) do |class1|
 $topicLinks = $page.links_with(:text => $page.root.search('.'+class1)[0].text)
end

ならば(/^先頭のリンク先をクリックする$/) do

$page2 = $agent.get($topicLinks[0].click)
end

ならば(/^遷移したURLがリンクのそれと同じである$/) do
puts 'TITLE:' +  $page2.root.title
end

ならば(/^"([^"]*)"クラスのテキストを表示する$/) do |topicText|
File.open('/usr/local/log/mail.txt','a') do |file|
  file.write $page2.root.search('.'+topicText).text
 file.close
end
#puts $page2.root
puts image=$page2.images_with(:dom_class => 'gunosy-app-icon')[0].url
$agent.get(image).save("/usr/local/log/image.png")
end
