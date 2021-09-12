\version "2.22.1"

\header {
  dedication=""
  title=""
  subtitle="Toc d'inici"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Anònim"
  arranger="Arr. Jordi Fàbregas"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \clef treble
  \key g \major
  \time 2/4
  r2 \tempo 4 = 100  |
  \mark "%%" r2  |
  r2  |
  r4 d8 d  |
  %05
  b16 c b a g8 a  |
  b8 g d' d  |
  b16 c b a g8 a  |
  g4 d'8 d  |
  b16 c b a g8 a  |
  %10
  b8 g d' d  |
  b16 c b a g8 a  |
  g4 d'8 e16 fis  |
  g8 fis16 e d e d c  |
  b8 g e' d16 c  |
  %15
  b8 b a a  |
  b4 d8 e16 fis  |
  g8 fis16 e d e d c  |
  b8 g e' d16 c  |
  b8 b a a  |
  %20
  g4 d'8 d  |
  b16 c b a g8 a  |
  b8 g d' d  |
  b16 c b a g8 a  |
  g4 d'8 d  |
  %25
  b16 c b a g8 a  |
  b8 g d' d  |
  b16 c b a g8 a  |
  g4 d'8 e16 fis  |
  g8 fis16 e d e d c  |
  %30
  b8 g e' d16 c  |
  b8 b a a  |
  b4 d8 e16 fis  |
  g8 fis16 e d e d c  |
  b8 g e' d16 c  |
  %35
  b8 b a a  |
  g2 ~  |
  g4 r  \bar "|."
}

liniaroAb =
\relative d''
{
  \tempo 4 = 100
  \clef treble
  \key g \major
  \time 2/4
  r2  |
  \mark "%%" r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %10
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %15
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %20
  r2  |
  d8 d b16 c b a  |
  g8 a b g  |
  d'8 d b16 c b a  |
  g8 a g4  |
  %25
  d'8 d b16 c b a  |
  g8 a b g  |
  d'8 d b16 c b a  |
  g8 a g4  |
  e'8 d16 c b c b a  |
  %30
  g8 b c b16 a  |
  g8 g a a  |
  g16 g' fis e d c b a  |
  g4 g'8 fis16 e  |
  d16 e d b c8 b16 a  |
  %35
  g8 g a a  |
  g2 ~  |
  g4 r  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4 = 100
  \time 2/4
  tomfl4:32 tomfl8 tomfl  |
  \mark "%%" r2  |
  tomfl4:32 tomfl:32  |
  tomfl4 tomfl8 tomfl  |
  %05
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  %10
  tomfl4:32 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  %15
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  %20
  tomfl4 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  %25
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  %30
  tomfl4:32 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  %35
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4:32 tomfl:32  |
  tomfl4 r  \bar "|."
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
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
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
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

