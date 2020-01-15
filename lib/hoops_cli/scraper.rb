module HoopsCli
    class Scraper

        def self.scrape
            doc =  Nokogiri::HTML(open("https://www.nba.com/heat/stats/points"))
            player = doc.css("div.player-name__inner-wrapper").each do |anchor|
            url = anchor.css("a").attr("href").value,
            name = anchor.css("a").text,
                pl_num =  anchor.css("span.playerNumber").text,
                pl_pos = anchor.css("span.playerPosition").text

            HoopsCli::Nba.new(url, name, pl_num, pl_pos)
            end
        end
    end
end


