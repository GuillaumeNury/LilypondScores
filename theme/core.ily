% Normal

% BOXED THEME MARK
boxMark = #(define-music-function (parser location markup) (markup?)
	#{
		\mark \markup {
			\box \pad-around #0.75
			\bold $markup
		}
	#}
)

annotation = #(define-music-function (parser location text)
	(markup?)
	#{
		\override TextSpanner.bound-details.left.text = \markup { \bold \large $text }
		\override TextSpanner.font-shape = #'upright
		\override TextSpanner.dash-period = #-1
	#}
)

woodblockstyle = {
	#(define myTable '(
		(hiwoodblock default #t 3)
		(lowoodblock default #t -2))
	)
	\set DrumStaff.drumStyleTable = #(alist->hash-table myTable)

	#(define (color-notehead grob)
		(let ((mod-position (modulo (ly:grob-property grob 'staff-position) 7)))
		(case mod-position
			((3) (x11-color 'blue))
			((5) (x11-color 'red))
		))
	)
	\override NoteHead.color = #color-notehead
	\override DrumStaff.StaffSymbol.line-positions = #'(-2 3)
	\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
}

twotomstyle = {
	#(define myTable '(
		(hightom default #t 3)
		(lowtom default #t -2))
	)
	\set DrumStaff.drumStyleTable = #(alist->hash-table myTable)
	\override DrumStaff.StaffSymbol.line-positions = #'(-2 3)
	\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
}

onetomstyle = {
	#(define myTable '(
		(lowtom default #t -2))
	)
	\set DrumStaff.drumStyleTable = #(alist->hash-table myTable)
	\override DrumStaff.StaffSymbol.line-positions = #'(-2)
	\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
}

bassestyle = {
	#(define myTable '(
		(bassdrum default #t -2))
	)
	\set DrumStaff.drumStyleTable = #(alist->hash-table myTable)
	\override DrumStaff.StaffSymbol.line-positions = #'(-2)
	\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
}

bongostyle = {
	#(define myTable '(
		(hibongo default #t 3)
		(lobongo default #t -2))
	)
	\set DrumStaff.drumStyleTable = #(alist->hash-table myTable)
	\override DrumStaff.StaffSymbol.line-positions = #'(-2 3)
	\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
}

darboukastyle = {
	#(define myTable '(
		(hiconga default #t 3)
		(loconga default #t -2))
	)
	\set DrumStaff.drumStyleTable = #(alist->hash-table myTable)
	\override DrumStaff.StaffSymbol.line-positions = #'(-2 3)
	\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
}

hithatstyle = {
	#(define mydrums '((hihat cross #f 2)))
		\override Staff.StaffSymbol.line-positions = #'( 0 )
		\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
		\override Stem.direction = #1
		\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
}

tambourinestyle = {
	#(define mydrums '((tambourine default #t 0)))
	\override Staff.StaffSymbol.line-positions = #'( 0 )
	\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
	\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
}

bidonstyle = {
	#(define mydrums '((lotimbale default #t 0)))
	\override Staff.StaffSymbol.line-positions = #'( 0 )
	\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
	\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
}

circle = {
	\once \override NoteHead.stencil = #(lambda (grob)
			(let* ((note (ly:note-head::print grob))
				(combo-stencil (ly:stencil-add
					note
					(circle-stencil note 0.1 0.3))))
				(ly:make-stencil (ly:stencil-expr combo-stencil)
					(ly:stencil-extent note X)
					(ly:stencil-extent note Y))))
}

% Like \time, but invisible
hiddenTime = #(define-music-function (parser location frac) (fraction?)
	#{
		\once \hide Staff.TimeSignature
		\time $frac
	#}
)

% FLIP FLAP
flip = #(define-music-function (parser location note) (ly:music?)
	#{ \circle \xNote $note #}
)

% CONDITIONNAL MARKUP
#(define-markup-command (if-property layout props symbol innermarkup) (symbol? markup?)
	(let ((property (chain-assoc-get symbol props #f)))
		(interpret-markup layout props
			(markup (if (string? property) innermarkup #'""))
		)
	)
)


\layout {
	\numericTimeSignature
	
	% Remove steam when beams over rests
	\override Staff.Stem #'stemlet-length = #0
	% Always print bracket when using tuplets
	\override TupletBracket.bracket-visibility = ##t
	% Do not print end of line TimeSignature
	\override Staff.TimeSignature.break-visibility = ##(#f #t #t)

	\override Score.RehearsalMark.font-size = 3
	\override Score.RehearsalMark.font-series = #'bold
	\override Score.RehearsalMark.break-align-symbols = #'(left-edge)
	\override Score.RehearsalMark.self-alignment-X = -1
	\override Score.RehearsalMark.padding = #2

	\override Score.MetronomeMark.self-alignment-X = #LEFT
	\override Score.MetronomeMark.outside-staff-priority = #3000
	\override Score.MetronomeMark.padding = #10

	\override Score.MultiMeasureRest.expand-limit = #4

	\override DrumStaff.InstrumentName.self-alignment-X = #RIGHT

	\context {
		\Score
		\compressEmptyMeasures
		\override StaffGrouper.staff-staff-spacing.padding = #1.75
		\override StaffGrouper.staff-staff-spacing.minimum-distance = #2
		\override StaffGrouper.staff-staff-spacing.basic-distance = #10
		\override StaffGrouper.staff-staff-spacing.stretchability = #10
	}
}

\paper {
	system-system-spacing.basic-distance = #16
	% score-system-spacing.basic-distance = #30
	top-markup-spacing.basic-distance = #5
	% markup-system-spacing.basic-distance = #-1

	% Print tagline one every pages
	oddFooterMarkup = \markup {
		\if-property #'header:tagline {
			\column {
				\vspace #1
				\fill-line {
					\fontsize #-3
					\fromproperty #'header:tagline
				}
			}
		}
	}

	bookTitleMarkup = \markup {
		\column {
			\fill-line { \fromproperty #'header:dedication }
			\override #'(baseline-skip . 3.5)
			\column {
				\fill-line {
					\fontsize #8 \bold
					\fromproperty #'header:title
				}
				\if-property #'header:subtitle {
					\fill-line {
						\center-column {
							\vspace #0.2
							\line {
								\fontsize #-0.25 \bold
								\fromproperty #'header:subtitle
							}
						}
					}
				}
				\if-property #'header:arranger {
					\fill-line {
						\center-column {
							\vspace #0.2
							\line {
								\fontsize #-0.25 \bold
								\fromproperty #'header:arranger
							}
						}
					}
				}
				\if-property #'header:subsubtitle {
					\fill-line {
						\smaller \bold
						\fromproperty #'header:subsubtitle
					}
				}
				\if-property #'header:instrument {
					\fill-line {
						\center-column {
							\vspace #0.5
							\line {
								\fontsize #1.5 \bold
								\fromproperty #'header:instrument
							}
						}
					}
				}
				\vspace #0.5
				\fill-line {
					\null
					\null
					\fromproperty #'header:composer
				}
				\if-property #'header:meter {
					\vspace #1
					\fill-line {
						\fromproperty #'header:meter
					}
				}
			}
		}
	}

	scoreTitleMarkup = \markup { \column {
		\if \should-print-all-headers { \bookTitleMarkup \hspace #1 }
		\fill-line {
			\fromproperty #'header:piece
			\fromproperty #'header:opus
		}
	}}
}