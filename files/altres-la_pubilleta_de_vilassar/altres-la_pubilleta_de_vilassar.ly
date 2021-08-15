\version "2.16.0"

\header {
  dedication=""
  title="    "
  subtitle="La Pubilleta de Vilassar"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Vicenç Gómez Prats"
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
  \key g \major
  \time 2/4
  \repeat volta 2 { r8 d d c  |
  b4 b ~  |
  b8 d d c  |
  b4 b ~  |
  %05
  b8 d d c  |
  b4. b8  |
  c4 b  |
  a2  |
  r8 c c b  |
  %10
  a4 a ~  |
  a8 c c b  |
  a4 a ~  |
  a8 c c b  |
  a4. a8  |
  %15
  b4 a  |
  g2  | }
  \key c \major   \time 6/8   \repeat volta 2 { r8 b b c b c  |
  d8 c d e4.  |
  e8 f e d c b  |
  %20
  c4 a8 r4.  |
  r8 a a b a b  |
  c8 b c d4.  |
  d8 e d c b a  |
  g4. d'4 d8  |
  %25
  b4 b8 c b c  |
  d4 b8 d4 d8  |
  b4 b8 c b a  |
  g4. d'4 d8  |
  b4 b8 c b c  |
  %30
  d4 b8 d4 d8  |
  b4 b8 c b a  |
  g4. r  | }
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { r8 b b a  |
  g4 g ~  |
  g8 b b a  |
  g4 g ~  |
  %05
  g8 b b a  |
  g4. g8  |
  a4 b  |
  c2  |
  r8 e e d  |
  %10
  c4 c ~  |
  c8 e e d  |
  c4 c ~  |
  c8 e e d  |
  c4. c8  |
  %15
  d4 c  |
  b2  | }
  \key c \major   \time 6/8   \repeat volta 2 { r2 r4  |
  r2 r4  |
  r2 r4  |
  %20
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4. b4 b8  |
  %25
  g4 g8 a g a  |
  b4 g8 b4 b8  |
  g4 g8 a b a  |
  g4. b4 b8  |
  g4 g8 a g a  |
  %30
  b4 g8 b4 b8  |
  g4 g8 a b a  |
  g4. r  | }
}

\book {

\paper {
  print-page-number = false
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
  }\score { \unfoldRepeats
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
  }\score { \unfoldRepeats
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 14)
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
}

}

