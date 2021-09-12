\version "2.22.1"

\header {
  dedication="http://gralla.skamot.com"
  title=""
  subtitle="Febrer"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Manel Rius"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  g8 c  |
  \time 2/4   \repeat volta 2 { e8. e16 e8 e  |
  f8 f e d  |
  e16 d c4. ~  |
  %05
  c4 g8 c  |
  e8. e16 e8 e  |
  g8 g f e  |
  d2 ~  |
  d4 d8 e  |
  %10
  f8. f16 f8 f  |
  f8 f g f  |
  e16 d c4 d8  |
  e8 e f e  |
  d16 c b4 c8  |
  %15
  d8 d c b }
  \alternative { { c2 ~  |
  c4 g8 c }
  { c2 ~ } }
  c8 c c c  |
  %20
  b16 c d8 r4  |
  r8 d d d  |
  c16 d e8 r4  |
  r4 d8 e  |
  f4 r8 d  |
  %25
  b4 g  |
  a8 b16 a g4 ~  |
  g8 c c c  |
  b16 c d8 r4  |
  r8 d d d  |
  %30
  c16 d e8 r4  |
  r4 d8 e  |
  f4 r8 d  |
  b4 g  |
  c2 ~  |
  %35
  c4 r4  \bar "|." % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  g8 c  |
  \time 2/4   \repeat volta 2 { g'8. g16 g8 g  |
  a8 a g f  |
  g16 f e4. ~  |
  %05
  e4 g,8 c  |
  g'8. g16 g8 g  |
  b8 b a g  |
  f2 ~  |
  f4 f8 g  |
  %10
  a8. a16 a8 a  |
  a8 a b a  |
  g16 f e4 f8  |
  g8 g a g  |
  f16 e d4 e8  |
  %15
  f8 f e d }
  \alternative { { e2 ~  |
  e4 g,8 c }
  { e2 ~ } }
  e8 r4.  |
  %20
  r8 g d b  |
  g8 r4.  |
  r8 g' e c  |
  g4 b8 c  |
  d4 r8 d  |
  %25
  b4 g  |
  a8 b16 a g4 ~  |
  g8 r4.  |
  r8 g' d b  |
  g8 r4.  |
  %30
  r8 g' e c  |
  g4 b8 c  |
  d4 r8 d  |
  b4 g  |
  c2 ~  |
  %35
  c4 r4  \bar "|." % kompletite
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 2/4   \repeat volta 2 { tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  %05
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 r  |
  %10
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  %15
  tomfl8 tomfl tomfl tomfl }
  \alternative { { tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 r }
  { tomfl8 tomfl16 tomfl tomfl8 tomfl } }
  tomfl4 r  |
  %20
  r8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 r4.  |
  r8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 r8 tomfl16 tomfl  |
  %25
  tomfl4 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 r4.  |
  r8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 r4.  |
  %30
  r8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 r8 tomfl16 tomfl  |
  tomfl4 tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  %35
  tomfl4 r4  \bar "|." % kompletite
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

