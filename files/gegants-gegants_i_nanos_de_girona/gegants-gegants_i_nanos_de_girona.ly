\version "2.16.0"

\header {
  dedication="Ball de gegants"
  title="   "
  subtitle="Ball de gegants i nanos de Girona"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Gironès"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  d8 d  |
  \time 2/4   \repeat volta 2 { d8 e d c  |
  b4 c8 b  |
  a8 g g a  |
  %05
  b8 g d' d  |
  d8 e d c  |
  b4 c8 b  |
  a8 g a d }
  \alternative { { g,4 d'8 d }
  %10
  { g,4 g8 a } }
  b8 a16 b c8 d  |
  b4 c8 b  |
  a8 g g a  |
  b8 g g a  |
  %15
  b8 a16 b c8 d  |
  b4 c8 b  |
  a8 g a d  \bar "||"
  \time 6/8   g,4. r4 r8  | % kompletite
  g4 a8 b4 a8  |
  %20
  g4. r8 r d'  |
  g,4 fis8 g4 a8  |
  b4. g8 a b  |
  c4 c c  |
  a4. a8 b c  |
  %25
  d8 e d c b a  |
  b4 g8 g a b  |
  c4 c b  |
  a4 a8 a b c  |
  d8 e d c b a  |
  %30
  g4. r4 r8  \bar "|." % kompletite
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 1/4
  tomfl8 tomfl  |
  \time 2/4   \repeat volta 2 { tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  %05
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl }
  \alternative { { tomfl4 tomfl8 tomfl }
  %10
  { tomfl4 tomfl8 tomfl } }
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  %15
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  \bar "||"
  \time 6/8   tomfl4. r4 r8  | % kompletite
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %20
  tomfl8 tomfl tomfl tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4. tomfl8 tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl4. tomfl8 tomfl tomfl  |
  %25
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %30
  tomfl4. r4 r8  \bar "|." % kompletite
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
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla"}
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
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAb
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
  \header {instrument="Gralla"}
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
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAb
      >>
    }
    \layout {}
  }
}

}

