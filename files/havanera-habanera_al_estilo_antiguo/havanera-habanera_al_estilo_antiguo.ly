\version "2.16.0"

\header {
  dedication="Havanera"
  title="   "
  subtitle="Habanera al estilo antiguo"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Blas Coscollar"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \clef treble
  \key g \major
  \time 7/8
  \repeat volta 2 { d8 e fis \tempo 8 = 250 g4 a  |
  b8 a g d2  |
  g8 fis e d4 e  |
  fis4. r2  |
  %05
  a8 g fis g4 a  |
  g8 fis e fis2  |
  e8 d fis e4 c  |
  b4. r2  |
  d8 e fis g4 a  |
  %10
  b8 a g d2  |
  b'8 gis e c'4 b  |
  a4. r2  |
  a8 g fis g4 fis  |
  e8 d4 r d8 g  |
  %15
  fis4 c'8 e,4 fis  |
  \mark "Fine" g4. r2  | }
  \repeat volta 2 { r4 d8 d4 e  |
  fis4. fis2  |
  r4 e8 \times 2/3 { g4 fis e }  |
  %20
  d4. r2  |
  r4 b'8 a4 g  |
  g4. fis2  |
  r4 d8 \times 2/3 { a'4 g a }  |
  b4. r2  |
  %25
  r4 d,8 d4 e  |
  fis4. fis2  |
  r4 e8 \times 2/3 { g4 fis e }  |
  d4. r2  |
  r4 d8 d4 g  |
  %30
  e8 e e e4 g  |
  fis8 fis d a'4 fis  |
  \mark "D.C. al Fine" g4. r2  \bar "|."
  }
}

liniaroAb =
\relative d''
{
  \tempo 8 = 250
  \clef treble
  \key g \major
  \time 7/8
  \repeat volta 2 { d8 cis c b4 d  |
  g4 c,8 b4 a  |
  g8 a ais b4 c  |
  a4 c8 d4 e  |
  %05
  fis8 e d e4 c  |
  b4 c8 a4 b  |
  c8 b c c4 a  |
  g4 b8 e4 d  |
  d8 cis c b4 d  |
  %10
  g4 c,8 b4 a  |
  gis8 b d a4 d  |
  c4 e8 c4 a  |
  c8 c d e4 d  |
  c8 b4 r b8 b  |
  %15
  d4 e8 c4 d  |
  b4. r2  | }
  \repeat volta 2 { r4 b8 b4 c  |
  d4 c8 a4 b  |
  c4 c8 \times 2/3 { e4 d c }  |
  %20
  b4 d8 g,4 a  |
  b4 g8 d'4 b  |
  c4 a8 d4 e  |
  d4 d8 \times 2/3 { dis4 dis dis }  |
  d4 g,8 b4 e  |
  %25
  d4 b8 b4 c  |
  d4 c8 a4 b  |
  c4 c8 \times 2/3 { e4 d c }  |
  b4 b8 g4 a  |
  b4 b8 b4 b  |
  %30
  c4 c8 c4 a  |
  d8 d c c4 d  |
  b4. r2  \bar "|."
  }
}

liniaroAc =
\drummode
{
  \tempo 8 = 250
  \time 7/8
  \repeat volta 2 { r4. r4 r8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  %05
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  %10
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  %15
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 r  | }
  \repeat volta 2 { r4. r4 r8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  %20
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  %25
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  %30
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl4 tomfl8 tomfl4 r  \bar "|."
  }
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

