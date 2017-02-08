
%\include "settings.ly"

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
	cheer- ly. Blest|
	with a smi- ling |
	can of grog, If |
	du- ty call, stand |
	

} % Lyrics end here

% Everything from here up to the << brackets is synchronized
>>


