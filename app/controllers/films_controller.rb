class FilmsController < ApplicationController

	def index
		#default view showing most recent nominees
		@films = get_films_by_year(Time.now.year - 1)
	end

	def show
		#show nominees from the year passed through by the user
		@year = params[:id]
		@films = get_films_by_year(@year)
	end

	def get_films_by_year(year)
		films = []
		svc = OData::Service.new "http://odata.netflix.com/Catalog/"
		Film.nominated_in(year).each do |film|
			title = film.title.gsub(/'/, '\'\'')
			svc.Titles.filter("Name eq '#{title}'").top(1)
			movies = svc.execute
			movies.each_with_index do |movie,i|
			  films.push(movie)
			end
		end
		films
	end

end
