\version "2.18.2"

\include "../lib/scottish-drums.ily"

\header {
	title = "Suite Gille Servat"
	instrument = "Caisses Claires"
	composer = "Aurélien Étienne"
}

\new DrumStaff {
	\drummode {
		\divLig
		\time 4/4
		\mark \default
		\partial 8 g8 |
		\repeat volta 2 {
			\fla d16. \ra d32( #5 d16.) g32 d32 g d g-> d8-> |
			\ra d4( #13 d8.) \ra d16( #5 |
			d16.) g32-> \triolet { d16 d g } d32 g d g d8-> |
			\ra d4( g32 d16. \fla g32 d16. g32 \fla d8 |
			\triolet { d16 g d } \triolet { d16 g d } \fla g16.\v d32 g16. \fla d32-> |
		}
		\alternative {
			{ \fla g4-> r8[ g] | }
			{ \fla g4-> r8[ d32\&lt g d g\!] }
				}
				\repeat volta 2 {
						d8-> \fla g16. g32-> \triolet { d16 d g-> } d16. \ra d32(-> #0 |
			\ra d4 #12 d8)-> g |
			\fla d16.-> g32 d16. g32\v \triolet { d16 d g } \ra d8->( #6 |
			\ra g4->)( #10 d) |
			r8.[ g16] \ra d8( #7 \triolet { g16) d g } |
			\fla d16.-> g32 d16. \fla g32 d16. g32 \fla d8 |
			\triolet { d16 g d } \triolet { d16 g d } \fla g16. d32 g16. d32-> |
			\time 3/4
			g32 d g d-> g8-> \ra d4( #13 d8) d32\< g d g\! |
		}
	}
}