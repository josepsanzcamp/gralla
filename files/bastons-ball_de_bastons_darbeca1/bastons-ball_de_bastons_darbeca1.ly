\version "2.16.2"

\header {
  dedication="Ball de bastons"
  title=""
  subtitle="Ball de bastons d'Arbeca (1)"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Les Garrigues"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  e8  |
  \time 2/4   a4 b8 gis  |
  a4. e16 f  |
  g16 a g f e d c b  |
  %05
  d16 c b c a8 b16 c  |
  d16 c b a gis a b c  |
  d4. e16 f  |
  e16 f e d c d c b  |
  d16 c b c a8 b16 c  |
  %10
  d16 c b a gis a b c  |
  d4. e16 f  |
  e8 a gis b  |
  a4 r4  \bar "|." % kompletite
}

\score {
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \layout {}
}
\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \midi {
    \set Staff.midiInstrument = "oboe"
    \set DrumStaff.midiInstrument = "drums"
  }
}
