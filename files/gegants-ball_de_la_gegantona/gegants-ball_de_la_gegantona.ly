\version "2.16.0"

\header {
  dedication="Gegants"
  title="    "
  subtitle="Ball de la gegantona"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="Vilassar de Mar"
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  e8. d16  |
  \time 2/4   \repeat volta 2 { c4 g  |
  g4 e'8. d16  |
  c4 g  |
  %05
  g4 e'8. d16  |
  c8. b16 c8. cis16  |
  d8. e16 f8. e16  |
  f4 a,  |
  a4 f'8. e16  |
  %10
  d8. cis16 d8. c16  |
  e8. d16 c8. b16  |
  g8. a16 b8. c16  |
  d8. e16 d8. c16  |
  b8. a16 g4 ~  |
  %15
  g4 g'8. f16  |
  e8. d16 c4 }
  \alternative { { \mark "Fine" c4 e8. d16 }
  { c4 r } }
  \time 3/4   e2 d4  |
  %20
  c2 g4  |
  f'2 e4  |
  d2 a4  |
  g'2 f4  |
  e2 c4  |
  %25
  d2 dis4  |
  e2.  |
  e2 d4  |
  c2 g4  |
  f'2 e4  |
  %30
  d2 a4  |
  g'2 f4  |
  e2 c4  |
  d2 b4  |
  c2. ~  |
  %35
  \mark "D.C. al Fine" c4 r r  \bar "|."
}

liniaroAb =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  e8. f16  |
  \time 2/4   \repeat volta 2 { g4 e  |
  e4 e8. f16  |
  g4 e  |
  %05
  e4 g8. g16  |
  a8. g16 a8. g16  |
  f8. g16 a8. g16  |
  a4 f  |
  f4 d'8. c16  |
  %10
  b2  |
  a4. g8  |
  g2  |
  f4 g8. a16  |
  e8. f16 e4 ~  |
  %15
  e4 e'8. d16  |
  c8. b16 g4 }
  \alternative { { g4 e8. f16 }
  { c'4 r } }
  \time 3/4   r4 g g  |
  %20
  r4 g g  |
  r4 a a  |
  r4 a a  |
  r4 b b  |
  r4 c c  |
  %25
  r4 g g  |
  r4 g g  |
  r4 g g  |
  r4 g g  |
  r4 a a  |
  %30
  r4 a a  |
  r4 b b  |
  r4 c c  |
  r4 g g  |
  r4 g g  |
  %35
  c4 r r  \bar "|."
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
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
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
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

