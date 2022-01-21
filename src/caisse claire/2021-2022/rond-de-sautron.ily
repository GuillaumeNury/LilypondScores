% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Ronds de Sautron"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Alexandre Guiodo / Guillaume Nury"
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

		% Phrase 1
		\repeat volta 2 {
			\bar ".|:"
			\grace { g16[ d d] } g8[-> \fla d8]
			\tuplet 6/4 { \ra d4-> #10 (r16 g16->) }
			\ra d4-> #12

			(d16->) g d \fla g
			\fla d16 g-> d32 g d g
			d16-> g-> \ra d8( #7
			\break

			g16->) d g \fla d
			g16 d \fla g8
			\ra d4 #13

			(d16->) g d \fla g
			d32\< g d g d16 g\!
			\fla d4->
			\break
		}

		%Phrase 2
		\repeat volta 2 {
			\bar ".|:"
			\ra d8->( #6 \tuplet 3/2 { g16) d g }
			\fla d8 \fla g8
			\ra d4 #13

			(d16)-> g d \fla g
			\fla d16 g d \fla g
			d32 g d g d16-> g
			\break

			\ra d4 #13
			(\ra d4->) #12
			(d8->) g->

			\fla d16 \fla g16 d \fla g16
			\fla d4
			\grace { g16[ d d] } g4->
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