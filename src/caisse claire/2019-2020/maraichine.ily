% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Suite de Maraîchines"
	subtitle = "Danse traditionnelle du Pays de Retz"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Alexandre Guiodo"
	arranger = "Arrangement : Ronan JEGO-AQUILINA"
	tagline = "Thèmes traditionnels et d'inspiration traditionnelle"
}

\new DrumStaff {
	\once \override Score.MetronomeMark.extra-offset = #'(10 . -5.25)
	\tempo 4. = 126

	\drummode {
		\time 12/8
		\boxMark "Intro"

		\fla d4.
		d8 g d
		\fla g4 \fla d8
		r4 g8

		\fla d4.
		d8[-> r8 \ra d8]\v
		(#0 \ra g4.[
		(#8 \ra d4.]))

		(#6 g4.)
		d8 g d
		\fla g4 \fla d8
		r4 g8

		\fla d4.
		d8[-> r8 \ra d8]\v
		(#0 \ra g4.[
		(#8 \ra d4.]))

		(#6 g4.)
		\ra d4.
		(#7 g4.)
		\ra d4.->

		(#6 g4.->)
		\fla d8 g8 \fla d8
		g8 d8 g8->
		d16\< d g8 d8\!

		g4.
		\ra d4.
		(#7 g4.)
		\ra d4.->

		(#6 g4.->)
		\fla d8 g8 \fla d8
		g8 d8 g8->
		d16\< d g8 d8\!

		\bar "|."
	}
}

\new DrumStaff {
	\once \override Score.MetronomeMark.extra-offset = #'(3 . -2)
	\tempo 4. = 126

	\drummode {
		\time 12/8
		\boxMark "A"

		\bar ".|:"

		% Phrase A-1
		\repeat volta 2 {
			\alternative {
				\volta 1 {
					g8->
				}
				\volta 2 {
					\fla d8[
				}
			}
			r8 \ra d8]
			(#5 d4.)
			\fla g8[ r8 g8]
			\fla d8-> g8 d8

			\fla g8[ r8 g8]
			\tuplet 4/6 { \drag d16 d8. }
			\ra d4.\<
			(#9 d8\![) r8 g8]

			\break

			\fla d4 \ra d16 (#5 g16
			d8) g8 g8]
			\ra d8[\v (#6 g8 \ra g8]->)
			(#6 g8 d8) g8

			d8[\v r8 \ra g8]\v
			(#0 \ra d8[ (#6 d8->)) \ra g8]\v
			(#4 g4.->)
			r4.

			\break

			% Phrase A-2
			\fla d8[ r8 g8]
			\ra d4.\<
			(#9 d8[\!->) r8 d8]
			\fla g8[ d16 d16 g8]->

			d16\< d g8 d8->\!
			g8[ d8 \fla g8]
			\fla d8[-> r8 g8]
			\ra d4.\< (#9
			
			\break

			d4\!->) \ra d16 (#5 g16
			d8) g8 g8]
			\ra d8[\v (#6 g8 \ra g8]->)
			(#6 g8 d8) g8

			d8[\v r8 \ra g8]\v
			(#0 \ra d8[ (#6 d8->)) \ra g8]\v
			(#4 g4.->)
			r4.
		}
	}
}

\new DrumStaff {
	\once \override Score.MetronomeMark.extra-offset = #'(3 . -6)
	\tempo 4 = 126

	\drummode {
		\boxMark "B"
		\time 4/4
		\bar ".|:"

		% Reprises + leader
		\break

		\repeat volta 2 {
			\fla d8-\rn d16 g
			d8 \fla g8\dr
			d16\< g d g\!
			d8->\fr \ra d8

			(#5 d8[->) \ra g8\v\dr]
			(#6 d8[ d8]->)
			g16\< d d g\!
			d8->\fr g
		}

		% Tout
		\break

		\repeat volta 2 {
			\fla d8 d16 g
			d8 \fla g8
			d16\< g d g\!
			d8-> \ra d8

			(#5 d8[->) \ra g8\v]
			(#6 d8[ d8]->)
			g16\< d d g\!
			d8-> g
		}

		% Flip flap
		\break

		\repeat volta 2 {
			\flip d8 d16 g
			d8 \flip g8
			d16\< g d g\!
			\flip d8 \ra d8

			(#5 d8[->) \ra g8\v]
			(#6 d8[ d8]->)
			g16\< d d g\!
		}
		\alternative {
			{
				\flip d8 g
			}
			{
				\flip d4
			}
		}

		\bar "|."
	}
}

\new DrumStaff {
	\once \override Score.MetronomeMark.extra-offset = #'(3 . -6)
	\tempo 4 = 126

	\drummode {
		\boxMark "C"
		\time 4/4

		\bar ".|:"
		R1*8
		\bar ":|."
	}
}

\new DrumStaff {
	\once \override Score.MetronomeMark.extra-offset = #'(3 . -6)
	\tempo 4 = 126

	\drummode {
		\boxMark "D"
		\time 4/4

		\bar ".|:"

		d16-> g d g
		\drag d8 d16 g
		d16 g d8
		g8 \fla d8->

		g8 \fla d8->
		d16\< g d g
		d16 g d g\!
		d8-> g

		\break

		d16-> g d g
		\drag d8 d16 g
		d16 g d8
		g8 \fla d8->

		g8 \fla d8->
		d16 g d g
		\ra d4->\>
		(#6 g4\!)

		\break

		\fla d8-> g
		d8 \fla g16 g
		d8[ g]->
		d8[ \fla g8->]

		d8[ \drag d8]
		d16\< g d g
		d16 g d g\!
		d8-> g

		\break

		\fla d8 g
		d8 \fla g16 g
		d8[ g->]
		d8[ g->]

		\ra d4
		(#9 d16\<) g16 d g\!
		\ra d4->
		(#6 g4->)

		\bar ":|."

		\fla d8-> g
		d8 \fla g16 g
		d8 g
		\fla d4

		\bar "|."
	}
}
