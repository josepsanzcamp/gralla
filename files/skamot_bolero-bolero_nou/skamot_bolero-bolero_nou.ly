\version "2.16.2"

\header {
  dedication=""
  title="Bolero"
  subtitle="Bolero nou"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Herbes dolces"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r8 g c d  |
  \time 3/4   \repeat volta 2 { e4. g16 e d8 c  |
  e4. g16 e d8 c  |
  d4. c8 b c  |
  %05
  d4. g,8 b d  |
  a'4. g8 f e  |
  f4. e8 d16 e c d  |
  b4. c8 d b }
  \alternative { { g'4. g,8 c d }
  %10
  { c4. g8 a b } }
  \repeat volta 2 { c4. d16 c b8 a  |
  c4. d16 c b8 a  |
  g4. g8 g a  |
  g4. a16 g f8 g  |
  %15
  a4. g8 a b  |
  c4. c8 c c  |
  b4. c8 d b }
  \alternative { { c4. g8 a b }
  { c4. g8 c d } }
  %20
  \repeat volta 2 { e16 e8 e16 e8 f16 e d8 c  |
  e16 e8 e16 e8 f16 e d8 c  |
  d16 d8 <d d>16 d8 c b c  |
  d4. g,8 b d  |
  a'16 a8 a16 a8 g f e  |
  %25
  <f f>16 f8 f16 f8 e d16 e c d  |
  b16 b8 b16 b8 c d b }
  \alternative { { g'4. g,8 c d }
  { c8. b16 c2 } } \bar "||"
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 2/4
  r2  |
  \time 3/4   \repeat volta 2 { tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %05
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl }
  \alternative { { tomfl4:32 tomfl:32 tomfl8 tomfl }
  %10
  { tomfl4:32 tomfl:32 tomfl8 tomfl } }
  \repeat volta 2 { tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %15
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl }
  \alternative { { tomfl4:32 tomfl:32 tomfl8 tomfl }
  { tomfl4:32 tomfl:32 tomfl8 tomfl } }
  %20
  \repeat volta 2 { tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %25
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl }
  \alternative { { tomfl4:32 tomfl:32 tomfl8 tomfl }
  { tomfl4:32 tomfl:32 tomfl:32 } } \bar "||"
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

