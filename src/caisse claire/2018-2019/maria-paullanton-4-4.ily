% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Maria Paullanton (version 4/4)"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Christophe Declercq"
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\boxMark "A"

		\repeat volta 2 {
			\fla d16-> g d g->
			d g d-> g
			d-> g d g
			\ra d4
			
			(#9 d16->) g d g->
			d g d-> g
			d-> g d g
			\fla d8 \fla g8
			\break

			\fla d16-> g d g->
			d g d-> g
			d-> g d g
			\ra d4

			(#9 d16->) g d g->
			d g d-> g
			d-> g d g
			\triolet { d g d } \triolet { g d g }
			\break

			d16-> g d g->
			d g d-> g
			d-> g d g
			\ra d4
			
			(#9 d16->) g d g->
			d g d-> g
			d-> g d g
			\fla d8 \fla g8
			\break

			\fla d16-> g d g->
			d g d-> g
			d-> g d g
			\ra d4

			(#9 d16->) g d g->
			d g d-> g
			d-> g d g
			\triolet { d g d } g8
			\break
		}
	}
}