\version "2.16.0"

\header {
  dedication="Ball de bastons"
  title="   "
  subtitle="La Milana"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus=""
  instrument="Vilanova i la Geltrú"
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative a'
{
  \clef treble
  \key f \major
  \time 1/4
  a8 a \tempo 4 = 60  |
  \time 2/4   d8 f e g  |
  f8 d a' g  |
  f8 e16 d des8 e  |
  %05
  d8 a a a  |
  d8 f e g  |
  f8 d a' g  |
  f8 e16 d e8 d16 des  |
  d4 c8 c  |
  %10
  \repeat volta 2 { f8 a g c  |
  a8 g a c  |
  c8 bes16 a g8 f  |
  e8 c f g  |
  a8 g16 f e8 d  |
  %15
  des8 a a' g  |
  f8 e16 d e8 d16 des }
  \alternative { { d4 c8 c }
  { d4 r4 } } \bar "||" % kompletite
}

liniaroAb =
\relative d''
{
  \tempo 4 = 60
  \clef treble
  \key f \major
  \time 1/4
  r4  |
  \time 2/4   d4 des  |
  d8 a f' e  |
  d4 des  |
  %05
  d8 a r4  |
  d4 des  |
  d8 a f' e  |
  d4 a  |
  a4 c8 bes  |
  %10
  \repeat volta 2 { a8 f' e c  |
  f8 e f a  |
  a8 g16 f e8 d  |
  c4 d8 e  |
  f8 e16 d des8 b  |
  %15
  a4 f'8 e  |
  d4 a }
  \alternative { { a4 c8 bes }
  { a4 r4 } } \bar "||" % kompletite
}

liniaroAc =
\relative a'
{
  \tempo 4 = 60
  \clef treble
  \key f \major
  \time 1/4
  a8 a  |
  \time 2/4   d4 e8 d16 e  |
  f4 a8 g  |
  a8 bes16 a g8 a16 g  |
  %05
  f4 a,8 a  |
  d4 e8 d16 e  |
  f4 a8 g  |
  a8 bes16 a g8 a16 g  |
  f4 c8 c  |
  %10
  \repeat volta 2 { c4 c8 d16 e  |
  f16 e d c f8 c  |
  f4 r  |
  c16 d e f g8 f16 e  |
  d4 r8 d  |
  %15
  e4 a8 g  |
  a8 bes16 a g8 a16 g }
  \alternative { { f4 c8 c }
  { f4 r4 } } \bar "||" % kompletite
}

liniaroAd =
\drummode
{
  \tempo 4 = 60
  \time 1/4
  r4  |
  \time 2/4   tomfl4 tomfl  |
  tomfl8 tomfl ~ tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %05
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl8 tomfl ~ tomfl4  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 tomfl  |
  %10
  \repeat volta 2 { tomfl8 tomfl ~ tomfl4  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  %15
  tomfl8 tomfl ~ tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl }
  \alternative { { tomfl4 tomfl }
  { tomfl4 r4 } } \bar "||" % kompletite
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAd
      >>
    }
    \layout {}
  }
}

}

