\version "2.16.0"

\header {
  dedication="Nadala"
  title="   "
  subtitle="Pastorets de la muntanya"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. Marcel Casellas"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/8
  b8 b  |
  \time 6/8   \repeat volta 2 { b4 b8 b4 c8  |
  d4. b8 b c  |
  d4 d8 g4 e8  |
  %05
  d4 d8 g4 e8  |
  d4. r8 d d  |
  e4. c8 d e  |
  d4. b8 b b  |
  c4 c8 a4 a8  |
  %10
  b4. r8 d d  |
  e4. c8 d e  |
  d4. b8 b b  |
  c4 c8 a4 a8  |
  b4. b8 b c  \bar "||"
  %15
  d4 b8 b b c  |
  d4 b8 b b c  |
  d4 d8 g fis e  |
  d4. g8 fis e  |
  d4. r8 d d  |
  %20
  e4. c8 d e  |
  d4 b8 b4 b8  |
  c4 c8 a4 a8  |
  b4. r8 d d  |
  e4. c8 d e  |
  %25
  d4 b8 b4 b8  |
  c4 c8 a4 a8 }
  \alternative { { b4. r8 b b }
  { b4. r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/8
  r8 r  |
  \time 6/8   \repeat volta 2 { r4. r8 g g  |
  g4 g8 g4 a8  |
  b4 g8 e' d c  |
  %05
  c4 b8 e d c  |
  c4 b8 ~ b b a  |
  g4 a8 ~ a b c  |
  b4 a8 g4.  |
  r8 a g fis4 a8  |
  %10
  a4 g8 ~ g b a  |
  c8. b16 a8 ~ a b c  |
  b4 a8 g4 r8  |
  r8 a g fis4 a8  |
  g4. r  \bar "||"
  %15
  r4. g8 g a  |
  b4 g8 g g a  |
  b4 b8 e d c  |
  b4 g8 g a ais  |
  ais4 b8 ~ b4.  |
  %20
  r8 c b a b c  |
  b8. a16 g8 ~ g4.  |
  r8 a g fis8. e16 fis8  |
  a4 g8 ~ g4.  |
  r8 c b a b c  |
  %25
  b8. a16 g8 ~ g4.  |
  r8 a g fis8. e16 fis8 }
  \alternative { { g4. r }
  { g4. r } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/8
  r8 r  |
  \time 6/8   \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4.:32 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4:32 tomfl8  |
  %05
  tomfl4 tomfl8 tomfl4:32 tomfl8  |
  tomfl4 tomfl8 ~ tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl  |
  tomfl4.:32 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %10
  tomfl4 tomfl8 ~ tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl  |
  tomfl4.:32 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4. \appoggiatura { tomfl8 tomfl } tomfl tomfl tomfl  \bar "||"
  %15
  tomfl4 tomfl8 \appoggiatura { tomfl tomfl } tomfl tomfl tomfl  |
  tomfl4 tomfl8 \appoggiatura { tomfl tomfl } tomfl tomfl tomfl  |
  tomfl4 tomfl8 \appoggiatura { tomfl tomfl } tomfl tomfl tomfl  |
  tomfl4 tomfl8 \appoggiatura { tomfl tomfl } tomfl tomfl tomfl  |
  tomfl4 \acciaccatura { tomfl8 } tomfl ~ tomfl tomfl tomfl  |
  %20
  tomfl4 tomfl8 \appoggiatura { tomfl tomfl } tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8:32 ~ tomfl4:32 tomfl8  |
  tomfl4 tomfl8 tomfl8. tomfl16 tomfl8  |
  tomfl4 \acciaccatura { tomfl8 } tomfl ~ tomfl tomfl tomfl  |
  tomfl4 tomfl8 \appoggiatura { tomfl tomfl } tomfl tomfl tomfl  |
  %25
  tomfl8. tomfl16 tomfl8 ~ tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl8. tomfl16 tomfl8 }
  \alternative { { tomfl4.:32 tomfl4 tomfl8 }
  { tomfl4. r } } \bar "||"
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

