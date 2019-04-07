# Ruby lambda invoker

First you'll need to install the `aws-sdk` gem:

`bundle`

Then you'll need to export your aws credentials that have acess to lambda functions:

```
export AWS_LAMBDA_ACCESS_KEY_ID='YOUR_AWS_LAMBDA_ACCESS_KEY_ID'
export AWS_LAMBDA_SECRET_ACCESS_KEY='YOUR_AWS_LAMBDA_SECRET_ACCESS_KEY'
export AWS_LAMBDA_REGION='YOUR_AWS_LAMBDA_REGION'
```

To make this test I'm using a very nice testing API: https://superheroapi.com/

You can generate a token there and also export this token for the test:
```
export SUPERHEROAPI_ACCESS_TOKEN='YOUR_SUPERHEROAPI_ACCESS_TOKEN'
```

Now, you'll be able to invoke your lambda:

`ruby invoker.rb`

It can take several seconds (in some tests it took almost 16 seconds)

You should expect as an output something like this:

```
response body: {:response=>"success", :"results-for"=>"superman", :results=>[{:id=>"195", :name=>"Cyborg Superman", :powerstats=>{:intelligence=>"75", :strength=>"93", :speed=>"92", :durability=>"100", :power=>"100", :combat=>"80"}, :biography=>{:"full-name"=>"Henry Henshaw", :"alter-egos"=>"No alter egos found.", :aliases=>["Grandmaster of the Manhunters", "Herald of the Anti-Monitor", "Alpha-Prime of the Alpha Lanterns"], :"place-of-birth"=>"-", :"first-appearance"=>"Adventures of Superman #466 (May, 1990)", :publisher=>"DC Comics", :alignment=>"bad"}, :appearance=>{:gender=>"Male", :race=>"Cyborg", :height=>["-", "0 cm"], :weight=>["- lb", "0 kg"], :"eye-color"=>"Blue", :"hair-color"=>"Black"}, :work=>{:occupation=>"-", :base=>"Warworld, Qward, Antimatter Universe, formerly Biot, Sector 3601"}, :connections=>{:"group-affiliation"=>"Alpha Lantern Corps, Manhunters, Warworld, formerly Apokolips and Sinestro Corps", :relatives=>"Terri Henshaw (wife, deceased)"}, :image=>{:url=>"https://www.superherodb.com/pictures2/portraits/10/100/667.jpg"}}, {:id=>"644", :name=>"Superman", :powerstats=>{:intelligence=>"94", :strength=>"100", :speed=>"100", :durability=>"100", :power=>"100", :combat=>"85"}, :biography=>{:"full-name"=>"Clark Kent", :"alter-egos"=>"Superman Prime One-Million", :aliases=>["Clark Joseph Kent", "The Man of Steel", "the Man of Tomorrow", "the Last Son of Krypton", "Big Blue", "the Metropolis Marvel", "the Action Ace"], :"place-of-birth"=>"Krypton", :"first-appearance"=>"ACTION COMICS #1", :publisher=>"Superman Prime One-Million", :alignment=>"good"}, :appearance=>{:gender=>"Male", :race=>"Kryptonian", :height=>["6'3", "191 cm"], :weight=>["225 lb", "101 kg"], :"eye-color"=>"Blue", :"hair-color"=>"Black"}, :work=>{:occupation=>"Reporter for the Daily Planet and novelist", :base=>"Metropolis"}, :connections=>{:"group-affiliation"=>"Justice League of America, The Legion of Super-Heroes (pre-Crisis as Superboy); Justice Society of America (pre-Crisis Earth-2 version); All-Star Squadron (pre-Crisis Earth-2 version)", :relatives=>"Lois Lane (wife), Jor-El (father, deceased), Lara (mother, deceased), Jonathan Kent (adoptive father), Martha Kent (adoptive mother), Seyg-El (paternal grandfather, deceased), Zor-El (uncle, deceased), Alura (aunt, deceased), Supergirl (Kara Zor-El, cousin), Superboy (Kon-El/Conner Kent, partial clone)"}, :image=>{:url=>"https://www.superherodb.com/pictures2/portraits/10/100/791.jpg"}}]}
```

Now I would suggest you to modify the `invoker.rb` and make some test on your own.

You can try returning only the results of the Superman (id: 644)

Also I strongly suggest you to use your creativity to modify the lambda function file (`../lambda_function.rb`) and create something else.

If it helped you somehow star it, and fell free to fork and contribute.
