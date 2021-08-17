\version "2.16.0"

\header {
  dedication="Gegants"
  title="   "
  subtitle="El gegant del Pi"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Barcelona"
  arranger="Arr. Jordi Fàbregas, 23/IX/93"
  opus="Timbal: Albert Garcia"
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  b8 c  |
  \time 2/4   d4 b  |
  g4 c8 b  |
  a8 a g a  |
  %05
  b8 g b c  |
  d4 b  |
  g4 c8 b  |
  a8 g a b  |
  g4 b8 c  |
  %10
  d8 d b b  |
  g4 c8 b  |
  a8 a g a  |
  b8 g b c  |
  d8 d b b  |
  %15
  g4 c8 b  |
  a8 g a b  |
  g4 e'8 f  \bar "||"
  \key c \major   g4 e  |
  c4 f8 e  |
  %20
  d8 d c d  |
  e8 c e f  |
  g4 e  |
  c4 f8 e  |
  d8 c d e  |
  %25
  c4 e8 f  |
  g8 g e e  |
  c4 f8 e  |
  d8 d c d  |
  e8 c e f  |
  %30
  g8 g e e  |
  c4 f8 e  |
  d8 c d e  |
  c2 ~  |
  c2  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  b8 c  |
  \time 2/4   d4 b  |
  g4 c8 b  |
  a8 a g a  |
  %05
  b8 g b c  |
  d4 b  |
  g4 c8 b  |
  a8 g a b  |
  g4 b8 c  |
  %10
  d8 d b b  |
  g4 c8 b  |
  a8 a g a  |
  b8 g b c  |
  d8 d b b  |
  %15
  g4 c8 b  |
  a8 g a b  |
  g4 c8 d  \bar "||"
  \key c \major   e4 c  |
  g4 a8 g  |
  %20
  f8 f a b  |
  c8 g c d  |
  e4 c  |
  g4 a8 g  |
  f4 b  |
  %25
  c4 c8 d  |
  e8 e c c  |
  g4 a8 g  |
  f8 f a b  |
  c8 g c d  |
  %30
  e8 e c c  |
  g4 a8 g  |
  f4 b  |
  c2 ~  |
  c2  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 2/4   tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %05
  tomfl8 tomfl16 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl4 r  |
  %10
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %15
  tomfl8 tomfl16 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl4 r  \bar "||"
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl4  |
  %20
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %25
  tomfl4 r  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl4  |
  %30
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl4  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 2/4   tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  %05
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 r  |
  %10
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  %15
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 r  \bar "||"
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  %20
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  %25
  tomfl4 r  |
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  %30
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl4  \bar "|."
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
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
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
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \layout {}
  }
}

}

