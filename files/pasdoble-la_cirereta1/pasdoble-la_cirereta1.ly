\version "2.16.0"

\header {
  dedication="Pasdoble"
  title="   "
  subtitle="La cirereta"
  subsubtitle=""
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
  \repeat volta 2 { g4 c8 e  |
  g4 f8 e  |
  d8 c4.  |
  r8 g' f e  |
  %05
  d8 c4.  |
  r8 g' f e  |
  f8. e16 d8 cis  |
  d4 r  |
  d4 e8 f  |
  %10
  g4 f8 e  |
  f16 e d8 ~ d4  |
  r8 g f e  |
  f16 e d8 ~ d4  |
  r8 f e d  |
  %15
  c8 r g4 }
  \alternative { { \mark "Fine" c4 r }
  { c4 r8 e16 f } }
  g8 a g fis  |
  g8 a g fis  |
  %20
  g4 e8. e16  |
  e4 r8 e16 f  |
  g8 a g fis  |
  g8 a g e  |
  f8. e16 d8 cis  |
  %25
  d4 r8 g,16 g  |
  g8 g' g8. g16  |
  g4 r8 g,16 g  |
  g8 g' g8. g16  |
  g4 r8 g16 a  |
  %30
  b8 g a f  |
  g8 e f d  |
  e4 c8. c16  |
  \mark "D.C. al Fine" c8 b a g  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { r2  |
  r2  |
  r8 g a b  |
  c8 r r4  |
  %05
  r8 g a b  |
  c8 c b c  |
  d8. c16 b8 ais  |
  b4 r  |
  b4 c8 d  |
  %10
  e4 d8 c  |
  d16 c b8 ~ b4  |
  r8 e d c  |
  d16 c b8 ~ b4  |
  r8 g a b  |
  %15
  c8 r g4 }
  \alternative { { c4 r }
  { c4 r8 c16 d } }
  e8 f e dis  |
  e8 f e dis  |
  %20
  e4 c8. c16  |
  c4 r8 c16 d  |
  e8 f e dis  |
  e8 f e c  |
  d8. c16 b8 ais  |
  %25
  b4 r8 g16 g  |
  g8 b b8. b16  |
  b4 r8 g16 g  |
  g8 b b8. b16  |
  b4 r8 b16 c  |
  %30
  d8 b c a  |
  b8 g a b  |
  c4 e8. e16  |
  e8 d c b  \bar "|."
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

