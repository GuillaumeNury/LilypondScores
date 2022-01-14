% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Y'a un navire dans le port de Brest"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	tagline = "Collectif enseignants Sonerion / Concours de Carhaix 2020"
}

\new DrumStaff {
	\tempo 4 = 90

	\drummode {
		\time 3/4
		\boxMark "A"

		\bar ".|:"

		\fla d8-> \tuplet 3/2 { g16 d g }
		d8 \fla g8->
		r8 \fla d8->

		\tuplet 3/2 { d16\< g d } g8\!->
		\ra d4\<
		(#13 d8->\!) \ra d8\<

		(#7 \break g16\!->) d16 g d->
		g16 g d8->
		g8 \fla d8->

		\tuplet 3/2 { d16\< g d } g8\!->
		\ra d4\mp
		(#13 d4)

		\bar ":|."
	}
}

\new DrumStaff {
	\tempo 4 = 90

	\drummode {
		\time 3/4
		\boxMark "B"

		\bar ".|:"

		\ra d8\v (#6 g16) d16->
		g16 g d8->
		g16\< d16 g8->\!

		\tuplet 3/2 { d16\< g d g d g\! }
		d16-> g d d
		g4->

		\break

		\fla d8[-> \ra d8]\mp
		(#7 g8) \fla d8->
		d16 \fla g8-> g16

		\fla d8-> g8
		\ra d4\mp
		(#13 d4)

		\bar ":|."
	}
}