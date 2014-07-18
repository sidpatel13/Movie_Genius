


# user = User.create(username: "sidpatel", password: "password")
# user.comments.create(text: "yo what it is" )


a = Imdb::Movie.new("0075314") # Taxi Driver

a_movie = Movie.create(title: a.title, synopsis: a.plot_synopsis)

a_movie.synopsis.split(".").each do |line|
	a_movie.lines << Line.create(text: line)
end




b = Imdb::Movie.new("0119177") # Gattaca
b_movie = Movie.create(title: b.title, synopsis: b.plot_synopsis)
b_movie.synopsis.split(".").each do |line|
	b_movie.lines << Line.create(text: line)
end

c = Imdb::Movie.new("1375666") # Inception
c_movie = Movie.create(title: c.title, synopsis: c.plot_synopsis)
c_movie.synopsis.split(".").each do |line|
	c_movie.lines << Line.create(text: line)
end

d = Imdb::Movie.new("0137523") # Fight Club
d_movie = Movie.create(title: d.title, synopsis: d.plot_synopsis)
d_movie.synopsis.split(".").each do |line|
	d_movie.lines << Line.create(text: line)
end

e = Imdb::Movie.new("0443453") #Borat
e_movie = Movie.create(title: e.title, synopsis: e.plot_synopsis)
e_movie.synopsis.split(".").each do |line|
	e_movie.lines << Line.create(text: line)
end


f = Imdb::Movie.new("0338013") #Eternal Sunshine of the Spotless Mind
f_movie = Movie.create(title: f.title, synopsis: f.plot_synopsis)
f_movie.synopsis.split(".").each do |line|
	f_movie.lines << Line.create(text: line)
end

g = Imdb::Movie.new("0114369") #Seven
g_movie = Movie.create(title: g.title, synopsis: g.plot_synopsis)
g_movie.synopsis.split(".").each do |line|
	g_movie.lines << Line.create(text: line)
end

h = Imdb::Movie.new("1446714") #Prometheus
h_movie= Movie.create(title: h.title, synopsis: h.plot_synopsis)
h_movie.synopsis.split(".").each do |line|
	h_movie.lines << Line.create(text: line)
end

i = Imdb::Movie.new("0206634") #Children of Men
i_movie = Movie.create(title: i.title, synopsis: i.plot_synopsis)
i_movie.synopsis.split(".").each do |line|
	i_movie.lines << Line.create(text: line)
end

j = Imdb::Movie.new("0133093") #The Matrix
j_movie = Movie.create(title: j.title, synopsis: j.plot_synopsis)
j_movie.synopsis.split(".").each do |line|
	j_movie.lines << Line.create(text: line)
end