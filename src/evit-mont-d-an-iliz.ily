\version "2.18.2"

\include "../lib/scottish-drums.ily"

\header {
	title = "Evit Mont d’an Iliz"
	instrument = "Caisses Claires"
	composer = "Aurélien Étienne"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\mark \default
		% Mesure 1 %
		\fla d8 g16 d->
		g8 \fla d
		\ra d8 (#7 g)
		r8 \fla g8
		% Mesure 2 %
		\fla d16 g d g->
		d d g8->
		\ra d4 (#9 d)
		\break
		% Mesure 3 %
		\fla d8 g16 d->
		g8 \fla d
		d16 g d g
		d8-> g
		% Mesure 4 %
		d16 g-> d d
		g8 \fla d
		\ra d4 (#9 d)
		\break43

		\mark \default
		\repeat volta 2 {
			% Mesure 1 %
			\fla d8 \ra d (#9 d d)
			d16 g-> d d
			g8 d16-> g\<
			% Mesure 2 %
			d16 g d8->\!
			r8 \ra d8 (#5 d4)
			\fla d8 \fla g
			\break
			% Mesure 3 %
			\fla d8 \ra d (#9 d d)
			d16 g-> d d
			g8 d16-> g\<
			% Mesure 4 %
			d16 g d8->\!
			\fla g8 \fla d
			\ra d4 (#9 d)
			\break
		}
		% Fin %
		\mark "Fin"
		\ra d4 (#9 \ra d4 (#9 d4)) r4
		s1
	}
}