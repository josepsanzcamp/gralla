\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Cercavila"
  subtitle="Marxa d'enguany"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Xavier Richart"
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
  \time 3/8
  g8 a b  |
  \time 6/8   \repeat volta 2 { c8 g c d c d  |
  e4. e8 f e  |
  d4 d8 g, a b  |
  %05
  c4. g8 a b  |
  c8 g c d c d  |
  e4. e8 f e  |
  d4 d8 c b a  |
  g4. g8 a b  |
  %10
  c8 g c d c d  |
  e4. e8 f e  |
  d4 d8 b c d  |
  e4. e8 f e  |
  d4 d8 g f d  |
  %15
  e4 e8 c d e }
  \alternative { { d4 d8 c b a  |
  g2.  |
  r4. g8 a b }
  \repeat volta 2 { d4 d8 g, a b  |
  %20
  c2.  |
  r4. g } }
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} e'2. ~  |
  e4. c  |
  g2. ~  |
  %25
  g4. g  |
  a4. g  |
  a4. ais  |
  b2. ~  |
  b4. g  |
  %30
  f'2. ~  |
  f4. d  |
  b2. ~  |
  b4. a  |
  g4. a  |
  %35
  b4. c4 d8  |
  e2. ~  |
  e4. g,  |
  e'2.  |
  e4. c  |
  %40
  g2. ~  |
  g4. g  |
  e'4. f  |
  g4. e  |
  a2. ~  |
  %45
  a4. c,  |
  gis'2. ~  |
  gis4. e  |
  g2. ~  |
  g4. e  |
  %50
  f4. e  |
  c4. d }
  \alternative { { c2.  |
  r4 r8 g4. }
  { c2.  |
  %55
  \mark "Fine" c4. r } }
  \key ees \major   c4 c8 g4 g8  |
  c8 c c c4 r8  | % kompletite
  ees4 ees8 bes4 bes8  |
  ees8 ees ees ees4.  |
  %60
  g4 g8 d4 d8  |
  g8 g g g g g  |
  g2.  |
  \mark "D.S. al Fine" r4. g,  \bar "|."
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  g4.  |
  \time 6/8   \repeat volta 2 { e8 d e f e f  |
  g4. g8 a g  |
  f4. d  |
  %05
  e4. g  |
  e8 d e f e f  |
  g4. g8 a g  |
  f4. d  |
  b4. g'  |
  %10
  e8 d e f e f  |
  g4. g8 a g  |
  f4. a  |
  g4. g8 a g  |
  f4 f8 b a f  |
  %15
  g4 g8 e f g }
  \alternative { { fis4. d  |
  g2.  |
  r4. g }
  \repeat volta 2 { f4. g  |
  %20
  e2. ~  |
  e4. r } }
  \repeat volta 2 { r4. g,  |
  c4. g  |
  e'8 f e d c b  |
  %25
  c4. e  |
  f4. e  |
  c4. cis  |
  d4. g8 f e  |
  d2.  |
  %30
  r4. g,  |
  d'4. g,  |
  f'8 g f e f e  |
  d4. c  |
  b4. c  |
  %35
  d4. e4 f8  |
  g4. c8 b a  |
  g2. ~  |
  g4. g,  |
  c4. g  |
  %40
  e'8 f e d c b  |
  c4. e  |
  g4. a4 b8  |
  c8 b a g4.  |
  f4. c8 d e  |
  %45
  f2.  |
  f4. f8 dis d  |
  c4. c  |
  e4. f8 e d  |
  c4. g  |
  %50
  a4. g  |
  a4. b }
  \alternative { { c8 g' g g g g  |
  g2. }
  { c,2.  |
  %55
  c4. r } }
  \key ees \major   ees4 ees8 d4 d8  |
  ees8 ees ees ees4 r8  | % kompletite
  g4 g8 f4 f8  |
  g8 g g g4.  |
  %60
  bes4 bes8 a4 a8  |
  bes8 bes bes bes bes bes  |
  b2. ~  |
  b4. r  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  r4.  |
  \time 6/8   \repeat volta 2 { r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %10
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %15
  r2 r4 }
  \alternative { { r2 r4  |
  r2 r4  |
  r2 r4 }
  \repeat volta 2 { r2 r4  |
  %20
  r2 r4  |
  r2 r4 } }
  \repeat volta 2 { r4. g  |
  g'4. e  |
  g8 a g f e d  |
  %25
  e4. c  |
  c2.  |
  e4. g  |
  f4. b8 a g  |
  f2.  |
  %30
  r4. b,  |
  b'4. g  |
  a8 b a g a g  |
  f2.  |
  d2.  |
  %35
  g,2.  |
  c4. e8 d c  |
  c2. ~  |
  c4. g  |
  g'4. e  |
  %40
  g8 a g f e d  |
  e4. c  |
  c2. ~  |
  c4. c  |
  a4. c8 b ais  |
  %45
  a2.  |
  gis4. ais  |
  gis4. g8 a b  |
  c8 b a g a b  |
  c2.  |
  %50
  c8 b a e' d c  |
  f8 e d g a b }
  \alternative { { r2 r4  |
  r2 r4 }
  { c2. ~  |
  %55
  c4. r } }
  \key ees \major   ees,4 ees8 d4 d8  |
  ees8 ees ees g4 r8  | % kompletite
  g4 g8 d4 d8  |
  bes8 bes bes bes4.  |
  %60
  d4 d8 bes4 c8  |
  d8 d d d d d  |
  g,2.  |
  g4. r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

