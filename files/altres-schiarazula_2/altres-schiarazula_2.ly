\version "2.16.0"

\header {
  dedication=""
  title="        "
  subtitle="Schiarazula Marazula"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Antonio Mainerio (ca. 1535 - 1582)"
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
  \time 1/4
  e4  |
  \time 4/4   \repeat volta 2 { e4 d e d  |
  c4 c c b  |
  a4 g a b  |
  %05
  a4 a a e'  |
  e4 d e d  |
  c4 c c b  |
  a4 g a b  |
  a4 a a d8 c  |
  %10
  b4 a b c  |
  b4 a b e8 d  |
  c4 a a g  |
  a4 a a d8 c  |
  b4 a b c  |
  %15
  b4 a b e8 d  |
  c4 a a gis }
  \alternative { { a2. e'4 }
  { a,1 } } \bar "||"
}

liniaroAb =
\relative a''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  a4  |
  \time 4/4   \repeat volta 2 { a2 a  |
  a2 ~ a4 g8 f  |
  e2 e  |
  %05
  e2 e  |
  a2 a  |
  a2 ~ a4 g8 f  |
  e2 e  |
  e2. a4  |
  %10
  g2 g  |
  g2 g  |
  e2 e  |
  e2. a4  |
  g2 g  |
  %15
  g2 g  |
  e2 e }
  \alternative { { e2. a4 }
  { e1 } } \bar "||"
}

liniaroAc =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  c4  |
  \time 4/4   \repeat volta 2 { c2. d4  |
  e2 e  |
  c2 c  |
  %05
  c2 c  |
  c2. d4  |
  e2 e  |
  c2 c  |
  c2. f4  |
  %10
  d2 d  |
  d2 ~ d4 c8 b  |
  c2 b  |
  c2. f4  |
  d2 d  |
  %15
  d2 ~ d4 c8 b  |
  c2 b }
  \alternative { { c2. c4 }
  { c1 } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { tomh4 tomh8 tomh tomh4 tomh8 tomh  |
  tomh4-> tomh-> tomh-> tomh  |
  tomh4 tomh8 tomh tomh4 tomh8 tomh  |
  %05
  tomh4-> tomh-> tomh-> tomh  |
  tomh4 tomh8 tomh tomh4 tomh8 tomh  |
  tomh4-> tomh-> tomh-> tomh  |
  tomh4 tomh8 tomh tomh4 tomh8 tomh  |
  tomh4-> tomh-> tomh-> tomh  |
  %10
  tomh4 tomh8 tomh tomh4 tomh8 tomh  |
  tomh4-> tomh-> tomh-> tomh  |
  tomh4 tomh8 tomh tomh4 tomh8 tomh  |
  tomh4-> tomh-> tomh-> tomh  |
  tomh4 tomh8 tomh tomh4 tomh8 tomh  |
  %15
  tomh4-> tomh-> tomh-> tomh  |
  tomh4 tomh8 tomh tomh4 tomh8 tomh }
  \alternative { { tomh4-> tomh-> tomh-> tomh }
  { tomh4-> tomh-> tomh-> r } } \bar "||"
}

liniaroAe =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { tomfl2 tomfl  |
  tomfl4-> tomfl-> tomfl2->  |
  tomfl2 tomfl  |
  %05
  tomfl4-> tomfl-> tomfl2->  |
  tomfl2 tomfl  |
  tomfl4-> tomfl-> tomfl2->  |
  tomfl2 tomfl  |
  tomfl4-> tomfl-> tomfl2->  |
  %10
  tomfl2 tomfl  |
  tomfl4-> tomfl-> tomfl2->  |
  tomfl2 tomfl  |
  tomfl4-> tomfl-> tomfl2->  |
  tomfl2 tomfl  |
  %15
  tomfl4-> tomfl-> tomfl2->  |
  tomfl2 tomfl }
  \alternative { { tomfl4-> tomfl-> tomfl2-> }
  { tomfl4-> tomfl-> tomfl-> r } } \bar "||"
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
        \new Staff \with {instrumentName = #"Timbal" } \liniaroAd
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAe
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
        \new Staff \with {instrumentName = #"Timbal" } \liniaroAd
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAe
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
        \new Staff \with {instrumentName = #"Timbal" } \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Timbal" } \liniaroAd
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
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAe
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAe
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
        \new Staff \with {instrumentName = #"Timbal" } \liniaroAd
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
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAe
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
        \new Staff \with {instrumentName = #"Timbal" } \liniaroAd
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
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAe
      >>
    }
    \layout {}
  }
}

}

