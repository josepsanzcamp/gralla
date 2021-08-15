\version "2.16.0"

\header {
  dedication="Pasdoble"
  title="   "
  subtitle="La cirereta"
  subsubtitle="(La primera)"
  poet=""
  meter=""
  piece=""
  composer="Lluís Silla"
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
  \time 2/4
  g4 c8 e  |
  g4 f8 e  |
  d8 c4. ~  |
  c8 g' f e  |
  %05
  d8 c4. ~  |
  c8 g' f e  |
  f8 d4. ~  |
  d4 r  |
  d4 e8 f  |
  %10
  g4 f8 e  |
  f8 d4. ~  |
  d8 g f e  |
  f8 d4. ~  |
  d8 f e d  |
  %15
  c4 g8 ~ \times 2/3 { g16 a b }  |
  c8 r r e16 f  |
  g8 a g f  |
  g8 a g f  |
  g4 e  |
  %20
  e4. e16 f  |
  g8 a g f  |
  g8 a g e  |
  f4 d ~  |
  d8 r r g,16 g  |
  %25
  g8 g' g8. g16  |
  g4 r8 g,16 g  |
  g8 g' g8. g16  |
  g4 r8 g16 g  |
  a8 f g e  |
  %30
  f8 d e d  |
  e4 c  |
  \mark "D.C." c8 r r4  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  g4 g8 c  |
  e4 d8 c  |
  b8 g4. ~  |
  g8 e' d c  |
  %05
  b8 g4. ~  |
  g8 e' d c  |
  d8 b4. ~  |
  b4 r  |
  b4 c8 d  |
  %10
  e4 d8 c  |
  d8 b4. ~  |
  b8 e d c  |
  d8 b4. ~  |
  b8 g a b  |
  %15
  c4 g8 ~ \times 2/3 { g16 a b }  |
  c8 r r c16 d  |
  e8 f e d  |
  e8 f e d  |
  e4 c  |
  %20
  c4. c16 d  |
  e8 f e d  |
  e8 f e c  |
  d4 b ~  |
  b8 r r g16 g  |
  %25
  g8 e' e8. e16  |
  e4 r8 g,16 g  |
  g8 e' e8. e16  |
  e4 r8 e16 e  |
  f8 d e c  |
  %30
  d8 b c b  |
  e4 c  |
  c8 r r4  \bar "|."
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

