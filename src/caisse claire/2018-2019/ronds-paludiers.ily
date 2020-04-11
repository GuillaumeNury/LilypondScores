% LilypondScores:archived
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Ronds Paludiers"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Christophe Declercq"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 12/8
		\boxMark "A"

		\repeat volta 2 {
			\fla d4 g8
			d4 g8->
			\ra d4.
			(#7 g4) \ra g8

			(#3 d4) \ra d8
			(#3 g4) g8
			d8 g \drag d
			d4.
			\break
		}
		\alternative {
			{
				\tuplet 4/6 { d16\< g d g\! }
				d4-> g8
				\ra d4.
				(#7 g4.)
			}
			{
				d8 d g->
				d d g->
				\ra d4.
				(#7 g4.)
				\break
			}
		}

		\ra d4.
		(#7 g4) g8
		\tuplet 4/6 { d16\< g d g\! }
		d4-> d8

		g4 g8->
		d8 g g
		\ra d4.
		(#7 g4.)
		\break

		\repeat volta 2 {
			d8-> g d->
			g d g->
			\tuplet 4/6 { d16\< g d g\! }
			d4.->
		}
		\alternative {
			{
				d4 \ra d8
				(#3 g4) g8
				d8 g \drag d
				d4.
			}
			{
				\tuplet 4/6 { d16\< g d g\! }
				d4-> g8
				\ra d4.
				(#7 g4.)
				\break
			}
		}
	}
}


\new DrumStaff {
	\drummode {
		\time 12/8
		\boxMark "B"

		\repeat volta 2 {
			\fla d4 g8
			d4 g8->
			\tuplet 4/6 { d16 g d g }
			d4 d8->

			g4 g8->
			\tuplet 4/6 { d16 g d g }
			\ra d4.
			(#7 g4.)
			\break

			d8 d g
			d-> g d
			g d g->
			d4 d8->

			g4 g8->
			\tuplet 4/6 { d16 g d g }
			\ra d4.
			(#7 g4.)
			\break
		}

		\fla d4 g8
		d4 g8->
		\tuplet 4/6 { d16 g d g }
		d4 d8->

		g8 d g->
		d g d
		\ra g4.
		(#7 d4.)
		\break

		\ra d4.
		(#7 g4) g8
		\tuplet 4/6 { d16 g d g }
		d4 d8->

		g8 d g->
		d g d
		\ra g4.
		(#7 d4.)
		\break

		\fla d4 g8
		d4 g8->
		\tuplet 4/6 { d16 g d g }
		d4 d8->

		g8 d g->
		d g d
		\ra g4.
		(#7 d4.)
		\bar "|."
		\break
	}
}


\new DrumStaff {
	\drummode {
		\time 12/8
		\boxMark "Final"
		\fla d4 g8
		d4 g8->
		\tuplet 4/6 { d16 g d g }
		d4.

		r1.
	}
}