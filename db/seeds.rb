meh = User.create(username:"molly", password:"1234q")

### generate Random Users for Diverse Comments

100.times do
	User.create(username: Faker::Name.name, password: (rand(10).to_s + Faker::Lorem.word + rand(10).to_s))
end

# user = User.create(username: "sidpatel", password: "password")
# user.comments.create(text: "yo what it is" )


a = Imdb::Movie.new("0075314") # Taxi Driver
a_movie = Movie.create(title: a.title, synopsis: a.plot_synopsis)


b = Imdb::Movie.new("0119177") # Gattaca
b_movie = Movie.create(title: b.title, synopsis: b.plot_synopsis)


c = Imdb::Movie.new("1375666") # Inception
c_movie = Movie.create(title: c.title, synopsis: c.plot_synopsis)


d = Imdb::Movie.new("0137523") # Fight Club
d_movie = Movie.create(title: d.title, synopsis: d.plot_synopsis)


e = Imdb::Movie.new("0443453") #Borat
e_movie = Movie.create(title: e.title, synopsis: e.plot_synopsis)



f = Imdb::Movie.new("0338013") #Eternal Sunshine of the Spotless Mind
f_movie = Movie.create(title: f.title, synopsis: f.plot_synopsis)


g = Imdb::Movie.new("0114369") #Seven
g_movie = Movie.create(title: g.title, synopsis: g.plot_synopsis)


h = Imdb::Movie.new("1446714") #Prometheus
h_movie= Movie.create(title: h.title, synopsis: h.plot_synopsis)


i = Imdb::Movie.new("0206634") #Children of Men
i_movie = Movie.create(title: i.title, synopsis: i.plot_synopsis)


j = Imdb::Movie.new("0133093") #The Matrix
j_movie = Movie.create(title: j.title, synopsis: j.plot_synopsis)


##### SEED COMMENTS

100.times do 
	Comment.create(text: Faker::Lorem.sentence, vote_count: (rand(100)- 50), line_id: rand(1250), user_id: rand(100)) 
end











