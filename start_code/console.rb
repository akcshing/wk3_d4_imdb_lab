require_relative("models/casting")
require_relative("models/movie")
require_relative("models/star")

require('pry')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({ 'title' => 'Cloud Atlas', 'genre' => 'Sci-Fi'} )
movie2 = Movie.new({ 'title' => 'Forrest Gump', 'genre'=>'Drama' } )

star1 = Star.new({'first_name' => 'Tom', 'last_name' => 'Hanks'})
star2 = Star.new({'first_name' => 'Hale', 'last_name' => 'Berry'})
star3 = Star.new({'first_name' => 'Robin', 'last_name' => 'Wright'})



movie1.save()
movie2.save()

star1.save()
star2.save()
star3.save()

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id'=> star1.id, 'fee'=> 5_000_000})
casting2 = Casting.new({'movie_id' => movie1.id, 'star_id'=> star2.id, 'fee'=> 5_000_000})
casting3 = Casting.new({'movie_id' => movie2.id, 'star_id'=> star1.id, 'fee'=> 4_000_000})
casting4 = Casting.new({'movie_id' => movie2.id, 'star_id'=> star3.id, 'fee'=> 4_000_000})


casting1.save()
casting2.save()
casting3.save()
casting4.save()

p Star.all()
p Movie.all()
p Casting.all()

binding.pry
nil
