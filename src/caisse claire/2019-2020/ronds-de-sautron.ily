% LilypondScores:archived
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Ronds de Sautron (Simple)"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Aurélien Étienne"
	arranger = "Arrangement : Ronan JEGO-AQUILINA"
}

\paper {
	score-system-spacing.basic-distance = #25
}

\new DrumStaff {
	\tempo 4 = 96
	\drummode {
		\boxMark "A - INTRO Solo PIB"
		\time 4/4
		R1*7
		\time 3/4
		R1*21/4
		\time 4/4
		R1*8

		\break

		r1^\markup "Bombardes - Groupe 1" r1 r1
		r1^\markup "Bombardes - Groupe 2" r1 r1

		\time 3/4
		R1*18/4
		r1*6/4^\markup "Bourdons" r1
	}
}

\new DrumStaff {
	\drummode {
		\boxMark "B - BAGAD joué 2 fois"
		\time 3/4
		\repeat volta 2 {
			\repeat unfold 2 {
				% Mesure 1 - 3
				\fla d8 \ra d
				(#5 d) \ra d8
				(#5 d4)
				% Mesure 2 - 4
				d16\>-> g d d\!
				g d \fla g8
				\fla d4
				\break
			}
		}
		\repeat volta 2 {
			% Mesure 5
			\fla d8 \ra d
			(#13 d4 d)
			% Mesure 6
			d16-> g d d
			g d \fla g8
			\fla d4
			\break
			% Mesure 7
			\fla d8 \ra d
			(#13 d4 d)
			% Mesure 8
			d16-> g d d
			g8. g16
			\fla d4
			\break
		}
	}
}

\new DrumStaff {
	\drummode {
		\boxMark "C - Final solo PIB"
		\time 4/4
		R1*13

		\bar "|."
	}
}