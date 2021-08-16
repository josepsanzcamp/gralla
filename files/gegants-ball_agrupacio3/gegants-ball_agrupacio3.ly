\version "2.16.0"

\header {
  dedication="Gegants"
  title="   "
  subtitle="Ball de gegants de l'Agrupació "
  subsubtitle="Corranda"
  poet=""
  meter=""
  piece=""
  composer="Jordi Fàbregas"
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
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4. _"ben picat" e4 ( ( f8  |
  \repeat volta 2 { g4 ) g8-. g ( f e  |
  %10
  d4. ) ) d8 ( e f  |
  b,4 b8 b a b )  |
  c8-> d ( ( e-. e4 ) ) f8 ( (  |
  g4 ) g8-. g ( f e  |
  d4. ) ) d8 ( e f  |
  %15
  g8 a g fis e  fis   |
  g4 ) r8 e4 (  f8  )  |
  g4 g8-. ( g ) f e (  |
  d4. ) d8 ( e f  |
  b,4 b8 b a b  |
  %20
  c8->  d e-.  ) e4 ( ( f8  |
  g4 ) g8-. g ( f e  |
  d4. ) ) d8 ( e f )  |
  g8 a ( g f e d }
  \alternative { { c4 r8 ) e4 ( f8 ) }
  %25
  { \time 4/4 c4 r e2 \ff  |
  c2 e  |
  c1\trill ~  |
  c4\fermata r r2 } } \bar "||"
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4. c4 d8  |
  \repeat volta 2 { e4 e8-. e d c  |
  %10
  b4. b8 c d  |
  g,4 g'8 f4.  |
  e4 r8 c4 d8  |
  e4 e8-. e d c  |
  b4. b8 c d  |
  %15
  b4. c  |
  b4 r8 c4 d8  |
  e4 e8-. e d c  |
  b4. b8 c d  |
  g,4 g'8 f4.  |
  %20
  e4 r8 c4 d8  |
  e4 e8-. e d c  |
  b4. b8 c d  |
  e8 f e d c g }
  \alternative { { c4 r8 c4 d8 }
  %25
  { \time 4/4 c4 r g'2  |
  e2 g  |
  e1\trill ~  |
  e4\fermata r r2 } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 6/8
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl8-> tomfl tomfl tomfl-> tomfl tomfl  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  %05
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl4-> tomfl-> tomfl8 tomfl  |
  tomfl4.-> r  |
  \repeat volta 2 { tomfl4-> tomfl8 tomfl tomfl tomfl  |
  %10
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl8-> tomfl tomfl tomfl-> tomfl tomfl  |
  tomfl4-> ( tomfl8 tomfl tomfl tomfl )  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  %15
  tomfl4-> tomfl-> tomfl8 tomfl  |
  tomfl4.-> r  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl8-> tomfl tomfl tomfl-> tomfl tomfl  |
  %20
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl4-> tomfl-> tomfl8 tomfl }
  \alternative { { tomfl4.-> r }
  %25
  { \time 4/4 tomfl4 r tomfl2:32  |
  tomfl2:32 tomfl:32  |
  tomfl1:32 ~  |
  tomfl4\fermata r r2 } } \bar "||"
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
        \new DrumStaff \with {instrumentName = #"Gralla 3" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Gralla 3" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Gralla 3" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

