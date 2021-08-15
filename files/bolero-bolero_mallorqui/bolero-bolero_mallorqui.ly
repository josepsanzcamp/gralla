\version "2.16.0"

\header {
  dedication="Bolero"
  title="         "
  subtitle="Bolero mallorquí"
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
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  g8. g16 d8. d16 b8. b16  |
  g4 r r8 \times 2/3 { g16 a b }  |
  c8. c16 a8. a16 g8. g16  |
  fis4 ~ fis g16 a b c  |
  %05
  \repeat volta 2 { d8. b16 e8. e16 d c b a  |
  g8 d'16 d d8 c b a  |
  g8 b16 b b8 d16 d d8 g,  |
  fis8 a16 a a8 c16 c c8 fis,  |
  g8 fis16 g b8 a16 b d8 c16 d  |
  %10
  g4 r8 d g, b  |
  d16 e d c d e d c d8 d  |
  b4 r8 g'16 fis e d c b  |
  c16 d c b c d c b c8 c  |
  a4 r8 fis16 g a b c d  |
  %15
  e8 e16 d c8 c16 b a8 a16 g  |
  fis2 g16 a b c  | }
  d8. b16 e8. e16 d c b a  |
  g8 d'16 d d8 d e fis  |
  g4 r r  \bar "|."
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 3/4
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %05
  \repeat volta 2 { tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %10
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %15
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  | }
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4 r r  \bar "|."
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
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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
  \header {instrument=""}
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
  \header {instrument=""}
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

