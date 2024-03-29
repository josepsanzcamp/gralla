\version "2.16.2"

\header {
  dedication=""
  title="Muñeira"
  subtitle="Marcha do entrelazado de Allariz"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Galícia"
  arranger="Arr. Carlos Núñez"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  \repeat volta 4 { d8. e16 d8  |
  d8. e16 d8  |
  c8. d16 c8  |
  b8. a16 g8  |
  %05
  d'8. e16 d8  |
  d8. e16 d8  |
  c8. d16 c8  |
  b4.  |
  c8. d16 c8  |
  %10
  c8. d16 c8  |
  b8. c16 b8  |
  a4.  |
  b8. c16 b8  |
  b8. c16 b8 }
  %15
  \alternative { { a8. b16 a8  |
  g4. }
  { a8. b16 a8  |
  g4. } }
  \repeat volta 2 { g8. b16 d8  |
  %20
  g,8. b16 d8  |
  g,8. b16 f'8  |
  \mark \markup {\musicglyph #"scripts.coda" ???} e4.  |
  b8. c16 b8  |
  a4 a8 }
  %25
  \alternative { { a8. b16 a8  |
  g4. }
  { a8. b16 a8  |
  \mark \markup {D.C. e Coda} g4. } }
  \mark \markup {\musicglyph #"scripts.coda"} d'8. e16 d8  |
  %30
  d8. e16 d8  |
  c8. b16 a8  |
  g4. ~  |
  g8 r4  \bar "|."
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  \repeat volta 4 { d8. c16 b8  |
  d8. c16 b8  |
  c8. b16 a8  |
  g8. a16 b8  |
  %05
  d8. c16 b8  |
  d8. c16 b8  |
  c8. b16 a8  |
  g4.  |
  a8. a16 a8  |
  %10
  a8. a16 a8  |
  g8. a16 b8  |
  c4 c8  |
  g8. a16 g8  |
  g8. a16 g8 }
  %15
  \alternative { { a8. b16 c8  |
  d4. }
  { a8. b16 a8  |
  g4. } }
  \repeat volta 2 { <g b d>8. r8 r16  | % kompletite
  %20
  <g b d>8. r8 r16  | % kompletite
  <b d f>8 r <b d f>  |
  <g c e>4.  |
  g'8. a16 g8  |
  fis4 fis8 }
  %25
  \alternative { { fis8. d16 c8  |
  b4. }
  { fis'8. d16 fis8  |
  g4. } }
  fis8. g16 fis8  |
  %30
  fis8. g16 fis8  |
  e8. d16 c8  |
  b4. ~  |
  b8 r4  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

