\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Ball pla"
  subtitle="Ball cerdà"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="El Pallars"
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  e8 e16 f e d  |
  e8 c c16 d  |
  e8 r gis  |
  a4 r8  |
  %05
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} e8 e16 f e d  |
  e8 c c16 d  |
  e8 d b  |
  d16 c b c a8  |
  e'8 e16 f e d  |
  %10
  e8 c c16 d  |
  e8 d16 c b c  |
  a4 r8  | }
  e'8 f e  |
  dis4 e8  |
  %15
  c8 b a  |
  e4.  |
  e8 fis gis  |
  a8 b c16 d  |
  e8 e16 d c b  |
  %20
  d16 c b c a8  |
  e'8 f e  |
  dis4 e8  |
  c8 b a  |
  e'4.  |
  %25
  a8 gis g  |
  f8 e d  |
  e8 r gis  |
  \mark "D.S." a4 r8  \bar "|."
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 3/8
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl  |
  tomfl8 r tomfl  |
  tomfl4 r8  |
  %05
  \repeat volta 2 { tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  %10
  tomfl8 tomfl tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl  | }
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  %15
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  %20
  tomfl16 tomfl tomfl tomfl tomfl8  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8 r tomfl  |
  %25
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8 r tomfl  |
  tomfl4 r8  \bar "|."
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

