\version "2.16.0"

\header {
  dedication="Polca"
  title="  "
  subtitle="De chanza"
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
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  c8. b16 c8 d  |
  e8 e c4  |
  f8 f d4  |
  g8 g e4  |
  %05
  c8. b16 c8 d  |
  e8 e c4  |
  f8 f d d  |
  c8 c c4  |
  c8. b16 c8 d  |
  %10
  e8 e c4  |
  f8 f d4  |
  g8 g e4  |
  c8. b16 c8 d  |
  e8 e c4  |
  %15
  f8 f d d  |
  c8 c c4  |
  \repeat volta 2 { b8. c16 d8 b  |
  c8 d e c  |
  b8. c16 d8 b  |
  %20
  c8 c c4  | }
  \repeat volta 2 { g'16 a g e f g f d  |
  e8 f g e  |
  g16 a g e f g f d  |
  e8 e e4  | }
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  e8. d16 e8 f  |
  %10
  g8 g e4  |
  a8 a f4  |
  b8 b g4  |
  e8. d16 e8 f  |
  g8 g e4  |
  %15
  a8 a f f  |
  e8 e e4  |
  \repeat volta 2 { gis,8. a16 b8 gis  |
  a8 b c a  |
  gis8. a16 b8 gis  |
  %20
  a8 a a4  | }
  \repeat volta 2 { e'16 f e c d e d b  |
  c8 d e c  |
  e16 f e c d e d b  |
  c8 c c4  | }
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  %05
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  %10
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  %15
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  \repeat volta 2 { tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %20
  tomfl8 tomfl tomfl4  | }
  \repeat volta 2 { tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  | }
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
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
  #(define output-suffix "a5")
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
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
  #(define output-suffix "a6")
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

