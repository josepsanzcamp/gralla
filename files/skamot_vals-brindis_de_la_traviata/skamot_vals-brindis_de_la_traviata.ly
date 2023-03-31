\version "2.16.2"

\header {
  dedication="Vals"
  title=""
  subtitle="Brindis"
  subsubtitle="La Traviata"
  poet=""
  meter=""
  piece=""
  composer="G. Verdi"
  arranger="Arr. Joan Moliner"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 1/4
  g4 \tempo 4 = 200  |
  \time 3/4   \repeat volta 2 { e'2. ~  |
  e4 g, e'  |
  e4 g, e'  |
  %05
  \times 2/3 { e8 ( f e } d4 e )  |
  g2. ~  |
  g4 f e  |
  d4 d8 ( c d e )  |
  d4 d8 c d ( e )  |
  %10
  d2 c4  |
  g2 g4  |
  e'2. ~  |
  e4 g, e'  |
  e4 g, e'  |
  %15
  \times 2/3 { e8 ( f e } d4 e )   |
  a2. ~  |
  a4 g f  |
  e4 e8 d e ( f )  |
  d4 d8 ( c d e )  |
  %20
  c2. ~  |
  c4 r c  |
  f2 f4  |
  f4 f8 e f g  |
  f2.  |
  %25
  e2 g,4  |
  d'2 d4  |
  d4 d8 ( c d e )  |
  d2.  |
  c2 c4  |
  %30
  f2 f4  |
  f4 f8 ( e f g )  |
  f2.  |
  e2 g4  |
  b,2 b4  |
  %35
  b4 ais8 ( b c b ~ )  |
  b2. _"rit."  |
  d2 \fermata g,4  |
  e'2. ~  |
  e4 g, e'  |
  %40
  e4 g, e'  |
  \times 2/3 { e8 ( f e } d4 e )  |
  a2. ~  |
  a4 g f  |
  e4 e8 ( d e f )  |
  %45
  d4 d8 ( c d e )  |
  c8 g' g4 f  |
  e4 e8 d e ( f )  |
  d4 d8 ( c d e )  |
  c8 g' g4 f  |
  %50
  e4 e8 ( d e f )  |
  d4 d8 ( c d e )  |
  c4 r r }
  \alternative { { r4 r g }
  { c4 c-> r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4 = 200
  \clef treble
  \key c \major
  \time 1/4
  g4  |
  \time 3/4   \repeat volta 2 { c2. ~  |
  c4 g c  |
  c4 g c  |
  %05
  \times 2/3 { c8 ( d c } b4 c )  |
  e2. ~  |
  e4 d c  |
  b4 b8 ( a b c )  |
  b4 b8 a b ( c )  |
  %10
  b2 c4  |
  g2 g4  |
  c2. ~  |
  c4 g c  |
  c4 g c  |
  %15
  \times 2/3 { c8 ( d c } b4 c )   |
  f2. ~  |
  f4 e d  |
  c4 c8 b c ( d )  |
  b4 b8 ( a b g )  |
  %20
  c2. ~  |
  c4 r c  |
  a2 c4  |
  d4 d8 c d e  |
  d2.  |
  %25
  c2 g4  |
  b2 b4  |
  b4 b8 ( a b c )  |
  b2.  |
  c2 c4  |
  %30
  a2 c4  |
  d4 d8 ( c d e )  |
  d2.  |
  c2 g4  |
  gis2 gis4  |
  %35
  a2 a4  |
  gis2.   |
  b2 \fermata g4  |
  c2. ~  |
  c4 g c  |
  %40
  c4 g c  |
  \times 2/3 { c8 ( d c } b4 c )  |
  f2. ~  |
  f4 e d  |
  c4 c8 ( b c d )  |
  %45
  b4 b8 ( a b g )  |
  c8 e e4 d  |
  c4 c8 b c ( d )  |
  b4 b8 ( a b g )  |
  c8 e e4 d  |
  %50
  c4 c8 b c d  |
  b4 b8 a ( b g )  |
  c4 r r }
  \alternative { { r4 r g }
  { c4 c-> r } } \bar "||"
}

liniaroAc =
\relative g'
{
  \tempo 4 = 200
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 3/4   \repeat volta 2 { r4 g-. g-.  |
  r4 g-. g-.  |
  r4 g-. g-.  |
  %05
  r4 g-. g-.  |
  r4 c-. c-.  |
  r4 e,-. e-.  |
  g2 g4  |
  g2 g4  |
  %10
  g2 g4  |
  e2 r4  |
  g4 g r4  | % kompletite
  r4 g g  |
  r4 g g  |
  %15
  r4 g g  |
  r4 c c  |
  r4 c-. c-.  |
  g2 g4  |
  g2 g4  |
  %20
  e4 e e  |
  e4 r c'  |
  f,2 a4  |
  a2 b4  |
  b2 c4  |
  %25
  g2 g4  |
  g2 g4  |
  f2 f4  |
  e2 a4  |
  g2 c4  |
  %30
  f,2 a4  |
  a2 b4  |
  b2 c4  |
  g2 g4  |
  e2 e4  |
  %35
  fis2 fis4  |
  e2.   |
  e2 \fermata r4  |
  r4 g-. g-.  |
  r4 g-. g-.  |
  %40
  r4 g-. g-.  |
  r4 g-. g-.  |
  r4 c-. c-.  |
  r4 c-. c-.  |
  g2 g4  |
  %45
  g2 g4  |
  g2 g4  |
  g2 g4  |
  g2 g4  |
  g2 g4  |
  %50
  g2 g4  |
  g2 g4  |
  e4 r r }
  \alternative { { r4 r r }
  { e4 e-> r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

