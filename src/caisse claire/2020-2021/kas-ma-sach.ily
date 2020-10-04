% LilypondScores:draft
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Kas Ma Sac'h"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Alexandre Guiodo"
	tagline = "DOCUMENT EN COURS D'ÉCRITURE - NE PAS DIFFUSER"
}

\paper {
	score-system-spacing.basic-distance = #20
}

\new DrumStaff {
	% \tempo 4 = 76 TODO

	\drummode {
		\time 4/4
		\boxMark "A"
		\bar ".|:"

		\repeat volta 2 {

			\fla d8 d16 g
			\fla d16 g d g->
			d16 g d8->
			\ra d4

			(#9 d8) \fla g16 d
			g16 \fla d g d
			d16 g d32 g d g
			d4
		}
	}
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\boxMark "B (à voir)"
		\bar ".|:"

		\repeat volta 2 {
			r1 r1
		}
	}
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\boxMark "C"
		\bar ".|:"

		\repeat volta 2 {
			\ra d8[ (#7 \tuplet 3/2 { d16 g d]) }
			\ra d8[ (#6 \ra g8])
			(#6 \ra d8[) (#6 \tuplet 3/2 { g16 d g]) }
			\fla d8[ d16 g]

			d32[ g d g d8]->
			\fla d16[ g d \fla g]
			d16[ g d32 g d g]
			d4
		}
	}
}