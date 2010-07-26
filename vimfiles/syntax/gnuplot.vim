" Vim syntax file
" Language:    Gnuplot
" Maintainer:  Jim Eberle <jim.eberle@fastnlight.com>
" Last Change: Dec 21, 2006
" URL:         http://www.fastnlight.com/syntax/gnuplot.vim

" Use :syn w/in a buffer to see language element breakdown

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" --- Statement ---
syn keyword plotStmt cd call clear exit fit if help history load
syn keyword plotStmt pause plot print pwd quit replot reread
syn keyword plotStmt reset save set shell show splot system
syn keyword plotStmt test unset update
hi def link plotStmt Statement

" --- Option ---
syn keyword plotOption angles arrow autoscale bars boxwidth clabel
syn keyword plotOption clip cntrparam colorbox contour decimalsign
syn keyword plotOption dgrid3d dummy encoding fit format grid
syn keyword plotOption historysize isosamples key locale logscale
syn keyword plotOption mapping mouse multiplot offsets origin output
syn keyword plotOption palette parametric pm3d polar print
syn keyword plotOption samples style surface terminal ticscale
syn keyword plotOption ticslevel timestamp timefmt title view zero
syn keyword plotOption zeroaxis label tics margin
syn match   plotOption "[xyz]2\?range"
syn match   plotOption "[xyz]2\?data"
syn match   plotOption "[xyz]2\?label"
syn match   plotOption "[xyz]2\?zeroaxis"
syn match   plotOption "[rtuv]range"
syn match   plotOption "[blrt]margin"
syn match   plotOption "\(no\)\?m\?[xyz]2\?tics"
syn match   plotOption "\(no\)\?m\?cbtics"
syn match   plotOption "[xyz]2\?[md]tics"
syn keyword plotOption cbtics cblabel cbrange cbdata
syn keyword plotOption cbdtics cbmtics 
hi def link plotOption Identifier

" --- Operator ---
syn match   plotOp "[-+*/^|&?:]"
syn match   plotOp "\*\*"
syn match   plotOp "&&"
syn match   plotOp "||"
hi def link plotOp Operator

" --- Function ---
syn keyword plotFn abs abs acos arg asin atan besj0 besj1
syn keyword plotFn besy0 besy1 ceil cos cosh erf erfc exp
syn keyword plotFn floor gamma ibeta igamma imag int lgamma
syn keyword plotFn log log10 rand real sgn sin sinh sqrt tan tanh
hi def link plotFn Function

" --- String ---
syn region  plotString start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region  plotString start=+'+ skip=+\\\\\|\\'+ end=+'+
hi def link plotString String

" --- Number ---
syn match   plotNumber "\<-\?\d\+\>"
hi def link plotNumber Number

" --- Float ---
syn match   plotFloat display contained "\d\+\.\d*\(e[-+]\=\d\+\)\="
syn match   plotFloat display contained "\.\d\+\(e[-+]\=\d\+\)\=\>"
syn match   plotFloat display contained "\d\+e[-+]\>"
hi def link plotFloat Float

" --- Constant Pair ---
syn keyword plotPair border noborder
syn keyword plotPair labels nolabels
syn keyword plotPair autotitles noautotitles
syn keyword plotPair filled nofilled
syn keyword plotPair offset nooffset
syn keyword plotPair undefined noundefined 
syn keyword plotPair reverse noreverse
syn keyword plotPair ratio noratio
syn keyword plotPair head nohead
syn keyword plotPair rotate norotate
syn keyword plotPair point nopoint 
syn keyword plotPair box nobox
syn keyword plotPair square nosquare
syn keyword plotPair mirror nomirror
syn keyword plotPair verbose noverbose
syn keyword plotPair altdiagonal noaltdiagonal 
syn keyword plotPair ftriangles noftriangles
syn keyword plotPair hidden3d nohidden3d
syn keyword plotPair bentover nobentover
syn keyword plotPair enhanced noenhanced
syn keyword plotPair doubleclick nodoubleclick
syn keyword plotPair zoomjump nozoomjump
syn keyword plotPair zoomcoordinates nozoomcoordinates
syn keyword plotPair polardistance nopolardistance
syn keyword plotPair errorvariables noerrorvariables
syn keyword plotPair ps_allcF nops_allcF
syn keyword plotPair writeback nowriteback
hi def link plotPair plotConst

" --- Constant ---
syn keyword plotConst pi
syn keyword plotConst degrees radians 
syn keyword plotConst default restore user
syn keyword plotConst left right center top bottom outside below Left Right
syn keyword plotConst front back layerdefault
syn keyword plotConst tiny small medium large giant size
syn keyword plotConst absolute relative 
syn keyword plotConst vertical horizontal
syn keyword plotConst min max fixmin fixmax fix keepfix
syn keyword plotConst on off begin end in out push pop
syn keyword plotConst zero one two
syn keyword plotConst empty solid pattern 
syn keyword plotConst linear cubicspline bspline 
syn keyword plotConst bdefault base both 
syn keyword plotConst iso_8859_1 iso_8859_2 iso_8859_15 cp850 cp852 cp437 koi8r
syn keyword plotConst cartesian spherical cylindrical
syn keyword plotConst gray color positive negative
syn keyword plotConst fill line 
syn keyword plotConst linestyle ls
syn keyword plotConst linetype lt
syn keyword plotConst linewidth lw
syn keyword plotConst pointtype pt 
syn keyword plotConst pointsize ps
syn keyword plotConst textcolor tc
syn keyword plotConst xy xz yz xyz
syn keyword plotConst clipboardformat mouseformat
syn keyword plotConst trianglepattern labeloptions
syn keyword plotConst heads arrowstyle as rto
syn keyword plotConst boxes filledcurves financebars candlesticks
syn keyword plotConst boxerrorbars boxxyerrorbars xerrorbars xerrorlines
syn keyword plotConst xyerrorbars xyerrorlines yerrorbars yerrorlines 
syn keyword plotConst dots fsteps histeps impulses lines linespoints steps
syn keyword plotConst points vectors
syn keyword plotConst binary matrix axis autofreq
syn keyword plotConst loadpath fontpath logfile datafile file
syn keyword plotConst scansautomatic scansbackward scansforward separator
syn keyword plotConst corners2color mean median geomean
syn keyword plotConst clip1in clip4in c1 c2 c3 c4
syn keyword plotConst flush implicit explicit
syn keyword plotConst order auto levels discrete incremental
syn keyword plotConst closed commentschars
syn keyword plotConst data defined
syn keyword plotConst font function functions height width
syn keyword plotConst map maxcolors missing model
syn keyword plotConst rgbformulae samplen spacing
hi def link plotConst Constant

" --- Keyword ---
syn keyword plotKW all using index every
syn keyword plotKW at by from to with
syn keyword plotKW x y z
hi def link plotKW Keyword

" --- Comment ---
syn match   plotComment "#.*"
hi def link plotComment Comment

" --- Todo ---
syn keyword plotTodo contained TODO FIXME XXX
hi def link plotTodo Todo

let b:current_syntax = "gnuplot"

