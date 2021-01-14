Song.destroy_all
Song.reset_pk_sequence
Artist.destroy_all
Artist.reset_pk_sequence
Genre.destroy_all
Genre.reset_pk_sequence

started_seeding = Time.now

depeche_mode = Artist.create( name: "Depeche Mode", bio: "Depeche Mode have had 54 songs in the UK Singles Chart and 17 top 10 albums in the UK chart; they have sold more than 100 million records worldwide. Q included the band in the list of the \"50 Bands That Changed the World!\". Depeche Mode also ranks number 98 on VH1's \"100 Greatest Artists of All Time\". In December 2016, Billboard named Depeche Mode the 10th most successful dance club artist of all time. They were nominated for induction into the Rock and Roll Hall of Fame in 2017 and 2018, and were inducted as part of the Class of 2020." )
sylvester = Artist.create( name: "Sylvester", bio: "During the late 1970s, Sylvester gained the moniker of the \"Queen of Disco\" and during his life he attained particular recognition in San Francisco, where he was awarded the key to the city. In 2005, he was posthumously inducted into the Dance Music Hall of Fame, while his life has been recorded in a biography and made the subject of both a documentary and a musical." )
dfa = Artist.create( name: "Death From Above", bio: "Death From Above is a Canadian rock duo consisting of bassist Jesse F. Keeler and drummer and vocalist Sebastien Grainger from Toronto, Ontario, formed in 2001. The band released their debut album, You're a Woman, I'm a Machine, in 2004 and broke up in 2006. They reformed in 2011 and released their second album, The Physical World, in 2014." )
phish = Artist.create( name: "Phish", bio: "Phish's music blends elements of a wide variety of genres, including funk, progressive rock, psychedelic rock, folk, country, jazz, blues, bluegrass, and pop. The band was part of a movement of improvisational rock groups, inspired by the Grateful Dead and colloquially known as \"jam bands\", that gained considerable popularity as touring concert acts in the 1990s. Phish has developed a large and dedicated following by word of mouth, the exchange of live recordings, and selling over 8 million albums and DVDs in the United States." )

new_wave = Genre.create( name: "New wave" )
disco = Genre.create( name: "Disco" )
rock = Genre.create( name: "Rock" )
jam = Genre.create( name: "Jam band" )

Song.create( name: "Blasphemous Rumours", artist_id: depeche_mode.id, genre_id: new_wave.id )
Song.create( name: "Enjoy the Silence", artist_id: depeche_mode.id, genre_id: new_wave.id )
Song.create( name: "People Are People", artist_id: depeche_mode.id, genre_id: new_wave.id )

Song.create( name: "I Need Somebody To Love Tonight", artist_id: sylvester.id, genre_id: disco.id )
Song.create( name: "You Make Me Feel (Mighty Real)", artist_id: sylvester.id, genre_id: disco.id )
Song.create( name: "Do You Wanna Funk", artist_id: sylvester.id, genre_id: disco.id )

Song.create( name: "Romantic Rights", artist_id: dfa.id, genre_id: rock.id )
Song.create( name: "Trainwreck", artist_id: dfa.id, genre_id: rock.id )
Song.create( name: "Holy Books", artist_id: dfa.id, genre_id: rock.id )

Song.create( name: "You Enjoy Myself", artist_id: phish.id, genre_id: jam.id )
Song.create( name: "Meatstick", artist_id: phish.id, genre_id: jam.id )
Song.create( name: "Golden Age", artist_id: phish.id, genre_id: jam.id )

done_seeding = Time.now

puts "🌱 🌱 🌱 Seeded: #{ done_seeding - started_seeding } secs. 🌱 🌱 🌱"