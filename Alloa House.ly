\version "2.19.54"

%\include "settings.ly"

\header{
  	title = "Alloa House"
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
			 b g'' 
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
	\time 3/4
	\clef treble 
	% Broken beams align more naturally with lyrics
	\autoBeamOff

	% Pickup measure is a quarter note long
 	\partial 4 g8. [fis16]   | % The _          
	e4 b e8 [fis8]           | % spring time re- turns
	g2 fis8. [e16]           | % turns, and
	d4 a'8 [g8] fis8 [e]     | % cloaths the
	d2 g8. [fis16]           | % plains, And 
	e4 b e8 [fis]            | % A- llo- A
	g2 g8 [a]                | % shines more
	b4 c8 [b] a8. [b16]      | % cheer- full
	g2 g16 ([a b8])          | % gay; The
	c4 d8 [c] b [a]          | % lark tunes his
	b4 c8 [b] a [g]          | % throat, and the
	c8 [a] b [e,] g [b,]     | % neigh- bour- ing
	d2 g8. [fis16]           | % swains sing
	e4 e' d                  | % Me- ril- ly
	b4. a8 g [b]             | % round me where-
	g4 fis8 [e] dis8. [fis16]| % ev- ver I
	e2                       | % stray;
	
	

} % Music ends here
	
% LYRICS GO HERE!
\addlyrics {

	The |
	spring time re- |
	turns, and |
	cloaths the green |
	plains, And |
	A- llo- A |
	shines more |
	cheer- full and |
	gay; The |
	lark tunes his |
	throat, and the |
	neigh- bour- ing |
	swains sing |
	Me- ril- ly |
	round me where- |
	ev- ver I |
	stray; |	
	
	

} % Lyrics end here

% Everything from here up to the << brackets is synchronized
>>


