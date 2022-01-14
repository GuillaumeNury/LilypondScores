% LilypondScores:percus
\version "2.23.5"

\header {
	title = \markup { \fontsize #4 \bold "Ar Sorserez" }
	subtitle = \markup { \fontsize #1 \bold " Morceau complet : A-A-B-B / Suite 2020 : A-A" }
	instrument = "Toms - Cymbale - Wood blocks"
	composer = "C. Declercq / R. Jego-Aquilina"
	tagline = ##f
}

\book {
	\score {
		\new DrumStaff {
			\tempo 4 = 84
			<<
			\new DrumVoice {
				\stemUp
				\drummode {
					% Thème A
					cymc4 r4 r4 r4

					\time 2/4
					cymc8. cymc16 r8 cymc8

					\time 4/4
					cymc4 r4 r4 r4
					cymc4 \skip2.
					cymc4 \skip2.

					% Thème B
					cymc4 \skip2.
					\skip2
					\skip1
					cymc4 cymc4 cymc4 r4
				}
			}
			\new DrumVoice {
				\stemDown
				\drummode {
					\repeat volta 2 {
						\mark \default
						\time 4/4
						\bar ".|:"
						tomfh4 r r r

						\bar "||"
						\time 2/4
						tomfh8. tomfh16 r8 tomfh8

						\bar "||"
						\time 4/4
						tomfh4 r r r

						\break
					}
					\alternative {
						{
							r4
							r4
							tomfh16. tomfh32 r16. tomfh32
							tomfh8 tomfh8
						}
						{
							tomfh8 tomfh16. tomfh32
							r16. tomfh32 tomfh8
							tomfh4
							r4
						}
					}
					\bar ":|."
					\break

					\mark \default
					\time 4/4
					\bar ".|:"

					tomfh4 r4 r r

					\bar "||"
					\time 2/4
					tomfh8 tomfh8 tomfh16 tomfh16 tomfh8

					\bar "||"
					\time 4/4
					tomfh8 \tuplet 3/2 { tomfh16 tomfh16 tomfh16 }
					tomfh4
					r4
					r4

					\break
					tomfh4 tomfh tomfh r4

					\bar "||"
					\time 2/4
					r4 r8 tomfh8

					\bar "||"
					\time 4/4
					tomfh4
					r8 tomfh16 tomfh16
					tomfh16 tomfh16 tomfh8
					r4

					\bar "||"
					\time 2/4
					tomfh4 r4

					\bar "||"
					\time 4/4
					r4
					tomfh8 tomfh8
					r4
					tomfh8 tomfh8

					\break

					r4 r r r

					\bar "||"
					\time 2/4
					tomfh16. tomfh32 r16. tomfh32
					tomfh8 tomfh8

					\bar ":|."

					tomfh4
					r4
					\bar "|."
				}
			}
			>>
		}

		\header {
			piece = \markup { \fontsize #3 \bold "Tom + cymbale" }
		}
	}

	\score {		   
		\new DrumStaff {
			\tempo 4 = 84
			#(define mydrums '((ridebell default #t  3)
							(cowbell  default #t -2)))
			\override DrumStaff.StaffSymbol.line-positions = #'(-2 3)
			\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
			\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
			\drummode {
				\repeat volta 4 {
					\mark \default
					\time 4/4
					\bar ".|:"
					 
					\override NoteHead.color = #red wbl8.^\markup "x2" \override NoteHead.color = #blue wbh16
					r8 \override NoteHead.color = #blue wbh8
					\override NoteHead.color = #red wbl8. \override NoteHead.color = #blue wbh16
					r4

					\bar "||"
					\time 2/4
					\override NoteHead.color = #red wbl8. \override NoteHead.color = #blue wbh16
					r8 \override NoteHead.color = #blue wbh8

					\bar "||"
					\time 4/4
					\override NoteHead.color = #red wbl8. \override NoteHead.color = #blue wbh16
					r4
					\override NoteHead.color = #red wbl8. \override NoteHead.color = #blue wbh16
					r8 \override NoteHead.color = #blue wbh8

					r4
					r4
					r4
					r4
					\break
				}
				\repeat volta 8 {
					\mark \default
					\time 4/4
					\bar ".|:"
					\override NoteHead.color = #red wbl8.^\markup "x8" \override NoteHead.color = #blue wbh16
					r8 \override NoteHead.color = #blue wbh8
					\override NoteHead.color = #red wbl4
					r4
				}
			}
		}

		\header {
			piece = \markup { \fontsize #3 \bold "Wood blocks" }
		}
	}

	\score {
		\new DrumStaff {
			\tempo 4 = 84
			#(define mydrums '((tambourine default #t 0)))
			\override Staff.StaffSymbol.line-positions = #'( 0 )
			\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
			\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
			\drummode {
				\repeat volta 7 {
					\mark \default
					\time 4/4
					\bar ".|:"
					tamb8.^\markup "x7" tamb16
					tamb4 
					tamb8. tamb16
					tamb4
				}
				\repeat volta 8 {
					\mark \default
					\time 4/4
					\bar ":|.|:"
					tamb8.^\markup "x8" tamb16
					tamb4 
					tamb8. tamb16
					tamb4
					\break
				}
			}
		}
		\header {
			piece = \markup { \fontsize #3 \bold "Tom" }
		}
	}
}