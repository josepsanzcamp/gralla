\version "2.16.0"

\header {
  dedication="Moixiganga"
  title="   "
  subtitle="Muixeranga d'Algemesí"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="La Ribera"
  arranger=""
  opus=""
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
  \time 4/4
  \repeat volta 6 { r1  |
  r1  |
  e4 e a2  |
  a4 a g4. a8  |
  %05
  g8 <a a> g f e4. d8  |
  c1  |
  e8. d16 e8. g16 f4. e8  |
  d4 c b r16 b c d  |
  e8. d16 c8 b a2 ~  |
  %10
  a1  |
  c'4 c c8 b ~ b b16 c  |
  d8. c16 b8 a a gis ~ gis4  |
  e1 ~  |
  e1  |
  %15
  e8. d16 e8 g f4. e8 }
  \alternative { { d4 c b r16 b c d  |
  e8. d16 c8 b a2 ~  |
  a1 }
  { \times 2/3 { d8 e d } \times 2/3 { c d c } b4 r16 b c d  |
  %20
  e8. d16 c8 b a2 ~  |
  a1 } } \bar "||"
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 6 { r1  |
  r1  |
  r2 a  |
  a4 a b2  |
  %05
  b4 b c4. b8  |
  a8 g a b c2  |
  c8. b16 c8. e16 d4. c8  |
  b4 a g r16 g a b  |
  c8. b16 a8 g a4. g8  |
  %10
  a8 g a b e2 ~  |
  e2 r  |
  r1  |
  c4 c c8 b ~ b b16 c  |
  d8. c16 b8. a16 a gis8. r4  |
  %15
  a8. b16 c8 e d4. c8 }
  \alternative { { b4 a g r16 g a b  |
  c8. b16 a8 g a2  |
  e'4 e e2 }
  { \times 2/3 { b8 c b } \times 2/3 { a b a } g4 r16 g a b  |
  %20
  c8. b16 a8 g a2 ~  |
  a1 } } \bar "||"
}

liniaroAc =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 6 { r1  |
  r1  |
  r2 a8. b16 c8. d16  |
  e4 c b8. c16 d8 e  |
  %05
  d4 g, c8. b16 a8 g  |
  a8 b c d e2  |
  c8. b16 c8. e16 d8. b16 c8 d  |
  b8 c16 b a8 b16 a g4 r16 g a b  |
  c8. b16 a8 g a2  |
  %10
  e'8. d16 e8 f e2 ~  |
  e2 r  |
  r1  |
  c4 c c8 b ~ b b16 c  |
  d8. c16 b8. a16 a gis8. r4  |
  %15
  a8. b16 c8 e d8. a16 b8. c16 }
  \alternative { { \times 2/3 { b8 c b } \times 2/3 { a b a } g4 r16 g a b  |
  c8. b16 a8 g a2  |
  e'4 e a2 }
  { \times 2/3 { b,8 c b } \times 2/3 { a b a } g4 r16 g a b  |
  %20
  c8. d16 e8 g a2 ~  |
  a1 } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 4/4
  \repeat volta 6 { tomfl4 tomfl tomfl r8 tomfl:32 ~  |
  tomfl4 tomfl tomfl r  |
  tomfl4 tomfl tomfl r8 tomfl:32 ~  |
  tomfl4 tomfl tomfl r  |
  %05
  tomfl4 tomfl tomfl r8 tomfl:32 ~  |
  tomfl4 tomfl tomfl r  |
  tomfl4 tomfl tomfl r8 tomfl:32 ~  |
  tomfl4 tomfl tomfl r  |
  tomfl4 tomfl tomfl r8 tomfl:32 ~  |
  %10
  tomfl4 tomfl tomfl r  |
  tomfl4 tomfl tomfl r8 tomfl:32 ~  |
  tomfl4 tomfl tomfl r  |
  tomfl4 tomfl tomfl r8 tomfl:32 ~  |
  tomfl4 tomfl tomfl r  |
  %15
  tomfl4 tomfl tomfl r8 tomfl:32 ~ }
  \alternative { { tomfl4 tomfl tomfl r  |
  tomfl4 tomfl tomfl r8 tomfl:32 ~  |
  tomfl4 tomfl tomfl r }
  { tomfl4 tomfl tomfl r8 tomfl:32 ~  |
  %20
  tomfl4 tomfl tomfl r  |
  tomfl4 tomfl tomfl r } } \bar "||"
}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a4")
  #(layout-set-staff-size 20)
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAd
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAd
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a5landscape")
  #(layout-set-staff-size 16)
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAd
      >>
    }
    \layout {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 12)
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAd
      >>
    }
    \layout {}
  }
}

}

