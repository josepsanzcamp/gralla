\version "2.16.2"

\header {
  dedication=""
  title="Pasdoble"
  subtitle="Marxa d'en Serra"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Joan Serra"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  d8 d c  |
  \time 2/4   b2  |
  c4 d  |
  b2 ~  |
  %05
  b8 d d c  |
  b2  |
  c4 d  |
  c2 ~  |
  c4 r  |
  %10
  c2  |
  d4 e  |
  fis2 ~  |
  fis8 d e fis  |
  e2 ~  |
  %15
  e8 c d e  |
  d2 ~  |
  d8 d d c  |
  b2  |
  c4 d  |
  %20
  b2 ~  |
  b8 d d c  |
  b2  |
  c4 d  |
  e2 ~  |
  %25
  e4 r  |
  e2  |
  fis4. e8  |
  e4 d  |
  r8 d e d  |
  %30
  d4 c  |
  r8 e d c  |
  b4 d  |
  \mark "Fine" b4 r  \bar "||"
  b8. b16 b8 c  |
  %35
  d8 b4.  |
  d8 d c b  |
  c2  |
  c8. c16 c8 d  |
  e8 e4 e8  |
  %40
  fis8 e d cis  |
  d4 r  |
  b8. b16 b8 c  |
  d8 b4.  |
  b8 b c d  |
  %45
  e2  |
  e8 e fis e  |
  d8 d e d  |
  c8 e d c  |
  \mark "D.C. al Fine" b8 r4 r8  \bar "|." % kompletite
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  b8 b a  |
  \time 2/4   g2  |
  a4 b  |
  g2 ~  |
  %05
  g8 b b a  |
  g2  |
  a4 b  |
  a2 ~  |
  a4 r  |
  %10
  a2  |
  b4 c  |
  d2 ~  |
  d8 b c d  |
  c2 ~  |
  %15
  c8 a b c  |
  b2 ~  |
  b8 b b a  |
  g2  |
  a4 b  |
  %20
  g2 ~  |
  g8 b b a  |
  g2  |
  a4 b  |
  c2 ~  |
  %25
  c4 r  |
  c2  |
  d4. c8  |
  c4 b  |
  r8 b c b  |
  %30
  b4 a  |
  r8 c b a  |
  g4 b  |
  g4 r  \bar "||"
  g8. g16 g8 a  |
  %35
  b8 g4.  |
  b8 b a g  |
  a2  |
  a8. a16 a8 b  |
  c8 c4 c8  |
  %40
  d8 c b ais  |
  b4 r  |
  g8. g16 g8 a  |
  b8 g4.  |
  g8 g a b  |
  %45
  c2  |
  c8 c d c  |
  b8 b c b  |
  a8 c b a  |
  g8 r4 r8  \bar "|." % kompletite
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

