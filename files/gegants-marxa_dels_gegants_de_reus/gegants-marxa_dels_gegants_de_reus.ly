\version "2.16.0"

\header {
  dedication="Marxa de gegants"
  title="                "
  subtitle="Marxa dels gegants de Reus"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Baix Camp"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  g4.  |
  \time 6/8   \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} e4 e8 e d e  |
  g8 f g e d e  |
  f8 e f d4.  |
  %05
  e8 d e e4.  |
  e8 d e e d e  |
  g4. e8 d e  |
  f4. g8 f d  |
  e2. ~  |
  %10
  e2. ~  |
  e4 r8 r4.  |
  r2 r4  |
  r2 r4 }
  \alternative { { r4. g }
  %15
  { r2 r4 } }
  \repeat volta 2 { d8 d d d4.  |
  e8 e e e4.  |
  d8 d d d4.  |
  e8 d e e4.  |
  %20
  e8 d e e d e  |
  g8 f g e d e  |
  f4. g8 f d  |
  e2. ~  |
  e2. ~  |
  %25
  \mark "Fine" e4 r8 r4.  |
  r2 r4  |
  r2 r4 }
  \alternative { { r2 r4 }
  { \mark "D.S. al Fine" r4. g } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  g8 a b  |
  \time 6/8   \repeat volta 2 { c4 c8 c b c  |
  e8 d e c b c  |
  d8 c d g,4.  |
  %05
  c8 b c c4.  |
  c8 b c c b c  |
  e4. c8 b c  |
  d4. g,8 a b  |
  c2. ~  |
  %10
  c2. ~  |
  c4 r8 r4.  |
  r2 r4  |
  r2 r4 }
  \alternative { { r4. r4 r8 } % kompletite
  %15
  { r2 r4 } }
  \repeat volta 2 { g8 g g g4.  |
  c8 c c c4.  |
  g8 g g g4.  |
  c8 g c c4.  |
  %20
  c8 b c c b c  |
  e8 d e c b c  |
  d4. g,8 a b  |
  c2. ~  |
  c2. ~  |
  %25
  c4 r8 r4.  |
  r2 r4  |
  r2 r4 }
  \alternative { { r2 r4 }
  { r4. g8 a b } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/8
  r4.  |
  \time 6/8   \repeat volta 2 { tomfl2.:64  |
  tomfl2.:64  |
  tomfl2.:64  |
  %05
  tomfl2.:64  |
  tomfl2.:64  |
  tomfl2.:64  |
  tomfl2.:64  |
  tomfl4.:32 tomfl8:16 tomfl tomfl  |
  %10
  tomfl8:16 tomfl tomfl tomfl:16 tomfl tomfl  |
  tomfl4.:32 tomfl8:16 tomfl tomfl  |
  tomfl8:16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4.:32 tomfl8:16 tomfl tomfl }
  \alternative { { tomfl8 tomfl tomfl tomfl tomfl tomfl }
  %15
  { tomfl4.:32 tomfl8:16 tomfl tomfl } }
  \repeat volta 2 { tomfl4.:32 tomfl8:16 tomfl tomfl  |
  tomfl4.:32 tomfl8:16 tomfl tomfl  |
  tomfl4.:32 tomfl8:16 tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl4.:32  |
  %20
  tomfl8:16 tomfl tomfl tomfl:16 tomfl tomfl  |
  tomfl4.:32 tomfl8:16 tomfl tomfl  |
  tomfl4.:32 tomfl8:16 tomfl tomfl  |
  tomfl4.:32 tomfl8:16 tomfl tomfl  |
  tomfl8:16 tomfl tomfl tomfl:16 tomfl tomfl  |
  %25
  tomfl4.:32 tomfl8:16 tomfl tomfl  |
  tomfl8:16 tomfl tomfl tomfl:16 tomfl tomfl  |
  tomfl4.:32 tomfl8:16 tomfl tomfl }
  \alternative { { tomfl8:16 tomfl tomfl tomfl:16 tomfl tomfl }
  { tomfl8:16 tomfl tomfl tomfl:16 tomfl tomfl } } \bar "||"
}

\book {

\paper {
  print-page-number = false
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 14)
}

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
}

}

