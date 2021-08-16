\version "2.16.0"

\header {
  dedication=""
  title="        "
  subtitle="Branda de cavalls"
  subsubtitle="(Brandle des chevals)"
  poet=""
  meter=""
  piece=""
  composer="Medieval francesa"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative c''
{
  \clef treble
  \key c \major
  \time 1/4
  c8 d \tempo 4 = 94  |
  \time 4/4   \repeat volta 2 { e8 e f e d f e d  |
  c8 b a4 g c8 d  |
  e8 e f e d f e c  |
  %05
  d8 b c4 c g'8 f16 e  |
  d8 d f e16 d c8 e d c  |
  b8 c d4 d g8 f16 e  |
  d8 d f e16 d c8 e d c  |
  c8 b c4 c dis8 d16 c  |
  %10
  dis8 d16 c b8 c d4 g,8 a  |
  b8 c d dis d c dis d16 c  |
  dis8 d16 c b8 c d4 g,8 a  |
  b8 c c b c4 dis8 d16 c  |
  dis8 d16 c b8 c d4 g,8 a  |
  %15
  b8 c d dis d c dis d16 c  |
  dis8 d16 c b8 c d4 g,8 a }
  \alternative { { b8 c c b c4 c8 d }
  { b8 c _"rit." c b c2 } } \bar "||"
}

liniaroAb =
\relative c''
{
  \tempo 4 = 94
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { c2 b  |
  g'4 f e r  |
  c2 b4 g'  |
  %05
  f4 e c' r  |
  r8 g r g r g r g  |
  r8 g r b g4 r  |
  r8 g r g r g r g  |
  r8 g r e c'4 r  |
  %10
  c,4 d b r  |
  g'4 f dis r  |
  g4 dis f r  |
  g2 c4 r  |
  c,4 d b r  |
  %15
  g'4 f dis r  |
  g4 dis f r }
  \alternative { { g2 c4 r }
  { g4. g8 c2 } } \bar "||"
}

liniaroAc =
\relative g'
{
  \tempo 4 = 94
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { g2 g  |
  e'4 b c r  |
  g2 g4 g  |
  %05
  g4 g e' r  |
  g,8 r g r g r g r  |
  g8 r r g' b,4 r  |
  g8 r g r g r g r  |
  g8 r r g e'4 r  |
  %10
  g,4 g g r  |
  d'4 b g r  |
  g4 g b r  |
  d2 e4 r  |
  g,4 g g r  |
  %15
  d'4 b g r  |
  g4 g b r }
  \alternative { { d2 e4 r }
  { d4. _"it." f8 e2 } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4 = 94
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { hhp4 r hhp r  |
  hhp2:32 ~ hhp4 r  |
  hhp8 hhp hhp hhp hhp hhp hhp hhp  |
  %05
  hhp8 hhp hhp hhp hhp4 r  |
  r8 hhp r hhp r hhp r hhp  |
  r8 hhp r hhp hhp hhp r hhp  |
  r8 hhp r hhp r hhp r hhp  |
  r8 hhp r hhp hhp4 hhp:32  |
  %10
  hhp8 hhp16 hhp hhp hhp hhp hhp hhp8 hhp hhp16 hhp hhp hhp  |
  hhp8 hhp16 hhp hhp hhp hhp hhp hhp8 hhp hhp4:32  |
  hhp8 hhp16 hhp hhp hhp hhp hhp hhp8 hhp hhp16 hhp hhp hhp  |
  hhp8 hhp16 hhp hhp hhp hhp hhp hhp8 hhp hhp4:32  |
  hhp8 hhp16 hhp hhp hhp hhp hhp hhp8 hhp hhp16 hhp hhp hhp  |
  %15
  hhp8 hhp16 hhp hhp hhp hhp hhp hhp8 hhp hhp4:32  |
  hhp8 hhp16 hhp hhp hhp hhp hhp hhp8 hhp hhp16 hhp hhp hhp }
  \alternative { { hhp8 hhp16 hhp hhp hhp hhp hhp hhp4 r }
  { hhp8 hhp16 hhp hhp hhp hhp hhp hhp4 r } } \bar "||"
}

liniaroAe =
\drummode
{
  \tempo 4 = 94
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { tomfl4 r tomfl r  |
  tomfl4 tomfl tomfl r  |
  tomfl4 r tomfl tomfl  |
  %05
  tomfl8 tomfl tomfl4 tomfl r  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl r tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl r  |
  %10
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl8 tomfl16 tomfl  |
  tomfl4 tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl8 tomfl16 tomfl  |
  tomfl4 tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl8 tomfl16 tomfl  |
  %15
  tomfl4 tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl8 tomfl16 tomfl }
  \alternative { { tomfl4 tomfl8 tomfl16 tomfl tomfl4 r }
  { tomfl4 tomfl16 tomfl tomfl tomfl tomfl4 r } } \bar "||"
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
        \new DrumStaff \with {instrumentName = #"Timbal 1" } \liniaroAd
        \new Staff \with {instrumentName = #"Timbal 2" } \liniaroAe
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
        \new DrumStaff \with {instrumentName = #"Timbal 1" } \liniaroAd
        \new Staff \with {instrumentName = #"Timbal 2" } \liniaroAe
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
        \new DrumStaff \with {instrumentName = #"Timbal 1" } \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal 1" } \liniaroAd
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
        \new Staff \with {instrumentName = #"Timbal 2" } \liniaroAe
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Timbal 2" } \liniaroAe
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
        \new DrumStaff \with {instrumentName = #"Timbal 1" } \liniaroAd
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
        \new Staff \with {instrumentName = #"Timbal 2" } \liniaroAe
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
        \new DrumStaff \with {instrumentName = #"Timbal 1" } \liniaroAd
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
        \new Staff \with {instrumentName = #"Timbal 2" } \liniaroAe
      >>
    }
    \layout {}
  }
}

}

