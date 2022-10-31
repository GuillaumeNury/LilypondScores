% LilypondScores
\version "2.23.6"

\include "src/caisse claire/core.ily"

\header {
	title = "Evit Mont d’an Iliz"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Aurélien Étienne / Alexandre Guiodo"
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\boxMark "Intro"

		\repeat volta 2 {
			% Mesure 1
			\fla d16 g d \fla g
			\fla d8 \ra d8
			(#7 \tuplet 6/4 { g16) d g } \ra d8
			(#6 g8) g

			% Mesure 2
			\fla d16 g d \fla g
			\fla d8 d32 g d d
			g16 g-> d32 g d g
			d8 g
		}

		\repeat volta 2 {
			% Mesure 3
			\ra d8 (#7 \tuplet 6/4 { g16) d g }
			\fla d8 \ra d->
			(#6 \ra g8->) (#6 d32->) g d g
			d8 g

			% Mesure 4
			\fla d32 d g16 d g
			d8 d16 \fla g
			d16 g d32 g d g
		}
		\alternative {
			{ d8[ g] }
			{ d4 }
		}

		\break
		\boxMark "A"

		% Mesure 1
		\fla d8 g16 d->
		g8 \fla d
		\ra d8 (#7 g)
		r8 \fla g8
		% Mesure 2
		\fla d16 g d g->
		d d g8->
		\ra d4 (#9 d)
		\break
		% Mesure 3
		\fla d8 g16 d->
		g8 \fla d
		d16 g d g
		d8-> g
		% Mesure 4
		d16 g-> d d
		g8 \fla d
		\ra d4 (#9 d)

		\break
		\boxMark "B"

		\repeat volta 2 {
			% Mesure 1
			\fla d8 \ra d (#9 d d)
			d16 g-> d d
			g8 d16-> g\<
			% Mesure 2
			d16 g d8->\!
			r8 \ra d8 (#5 d4)
			\fla d8 \fla g
			\break
			% Mesure 3
			\fla d8 \ra d (#9 d d)
			d16 g-> d d
			g8 d16-> g\<
			% Mesure 4
			d16 g d8->\!
			\fla g8 \fla d
			\ra d4 (#9 d)
		}

		\break
		\boxMark "C"

		\repeat volta 2 {
			% Mesure 1
			d16 \fla g \fla d8
			d16 \fla g \fla d8
			g16 d \fla g8
			\fla d16 g \ra d8

			% Mesure 2
			(#7 g8) d32 g d g
			d8 d16 \fla g
		}

		\alternative {
			{
				% Mesure 2A
				\fla d16 g \ra d8
				(#7 \tuplet 6/4 { g16) d g g d g }
			}
			{
				% Mesure 2B
				\fla d16 g d32 g d g
				d4
			}
		}

		\repeat volta 2 {
			% Mesure 3
			d8 \fla g8
			\fla d8 d16 \fla g16
			d16[ \drag d d32 g d g]
			\ra d8 (#7 \tuplet 6/4 { g16) d g })

			% Mesure 4
			\fla d8 \ra d8
			(#7 d8) \ra d16-> (#4 d16->)
			\ra d16-> (#4 d16->) d32 g d g
		}

		\alternative {
			{
				\ra d8-> (#6 \tuplet 6/4 { g16->) d g })
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