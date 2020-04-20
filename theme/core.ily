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

woodblockstyle = {
	#(define myWoodBlocks '(
		(ridebell default #t 3)
		(cowbell default #t -2))
	)
	\set DrumStaff.drumStyleTable = #(alist->hash-table myWoodBlocks)

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
	#(define myWoodBlocks '(
		(hightom default #t 3)
		(lowtom default #t -2))
	)
	\set DrumStaff.drumStyleTable = #(alist->hash-table myWoodBlocks)
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

	\override Score.MetronomeMark.extra-offset = #'(-4.5 . 11)
	\override Score.MetronomeMark.self-alignment-X = #LEFT

	\override DrumStaff.InstrumentName.self-alignment-X = #RIGHT

	\context {
		\Score
		\compressFullBarRests
	}
}

\paper {
	system-system-spacing.basic-distance = #16
	score-system-spacing.basic-distance = #30

	% Print tagline one every pages
	oddFooterMarkup = \markup {
		\if-property #'header:tagline {
			\column {
				\vspace #1
				\fill-line {
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
							\vspace #1
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
							\vspace #0.5
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
							\vspace #1
							\line {
								\fontsize #1.5 \bold
								\fromproperty #'header:instrument
							}
						}
					}
				}
				\vspace #1
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
		\on-the-fly \print-all-headers { \bookTitleMarkup \hspace #1 }
		\fill-line {
			\fromproperty #'header:piece
			\fromproperty #'header:opus
		}
	}}
}