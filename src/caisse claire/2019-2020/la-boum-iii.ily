% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "La Boum III"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Traditionnel"
}

\new DrumStaff {
	\tempo 4 = 76

	\drummode {
		\time 4/4
		\boxMark "A"

		\bar ".|:"

		\fla d8) \ra d8
		(#7 g8->) d16 g
		\fla d16 g d \fla g16
		d16 g16 d32 g d g

		d8 \fla d16 g16
		d16 \fla g16 d g
		d32-> g d g d16 g->
		d16 g \fla d \fla g

		\break

		\fla d4
		\ra d4
		(#13 d16->) g16 d g->
		d32 g d g d8->

		\ra d16\< (#5 d16\!->) d16
		\ra d16\< (#5 d16\!->) d16
		\ra d16\< (#5 d16\!->) d16
		\ra d16\< (#5 d16\!->) d16
		\ra d8 (#7 \ra g8->)

		(#6 \break \fla d4->)
		d32 g d g d16 g
		\fla d4
		\ra d4

		(#13 d8.->) \fla g16
		r16 g16 \fla d8
		\fla g4
		\ra d4

		(#13 \break d8->) \ra d8
		(#7 g16->) d16 g \fla d16
		g16 d g \fla d16
		g16 d \fla g8

		\ra d8 (#7 \ra g8->)
		(#6 d4->)
		\ra d4
		(#13 \ra d4)

		(#13 \bar ":|." \break \boxMark "Fin" d8.) \fla g16
		r16 g16 \fla d8
		\fla g4
		\ra d4

		(#13 \fla d4->)
		r4
		r4
		r4

		\bar "|."
	}
}
