\version "2.16.2"

\header {
  dedication=""
  title="El Drac de la Bisbal"
  subtitle="(vals)"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="grup gralla de boix"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { d2 d4   |
  e2 e4   |
  d2.  |
  r4  b d  |
  %05
  d4 c2  |
  c4 a c  |
  c4 b2 ~  |
  b4 r r  |
  d2 d4  |
  %10
  e2 e4  |
  d2.  |
  r4 d e  |
  fis4 e d }
  \alternative { { e4 d c  |
  %15
  b2.  |
  c2. }
  { e2 fis4  |
  g2. } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { b2 b4  |
  c2 c4  |
  c4 b a  |
  b4 g b  |
  %05
  b4 a2  |
  a4 fis a  |
  a4 g2  |
  d'4 b g  |
  b2 b4  |
  %10
  c2 c4  |
  c4 b a  |
  b2 c4  |
  c2. }
  \alternative { { c4 b a  |
  %15
  g2.  |
  a2. }
  { c2 a4  |
  b2. } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument=""}
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
  \header {instrument=""}
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

