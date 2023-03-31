\version "2.16.2"

\header {
  dedication="Tocs tradicionals"
  title=""
  subtitle="Marxa del Vermut"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. Jaume Vidal"
  arranger="Timbal: Albert Garcia"
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
  \key c \major
  \time 3/8
  g8 e c  |
  \time 2/4   g2 ~  |
  g8 g c d  |
  e2 ~  |
  %05
  e8 e e f  |
  e4 d ~  |
  d8 f f g  |
  f4 e ~  |
  e8 g e c  |
  %10
  g2 ~  |
  g8 g c d  |
  e2 ~  |
  e8 e e e  |
  d4 g  |
  %15
  fis8 d <e a> fis  |
  g2 ~  |
  g8 e d e  |
  f8. d16 f4 ~  |
  f8 f e f  |
  %20
  g8. e16 g4 ~  |
  g8 g a g  |
  d4 e  |
  f4 g  |
  f2  |
  %25
  e8 e d e  |
  f8. d16 f4 ~  |
  f8 f e f  |
  g8. e16 g4 ~  |
  g8 g a g  |
  %30
  d4 e  |
  f4 g  |
  e4 e8 e  |
  e4 r  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  r4 r8  |
  \time 2/4   r8 g a b  |
  g8 r r4  |
  r8 g a b  |
  %05
  c8 c c d  |
  c4 b ~  |
  b8 d d e  |
  d4 c ~  |
  c8 g' e c  |
  %10
  g8 g a b  |
  g8 g c d  |
  r8 g, a b  |
  c8 c c c  |
  b4 e  |
  %15
  d8 b c d  |
  b2 ~  |
  b8 c b c  |
  d8. b16 d4 ~  |
  d8 d c d  |
  %20
  e8. c16 e4 ~  |
  e8 e f e  |
  b4 c  |
  d4 e  |
  d2  |
  %25
  c8 c b c  |
  d8. b16 d4 ~  |
  d8 d c d  |
  e8. c16 e4 ~  |
  e8 e f e  |
  %30
  b4 c  |
  d4 e  |
  c4 c8 c  |
  c4 r  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/8
  r4 r8  |
  \time 2/4   tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  %05
  tomfl8-> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8-> tomfl16 tomfl  |
  tomfl8-> tomfl-> tomfl16 tomfl tomfl tomfl  |
  %10
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  %15
  tomfl16 tomfl tomfl8 tomfl-> tomfl16 tomfl  |
  tomfl8-> tomfl-> tomfl16 tomfl tomfl tomfl  |
  tomfl4-> r  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8 tomfl16-> tomfl-> tomfl8 tomfl16-> tomfl->  |
  %20
  tomfl8 tomfl16-> tomfl-> tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8 tomfl16-> tomfl-> tomfl8 tomfl16-> tomfl->  |
  tomfl8 tomfl16-> tomfl-> tomfl8 tomfl->  |
  %25
  tomfl8-> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8-> tomfl16 tomfl tomfl8 tomfl->  |
  tomfl8 tomfl16-> tomfl-> tomfl8 tomfl16-> tomfl->  |
  tomfl8 tomfl16-> tomfl-> tomfl8 tomfl->  |
  tomfl8-> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  %30
  tomfl8 tomfl:32 ~ tomfl:32 tomfl16 tomfl  |
  tomfl8 tomfl:32 ~ tomfl:32 tomfl16 tomfl  |
  \times 2/3 { tomfl8 tomfl tomfl } tomfl-> tomfl->  |
  tomfl4-> r  \bar "|."
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

