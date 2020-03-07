% LilypondScores:draft
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = \markup { \fontsize #4 \bold "Suite de Maraîchines" }
	subtitle = \markup {
		\center-column {
			\null
			\line {
				\fontsize #-1 "Danse traditionnelle du Pays de Retz"
			}
			\line { \fontsize #-2 "Arrangement : Ronan JEGO-AQUILINA" }
		}
	}
	instrument = \markup {
		\column {
			\null
			\null
			\line { "PARTITION POUR CAISSES CLAIRES" }
		}
	}
	composer = \markup {
		\column {
			\null
			\null
			\null
			\null
			\line { "Composition pour la Caise Claire :" }
			\line { "Alexandre Guiodo" }
		}
	}
	tagline = \markup {
		\fontsize #-4 "Thèmes traditionnels et d'inspiration traditionnelle"
	}
}

\paper {
	score-system-spacing #'padding = #8
}

\layout {
	\override Score.RehearsalMark.font-size = 3
	\override Score.RehearsalMark.font-series = #'bold
	\override Score.RehearsalMark.extra-offset = #'(0 . 3)
	\override Score.MetronomeMark.extra-offset = #'(-3 . 3)
	\override Score.MetronomeMark.break-align-symbols = #'(RehearsalMark)
}

\new DrumStaff {
	\once \override Score.MetronomeMark.extra-offset = #'(3 . 3)
	\once \override Score.RehearsalMark.extra-offset = #'(2 . 3)
	\tempo 4. = 126

	\drummode {
		\time 12/8
		\mark "Intro"

		\fla d4.
		d8 g d
		\fla g4 \fla d8
		r4 g8

		\fla d4.
		\ra d8[-> (#4 r8 \ra d8]\v)
		(#0 \ra g8[ (#6 r8 g8]))
		\ra d4.

		(#7 g4.)
		d8 g d
		\fla g4 \fla d8
		r4 g8

		\fla d4.
		\ra d8[-> (#4 r8 \ra d8]\v)
		(#0 \ra g8[ (#6 r8 g8]))
		\ra d4.

		(#7 g4.)
		\ra d4.
		(#7 \ra g4.->)
		(#6 \ra d4.->)

		(#6 g4.->)
		\fla d8 g8 \fla d8
		g8 d8 \fla g8
		\tuplet 4/6 { d16\< g d g\! }

		d8 g8 r8
		\ra d4.
		(#7 \ra g4.->)
		(#6 \ra d4.->)

		(#6 g4.->)
		\fla d8 g8 \fla d8
		g8 d8 \fla g8
		\tuplet 4/6 { d16\< g d g\! }
	}
}

\new DrumStaff {
	\once \override Score.RehearsalMark.extra-offset = #'(0 . 4)
	\once \override Score.MetronomeMark.extra-offset = #'(-3 . 1.5)

	\tempo 4. = 126

	\drummode {
		\time 12/8
		\mark "A"

		\bar ".|:"
		% Phrase A-1
		\set Score.repeatCommands = #'((volta "1"))
		d8[ r8 \ra d8]
		(#5 d4.)
		\fla g8[ r8 g8]
		\fla d8-> g8 d8
		\set Score.repeatCommands = #'((volta #f))

		\set Score.repeatCommands = #'((volta "2"))
		\fla d8[ r8 \ra d8]
		(#5 d4.)
		\fla g8[ r8 g8]
		\fla d8-> g8 d8
		\set Score.repeatCommands = #'((volta #f))

		\fla g8[ r8 g8]
		\tuplet 4/6 { \drag d16 d8. }
		\ra d4.\<
		(#9 d8\![) r8 g8]

		\break

		\fla d4.
		\grace { g16[ d d] } g8[ d8 \fla g8]
		\ra g8[\v (#6 d8 d8]->)
		g8[ d8 \fla g8]

		\ra d8\v[ (#6 g8 \ra g8\v])
		(#0 \ra d8[ (#6 d8->)) \ra g8]\v
		(#4 \ra g4.->)
		(#8 g4.\v)

		\break

		% Phrase A-2
		\fla d8[ r8 g8]
		\ra d4.\<
		(#9 d8[\!->) r8 d8]
		\fla g8[ d16 d16 g8]->

		d16\< g d g d8\!->
		g8[ d8 \fla g8]
		\fla d8[-> r8 g8]
		\ra d4.\< (#9
		
		\break

		d4.\!->)
		\grace { g16[ d d] } 
		g8[ d8 \fla g8]
		\ra g8[\v (#6 d8 d8]->)
		g8[ d8 \fla g8]

		\ra d8\v[ (#6 g8 \ra g8\v])
		(#0 \ra d8[ (#6 d8->)) \ra g8]\v
		(#4 \ra g4.->)
		(#8 g4.\v)

		\bar ":|."
	}
}

\new DrumStaff {
	\tempo 4 = 126

	\drummode {
		\mark "B"
		\time 4/4
		\bar ".|:"

		% Reprises seulement
		\repeat volta 2 {
			\fla d4
			r8 \fla g8
			d16\< g d g\!
			d4->

			r8 \ra g8\v]
			(#6 d8[ d8]->)
			g16\< d d g\!
			d4->
		}

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
			\circle \xNote d8 d16 g
			d8 \circle \xNote g8
			d16\< g d g\!
			\circle \xNote d8 \ra d8

			(#5 d8[->) \ra g8\v]
			(#6 d8[ d8]->)
			g16\< d d g\!
		}
		\alternative {
			{
				\circle \xNote d8 g
			}
			{
				\circle \xNote d4
			}
		}
	}
}

\new DrumStaff {
	\tempo 4 = 126

	\drummode {
		\mark "D"
		\time 4/4

		\bar ".|:"

		d16-> g d g
		\drag d8 d16 g
		d16 g d8->
		g8 \fla d8->

		g8 \fla d8->
		d16\< g d g
		d16 g d g\!
		d8-> g

		\break

		d16-> g d g
		\drag d8 d16 g
		d16 g d8->
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
		d16\pp g d g
		d16\< g d g\!
		d8-> g

		\break

		\fla d8 g
		d8 \fla g16 g
		d8[ g->]
		d8[ g->]

		\ra d4
		(#9 d16\<) g16 d g\!
		\triolet { d16 g16 d8 d8 }
		g4

		\bar ":|."

		\fla d8-> g
		d8 \fla g16 g
		d8[ g]->
		\fla d4
	}
}
