\version "2.22.1"

\header {
  dedication=""
  title="  "
  subtitle="Matinades del Segrià"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  g4.  |
  \time 3/4   e8 c4 g'8 e c  |
  d4 b8 g4.  |
  g'8 f e d c d16 e  |
  %05
  d16 b g4 g'8 g e  |
  c4 d4. e16 d  |
  c2 r4  \bar "||"
  b4 b c  |
  d2 c8 a  |
  %10
  b4. a8 g4  |
  r4 b8 d c b  |
  a8 g4 b4.  |
  b8 a4. r4  |
  r8 d4 fis8 e d  |
  %15
  c4. b8 c4  |
  c4 d16 c b4 r8  |
  \repeat volta 2 { r4 g8 a b c  |
  d4 g,8 a b c  |
  d4. b8 d c  |
  %20
  b8. a16 g8. g16 b8. d16  |
  b2 g8 a  |
  b2 r4  | }
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  r4 r8  |
  \time 3/4   r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  \bar "||"
  d4 d e  |
  fis2 e8 c  |
  %10
  d4. c8 b4  |
  r4 d8 fis e d  |
  c8 b4 d4.  |
  d8 c4. r4  |
  r8 fis4 a8 g fis  |
  %15
  e4. d8 e4  |
  e4 d4. r8  |
  \repeat volta 2 { r4 b8 c d e  |
  f4 b,8 c d e  |
  f4. d8 f e  |
  %20
  d8. c16 b8. b16 d8. fis16  |
  d2 b8 c  |
  d2 r4  | }
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

