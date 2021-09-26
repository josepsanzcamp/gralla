\version "2.16.2"

\header {
  dedication="Pasdoble"
  title=""
  subtitle="Gener"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="M. Rius"
  arranger="Timbal: Albert Garcia"
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
  \time 2/4   e2 ~  |
  e8 d c b  |
  d4 c ~  |
  %05
  c4 b8 c  |
  b4 a8 b  |
  a4 g8 a  |
  b2 ~  |
  b4 g  |
  %10
  f'2 ~  |
  f8 e d c  |
  e4 d ~  |
  d4 d8 c  |
  b4 c8 b  |
  %15
  a4 b8 a  |
  g2 ~  |
  g4 g8 c  |
  e2 ~  |
  e8 d c b  |
  %20
  d4 c ~  |
  c4 c8 c  |
  d4 c8 d  |
  e4 d8 e  |
  f2 ~  |
  %25
  f4 g,  |
  f'2 ~  |
  f8 f g8. f16  |
  f4 e ~  |
  e4 g8 f  |
  %30
  e4 d8 c  |
  d4 c8 b  |
  c2 ~  |
  \mark "D.C." c4 r4  \bar "|." % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  g8 c  |
  \time 2/4   g'2 ~  |
  g8 f e d  |
  f4 e ~  |
  %05
  e4 e8 e  |
  e4 e8 e  |
  e4 e8 e  |
  f2 ~  |
  f4 g,  |
  %10
  a'2 ~  |
  a8 g f e  |
  g4 f ~  |
  f4 f8 f  |
  f4 f8 f  |
  %15
  f4 f8 f  |
  e2 ~  |
  e4 g,8 c  |
  g'2 ~  |
  g8 f e d  |
  %20
  f4 e ~  |
  e4 c8 c  |
  b4 b8 b  |
  b4 b8 b  |
  a2 ~  |
  %25
  a4 g  |
  a2 ~  |
  a8 a b8. a16  |
  a4 g ~  |
  g4 g8 g  |
  %30
  a4 a8 a  |
  b4 a8 b  |
  c2 ~  |
  c4 r4  \bar "|." % kompletite
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 2/4   tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  %05
  tomfl8-> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl4:32   |
  %10
  tomfl8-> ( tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  %15
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl16 tomfl tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  %20
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %25
  tomfl4 tomfl:32 )  |
  tomfl8->  tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  %30
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl16 tomfl tomfl8 tomfl-> tomfl16 tomfl  |
  tomfl8-> tomfl-> tomfl16 tomfl tomfl tomfl  |
  tomfl4-> r4  \bar "|." % kompletite
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

