# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Teacher.Repo.insert!(%Teacher.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Teacher.Recordings

Recordings.create_album(%{
  title: "Blonde on Blonde",
  artist: "Bob Dylan",
  summary: "Blonde on Blonde is the seventh studio album by American singer-songwriter Bob Dylan, released in mid 1966, on Columbia Records. Recording sessions began in New York in October 1965 with numerous backing musicians, including members of Dylan's live backing band, the Hawks.",
  year: "1966"
})

Recordings.create_album(%{
  title: "L.A. Woman",
  artist: "The Doors",
  summary: "L.A. Woman is the sixth studio album by the American rock band the Doors, released on April 19, 1971, on Elektra Records",
  year: "1971"
})

Recordings.create_album(%{
  title: "Electric Ladyland",
  artist: "The Jimi Hendrix Experience",
  summary: "Electric Ladyland is the third and final studio album by English-American rock band the Jimi Hendrix Experience.",
  year: "1968"
})

Recordings.create_album(%{
  title: "The Doors",
  artist: "The Doors",
  summary: "The Doors is the debut album by the American rock band the Doors, released on January 4, 1967. The album features their breakthrough single 'Light My Fire' and the lengthy song 'The End' with its Oedipal spoken word section.",
  year: "1967"
})

Recordings.create_album(%{
  title: "The Wild, The Innocent & The E Street Shuffle",
  artist: "Bruce Springsteen",
  summary: "The Wild, the Innocent & the E Street Shuffle is the second studio album by American rock singer-songwriter Bruce Springsteen. It was recorded by Springsteen with the E Street Band at 914 Sound Studios in Blauvelt, New York; and released on September 11, 1973, by Columbia Records.",
  year: "1973"
})

Recordings.create_album(%{
  title: "Abbey Road",
  artist: "The Beatles",
  summary: "Abbey Road is the eleventh album by English rock band the Beatles, released on 26 September 1969 by Apple Records. The recording sessions for the album were the last in which all four Beatles participated. Although Let It Be was the final album that the Beatles completed before the band's dissolution in April 1970",
  year: "1969"
})

Recordings.create_album(%{
  title: "My Generation",
  artist: "The Who",
  summary: "My Generation is the debut studio album by the English rock band The Who, released on 3 December 1965 by Brunswick Records in the United Kingdom. In the United States, it was released on 25 April 1966 by Decca Records as The Who Sings My Generation, with a different cover and a slightly altered track listing.",
  year: "1965"
})

Recordings.create_album(%{
  title: "Untitled",
  artist: "Led Zeppelin",
  summary: "English rock band Led Zeppelin's untitled fourth album, commonly known as Led Zeppelin IV, was released on 8 November 1971 by Atlantic Records. Produced by guitarist Jimmy Page, it was recorded between November 1970 and January 1971 at several locations, most prominently the Victorian house Headley Grange.",
  year: "1971"
})

Recordings.create_album(%{
  title: "Tommy",
  artist: "The Who",
  summary: "Tommy is the fourth studio album by the English rock band The Who. It was first released as a double album on 23 May 1969 by Decca Records. The album was mostly composed by guitarist Pete Townshend as a rock opera.",
  year: "1969"
})

Recordings.create_album(%{
  title: "Highway 61 Revisited",
  artist: "Bob Dylan",
  summary: "Highway 61 Revisited is the sixth studio album by the American singer-songwriter Bob Dylan. It was released on August 30, 1965, by Columbia Records. Having until then recorded mostly acoustic music, Dylan used rock musicians as his backing band on every track of the album, except for the closing 11-minute ballad, 'Desolation Row'.",
  year: "1965"
})

Recordings.create_album(%{
  title: "Kind Of Blue",
  artist: "Miles Davis",
  summary: "Kind of Blue is a studio album by American jazz trumpeter Miles Davis. It is regarded by many critics as jazz's greatest record, Davis's masterpiece, and one of the best albums of all time. Its influence on music, including jazz, rock, and classical genres, has led writers to also deem it one of the most influential albums ever recorded.",
  year: "1959"
})

Recordings.create_album(%{
  title: "OK Computer",
  artist: "Radiohead",
  summary: "OK Computer is the third studio album by the English rock band Radiohead, released on 21 May 1997.",
  year: "1997"
})

Recordings.create_album(%{
  title: "Let It Bleed",
  artist: "The Rolling Stones",
  summary: "Let It Bleed is the 8th British and 10th American studio album by the English rock band the Rolling Stones. Released shortly after the band's 1969 American Tour, it is the follow-up to 1968's Beggars Banquet. As with Beggars Banquet, the album marks a return to the group's more blues-sound approach that was prominent in the pre-Aftermath period of their career.",
  year: "1969"
})

Recordings.create_album(%{
  title: "White Album",
  artist: "The Beatles",
  summary: "The Beatles, also known colloquially as the White Album, is the ninth studio album and only double album by the English rock band the Beatles, released on 22 November 1968. Featuring a plain white sleeve, the cover contains no graphics or text other than the band's name embossed.",
  year: "1968"
})

Recordings.create_album(%{
  title: "The Velvet Underground and Nico",
  artist: "The Velvet Underground",
  summary: "The Velvet Underground and Nico is the debut album by American rock band the Velvet Underground and German singer Nico, released in March 1967 through Verve Records. It was recorded in 1966 while the band were featured on Andy Warhol's Exploding Plastic Inevitable tour.",
  year: "1967"
})

Recordings.create_album(%{
  title: "London Calling",
  artist: "The Clash",
  summary: "London Calling is the third studio album by English rock band the Clash. It was originally released as a double album in the United Kingdom on 14 December 1979 by CBS Records, and in the United States in January 1980 by Epic Records.",
  year: "1979"
})

Recordings.create_album(%{
  title: "Nevermind",
  artist: "Nirvana",
  summary: "Nevermind is the second studio album by the American rock band Nirvana, released on September 24, 1991, by DGC Records. It was Nirvana's first release on a major label and the first to feature drummer Dave Grohl.",
  year: "1991"
})

Recordings.create_album(%{
  title: "Astral Weeks",
  artist: "Van Morrison",
  summary: "Astral Weeks is the second studio album by Northern Irish singer-songwriter Van Morrison. It was recorded at Century Sound Studios in New York during September and October 1968, and released in November of the same year by Warner Bros. Records.",
  year: "1968"
})
