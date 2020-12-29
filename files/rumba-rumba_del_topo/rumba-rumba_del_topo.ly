\version "2.16.0"

\header {
  dedication="Rumba"
  title="  "
  subtitle="Rumba del topo"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Blesa, Aragó"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative f''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  f8 e16 d c8 b16 d  |
  c4 r8 c16 c  |
  c4 r8 e  |
  \repeat volta 2 { g2 ~  |
  %05
  g8 f16 g a8 b16 a  |
  g2 ~  |
  g8 d16 e f8 g16 f  |
  e8 c16 d e8 f16 e  |
  d8 b16 c d8 e16 d }
  %10
  \alternative { { c4 ~ c8 \times 2/3 { a16 b a }  |
  g4 r8 e' }
  { c4 r8 c16 c } }
  c4 r8 g  |
  c16 c8 c16 c8 c16 d  |
  %15
  e8 c4 c16 d  |
  e8 f16 e d8 c  |
  d4 r8 g,  |
  b16 b8 b16 b8 b16 c  |
  d8 b4 b16 c  |
  %20
  d8 e16 d c8 b  |
  c4 r8 \times 2/3 { g16 a b }  |
  c16 c8 c16 c b c d  |
  e8 c4 c16 d  |
  e8 f16 e d8 c  |
  %25
  d4 r8 g,  |
  b16 b8 b16 b8 b16 c  |
  d8 b4 b16 c  |
  d8 e16 d c8 b  |
  c4 r8 e16 f  |
  %30
  \repeat volta 2 { g16 g8 g16 a8 g  |
  f4 r8 d16 e  |
  f16 f8 f16 g8 f  |
  e4 r8 c16 d  |
  e16 e8 e16 f8 <e e>  |
  %35
  d4 g }
  \alternative { { f8 e16 d c8 b16 a  |
  g4 r8 e'16 f }
  { f8 e16 d c8 b16 d  |
  c4 r8 c16 c  |
  %40
  c4 r } } \bar "||"
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 2/4
  r2  |
  r2  |
  r2  |
  \repeat volta 2 { \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  %05
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl }
  %10
  \alternative { { \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  tomfl8. tomfl16 tomfl tomfl tomfl-> tomfl }
  { \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl \times 2/3 { tomfl tomfl tomfl } tomfl tomfl } }
  tomfl8.-> tomfl16 tomfl8 tomfl->  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  %15
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  %20
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  %25
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  %30
  \repeat volta 2 { \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  %35
  tomfl8.-> tomfl16 tomfl8 tomfl }
  \alternative { { \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl }
  { \times 2/3 { tomfl16-> tomfl tomfl } tomfl tomfl-> tomfl tomfl tomfl-> tomfl  |
  tomfl8-> r r tomfl16 tomfl  |
  %40
  tomfl8-> r r4 } } \bar "||" % kompletite
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

