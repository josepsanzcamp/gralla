\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Religioses"
  subtitle="Sant Antoni"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Toni Orti"
  arranger="Morella, el País Valencià"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative a'
{
  \clef treble
  \key c \major
  \time 2/4
  r2 \tempo 4 = 107  |
  r2  |
  \repeat volta 2 { a4 a8 d  |
  c4 d8 e  |
  %05
  d8 e16 d c4 ~  |
  c2  |
  a4 a8 d  |
  c4 b8 c  |
  b8 c16 b a4 ~  |
  %10
  a2  | }
  \repeat volta 2 { a8 e' e d  |
  e4 e8 e  |
  f8 g16 f e8 d  |
  e4 e  |
  %15
  a,8 e' e d  |
  e4 e8 c  |
  b8. d16 c8 b  |
  a4 a  | }
  \repeat volta 2 { e'8 e g f  |
  %20
  e4 e8 e  |
  d4 e8 f  |
  e4 e  |
  c8. c16 e8 d  |
  c4 c8 d  |
  %25
  b8. d16 c8 b  |
  a4 a  | }
  \repeat volta 2 { a8 e' e d  |
  e4 e8 e  |
  f8 g16 f e8 d  |
  %30
  e4 e  |
  a,8 e' e d  |
  e4 e8 c  |
  b8. d16 c8 b }
  \alternative { { a4 r }
  %35
  { a4 a ~  |
  a4 r4 } } \bar "||" % kompletite
}

liniaroAb =
\relative a'
{
  \tempo 4 = 107
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  r2  |
  \repeat volta 2 { r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %10
  r2  | }
  \repeat volta 2 { a8 b c d  |
  c4 c8 c  |
  d8 e16 d c8 b  |
  c4 c  |
  %15
  a8 b c d  |
  c4 c8 a  |
  g8. b16 a8 gis  |
  a4 a  | }
  \repeat volta 2 { c8 c e d  |
  %20
  c4 c8 c  |
  b4 c8 d  |
  c4 c  |
  a8. a16 c8 b  |
  a4 a8 b  |
  %25
  gis8. b16 a8 gis  |
  a4 a  | }
  \repeat volta 2 { a8 b c b  |
  c4 c8 c  |
  d8 e16 d c8 b  |
  %30
  c4 c  |
  a8 b c b  |
  c4 c8 a  |
  g8. b16 a8 gis }
  \alternative { { a4 r }
  %35
  { a4 a ~  |
  a4 r4 } } \bar "||" % kompletite
}

liniaroAc =
\drummode
{
  \tempo 4 = 107
  \time 2/4
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  \repeat volta 2 { tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  %05
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  %10
  tomfl4:32 tomfl8 tomfl  | }
  \repeat volta 2 { tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  %15
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  | }
  \repeat volta 2 { tomfl4:32 tomfl8 tomfl  |
  %20
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  %25
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  | }
  \repeat volta 2 { tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  %30
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl }
  \alternative { { tomfl4:32 tomfl8 tomfl }
  %35
  { tomfl4:32 tomfl8 tomfl  |
  tomfl4:32 r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
  \header {instrument=""}
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
  \header {instrument=""}
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

