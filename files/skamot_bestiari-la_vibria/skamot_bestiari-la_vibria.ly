\version "2.16.2"

\header {
  dedication="Bestiari"
  title=""
  subtitle="La Víbria"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="Melodia: Quim Soler"
  instrument="Percussió: Jaume Vendrell"
  copyright=""
  tagline=""
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r1  |
  r1  |
  r1  |
  r1  |
  %05
  r1  |
  r1  |
  r1  |
  r1  |
  \repeat volta 2 { r1  |
  %10
  r1  |
  r1  |
  r1  | }
  r1  |
  r1  |
  %15
  r1  |
  r1  |
  r1  |
  r1  |
  r1  |
  %20
  r1  \bar "||"
  b1 ~  |
  b8 r r r16 g c8 r r r16 c  |
  a1 ~  |
  a4 r r2  |
  %25
  <b d>1 ~ ~  |
  <b d>8 r r r16 <g b> <c e>8 r r r16 <c e>  |
  <a c>1 ~ ~  |
  <a c>4 r r2  |
  <g b d>1 ~ ~ ~  |
  %30
  <g b d>8 r r r16 <e g b> <a c e>8 r r r16 <a c e>  |
  <f a c>1 ~ ~ ~  |
  <f a c>4 r r2  |
  <g b d>1 ~ ~ ~  |
  <g b d>8 r r r16 <g b d> <e g b>8 r r r16 <e g b>  |
  %35
  <c e c'>1 ~ ~ ~  \bar "||"
  <c e c'>4 r r2  |
  r1  |
  r1  \bar "|."
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 4/4
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  %05
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  \repeat volta 2 { r4 tomfl16 tomfl tomfl8 r4 tomfl16 tomfl tomfl8  |
  %10
  r4 tomfl16 tomfl tomfl8 r4 tomfl16 tomfl tomfl8  |
  r4 tomfl16 tomfl tomfl8 r4 tomfl16 tomfl tomfl8  |
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  | }
  tomfl1:32 ~  |
  tomfl1:32 ~  |
  %15
  tomfl1:32 ~  |
  tomfl1:32  |
  r2 tomfl4-> r  |
  r2 tomfl4 tomfl  |
  r2 tomfl4-> r  |
  %20
  r2 tomfl4 tomfl  \bar "||"
  r2 tomfl4-> r  |
  r2 tomfl4 tomfl  |
  r2 tomfl4-> r  |
  r2 tomfl4 tomfl  |
  %25
  r2 tomfl4-> r  |
  r2 tomfl4 tomfl  |
  r2 tomfl4-> r  |
  r2 tomfl4 tomfl  |
  r2 tomfl4-> r  |
  %30
  r2 tomfl4 tomfl  |
  r2 tomfl4-> r  |
  r2 tomfl4 tomfl  |
  r2 tomfl4-> r  |
  r2 tomfl4 tomfl  |
  %35
  r2 tomfl4-> r  \bar "||"
  r2 tomfl4 tomfl  |
  tomfl1:32  |
  tomfl4-> r r2  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 4/4
  tomml4-> tomml-> r8 tomml r4  |
  tomml4-> tomml-> r8 tomml r tomml  |
  tomml4-> tomml-> r8 tomml r4  |
  tomml8 tomml r tomml tomml r tomml tomml  |
  %05
  tomml4-> tomml-> r8 tomml r4  |
  tomml4-> tomml-> r8 tomml r tomml  |
  tomml4-> tomml-> r8 tomml r4  |
  tomml8 tomml r tomml tomml r tomml tomml  |
  \repeat volta 2 { tomml2 r4 tomml8 tomml  |
  %10
  tomml2 r4 tomml8 tomml  |
  tomml2 r4 tomml8 tomml  |
  tomml4-> r8 tomml tomml4-> r8 tomml  | }
  tomml2 r4 tomml8 tomml  |
  tomml2 r4 tomml8 tomml  |
  %15
  tomml2 r4 tomml8 tomml  |
  tomml4 r8 tomml tomml4 r8 tomml  |
  tomml4-> tomml-> r r  |
  tomml4-> tomml8-> tomml r4 r8 tomml  |
  tomml4-> tomml-> r r  |
  %20
  tomml4-> tomml8-> tomml r4 r8 tomml  \bar "||"
  tomml4-> tomml-> r r  |
  tomml4-> tomml8-> tomml r4 r8 tomml  |
  tomml4-> tomml-> r r  |
  tomml4-> tomml8-> tomml r4 r8 tomml  |
  %25
  tomml4-> tomml-> r r  |
  tomml4-> tomml8-> tomml r4 r8 tomml  |
  tomml4-> tomml-> r r  |
  tomml4-> tomml8-> tomml r4 r8 tomml  |
  tomml4-> tomml-> r r  |
  %30
  tomml4-> tomml8-> tomml r4 r8 tomml  |
  tomml4-> tomml-> r r  |
  tomml4-> tomml8-> tomml r4 r8 tomml  |
  tomml4-> tomml-> r r  |
  tomml4-> tomml8-> tomml r4 r8 tomml  |
  %35
  tomml4-> tomml-> r r  \bar "||"
  tomml4-> tomml8-> tomml r4 r8 tomml  |
  tomml4 \mp tomml tomml tomml  |
  tomml4-> \fff r r2  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralles" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralles" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Gralles"}
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

\bookpart {
  \header {instrument="Timbal fondo"}
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

