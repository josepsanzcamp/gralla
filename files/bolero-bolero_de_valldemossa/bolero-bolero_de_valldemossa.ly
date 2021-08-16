\version "2.16.0"

\header {
  dedication="Bolero"
  title="    "
  subtitle="Bolero de Valldemossa"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Mallorca"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  g8 g16 a b8 g16 a b8 c  |
  \repeat volta 2 { a8 fis16 g a8 fis16 g a8 fis  |
  g8 g16 a b8 g16 a b8 c  |
  a8 fis16 g a8 fis16 g a8 fis  |
  %05
  g4. g8 b d  |
  g4. d8 e fis  |
  e4. g8 fis e  |
  d4. a8 b c  |
  b4. b8 b c  |
  %10
  d8. e16 fis8 e d c  |
  b4. b8 c b }
  \alternative { { a4. g8 fis a  |
  g8 g16 a b8 g16 a b8 c }
  { a4. d8 e fis  |
  %15
  g2 r4 } } \bar "||"
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 3/4
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  \repeat volta 2 { tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %05
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %10
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl }
  \alternative { { tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl }
  { tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %15
  tomfl4 r r } } \bar "||"
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
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAb
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
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAb
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
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

