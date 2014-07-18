meh = User.create(username:"molly", password:"1234q")

a = Imdb::Movie.new("0075314") # Taxi Driver


# user = User.create(username: "sidpatel", password: "password")
# user.comments.create(text: "yo what it is" )


Movie.create(title: a.title, synopsis: a.plot_synopsis)

b = Imdb::Movie.new("0119177") # Gattaca
Movie.create(title: b.title, synopsis: b.plot_synopsis)

c = Imdb::Movie.new("1375666") # Inception
Movie.create(title: c.title, synopsis: c.plot_synopsis)


d = Imdb::Movie.new("0137523") # Fight Club
Movie.create(title: d.title, synopsis: d.plot_synopsis)


e = Imdb::Movie.new("0443453") #Borat
Movie.create(title: e.title, synopsis: e.plot_synopsis)

f = Imdb::Movie.new("0338013") #Eternal Sunshine of the Spotless Mind
Movie.create(title: f.title, synopsis: f.plot_synopsis)

g = Imdb::Movie.new("0114369") #Seven
Movie.create(title: g.title, synopsis: g.plot_synopsis)

h = Imdb::Movie.new("1446714") #Prometheus
Movie.create(title: h.title, synopsis: h.plot_synopsis)

i = Imdb::Movie.new("0206634") #Children of Men
Movie.create(title: i.title, synopsis: i.plot_synopsis)

j = Imdb::Movie.new("0133093") #The Matrix
Movie.create(title: j.title, synopsis: j.plot_synopsis)
