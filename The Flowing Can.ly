
%\include "settings.ly"

% QUESTION:
% - What's a "kedge"
% - What does "cathead" mean?
% - What does "cathead the pond'rous anchor fish" mean? Or did I even translate "fish" correctly from the type?


\header{
  	title = "The Flowing Can"
	composer = "Trad."
	tagline = ""
}

% Display range and key. They are side by side,
% so they each get a column.
% Nest \score inside \markup to get 2 columns
\markup {
 	\column {
		\line \bold { "Range:" }
		\score {
			\absolute 
			{
				\key g \major
				\clef treble
				% Suppress time signature
				\once \override Staff.TimeSignature #'stencil = ##f 
			 d' g'' 
			}
		}
	}
 	\hspace #10 % Add some right margin to the first column
 	\column {
 		\bold "Key:"
		"G Major"
	} % column
	\line { " " }
} % markup


% Everything from here down to the >> brackets is synchronized
% MUSIC GOES HERE!
<<
\relative g' {
	\key g \major
	\time 6/8
	\clef treble 

	% Broken beams align more naturally with lyrics
	\autoBeamOff

	% Pickup measure is an eighth note long
 	\partial 8 d8           | % A           
	d'4 d8 c4 c8            | % sai- lor's life's a
	b4 b8 a4 a8             | % life of woe, He
	g4 g8 a4 a8             | % works now late now
	{b4. a4} b8             | % ear- ly; now
	c4 c8 d4 d8             | % up and down, now
	e8 [fis] g g4 fis16 [e] | % to and fro, what
	d4 b8  c4 a8            | % then? he takes it
	b4. g4 b8               | % cheer- ly. Blest
	a4 g8  fis4 a8          | % with a smi- ling
	\grace a8 g4 fis8 e4 g8 | % can of grog, If
	fis4 e8 g4 e8           | % du- ty call, stand
	a4 d8 b [a] g           | % rise, or fall, To 
	fis8 [a] d e4 cis8      | % fate's last verge he'll
	d4 r8 r4 d,8            | % jog. The
	fis4 a8 fis4 d8         | % kedge to weigh, the
	g4 b8 b[d] g,           | % heets be- lay, He
	fis8[a] a d,4 c'8       | % does it with a
	b4 r8  r4 d,8           | % wish, to
	fis4 a8 fis4 d8         | % heave the lead, or
	g4 b8 b[d] g,8          | % to cat- head the
	fis8[g] a d,4 c'8       | % pond- rous an- chor
	b4 r8 r4 d8             | % fish: For
	e4 e8 d4 d8             | % while the grog goes
	c4 r8 r4 e8             | % round, All
	d4 d8 c4 c8             | % sense of dan- ger's
	b4 r8 r8  c d           | % drown'd, We de-
	e,8[fis] g a[b] c       | % ise it to a
	d,4 r8 r4 d'8           | % man. We
	b4 g8 g8. g16 g8        | % sing a lit- tle, And
	g4 e8 e8. e16 e8        | % laugh a lit- tle, And
	c'4 a8. a16 a8 a8       | % work a lit- tle, And
	a4 fis8 fis8. fis16 e8  | % swear a lit- tle: We
	d'4 d8 d d d            | % sing a lit- tle And
	b4 g8 g g g             | % laugh a lit- tle, And
	d'4 d8 d d d            | % work a lit- tle, And
	b4 g8 g g g             | % swear a lit- tle, And
	c8 c c  d d d           | % fid- le a lit- tle, And
	e8 e g d b g            | % foot it a lit- tle, And
	e4 a8  fis8.[e16] fis8  | % swig the flow- ing
	d'4. c4.                | % can, And
	b8[d] b c4 a8           | % swig the flow- ing
	d4. c4.                 | % can, And
	b8[d] g,8 \grace c8 c4 a8| % swig the flow- ing 
	g4 r8 r4 \bar "|."      | % can.

	   
} % Music ends here
	
% LYRICS GO HERE!
\addlyrics {
	A |
	sai- lor's life's a |
	life of woe, He |
	works now late now |
	ear- ly; now |
	up and down, now |
	to and fro, what |
	then? he takes it |
	cheer- ly. Blest |
	with a smi- ling |
	can of grog, If |
	du- ty call, stand |
	rise, or fall, To |
	fate's last verge he'll |
	jog. The |
	kedge to weigh, the |
	sheets be- lay, He |
	does it with a |
	wish, to |
	heave the lead, or | 
	to cat- head the |
	pond- rous an- chor | 
	fish: For | 
	while the grog goes |
	round, All |
	sense of dan- ger's |
	drown'd, We de- |
	spise it to a | 
	man. We |
	sing a lit -tle, And |
	laugh a lit -tle, And |
	work a lit- tle, And |
	swear a lit- tle: We |
	sing a lit- tle And |
	laugh a lit- tle, And |
	work a lit- tle, And |
	swear a lit- tle, And |
	fid- dle a lit- tle, And |
	foot it a lit- tle, And |
	swig the flow- ing |
	can, And |
	swig the flow- ing |
	can, And |
	swig the flow- ing |
	can.

} % Lyrics end here

% Everything from here up to the << brackets is synchronized
>>


