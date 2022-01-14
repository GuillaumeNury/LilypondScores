% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Tours d'Orvault"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Guillaume Nury / Aurélien Étienne"
	arranger = "Arrangement : Ronan JEGO-AQUILINA"
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\boxMark "A - Introduction"
		R1*20
		\bar "|."
		\break
	}

	\drummode {
		\time 4/4
		\boxMark "B - Thème 1 (2 fois)"
		\bar ".|:"

		\repeat volta 2 {
			\fla d8 d16 g \ra d4 (#9 d8)
			g16-> d g g d8 d16->\> g d d\! g8 d
			\fla g8 \ra d8 (#5 d4)
			\break
		}

		\fla d8 \triolet { d16 d g }
		d8-> g16 g
		\triolet { d16 g d } g8->
		\ra d4
		(#9 d16->) g d d
		g8 \fla d16 g16
		d g-> d d
		g8-> g8
		d16 g d d
		g8 \ra d (#5 d8) g
		\triolet { d16 g d } g8->
		d16 d g g d8-> g
		\ra d4 (#9 d4)
		\bar ":|."
		\break
	}

	\drummode {
		\time 4/4
		\boxMark "C - Couple"
		R1*8
		\bar "|."
		\break
	}

	\drummode {
		\time 4/4
		\boxMark "D - Thème 2 (2 fois)"
		\bar ".|:"

		d8-> \ra g8 (#5 g8.) g16
		d8-> d16 g d g d8->
		\fla d8 \ra d8 (#5 d8.) g16

		d8 \fla d \ra d4
		(#9 d8->) \ra g8 (#5 g8.) g16
		d8-> d16 g d g d8

		\fla d8 \ra d8 (#5 d8.) g16
		d8 \fla d \ra d4
		
		(#9 d8) \triolet { d16 d g }
		d8-> g16 g
		\triolet { d16 g d } g8->
		\ra d4
		(#9 d16->) g d d
		g8 \fla d16 g16

		d g-> d d
		g8-> g8
		d16 g d d
		g8 \ra d (#5 d8) g
		\triolet { d16 g d } g8->

		d16 d g g d8-> g
		\ra d4 (#9 d4)
		\bar ":|."
		\break
	}

	\pageBreak

	\drummode {
		\time 4/4
		\boxMark "E - Transition"
		R1*12
		\bar "|."
		\break
	}

	\drummode {
		\time 4/4
		\boxMark "F - Chant"
		R1*19
		\bar "|."
		\break
	}

	\drummode {
		\time 4/4
		\boxMark "G - Transition"
		R1 R1 R1 R1
		\bar "|."
		\break
	}

	\drummode {
		\time 4/4
		\boxMark "H - Thème final (2 fois)"
		\bar ".|:"

		\repeat volta 2 {
			\fla d8 d16 g \ra d4 (#9 d8)
			g16-> d g g d8 d16->\> g d d\! g8 d
			\fla g8 \ra d8 (#5 d4)
			\break
		}

		\fla d8 \triolet { d16 d g }
		d8-> g16 g
		\triolet { d16 g d } g8->
		\ra d4
		(#9 d16->) g d d

		g8 \fla d16 g16
		d g-> d d
		g8-> g8

		\repeat volta 2 {
			d16 g d d
			g8 \ra d
			(#5 d8) g
			\triolet { d16 g d } g8->

			\bar ":|."
		}

		\alternative {
			{
				d16 d g g
				d8-> g
				\ra d4
				(#9 d4)
			}
			{
				d16 d g g
				d8-> g
				\ra d4
				(#9 \ra d4)

				(#9 \ra d4)
				(#9 \ra d4)
				(#9 \ra d4)
				(#9 d4)
			}
		}

		\bar ":|."
		\break
	}
}