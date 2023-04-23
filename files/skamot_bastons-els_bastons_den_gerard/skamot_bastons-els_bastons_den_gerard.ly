\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Ball de bastons"
  subtitle="Els bastons d'en Gerard"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Ramon Solé i Miralles, maig de 2002"
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
  \time 4/4
  g2 g' ~  |
  g2. r4  |
  g4-. g8 f e4-. g-.  |
  f4-. f8 e d4-. f-.  |
  %05
  e4-. e8 d c4-. e-.  |
  d4-. d8 c b4-. d-.  |
  c1  |
  r1  \bar "||"
  c8.-. c16 c8.-. c16 d4 e-.  |
  %10
  g8.-. f16 e8.-. d16 e4 c-.  |
  c8.-. c16 c8.-. c16 d4 e-.  |
  g8.-. f16 e8. d16 c4 r  |
  c8.-. c16 c8.-. c16 d4 e-.  |
  g8.-. f16 e8.-. d16 e4 c-.  |
  %15
  c8.-. c16 c8.-. c16 d4 e-.  |
  \times 2/3 { g8 f e } d8.-. e16 c4 r  \bar "||"
  g4 b8. d16 c4 b  |
  \times 2/3 { d8 c b } a8. c16 b4 g  |
  g4 b8. d16 c4 b  |
  %20
  \times 2/3 { d8 c b } a8. b16 g4 r  |
  g4 b8. d16 c4 b  |
  \times 2/3 { d8 c b } a8. c16 b4 g  |
  g4 b8. d16 c4 b  |
  \times 2/3 { d8 c b } a8. b16 g4 r  \bar "||"
  %25
  c8.-. c16 c8.-. c16 d4 e-.  |
  g8.-. f16 e8.-. d16 e4 c-.  |
  c8.-. c16 c8.-. c16 d4 e-.  |
  g8.-. f16 e8.-. d16 c4 r  \bar "||"
  f,4 a8. c16 b4 a  |
  %30
  f4 a8. c16 b4 r  |
  f4 a8. c16 b4 a  |
  f4 a8. c16 b4 r  \bar "||"
  c8.-. c16 c8.-. c16 d4 e-.  |
  g8.-. f16 e8.-. d16 e4 c-.  |
  %35
  c8.-. c16 c8.-. c16 d4 e-.  |
  g8.-. f16 e8. d16 c4-. r  \bar "||"
  \times 2/3 { b8 c d } e8.-. d16 c2  |
  f4 e d c  |
  \times 2/3 { b8 c d } e8.-. d16 c2  |
  %40
  f4 e d c  |
  \times 2/3 { b8 c d } e8.-. d16 c2  |
  \times 2/3 { b8 c d } e8.-. d16 c2  |
  \times 2/3 { b8 c d } e8.-. d16 c4-. r  |
  c4-. r r2  \bar "|."
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 4/4
  r1  |
  r1  |
  r2 tomfl  |
  tomfl2 tomfl  |
  %05
  tomfl2 tomfl  |
  tomfl2 r2  | % kompletite
  tomfl2 \times 2/3 { tomfl4 tomfl tomfl }  |
  \times 2/3 { tomfl4 tomfl tomfl } tomfl2  \bar "||"
  tomfl2 tomfl  |
  %10
  tomfl4 tomfl tomfl2  |
  tomfl2 tomfl  |
  tomfl4 tomfl tomfl2  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  %15
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl2  \bar "||"
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  %20
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl2  \bar "||"
  %25
  tomfl2 tomfl  |
  tomfl4 tomfl tomfl2  |
  tomfl2 tomfl  |
  tomfl4 tomfl tomfl2  \bar "||"
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  %30
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  \bar "||"
  tomfl2 tomfl  |
  tomfl4 tomfl tomfl2  |
  %35
  tomfl2 tomfl  |
  tomfl4 tomfl tomfl2  \bar "||"
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  %40
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl4 r  |
  tomfl4 r r2  \bar "|."
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

