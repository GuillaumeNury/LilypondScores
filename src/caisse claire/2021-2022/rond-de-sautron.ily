% LilypondScores:draft
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Ronds de Sautron"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Alexandre Guiodo / Guillaume Nury"
}

\new DrumStaff {
	\tempo 4 = 96

	\drummode {
		\time 3/4

		% Phrase 1
		\grace { g16[ d d] } g8[-> \fla g8]
		\tuplet 6/4 { \ra d4-> #10 (r16 g16->) }
		\ra d4-> #12

		(d16->) g \fla d \fla g
		d16-> g-> d32 g d g
		d16-> g-> \ra d8( #7
		\break

		g16->) d g \fla d
		g16 d \fla g8
		\ra d4 #9

		(d16->) g d \fla g
		d32 g d g d16 g
		\fla d4
		\break

		%Phrase 2
		\ra d8( #6 \tuplet 3/2 { g16) d g }
		\fla d8 \fla g8
		\ra d4 #9

		(d16)-> g d \fla g
		\fla d16 g d \fla g
		d32 g d g d16-> g
		\break

		\ra d4 #9
		(\ra d4->) #8
		(d8->) g->

		\fla d16 \fla g16 d \fla g16
		\fla d4
		\grace { g16[ d d] } g4
		\bar "|."
	}
}