\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Ball de bastons"
  subtitle="Ball de bastons de Mollerussa"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Pla d'Urgell"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g8. d16 b8 c  |
  d4 e  |
  \times 2/3 { e8 d c } b8. c16  |
  a2  |
  %05
  d8. g,16 a8. b16  |
  c4 e  |
  \times 2/3 { c8 d b } \times 2/3 { c a b }  |
  g2  | }
  e'8. e16 d8. c16  |
  %10
  b2  |
  d8. d16 c8. b16  |
  a2  |
  c8. b16 c8. d16  |
  e8. d16 e8. fis16  |
  %15
  g8. fis16 <g, g'>8 <a a'>  |
  <b b'>2  |
  g'8. fis16 e8. d16  |
  c4. a8  |
  fis'8. e16 d8. c16  |
  %20
  b4. g8  |
  e'8. d16 c8. b16  |
  \times 2/3 { a8 b c } \times 2/3 { b c d }  |
  \times 2/3 { c8 d e } \times 2/3 { d e fis }  |
  g8. d16 a8 fis'  |
  %25
  g2  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { b8. b16 b8 a  |
  a4 g  |
  e8 fis g a  |
  a2  |
  %05
  b8. g16 a8. b16  |
  g4 c  |
  a4 e8 fis  |
  g2  | }
  c8. c16 b8. a16  |
  %10
  g2  |
  b8. b16 a8. g16  |
  fis2  |
  a8. g16 a8. b16  |
  c8. b16 c8. d16  |
  %15
  e8. d16 e8 fis  |
  <dis fis>2  |
  e8. d16 c8. b16  |
  a8 g fis4  |
  d'8. c16 b8. a16  |
  %20
  g8 fis e4  |
  c'8. b16 a8. g16  |
  \times 2/3 { fis8 g a } \times 2/3 { g a b }  |
  \times 2/3 { a8 b c } \times 2/3 { b c d }  |
  g,4 g8 a  |
  %25
  b2  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g8. g16 g8 g  |
  fis4 e  |
  c8 d e c  |
  d2  |
  %05
  g8. e16 <d fis>8 <d g>  |
  e4 g  |
  g4 c,8 d  |
  b2  | }
  g'8. g16 g8. g16  |
  %10
  g8. fis16 e8. d16  |
  c8. c16 c8. c16  |
  d8. e16 fis8. g16  |
  g8. g16 g8. e16  |
  a8. a16 a8. fis16  |
  %15
  b8. a16 b8 c  |
  b2  |
  e,8. fis16 g8 a  |
  d,8. d16 d4  |
  d8. e16 fis8 g  |
  %20
  d4 r  |
  c8. d16 e8 fis  |
  d8 e g4  |
  e8 g a4  |
  g8. c,16 d8 d  |
  %25
  g,2  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 2/4
  \repeat volta 2 { tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %05
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  | }
  tomfl4 tomfl8 tomfl  |
  %10
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %15
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  %20
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  %25
  tomfl2:32  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
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
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

