<%inherit file="/src/include/common.lyi"/>
<%
	attributes['jazzTune']=True
%>
\header {
	default_header

	title="Summertime"
	composer="George Gershwin"
	style="Jazz"
	piece="Med Swing"
	poet="DuBose Heyward"
	copyright="1935, Gershwin Publishing Corporation"

	completion="4"
	uuid="2615b7ec-a26f-11df-b010-0019d11e5a41"
}

<%doc>
	TODO:
	- add lyrics
	- discrepency between tune and melody at the end
</%doc>

myChords=\chordmode {
	\startChords

	\startSong

	\partial 4 r4 |
	\endPart

	\repeat volta 2 {
		d1:m7 | d1:m7 | d1:m7 | d1:m7 | \myEndLine
		g1:m7 | g1:m7 | e1:m7.5- | a:7.9+ | \myEndLine
		d1:m7 | d1:m7 | d1:m7 | d1:m7 | \myEndLine
		g2:m7 c2:7 | f1:maj7 | e2:m7.5- a2:7.9+ | d1:m7 | a1:7.9+ | \myEndLine
	}
	\endSong

	\endChords
}

myVoice=\relative c''' {
	\time 4/4
	\key d \minor

	\partial 4 a8. f16 |
	\repeat volta 2 {
		a1 | r4 g8. f16 g8. a16 f4 | d2 a~ | a4 r a' f |
		g8 g~ g2. | r4 f8. d16 f8. d16 f4 | e1~ | e2 r4 a8. f16 |
		a1 | r4 g8. f16 g8. a16 f4 | d2 a~ | a2 r4 a |
		c a8 c d f~ f4 | a8 g~ g4 f2 | d1~ | d4 r r a'8. f16 |
	}
}

include(src/include/harmony_tune.lyi)