%\include "settings.ly"

% Alternate lyrics:
% http://quod.lib.umich.edu/e/evans/N28649.0001.001/1:80?rgn=div1;view=fulltext


\header{
	% Song I.
  	title = "The Lucky Escape"
	composer = "Trad."
	tagline = "The American Musical Miscellany, 1798"
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
				\key f \major
				\clef treble
				% Suppress time signature
				\once \override Staff.TimeSignature #'stencil = ##f 
			 c' f'' 
			}
		}
	}
 	\hspace #10 % Add some right margin to the first column
 	\column {
 		\bold "Key:"
		"F Major"
	} % column
	\line { " " }
} % markup

% Put some vertical distance between range/key info
% and score. 
% There is probably a better way to do this.
\markup {
	\vspace #1
	{Feedback: yo@tom.im}
}

% MUSIC GOES HERE!
{
	\key f \major
	\time 4/4
	\clef treble 
	<<
	% Starting point is F above middle C. 
	% Add a ' to go up an octave.
	% Add a , to go down an octave.
	\relative f' {
		% Broken beams to align with lyrics
		\autoBeamOff
		% Start with a quarter note pickup
		% r plus duration for a rest.
		% When a duration is changed it becomes the default.
		% r1 would be a whole measure rest
		% add is to make sharp, so cis4 is a C#
		% add es to make flat
		% Pitches are absolute. They are independent of the stated key signature.
		% Follow a note with a ~ (no space) for a tie.
		% Slur by enclosing with parentheses. This slurs from the first D to the second, then the second E to the last D.
		% cis( d e c cis d) e( d4)
		% Use \ and \ for a phrase:
		% g4\( g8( a) b( c) b4\)
		% Articulations include:
		% c4-^ c--  c->  c-. 

		% Fingering:
		% c4-3
		
		% Fingering and articulations can be forced to appear 
		% above by replacing the the dash with ^ or below with _
		% c4_-^1

		% Add text above or below scores:
		%  c2^"espr" a_"legato"

		% Triplets:
		% \tuplet 3/2 { c8 r c }

		% Grace notes:
		% c2 \appoggiatura b16 c2 |
     	% c2 \acciaccatura b16 c2 |

		% Chords:
		% r4 <c e g>~ <c f a>2 |

		% Extend a lyric over more than one note:
		% shine _ as
		%  c([ b])

		% partial is for pickup measures.
		% the 4 after partial means the pickup is a quarter note long 
		
		% The lyric markup is probably wrong. It's in the comments
		% as a rough guide for the music.
 		\partial 4 f8. g16 |              % I that
		a4 a8. a16 a4 {bes8.} a16 |       % once was a ploughman _  a 
		{a8. g16 a8} bes8 c4  {d8 [e]} |  % sailor _ _ am now. No  
		{f8 [ c]} bes a {bes a} g f |     % lark that a- loft _ in the 
		a4 (g) r4 {f8. g16} |             % sky, ever _
		a4 a8. a16 a4 bes8 a  |           % flut- ter'd his wings to give 
		{a8. g16} a8 bes c4 d8 e |        % speed _ to the plough Was so
		{f d} d d e  c c c  |             % gay _ and so careless _ _ as
		b8 g4. r4 a8 f |                  % I, _ Was so
		{e8 g} c {e e} d c b |            % gay _ and so careless _ _ as
		c2 r4 c8 bes |                    % I; But my
		{a [c]} d ees {f d} c bes |       % friend was a car- _ sin-do a-
		d c {bes a} bes4 c8 d |           % board a king's _ ship, And he
		{d c} bes a {bes a} g f |         % ax'd _ me to go _ just to
		{f e} g e c4 c'8 c |              % sea _ for a trip; And he
		{a'8 g} f e {e d} e f |           % talk'd _  of such things _ as if
		c4 c8 bes a4 bes8 c |             % sai- lors were kings, And so
 		{d4  d,8} d g4 a8 bes |           % teazing _ did keep, and so
		{c4 c,8} c f4 g8 a |              % teazing _ did keep, That I              
		bes8 g {a bes}{a f} {g a} |       % left my poor _ plough _ to _
		f8 e g e c4 c4 |                  % go plough- ing the deep. No
		{f8 [g]} a a {f g} a a |          % long- _ er the horn call'd me
		{a8 [g]} a bes c4 c, |    % up _ in the morn, No 
		{f8 [g]} a a {f [g]} a a |        % long- er the horn call'd me
		{a8 [g]} a bes c4\fermata {c8[f]} % up in the morn, I
		{a8 [g]} d f e c c a |            % tru- sted the car- sin- do and
		d8 bes bes g \grace d'8 c4 r8 a | % the in- con- stant wind, That
		bes8  a g f e d' \tuplet 3/2 {{c8 d} bes} | % made me for to go and leave _ my
		{a8.[bes16]} {g8. [f16]} f4 \bar "|." % dear be- hind.	

	}

% LYRICS GO HERE!
	\addlyrics {
		I that | 
		once was a ploughman _  a | 
		sailor _ _ am now. No  |
		lark that a- loft _ in the | 
		sky, ever _ | 
		flut- ter'd his wings to give |
		speed _ to the plough Was so | 
		gay _ and so careless _ _ as | 
		I, _ Was so | 
		gay _ and so _ care _less as | 
		I; But my |
		friend was a car- _ sin-do a- | 
		board a king's _ ship, And he |
		ax'd _ me to go _ just to | 
		sea _ for a trip; And he | 
		talk'd _  of such things _ as if | 
		sai- lors were kings, And so |
		teazing _ did keep, and so | 
		teazing _ did keep, That I |
		left my poor _ plough _ to _ | 
		go plough- ing the deep. No |
		long-  er the horn _ call'd me | 
		up in the morn, No |
		long- er the horn call'd me | 
		up in the morn, I |
		tru- sted the car- sin- do and | 
		the in- con- stant wind, That |
		made me for to go and leave _ my | 
		dear be- hind. |


	}
	>>

}


