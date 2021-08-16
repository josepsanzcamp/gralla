\version "2.16.0"

\header {
  dedication="Tocs tradicionals"
  title="  "
  subtitle="Toc d'entrada a plaça"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
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
  \time 1/8
  c16 c  |
  \time 2/4   \repeat volta 2 { c8 g c e  |
  c4 r8 e16 e  |
  e8 c e g  |
  %05
  e4 r8 g16 g  |
  g8 e g e  |
  g8 e g e  |
  g8 e f e  |
  d2 ~  |
  %10
  d4 r  \bar "||"
  a'2 ~  |
  a8. a16 g8. f16  |
  g2 ~  |
  g8. g16 f8. e16  |
  %15
  f2 ~  |
  f8. f16 e8. d16  |
  e2 ~  |
  e4 r  |
  a2 ~  |
  %20
  a8. a16 g8. f16  |
  g2 ~  |
  g8. g16 f8. e16  |
  f2 ~  |
  f8. f16 e8. d16  |
  %25
  e4 e8. e16  |
  e4 r  \bar "||"
  r2  |
  r2  |
  r2  |
  %30
  r2  |
  r4 r8 e16 e  |
  e8 f g e16 e  |
  e8 f g e16 e  |
  e8 f g a  |
  %35
  g2  |
  f4 r8 d16 d  |
  d8 e f d16 d  |
  d8 e f d16 d  |
  d8 e f g  |
  %40
  f2  |
  e8 r e8. e16  |
  f2 ~  |
  f8 r f8. f16  |
  e2 ~  |
  %45
  e8 r e8. e16  |
  d4 e  |
  d4 e  |
  d2 ~  |
  d4 r  |
  %50
  a'8 a16 a a8 a  |
  a8 a r4  |
  g8 g16 g g8 g  |
  g8 g r4  |
  f8 f16 f f8 f  |
  %55
  f4 e8. d16  |
  e4 e8. e16 }
  \alternative { { e4 r8 c16 c }
  { e4 r } } \bar "||"
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  r8 \ff  |
  \time 2/4   \repeat volta 2 { r2  |
  r4 r8 c16 c  |
  c8 g c e  |
  %05
  c4 r8 e16 e  |
  e8 c e c  |
  e8 c e c  |
  e8 c d c  |
  b2 ~  |
  %10
  b4 r  \bar "||"
  f'2 ~  |
  f8. f16 e8. d16  |
  e2 ~  |
  e8. e16 d8. c16  |
  %15
  d2 ~  |
  d8. d16 c8. b16  |
  c2 ~  |
  c4 r  |
  f2 ~  |
  %20
  f8. f16 e8. d16  |
  e2 ~  |
  e8. e16 d8. c16  |
  d2 ~  |
  d8. d16 c8. b16  |
  %25
  c4 c8. c16  |
  c4 r  \bar "||"
  r2  |
  r2  |
  r2  |
  %30
  r2  |
  r4 r8 c16 c  |
  c8 d e c16 c  |
  c8 d e c16 c  |
  c8 d e f  |
  %35
  e2  |
  d4 r8 b16 b  |
  b8 c d b16 b  |
  b8 c d b16 b  |
  b8 c d e  |
  %40
  d2  |
  c8 r c8. c16  |
  d2 ~  |
  d8 r d8. d16  |
  c2 ~  |
  %45
  c8 r c8. c16  |
  b4 c  |
  b4 c  |
  b2 ~  |
  b4 r  |
  %50
  f'8 f16 f f8 f  |
  f8 f r4  |
  e8 e16 e e8 e  |
  e8 e r4  |
  d8 d16 d d8 d  |
  %55
  d4 c8. b16  |
  c4 c8. c16 }
  \alternative { { c4 r }
  { c4 r } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { r2  |
  r2  |
  r2  |
  %05
  r2  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  %10
  tomfl2:32  \bar "||"
  tomfl4 tomfl8. tomfl16  |
  tomfl4 r  |
  tomfl4 tomfl8. tomfl16  |
  tomfl4 r  |
  %15
  tomfl4 tomfl8. tomfl16  |
  tomfl4 r  |
  tomfl4 tomfl8. tomfl16  |
  tomfl4 r  |
  tomfl4 tomfl8. tomfl16  |
  %20
  tomfl4 r  |
  tomfl4 tomfl8. tomfl16  |
  tomfl4 r  |
  tomfl4 tomfl8. tomfl16  |
  tomfl4 r  |
  %25
  tomfl4 tomfl8. tomfl16  |
  tomfl2:32  \bar "||"
  tomfl8. \times 2/3 { tomfl32 tomfl tomfl } tomfl8. \times 2/3 { tomfl32 tomfl tomfl }  |
  tomfl8. \times 2/3 { tomfl32 tomfl tomfl } tomfl8. \times 2/3 { tomfl32 tomfl tomfl }  |
  tomfl8. \times 2/3 { tomfl32 tomfl tomfl } tomfl8. \times 2/3 { tomfl32 tomfl tomfl }  |
  %30
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 r8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %35
  tomfl2:32  |
  tomfl4 r4  | % troigo!
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %40
  tomfl2:32  |
  tomfl8 r tomfl8. tomfl16  |
  tomfl2:32  |
  tomfl8 r tomfl8. tomfl16  |
  tomfl2:32  |
  %45
  tomfl8 r tomfl8. tomfl16  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 r  |
  %50
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  %55
  tomfl2:32  |
  tomfl4 tomfl8. tomfl16 }
  \alternative { { tomfl4 r }
  { tomfl4 r } } \bar "||"
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

