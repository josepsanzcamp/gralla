\version "2.16.0"

\header {
  dedication="Rumba"
  title="  "
  subtitle="A bal d'a bigarda"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Pepín Banzo"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 2 { g8. e16 ~ e8 \tempo 4 = 100 c g16 c8 e16 g8 a  |
  f8. d16 ~ d8 b g16 b8 d16 f8 g  |
  e8. c16 ~ c8 a a16 a8 b16 c8 d  |
  g,4 b d a'  |
  %05
  g8. e16 ~ e8 c g16 c8 e16 g8 a  |
  f8. d16 ~ d8 b g16 b8 d16 f8 g  |
  e8. c16 ~ c8 a a16 a8 b16 c8 d }
  \alternative { { \mark "Fine" r8 g r16 g8. g4 r }
  { r8 g r16 g8. g4 r8 g, } }
  %10
  e'16 e8 e16 f8 e d8. c16 ~ c8 c  |
  d16 d8 c16 b8 a b4. g8  |
  f'16 f8 f16 g8 f e8. d16 ~ d8 d  |
  e16 e8 d16 c8 d e4. g,8  |
  e'16 e8 e16 f8 e d8. c16 ~ c8 c  |
  %15
  d16 d8 c16 d8 e f4 r16 d8 e16  |
  f16 d8 e16 f8 d e8. c16 r c8 d16  |
  e16 c8 d16 e8 c d8. b16 r b8 c16  |
  d16 b8 c16 d8 f e4 r16 d8 e16  |
  f16 d8 e16 f8 d e8. c16 r c8 d16  |
  %20
  e16 c8 d16 e8 c d8. b16 r b8 c16  |
  \mark "D.C. al Fine" d16 b8 c16 d8 b c8. c16 r8 c  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4 = 100
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 2 { \times 2/3 { c4 g2 } c8. g16 ~ g8 c  |
  \times 2/3 { b4 g2 } b8. g16 ~ g8 b  |
  \times 2/3 { a4 a2 } a8. a16 ~ a8 gis  |
  b4 d f d  |
  %05
  \times 2/3 { c4 g2 } c8. g16 ~ g8 c  |
  \times 2/3 { b4 g2 } b8. g16 ~ g8 b  |
  \times 2/3 { a4 a2 } a8. a16 ~ a8 gis }
  \alternative { { r8 b r16 b8. b4 r }
  { r8 b r16 b8. b4 r } }
  %10
  g'16 g8 g16 a8 g f8. e16 ~ e8 e  |
  f16 f8 e16 d8 c d2  |
  a'16 a8 a16 b8 a g8. f16 ~ f8 f  |
  g16 g8 f16 e8 f g2  |
  g16 g8 g16 a8 g f8. e16 ~ e8 e  |
  %15
  f16 f8 e16 f8 g a4 r16 f8 g16  |
  a16 f8 g16 a8 f g8. e16 r e8 f16  |
  g16 e8 f16 g8 e f8. d16 r d8 e16  |
  f16 d8 e16 f8 a g4 r16 f8 g16  |
  a16 f8 g16 a8 f g8. e16 r e8 f16  |
  %20
  g16 e8 f16 g8 e f8. d16 r d8 e16  |
  f16 d8 e16 f8 d e8. e16 r8 e  \bar "|."
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

