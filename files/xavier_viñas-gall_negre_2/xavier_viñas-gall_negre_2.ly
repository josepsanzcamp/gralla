\version "2.16.2"

\header {
  dedication=""
  title="El Gall Negre"
  subtitle="(Vals)"
  subsubtitle=""
  poet="grup Gralla de Boix"
  meter=""
  piece=""
  composer="gralla i tarota"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \repeat volta 2 { \time 1/4 g8 a  |
  \time 3/4   g2 c8  d  |
  c2 e8 f  |
  e2. ~  |
  %05
  e4 d e  |
  f4 e  d  |
  c4 b4. a8  |
  a2.  |
  g2 g8 a  |
  %10
  g2 c8 d  |
  c2 e8 f  |
  e2. ~  |
  e4 d e  |
  f4 e d  |
  %15
  c4 b d  |
  c4 r8 c c4  |
  r4 g a  |
  b4. b8 b4  |
  b4 b a  |
  %20
  g2 e4  |
  g4 g a  |
  f2 f4  |
  f4 f f  |
  e4 g2 ~  |
  %25
  g4 g a  |
  b4. b8 b4  |
  b4 b a  |
  g2 e4  |
  g4 g g  |
  %30
  a2 a4  |
  b4 a b  |
  c2. ~  |
  c4 r r4  | } % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \repeat volta 2 { \time 1/4 r4  |
  \time 3/4   r4 g f  |
  e2 g4  |
  c4 b a  |
  %05
  a2 g4 ~  |
  g4 g fis  |
  g2 e4  |
  e2 d4  |
  d2 r4  |
  %10
  r4 g f  |
  e2 g4  |
  c4 b a  |
  a2 g4 ~  |
  g4 g fis  |
  %15
  a4 g b,  |
  c4 r8 c c4  |
  r2.  |
  r4 g' f  |
  f4 e dis  |
  %20
  e2 c4 ~  |
  c4 e f  |
  d2 b4  |
  d4 c b  |
  c2 e8 f  |
  %25
  e2 d8 e  |
  d2 g8 a  |
  g2 f4  |
  e4. d8 c4 ~  |
  c4 d e  |
  %30
  f4. e8 d4 ~  |
  d4 f g  |
  e8 c d e g a  |
  c4 r2  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Tarota" shortInstrumentName = #"T"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Tarota" shortInstrumentName = #"T"} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla"}
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
  \header {instrument="Tarota"}
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

