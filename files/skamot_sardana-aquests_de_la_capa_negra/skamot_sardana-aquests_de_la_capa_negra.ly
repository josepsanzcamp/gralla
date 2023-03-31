\version "2.16.2"

\header {
  dedication="Sardana curta"
  title=""
  subtitle="Aquests de la capa negra"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Beget"
  arranger="Arr. Enric Montsant"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g''
{
  \clef treble
  \key g \major
  \time 1/4
  r8 g16 g  |
  \time 2/4   \times 2/3 { g8 fis e } \times 2/3 { d e fis }  |
  \times 2/3 { g8 fis e } d4 ~ \mordent  |
  d8 r g,8. a16  |
  %05
  \repeat volta 2 { b8. \tempo 4 = 100 b16 b8. a16  |
  a8. g16 g8. g16  |
  c8. c16 c8. b16  |
  a4 d8. d16  |
  fis8. fis16 fis8. e16  |
  %10
  e8. d16 d8. e16  |
  d8. e16 d8. c16 }
  \alternative { { b4 g8. a16 }
  { b4 r8 d16 d } }
  \repeat volta 2 { b8 b b c  |
  %15
  d8 d4 d16 d  |
  g8 fis e d  |
  c4 r8 c  |
  a8 a a b  |
  c8 c4 d8  |
  %20
  fis8 e d c  |
  b4 r8 d  |
  b8 b b c  |
  d8 d4 d8  |
  g8 fis a g  |
  %25
  e4 r8 e16 e  |
  e8 g fis e  |
  d8 d4 e8  |
  d8. c16 b8 a }
  \alternative { { g4 r8 d'16 d }
  %30
  { g,4 r } } \bar "||"
}

liniaroAb =
\relative g''
{
  \tempo 4 = 100
  \clef treble
  \key g \major
  \time 1/4
  r4  |
  \time 2/4   r2  |
  r2  |
  r2  |
  %05
  \repeat volta 2 { g8. d16 d8. fis16  |
  <c e>4 r  |
  a'8. e16 e8. g16  |
  <d fis>4 r  |
  <d a'>8. <d a'>16 <d a'>8. <c g'>16  |
  %10
  <c g'>8. <a fis'>16 <a fis'>8. <c g'>16  |
  <d fis>8. <c g'>16 <b fis'>8. <a e'>16 }
  \alternative { { <g d'>4 r }
  { <g d'>4 r } }
  \repeat volta 2 { <g b>8 <g b> <g b> r  |
  %15
  <g b>8 <g b> <g b> r  |
  <g b>8 <g b> <g b> r  |
  <d' fis>8 <d fis> <d fis> r  |
  <d fis>8 <d fis> <d fis> r  |
  <d fis>8 <d fis> <d fis> r  |
  %20
  <d fis>8 <d fis> <d fis> r  |
  <g, b>8 <g b> <g b> r  |
  <g b>8 <g b> <g b> r  |
  <g b>8 <g b> <g b> r  |
  <b d>8 <a d> <d fis> <b d>  |
  %25
  <g c>4 r  |
  <g c>8 <g c> <g c> r  |
  <g b>8 <g b> <g b> r  |
  <a fis'>8. <g e'>16 <g d'>8 <d' fis> }
  \alternative { { <b d>4 r }
  %30
  { <b g'>4 r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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

