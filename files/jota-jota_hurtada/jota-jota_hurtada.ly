\version "2.16.0"

\header {
  dedication="Jota"
  title="   "
  subtitle="Jota hurtada"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Albarracín, Aragó"
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
  \time 3/4
  r2 r4  |
  c4 d e ~  |
  e2 ~ e16 c8 d16 ~  |
  \time 3/8   d16 e8 f8.  |
  %05
  e16 d8. e8  |
  \times 2/3 { d8 c4 } r32 b16. ~  |
  b8. c ~  |
  c4.  |
  r4 r8  |
  %10
  r4 g8  |
  \repeat volta 2 { e'8 e16 d c8 ~  |
  c8 b16 c b c  |
  d8 d16 c b8 ~  |
  b8 r g  |
  %15
  f'8 f16 e d8 ~  |
  d8 g f }
  \alternative { { e16 f e d c8 ~  |
  c8 r g }
  { e'16 f e d c8 ~ } }
  %20
  c8 e16 f e f  |
  \repeat volta 2 { e8 e16 d c8 ~  |
  c8 b16 c b c  |
  d8 d16 c b8 ~  |
  b8 d16 e d e  |
  %25
  d8 d16 c b8 ~  |
  b8 d f }
  \alternative { { e16 f e d c8 ~  |
  c8 e16 f e f }
  { e16 f e d c8 ~ } }
  %30
  c8 r g  |
  \repeat volta 2 { c8 r g  |
  e'8 r g,  |
  c8 d16 c b a  |
  b8 r g  |
  %35
  f'8 g16 f e d  |
  e8 f16 e d c  |
  d8 e16 d c b }
  \alternative { { c8 r g }
  { c4 \times 2/3 { r16 d c }  |
  %40
  c4 r8 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r2 r4  |
  r2 r4  |
  r2 r4  |
  \time 3/8   r4 r8  |
  %05
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %10
  r4 g8  |
  \repeat volta 2 { c8 c16 b g8 ~  |
  g8 g16 a g a  |
  b8 b16 a g8 ~  |
  g8 r g  |
  %15
  d'8 d16 c b8 ~  |
  b8 g b }
  \alternative { { c16 d c b c8 ~  |
  c8 r g }
  { c16 d c b c8 ~ } }
  %20
  c8 c16 d c d  |
  \repeat volta 2 { c8 c16 b g8 ~  |
  g8 g16 a g a  |
  b8 b16 a g8 ~  |
  g8 b16 c b c  |
  %25
  b8 b16 a g8 ~  |
  g8 g b }
  \alternative { { c16 d c b c8 ~  |
  c8 c16 d c d }
  { c16 d c b c8 ~ } }
  %30
  c8 r g  |
  \repeat volta 2 { e8 r g  |
  c8 r g  |
  a8 b16 a g f  |
  g8 r g  |
  %35
  d'8 e16 d c b  |
  c8 d16 c b a  |
  b8 c16 b a b }
  \alternative { { g8 r g }
  { c4 \times 2/3 { r16 d c }  |
  %40
  c4 r8 } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/4
  tomfl2.:64 ~  |
  tomfl2.:64 ~  |
  tomfl2.:64 ~  |
  \time 3/8   tomfl4.:64 ~  |
  %05
  tomfl4.:64 ~  |
  tomfl4.:64 ~  |
  tomfl4.:64  |
  << { r4 r8 } \\ { <tomfl tomfl>8 r4 } >>  |
  << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  %10
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >>  |
  \repeat volta 2 { << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >>  |
  << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >>  |
  %15
  << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >> }
  \alternative { { << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >> }
  { << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >> } }
  %20
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >>  |
  \repeat volta 2 { << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >>  |
  << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >>  |
  %25
  << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >> }
  \alternative { { << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >> }
  { << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >> } }
  %30
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >>  |
  \repeat volta 2 { << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >>  |
  << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >>  |
  %35
  << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >>  |
  << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >>  |
  << { r4 r8 } \\ { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } >> }
  \alternative { { << { r4 r8 } \\ { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } >> }
  { << { r4 r8 } \\ { <tomfl tomfl tomfl>16 tomfl <tomfl tomfl tomfl> tomfl <tomfl tomfl tomfl> tomfl } >>  |
  %40
  << { r4 r8 } \\ { tomfl4. } >> } } \bar "||"
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

