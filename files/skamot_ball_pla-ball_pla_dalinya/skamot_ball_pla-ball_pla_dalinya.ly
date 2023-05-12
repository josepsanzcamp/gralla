\version "2.16.2"

\header {
  dedication=""
  title=""
  subtitle="Ball pla d'Alinyà"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger="L'Alt Urgell"
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative d''
{
  \clef treble
  \key g \major
  \time 1/4
  d8 g \tempo 4 = 120  |
  \time 3/4   \repeat volta 2 { fis4. g8 fis e  |
  d4 b d  |
  c8 b c d e fis  |
  %05
  g4 d d8 g  |
  fis4. g8 fis e  |
  d4 b d  |
  c8 b c d e fis }
  \alternative { { g4 r d8 g }
  %10
  { g4 r d8. d16 } }
  \repeat volta 2 { d4 c b  |
  a4 r e'8. e16  |
  e4 d c  |
  b4 r d  |
  %15
  g8 fis a g fis g }
  \alternative { { e2 c4  |
  d8 e d c b a  |
  g4 r d'8. d16 }
  { e2 c4 } }
  %20
  d4 r fis  |
  g4 r2  \bar "||"
  \time 6/8   r4. d4 g8  |
  \repeat volta 2 { fis4 g8 fis4 e8  |
  d4 b8 b4 d8  |
  %25
  c8 b c d e fis  |
  g4 d8 d4 g8  |
  fis4 g8 fis4 e8  |
  d4 b8 b4 d8  |
  c8 b c d e fis }
  %30
  \alternative { { g4. d4 g8 }
  { g4. r8 d d } }
  \repeat volta 2 { d4 c8 c4 b8  |
  a4. r8 e' e  |
  e4 d8 d4 c8  |
  %35
  b4. r4 d8  |
  g8 fis g g fis g  |
  e4. c  |
  d8 e d e g fis }
  \alternative { { g4. r8 d d }
  %40
  { g4. r } } \bar "||"
}

liniaroAb =
\relative d''
{
  \tempo 4 = 120
  \clef treble
  \key g \major
  \time 1/4
  r4  |
  \time 3/4   \repeat volta 2 { d2 c4  |
  b2 g4  |
  a4 g a  |
  %05
  b2 g4  |
  d'2 c4  |
  b2 g4  |
  a4 g a }
  \alternative { { g4 r g }
  %10
  { g4 r b8. b16 } }
  \repeat volta 2 { b4 a g  |
  a4 r c8. c16  |
  c4 b a  |
  g4 r d'  |
  %15
  b2 a4 }
  \alternative { { g8 a c b c a  |
  g4 b d  |
  g4 r b,8. b16 }
  { g8 a c b c e } }
  %20
  d4 r c  |
  b4 r2  \bar "||"
  \time 6/8   r4. d4 b8  |
  \repeat volta 2 { a4 b8 a4 c8  |
  b4 g8 g4 b8  |
  %25
  a8 g a b c d  |
  b4 b8 d4 b8  |
  a4 b8 a4 c8  |
  b4 g8 g4 b8  |
  a8 g a b c d }
  %30
  \alternative { { b4. d4 b8 }
  { b4. r8 b b } }
  \repeat volta 2 { b4 a8 a4 g8  |
  a4. r8 c c  |
  c4 b8 b4 a8  |
  %35
  g4. r  |
  r4. r4 d'8  |
  c8 b c a g a  |
  b4 g8 c b a }
  \alternative { { g4. r8 b b }
  %40
  { g4. r } } \bar "||"
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

