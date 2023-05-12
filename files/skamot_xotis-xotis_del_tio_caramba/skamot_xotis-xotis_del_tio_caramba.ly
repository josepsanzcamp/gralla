\version "2.16.2"

\header {
  dedication=""
  title="Xotis"
  subtitle="Xotis del Tio Caramba"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="del repertori de Casimiro Anadón"
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
  \time 2/8
  g8. a16  |
  \time 4/4   \mark \markup {\musicglyph #"scripts.segno"} g4 e' -. e -. g,8. a16  |
  g4 e' -. e -. e8. f16  |
  g4 g8. f16 e8. d16 c8. e16  |
  %05
  d2 ~ d8 r g,8. a16  |
  g4 d' d -. g,8. -. a16  |
  g4 d' -. d -. d8. e16  |
  f4 ~ f8. a16 g8. f16 e8. f16  |
  g2. r4  |
  %10
  g,4. a8 b8. c16 d8. e16  |
  \mark "Fine" c4 r c g  \bar "||"
  e'4 e e d  |
  f4 e ~ e8. r16 d8. c16  |
  d4. b8 d4 b  |
  %15
  a2 ~ a8. r16 g4  |
  d'4 d d c  |
  e4 d ~ d8. r16 c8. b16  |
  c4 g ~ g8. g16 c8. d16  |
  e4 -. r e -. d8. e16  |
  %20
  f4 f f e8. d16  |
  e4 c ~ c8. c16 e8. c16  |
  d4 b ~ b8. b16 a8. g16  |
  c4. r8 c r r4  |
  g'2 g4 r  |
  %25
  r4 f8. e16 f8. e16 f8. g16  |
  e2 e4 e  |
  d2 d4 r  |
  r4 c8. b16 c8. g16 c8. d16  |
  e4 r e d8. e16  |
  %30
  f4 f f e8. d16  |
  e4 c r8. c16 e8. c16  |
  d4 b ~ b8. b16 a8. g16  |
  \mark "D.S. al Fine" c2 c4 g8. a16  \bar "|."
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 2/8
  tomfl4:32 ~  |
  \time 4/4   tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  %05
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  %10
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 r tomfl tomfl:32 ~  \bar "||"
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  %15
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  %20
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  %25
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  %30
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl:32  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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
  \header {instrument=""}
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

