\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title=""
  subtitle="Borrèia dels càtars"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Occitània"
  arranger=""
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
  \key f \major
  \time 3/8
  d4 d8  |
  \repeat volta 2 { f8 d f  |
  e8 a, a  |
  d16 des d8 e  |
  %05
  f8 e d ~  |
  d8 d16 f d f  |
  e8 a, a  |
  d16 e f8 e }
  \alternative { { d4 d8 }
  %10
  { d4 a8 ~ } }
  \repeat volta 2 { a8 d d  |
  des8 a a  |
  d16 des d8 e  |
  \times 2/3 { e16 f e } d8 a ~  |
  %15
  a8 d d  |
  des8 a a  |
  d16 e f8 e }
  \alternative { { d4 a8 }
  { d8 e16 f g8 } }
  %20
  \repeat volta 2 { a4 a8  |
  g8 e e  |
  f16 e f8 g  |
  a16 g f e f g  |
  a8 f a  |
  %25
  g8 e g  |
  f16 e d8 des }
  \alternative { { d8 e16 f g8 }
  { d8 f \times 2/3 { e16 f e } } }
  \repeat volta 2 { d8 a d  |
  %30
  des8 a a  |
  d16 des d8 e  |
  \times 2/3 { e16 f e } d8 a ~  |
  a8 d d  |
  des8 a a  |
  %35
  d16 e f8 e }
  \alternative { { d8 f \times 2/3 { e16 f e } }
  { d4. } } \bar "||"
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key f \major
  \time 3/8
  r4.  |
  \repeat volta 2 { d8 a a  |
  a4.  |
  bes8 g4  |
  %05
  a4.  |
  a4.  |
  a4.  |
  bes8 g4 }
  \alternative { { a4. }
  %10
  { a4 r8 } }
  \repeat volta 2 { f4.  |
  e4.  |
  g8 bes4  |
  a4.  |
  %15
  f4.  |
  e4.  |
  bes'8 g4 }
  \alternative { { f4. }
  { f4. } }
  %20
  \repeat volta 2 { d'8 a4  |
  a4.  |
  bes8 g4  |
  a4.  |
  a16 g f e f g  |
  %25
  a4.  |
  bes8 g4 }
  \alternative { { f4. }
  { f4. } }
  \repeat volta 2 { f4.  |
  %30
  e4.  |
  g8 bes4  |
  a4.  |
  f4.  |
  e4.  |
  %35
  bes'8 g4 }
  \alternative { { f4. }
  { f4. } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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

