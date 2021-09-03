\version "2.22.1"

\header {
  dedication="Ball de bastons"
  title="  "
  subtitle="Els Garroters"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="Marcel Casellas, juliol 2002"
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  a16 b c d  |
  \time 2/4   \repeat volta 2 { e8 d g8. b,16  |
  d8 c e8. a,16  |
  c8 b d8. g,16  |
  %05
  b8 a a16 b c d  |
  e8 d g8. b,16  |
  d8 c e8. a,16  |
  c8 b g b  |
  a4 a16 b c d  |
  %10
  e8 d g8. b,16  |
  d8 c e8. a,16  |
  c8 b d8. g,16  |
  b8 a a16 b c d  |
  e8 d g8. b,16  |
  %15
  d8 c e8. a,16  |
  c8 b g b  |
  a4 r8 e'  |
  a4. b16 a  |
  g4. a16 g  |
  %20
  f4 r8 d  |
  g4. a16 g  |
  f4. g16 f  |
  e2  |
  a8 g g f  |
  %25
  f8 e4 e8  \bar "||"
  a4. b16 a  |
  g4. a16 g  |
  f4 r8 d  |
  g4. a16 g  |
  %30
  f4. g16 f  |
  e2  |
  a8 g g f }
  \alternative { { e4 a,16 b c d }
  { e4 r } } \bar "||"
}

liniaroAb =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 2/4   \repeat volta 2 { r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  r8 e f e  |
  %10
  b'4 b8 g  |
  a2  |
  g2  |
  r8 e f e  |
  b'4 b8 g  |
  %15
  a2 ~  |
  a8 g e g  |
  a4 r8 c  |
  c8 d c4  |
  b8 c b4 ~  |
  %20
  b8 a16 g f8 a  |
  b8 c b4  |
  a8 b a4 ~  |
  a8 gis16 a b8 d  |
  c8 b b a  |
  %25
  a8 g a b  \bar "||"
  c8 d c4  |
  b8 c b4 ~  |
  b8 a16 g f8 a  |
  b8 c b4  |
  %30
  a8 b a4 ~  |
  a8 gis16 a b8 d  |
  c8 b b a }
  \alternative { { gis4 r }
  { gis4 r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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
      >>
    }
    \midi {}
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
    \midi {}
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
    \midi {}
  }
}

