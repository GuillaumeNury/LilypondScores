% LilypondScores
\version "2.23.6"

\include "src/caisse claire/core.ily"

\header {
	title = "Evit Mont d’an Iliz"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Alexandre Guiodo"
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\boxMark "Intro"

		\repeat volta 2 {
			% Mesure 1
			\fla d16 g d \fla g
			\fla d8 \ra d8
			(#7 \tuplet 6/4 { g16) d g } \ra d8->
			(#6 g8) g

			% Mesure 2
			\fla d16 g d \fla g
			\fla d8 \tuplet 6/4 { d16 d g }
			d16-> g d \fla g
			\fla d8 g
		}

		\repeat volta 2 {
			% Mesure 3
			\ra d8 (#7 \tuplet 6/4 { g16) d g }
			\fla d8 \ra d->
			(#6 \ra g8->) (#6 \tuplet 6/4 { d16) g d }
			g8 g

			% Mesure 4
			\fla d32 d g16 d g
			\fla d8 d16 \fla g
			d16 g  \tuplet 6/4 { d16 g d }
		}
		\alternative {
			{ g8[ g] }
			{ g4 }
		}

		\break
		\boxMark "A"

		% Mesure 1
		\fla d8 g16 d->
		g8 \fla d
		\ra d8 (#7 g)
		r8 \fla g8

		% Mesure 2
		\fla d16. g32 d16. \fla g32
		d16. d32 \fla g8
		\ra d4 (#13 d)
		\break
	
		% Mesure 3
		\fla d8 g16 d->
		g8 \fla d
		\tuplet 6/4 { d16 g d g d g }
		d8-> g

		% Mesure 4
		d16. g32 d16. d32
		g8 \fla d8
		\ra d4 (#13 d)

		\break
		\boxMark "B"

		\repeat volta 2 {
			% Mesure 1
			\fla d8 \ra d
			(#13 d d)
			\fla d16. g32 d16. d32
			\fla g8 \tuplet 6/4 { d16 g d }

			% Mesure 2
			\tuplet 6/4 { g16 d g } d8->
			r8 \ra d8 (#7 g4)
			\fla d8 \fla g
			\break

			% Mesure 3
			\fla d8 \ra d
			(#13 d d)
			\fla d16. g32 d16. d32
			\fla g8 \tuplet 6/4 { d16 g d }

			% Mesure 4
			\tuplet 6/4 { g16 d g } d8->
			\fla g8 \fla d
			\ra d4 (#13 d)
		}

		\break
		\boxMark "C"

		\repeat volta 2 {
			% Mesure 1
			d8 \fla g
			\fla d8 d16 \fla g16
			\fla d16 g d \fla g16
			\fla d8 \ra d8

			% Mesure 2
			(#7 g8) \tuplet 6/4 { d16 g d }
			g8->  d16 \fla g
		}

		\alternative {
			{
				% Mesure 2A
				\fla d16 g \ra d8
				(#7 \tuplet 6/4 { g16->) d g d-> g d }
			}
			{
				% Mesure 2B
				\fla d16 g \tuplet 6/4 { d16 g d }
				g4
			}
		}

		\repeat volta 2 {
			% Mesure 3
			d8) \fla g8
			\fla d8 d16 \fla g16
			\tuplet 6/4 { d16-> g d g-> d g }
			\ra d8 (#7 \tuplet 6/4 { g16) d g }

			% Mesure 4
			\fla d8 \ra d8
			(#7 g8) \tuplet 6/4 { g16 d g }
			\ra d8-> (#6 \tuplet 6/4 { g16->) d g }
		}

		\alternative {
			{
				\override LaissezVibrerTie.X-extent = #'(0 . 0)
				\override LaissezVibrerTie.details.note-head-gap = #(/ 3 -2)
				\override LaissezVibrerTie.extra-offset = #(cons 1 0.7)
				\ra d4\laissezVibrer #13
			}
			{
				\ra d4 (#0
				\ra d2) (#0
				\ra d2) (#0
			}
		}

		\break
		\boxMark "Outro"

		d16[) g \fla \flip d g]
		\fla d16[ g d \fla g]
		d16[ \fla \flip g d g]
		\fla d16[ g \fla \flip d g]

		\fla d16[ g \fla \flip d g]
		\fla d16[ g d \fla g]
		d16[ \fla \flip g d g]
		\fla d4
	}
}