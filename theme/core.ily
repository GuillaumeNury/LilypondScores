% Normal
\layout {
	\numericTimeSignature
	
	% Remove steam when beams over rests
	\override Staff.Stem #'stemlet-length = #0
	% Always print bracket when using tuplets
	\override TupletBracket.bracket-visibility = ##t
	% Do not print end of line TimeSignature
	\override Staff.TimeSignature.break-visibility = ##(#f #t #t)
}