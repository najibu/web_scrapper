class Scrape
	attr_accessor :title, :hotness, :image_url, :rating, :director,
	:genre, :runtime, :synopsis, :failure

	def scrape_new_movie(url)
		begin
			doc = Nokogiri::HTML(open(url))

			doc.css('script').remove
         #    t.string :title
         self.title = doc.at("//h1[@data-type = 'title']").text
         #    t.integer :hotness
         self.hotness = doc.at("//span[@itemprop = 'ratingValue']").text.to_i
         #    t.string :image_url
         self.image_url = doc.at_css('#movie-image-section img')['src']
         #    t.string :rating
         self.rating = doc.at("//td[@itemprop = 'contentRating']").text
         #    t.string :director
         self.director = doc.at("//td[@itemprop = 'director']").css('a').first.text
         #    t.string :genre
         self.genre = doc.at("//span[@itemprop = 'genre']").text
         #    t.string :runtime
         self.runtime = doc.at("//time[@itemprop = 'duration']").text
         # t.text :synopsis    
         self.synopsis = doc.css('#movieSynopsis').text.tidy_bytes
         return true
       rescue Exception => e
       	self.failure = "Something went wrong with the scrape"
       end
     end

   end