\version "2.16.2"

\header {
  dedication=""
  title="Cercavila"
  subtitle="Algoleja"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Algemesí"
  arranger="Arr. Xavier Richart"
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
  \time 2/4
  r8 d e d  |
  b4 c  |
  d4 e  |
  d8\prall b4.  |
  %05
  r8 d e d  |
  b4 c  |
  d4 b  |
  c2  |
  r8 e fis e  |
  %10
  c4 d  |
  e4 fis  |
  e8\prall c4.  |
  r8 e fis e  |
  c4 d  |
  %15
  e4 fis  |
  d2  |
  r8 d e d  |
  b4 c  |
  d4 e  |
  %20
  d8\prall b4.  |
  r8 d d e  |
  f4 g  |
  a4 g  |
  e2  |
  %25
  r8 e e fis  |
  g8. fis16 g4 ~  |
  g8 g fis e  |
  d8. g16 b4 ~  |
  b8 b a g  |
  %30
  fis4 d  |
  c4 a  |
  \mark "Fine" g2  \bar "||"
  \key c \major   r8 g a b  |
  c8. b16 c4 ~  |
  %35
  c8 c b a  |
  c2  |
  r8 g a b  |
  c4 b  |
  c4 a  |
  %40
  b2  |
  r8 g g a  |
  b8. a16 b4 ~  |
  b8 b a g  |
  b2  |
  %45
  r8 g g a  |
  b4 c  |
  d4 b  |
  a8\prall g4.  |
  r8 g a b  |
  %50
  c8. b16 c4 ~  |
  c8 c b a  |
  c4 e  |
  r8 e e d  |
  cis4 d  |
  %55
  e4 cis  |
  e8\prall d4.  |
  \repeat volta 2 { r8 a a b  |
  c8. b16 c4 ~  |
  c8 c b a  |
  %60
  g8. c16 e4 ~  |
  e8 e d c  |
  b4 g  |
  a4 b }
  \alternative { { d8\prall c4. }
  %65
  { \mark "D.C. al Fine" c2 } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r8 b c b  |
  g4 a  |
  b4 c  |
  b8\prall g4.  |
  %05
  r8 b c b  |
  g4 a  |
  b4 gis  |
  a2  |
  r8 c d c  |
  %10
  a4 b  |
  c4 d  |
  c8\prall a4.  |
  r8 c d c  |
  a4 b  |
  %15
  c4 a  |
  b2  |
  r8 b c b  |
  g4 a  |
  b4 c  |
  %20
  b8\prall g4.  |
  r8 b b c  |
  d4 b  |
  c4 d  |
  c2  |
  %25
  r8 c c d  |
  e8. d16 e4 ~  |
  e8 e d c  |
  b8. d16 g4 ~  |
  g8 g fis e  |
  %30
  d4 b  |
  c8 d e fis  |
  g2  \bar "||"
  \key c \major   r8 f e d  |
  e8. d16 e4 ~  |
  %35
  e8 e d c  |
  e4 g  |
  r8 f e d  |
  e4 d  |
  e4 f  |
  %40
  d2  |
  r8 g f e  |
  d8. c16 d4 ~  |
  d8 d c b  |
  d4 g  |
  %45
  r8 g f e  |
  d4 e  |
  f4 g  |
  f8\prall e4.  |
  r8 f e d  |
  %50
  e8. d16 e4 ~  |
  e8 e d c  |
  e4 g  |
  r8 g g f  |
  e4 f  |
  %55
  g4 e  |
  g8\prall f4.  |
  \repeat volta 2 { r8 f f g  |
  a8. g16 a4 ~  |
  a8 a g f  |
  %60
  e8. f16 g4 ~  |
  g8 g f e  |
  d4 f  |
  e4 d }
  \alternative { { f8\prall e4. }
  %65
  { c2 } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
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
  \header {instrument="Gralla 1"}
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

