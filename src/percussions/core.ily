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