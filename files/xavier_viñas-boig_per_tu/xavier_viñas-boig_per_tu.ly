\version "2.16.2"

\header {
  dedication=""
  title="Boig per tu"
  subtitle=""
  subsubtitle=""
  poet="GRALLA"
  meter=""
  piece=""
  composer=""
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 8 { b4  c8 d   |
  d4. e8  |
  g,2  |
  r2  |
  %05
  b4 c8 d  |
  d4. e8  |
  g,2  |
  r4 r8 b  |
  c8 c4 b8  |
  %10
  a8 g ~ g4  |
  r4 e8 g }
  \alternative { { a2  |
  g2  |
  fis2  |
  %15
  r2 }
  { g2 ~  |
  g2  |
  r2  |
  r2 } }
  %20
  \repeat volta 2 { r4 d'8 b  |
  d8 b d d ~  |
  d8 e e r8  | % kompletite
  e4 e8 fis  |
  g8 fis e d ~  |
  %25
  d8 e ~ e d ~ }
  \alternative { { d2 ~  |
  d2 } }
  d4. g,8  |
  a8 d ~ d g, ~  |
  %30
  g2 ~  |
  g2  |
  r4 r8 b  |
  c8 c4 b8  |
  a8 g ~ g4  |
  %35
  r2  |
  r4 e8 g  |
  g2 ~  |
  g2  |
  r2  |
  %40
  r2  \bar "|."
}

\score {
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
    >>
  }
  \layout {}
}
\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
    >>
  }
  \midi {}
}
