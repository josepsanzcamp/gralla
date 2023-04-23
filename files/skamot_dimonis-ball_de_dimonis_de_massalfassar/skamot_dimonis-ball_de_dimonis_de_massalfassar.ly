\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Dimonis"
  subtitle="Ball de dimonis de Massalfassar"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Toni Torregrossa"
  arranger="Arr: Ximo Caffarena"
  opus="Percussió: Josep Amírola"
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
  \time 2/4
  r2  |
  r2  |
  r2  |
  r2  |
  %05
  \repeat volta 2 { e8 d16 e f8 d  |
  e8 a, c d  |
  e8. f16 e8 d  |
  e4 a,  |
  e'8 d16 e f8 d  |
  %10
  e8 a, c d  |
  e8. f16 e8 d  |
  e4 a,  |
  c8. b16 c8 d  |
  b4 g  |
  %15
  e'8. d16 c8 b  |
  a2  | }
  r2  |
  r2  |
  r2  |
  %20
  r2  |
  \repeat volta 2 { a4 e'  |
  d8 e16 f e8. d16  |
  c8 a e' d  |
  f8. e16 d4  |
  %25
  a4 e'  |
  d8 e16 f e8. d16  |
  c8 d b c  |
  a2  | }
  r2  |
  %30
  r2  |
  r2  |
  r2  |
  \repeat volta 2 { e'8 a a g  |
  fis8. e16 d8 e  |
  %35
  fis16 g fis e d8 fis  |
  e4 e8 e  |
  e8 a a g  |
  fis8. e16 d8 e  |
  fis16 g fis e d8 fis  |
  %40
  e4 e8 d  |
  c8. b16 a8 b  |
  c8 d e d  |
  c16 d c b a8 b  |
  c4 a8 b  |
  %45
  c8. b16 a8 b  |
  c8 d e d  |
  c16 d c b a8 g }
  \alternative { { a4 a8 a }
  { a4 r } } \bar "||"
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  r2  |
  r2  |
  r2  |
  %05
  \repeat volta 2 { c4 b  |
  a16 g a b a4  |
  c4. b8  |
  c16 b a g a g a b  |
  c4 b  |
  %10
  a16 g a b a4  |
  c4. b8  |
  c16 b a g a g a b  |
  a2  |
  g16 a b c d4  |
  %15
  c8. b16 a8 g  |
  a2  | }
  r2  |
  r2  |
  r2  |
  %20
  r2  |
  \repeat volta 2 { c8. b16 a g a c  |
  b8 c16 d c8. f16  |
  e8 c c b  |
  d8. c16 b4  |
  %25
  c8. b16 a g a c  |
  b8 c16 d c8. b16  |
  a8 b g4  |
  a2  | }
  r2  |
  %30
  r2  |
  r2  |
  r2  |
  \repeat volta 2 { a8 a a a  |
  a8. a16 g8 a  |
  %35
  a8. a16 g8 a  |
  a4 a8 a  |
  a8 a a a  |
  a8. a16 g8 a  |
  a8. a16 g8 a  |
  %40
  a4 a8 g  |
  d'8. d16 d8 d  |
  d8 g, g g  |
  d'8. d16 d8 d  |
  d4 d8 d  |
  %45
  d8. d16 d8 d  |
  d8 g, g g  |
  d'8. d16 d8 d }
  \alternative { { d4 d8 d }
  { d4 r } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %05
  \repeat volta 2 { tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %10
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %15
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  | }
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %20
  tomfl8 tomfl tomfl tomfl  |
  \repeat volta 2 { tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %25
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  | }
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %30
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  \repeat volta 2 { tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %35
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %40
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %45
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl }
  \alternative { { tomfl8 tomfl tomfl tomfl }
  { tomfl4 r } } \bar "||"
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

