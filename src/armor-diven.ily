% LilypondScores
\version "2.18.2"

\include "src/core.ily"

\header {
	title = "The Water is Wide - Armor Diven"
	instrument = "Caisses Claires"
	composer = "Christophe Declercq"
	tagline = ##f
}

extendLV = #(define-music-function (parser location further) (number?) #{ 
     \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0) 
     \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/ 
further -2) 
     \once \override LaissezVibrerTie  #'extra-offset = #(cons (/ 
further 2) 0) 
#}) 

\new DrumStaff {
	\drummode {
		\time 4/4
		% Mesure 1
		r4 r4 r4 d4:~\<
		\repeat volta 2 {
			% Mesure 2
			d8->\!
			\triolet { d16 g d }
			\fla g8 \triolet { d16 g d }
			\fla g8 \triolet { d16 g d }
			\fla \triolet { g16 d g } \fla \triolet { d16 g d }
			% Mesure 3
			\fla g8 \triolet { d16 g d }
			\fla g8 \triolet { d16 g d }
			\fla g8 \triolet { d16 g d }
			\fla g8 \fla d8
			% Mesure 4
			\fla g8 \triolet { d16 g d }
			\fla g8 \triolet { d16 g d }
			\fla g8 \triolet { d16 g d }
			\fla \triolet { g16 d g } \fla d8
			\break
			% Mesure 5
			\ra d4\< (#13 \ra d4)(#13 d4\!) d4:~\<
		}
		d4\! r4 r4 r4
		\break
	}
}