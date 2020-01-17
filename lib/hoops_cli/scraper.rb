# require "hoops_cli/nba"
require 'pry'
require 'open-uri'
require 'nokogiri'

require 'nokogiri'
require 'pry'
require 'open-uri'
site = "https://www.nba.com/heat/roster"
@doc = Nokogiri::HTML(open(site))
 team_roster = @doc.css(".roster")
 team_roster.each do |player|	
   name = player.css(".roster__player__header__heading").text
   position = player.css(".roster__player__header_position").text
   number = player.css(".roster__player__header_jnumber").text
   player_url = player.css("footer.roster__player__footer [href]").attr("href").value
   info = player.css(".roster__player")
     info.each do |p|
     player_bio = p.xpath("//div/@aria-label")
    end
    # binding.pry
  end
 # @doc2 = Nokogiri::HTML(open('player_url'))
 #        stats = @doc2.css(".player-stats__stat-value")
 #         binding.pry
# [10] pry(main)> stats[1].text
# => "27.3"
# [11] pry(main)> stats[2].text
# => "5.3"
# [12] pry(main)> stats[3].text
# => "5.3"
# [13] pry(main)> stats[4].text
# => "5.2"
# [14] pry(main)> stats[5].text
# => "5.2"
# [15] pry(main)> stats[6].text
# => "15.2"
# [16] pry(main)> stats[7].text
# => "6-3"
# [17] pry(main)> stats[8].text
# => "6-3"
# [18] pry(main)> stats[9].text
# => "190 lbs"
# [19] pry(main)> stats[10].text
# => "190 lbs"
# [20] pry(main)> stats[11].text
# => "31"
# [21] pry(main)> stats[12].text
# => "31"
# [22] pry(main)> stats[13].text
# => "03/14/1988"
# [23] pry(main)> stats[14].text
# => "Davidson/USA"
# [24] pry(main)> stats[15].text
# => "2009 Rnd 1 Pick 7"
# [25] pry(main)> stats[16].text
# => "2009"
# [26] pry(main)> stats[17].text
# => "10 yrs"
# [27] pry(main)> stats[18].text
# Miami HeatMiami Heat
# Miami Heat Roster
# Player roster with photos, bios, and stats