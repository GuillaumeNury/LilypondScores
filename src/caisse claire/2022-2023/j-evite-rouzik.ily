% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "J'évite Rouzik"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Alexandre Guiodo"
}

\new DrumStaff {
	\drummode {
		\time 2/4

		\boxMark "A - Intro"

		\repeat volta 2 {
			\bar ".|:"
			d16[) g \fla \flip d g]
			\fla d16[ g d \fla g]
			d16[ \fla \flip g d g]
			\fla d16[ g \fla \flip d g]

			\fla d16[ g \fla \flip d g]
			\fla d16[ g d \fla g]
			d16[ \fla \flip g d g]
			\fla d4
		}

		\boxMark "B - Ritournelle"

		\repeat volta 2 {
			% Mesure 1
			\fla d16\rn g d \fla g\dr
			\fla d8\fr \ra d8
			(#7 \tuplet 6/4 { g16) d g } \ra d8\dr->
			(#6 g8\fr) g

			% Mesure 2
			\fla d16\rn g d \fla g\dr
			\fla d8\fr \tuplet 6/4 { d16 d g }
			d16\rn-> g d \fla g\dr
			\fla d8\fr g
		}

		\repeat volta 2 {
			% Mesure 3
			\ra d8\dr (#7 \tuplet 6/4 { g16) d g }
			\fla d8\fr \ra d->
			(#6 \ra g8\dr->) (#6 \tuplet 6/4 { d16) g d }
			g8\fr g

			% Mesure 4
			\fla d32\rn d g16 d g
			\fla d8\rn d16 \fla g\rn
			d16 g \tuplet 6/4 { d16\dr g d\fr }
		}
		\alternative {
			{ g8[ g] }
			{ g4\rn }
		}

		\break
		\boxMark "C - Evit T1"

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
		\fla d8\dr g16 d->
		g8 \fla d\fr
		\tuplet 6/4 { d16 g d g d g }
		d8-> g

		% Mesure 4
		d16.\dr g32 d16. d32
		g8 \fla d8\fr
		\ra d4 (#13 d)

		\break
		\boxMark "D - Evit T2"

		\repeat volta 2 {
			% Mesure 1
			\fla d8\rn \ra d
			(#13 d d)
			\fla d16.\dr g32 d16. d32
			\fla g8\fr \tuplet 6/4 { d16 g d }

			% Mesure 2
			\tuplet 6/4 { g16 d g } d8->
			r8 \ra d8\dr (#7 g4)
			\fla d8 \fla g\fr
			\break

			% Mesure 3
			\fla d8\rn \ra d
			(#13 d d)
			\fla d16.\dr g32 d16. d32
			\fla g8\fr \tuplet 6/4 { d16 g d }

			% Mesure 4
			\tuplet 6/4 { g16 d g } d8->
			\fla g8\dr \fla d\fr
			\ra d4 (#13 d)
		}

		\break
		\boxMark "E - Rouzik T1"

		\repeat volta 2 {
			% Mesure 1
			d8\dr \fla g
			\fla d8\fr d16 \fla g16\dr
			\fla d16\fr g d \fla g16\dr
			\fla d8\fr \ra d8

			% Mesure 2
			(#7 g8) \tuplet 6/4 { d16\dr g d }
			g8\fr-> d16 \fla g\rn
		}

		\alternative {
			{
				% Mesure 2A
				\fla d16 g \ra d8
				(#7 \tuplet 6/4 { g16->) d g d-> g d }
			}
			{
				% Mesure 2B
				\fla d16\dr g \tuplet 6/4 { d16 g d }
				g4\fr
			}
		}

		\break
		\boxMark "F - Rouzik T2"

		\repeat volta 2 {
			% Mesure 3
			d8\dr) \fla g8
			\fla d8\fr d16 \fla g16
			\tuplet 6/4 { d16\dr-> g d g-> d g }
			\ra d8 (#7 \tuplet 6/4 { g16) d g }

			% Mesure 4
			\fla d8\fr \ra d8
			(#7 g8) \tuplet 6/4 { g16 d g }
			\ra d8-> (#6 \tuplet 6/4 { g16->) d g }
		}

		\alternative {
			{
				\once \override LaissezVibrerTie.X-extent = #'(0 . 0)
				\once \override LaissezVibrerTie.details.note-head-gap = #(/ 3 -2)
				\once \override LaissezVibrerTie.extra-offset = #(cons 1 0.7)
				\ra d4\laissezVibrer #13
			}
			{
				\ra d4
				(#13 \time 1/4 d4)
			}
		}
	}
}