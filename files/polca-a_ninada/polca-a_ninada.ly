\version "2.22.1"

\header {
  dedication="Polca"
  title="  "
  subtitle="A Ninada"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Eugenio Gracía"
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
  \time 2/4
  d16 b g b d8 d  |
  e8 d a4  |
  a16 b c cis d4  |
  g,16 a b c b8 g  |
  %05
  d'16 b g b d8 d  |
  e8 d a4  |
  a16 b c cis d g fis e  |
  d16 c b a g4  |
  d'16 b g b d8 d  |
  %10
  e8 d a4  |
  a16 b c cis d4  |
  g,16 a b c b8 g  |
  d'16 b g b d8 d  |
  e8 d a4  |
  %15
  a16 b c cis d g fis e  |
  \mark "Fine" d16 c b a g4  |
  \repeat volta 2 { e'8 d b16 g b d  |
  b16 g b d c8 a  |
  f'8 e c16 a c e  |
  %20
  c16 a c e d8 b  |
  e8 d b16 g b d  |
  b16 g b d c8 a  |
  f'8 e c16 a c e  |
  d16 c b a g4  | }
  %25
  \repeat volta 2 { g'8 fis d4  |
  f8 e c4  |
  e8 d b8. g16  |
  a16 b c d e8 d  |
  g8 fis d4  |
  %30
  f8 e c4  |
  e8 d b8. g16  |
  \mark "D.C. al Fine" a16 b c a g4  \bar "|."
  }
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r2  |
  r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  r8 g r g  |
  %10
  r8 a fis4  |
  r8 fis r fis  |
  r8 g g4  |
  r8 g r g  |
  r8 a fis4  |
  %15
  r8 fis r g  |
  r8 fis g4  |
  \repeat volta 2 { c8 b g16 e g b  |
  g16 e g b a8 fis  |
  d'8 c a16 fis a c  |
  %20
  a16 fis a c b8 g  |
  c8 b g16 e g b  |
  g16 e g b a8 fis  |
  d'8 c a16 fis a c  |
  b16 a g fis g4  | }
  %25
  \repeat volta 2 { b8 a b4  |
  a8 g a4  |
  g8 fis g8. g16  |
  fis16 g a b c8 b  |
  b8 a b4  |
  %30
  a8 g a4  |
  g8 fis g8. g16  |
  fis16 g a fis g4  \bar "|."
  }
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  r2  |
  r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  r4 tomfl8 r  |
  %10
  tomfl8 r tomfl r  |
  tomfl8 r tomfl r  |
  tomfl8 r tomfl r  |
  tomfl8 r tomfl r  |
  tomfl8 r tomfl r  |
  %15
  tomfl8 r tomfl r  |
  tomfl8 r tomfl r  |
  \repeat volta 2 { tomfl8 r tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl r  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl16 tomfl  |
  %20
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 r tomfl r  | }
  %25
  \repeat volta 2 { tomfl8 r tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl tomfl8  |
  %30
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  \bar "|."
  }
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

