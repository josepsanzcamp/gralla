\version "2.22.1"

\header {
  dedication=""
  title=""
  subtitle="La Balanguera"
  subsubtitle="(Himne de Mallorca)"
  poet=""
  meter=""
  piece=""
  composer="Música: Amadeu Vives"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 6/8
  r2 r4  |
  r4. d8 c b  |
  a4 b8 c4 b8  |
  a2. ~  |
  %05
  \repeat volta 2 { a4. d8 c a  |
  \mark \markup {\musicglyph #"scripts.segno"} g4 g8 a4 a8  |
  c4 c8 b a g  |
  b4 b8 c4 c8  |
  d2. ~  |
  %10
  d4. d8 e fis  |
  g4 g8 e4 e8 }
  \alternative { { d4 d8 g, a b  |
  d4 d8 b4 g8  |
  a2. }
  %15
  { d4 d8 b c d } }
  e4 e8 d4 b8  |
  g2. ~  |
  \repeat volta 2 { g4. d'8 c b  |
  a4 b8 c4 b8  |
  %20
  a4. d8 c b  |
  a4 b8 c4 b8  |
  d2. ~  |
  d4. d8 e fis  |
  g4 g8 e4 e8  |
  %25
  d4 d8 b c d  |
  e4 e8 d4 b8  |
  \mark "Fine" g2. ~  | }
  \mark "D.S. al Fine" g4. d'8 c a  \bar "|."
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 6/8
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  %05
  \repeat volta 2 { tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  %10
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl }
  \alternative { { tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl }
  %15
  { tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl } }
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  \repeat volta 2 { tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  %20
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  %25
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  |
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  | }
  tomfl16 r tomfl tomfl tomfl tomfl tomfl r tomfl r tomfl tomfl  \bar "|."
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
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAb
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAb
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

