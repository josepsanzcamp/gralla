\version "2.16.2"

\header {
  dedication="Tocs tradicionals"
  title=""
  subtitle="Toc de castells"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
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
  \time 1/8
  g16 g  |
  \time 2/4   g8 \fermata d16 _"rall." e f e d c  |
  d8. _"A la A i repetim
fins a l'aleta" c16 b d g d  |
  \time 3/4   b8. _"" d16 c b c e d e c d  |
  %05
  \time 2/4   b8 b16 d g8 g16 d  |
  \time 3/4   b16 _"" c b c d8. b16 e d e c  |
  \times 2/3 { d8 b c } d4 b16 c d e  |
  d2. ~  |
  d2. ~  |
  %10
  d4 r g8 e16 d  |
  e2. ~  |
  e4 r r16 g f e  |
  \time 2/4   d8. c16 b d  g d  \bar "||"
  \time 3/4   d2.\trill _"n"  \bar "||"
  %15
  \time 2/4   g8 f16  e d8 e16  f  |
  g8 f16 e d8 e16 f  |
  \time 3/4   e8 d16 c b c d e d8. b16  |
  d16 e d e g f g f e d e c  |
  b16 d g d b4 c16 b c d  |
  %20
  \time 2/4   b8 b16 d g8 g16 d  \bar "||"
  \time 13/4   g,4 b16 c a8 d16 b8 e c e d e g e f e e e d f e d f e16 d e4 r8 r16  | % kompletite
  \time 6/4   g,4 a8 b c d e f g2  |
  r1 r2  \bar "|." % kompletite
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g16 g  |
  \time 2/4   g8 d16 e f e d c  |
  b8. a16 g b d b  |
  \time 3/4   g8. b16 a g a c b c a b  |
  %05
  \time 2/4   g8 g16 b d8 d16 b  |
  \time 3/4   g16 a g a b8. g16 c b c a  |
  \times 2/3 { b8 g a } b4 g16 a b c  |
  b4 b8 c b c  |
  b16 c b g b2 ~  |
  %10
  b4 r g  |
  c4. b8 a16 g a b  |
  c4 r r16 e d c  |
  \time 2/4   b8. a16 g b d b  \bar "||"
  \time 3/4   d2\trill r4  \bar "||" % kompletite
  %15
  \time 2/4   g8 f16 e b8 c16 d  |
  e8 d16 c b8 c16 d  |
  \time 3/4   c8 b16 a g a b c b8. g16  |
  b16 c b c e d e d c b c a  |
  g16 b d b g4 a16 g a b  |
  %20
  \time 2/4   g8 g16 b d8 d16 b  \bar "||"
  \time 13/4   r1 r1 r1 r4  | % kompletite
  \time 6/4   r1 r2  | % kompletite
  r1 r2  \bar "|." % kompletite
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/8
  r8  |
  \time 2/4   r2  |
  tomfl8.:32 tomfl16 tomfl tomfl tomfl tomfl  |
  \time 3/4   tomfl8.:32 tomfl16 tomfl8:32 tomfl16 tomfl tomfl8:32 tomfl16 tomfl  |
  %05
  \time 2/4   tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  \time 3/4   tomfl8:32 tomfl16 tomfl tomfl8. tomfl16 tomfl4:32  |
  \times 2/3 { tomfl8 tomfl tomfl } tomfl4 tomfl:32  |
  tomfl8:32 tomfl16 tomfl tomfl8:32 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8:32 tomfl16 tomfl tomfl8:32 tomfl16 tomfl tomfl8 tomfl  |
  %10
  tomfl8:32 tomfl16 tomfl tomfl4 r  |
  tomfl8:32 tomfl16 tomfl tomfl8:32 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8:32 tomfl16 tomfl tomfl8:32 tomfl16 tomfl tomfl8 r  |
  \time 2/4   tomfl8. tomfl16 tomfl tomfl tomfl tomfl  \bar "||"
  \time 3/4   tomfl2.:32 ~  \bar "||"
  %15
  \time 2/4   tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  \time 3/4   tomfl8 tomfl16 tomfl tomfl8:32 tomfl16 tomfl  tomfl8 r16 tomfl  |
  tomfl16 tomfl8.:32  tomfl16 tomfl8.:32 tomfl16 tomfl tomfl tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl4:32 tomfl16 tomfl tomfl tomfl  |
  %20
  \time 2/4   tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  \bar "||"
  \time 13/4   tomfl1:32 r1 r1 r4  | % kompletite
  \time 6/4   tomfl1:32 ~ tomfl4:32 tomfl8-> tomfl->  |
  tomfl4-> r r1  \bar "|." % kompletite
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

