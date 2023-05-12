\version "2.16.2"

\header {
  dedication=""
  title=""
  subtitle="Ses porqueres"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Popular mallorquina"
  arranger="Arr. Peptoni Rubio"
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
  \time 1/4
  d4  |
  \time 4/4   \repeat volta 2 { g4 fis8 e d4 e  |
  d2 d4 a8 b  |
  c4 c8 b c4 a  |
  %05
  b4. a8 g4 d'  |
  g4 fis8 e d4 e  |
  d2 d4 a8 b  |
  c4 c8 b c4 a }
  \alternative { { g2 g4 d' }
  %10
  { g,2. g'4 } }
  \repeat volta 2 { fis4 e d c  |
  b4 b8 a b4 d  |
  c4 c8 b c4 e  |
  d4 c b g'  |
  %15
  fis4 e d c  |
  b4 b8 a b4 d  |
  c4 c8 b c4 a }
  \alternative { { g2. g'4 }
  { g,2 ~ g4 fis8 g } }
  %20
  \repeat volta 2 { a4 fis8 g a4 b  |
  a2 a4 g8 a  |
  b4 g8 a b4 c  |
  b2 b4 g8 a  |
  b4 b8 a b4 d  |
  %25
  c4 c8 b c4 e  |
  d4 c b a }
  \alternative { { g2 ~ g4 fis8 g }
  { g2. d'4 } }
  \repeat volta 2 { g4 _"Variació" fis8 e d4 e\prall  |
  %30
  d2 ~ d8 e a, b  |
  c8 d c b c4 a  |
  b8 c b a b4 d  |
  g4 fis8 e d4 e\prall  |
  d2 ~ d8 e a, b  |
  %35
  c8 d c b c4 a\prall }
  \alternative { { g2. d'4 }
  { g,2. g'4\prall } }
  \repeat volta 2 { fis4\prall e\prall d\prall c\prall  |
  b4\prall b8 a b4 d\prall  |
  %40
  c4 c8 b c4 e\prall  |
  d8 e c d b4 g'  |
  fis8 g e fis d e c d  |
  b8 c b a b4 d\prall  |
  c8 d c b c4 a\prall }
  %45
  \alternative { { g2. g'4\prall }
  { g,2. fis8 g } }
  \repeat volta 2 { a4 fis8 g a4 b\prall  |
  a2 a4 g8 a  |
  b4 g8 a b c a c  |
  %50
  b2 b4 g8 a  |
  b4 g8 a b4 d\prall  |
  c4 c8 b c4 e\prall  |
  d8 e c d b c a b }
  \alternative { { g2 ~ g4 fis8 g }
  %55
  { g4. b8 g4 d' } }
  e4 fis g2 ~  |
  g4 g r r  \bar "|."
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r tomfl  |
  %05
  tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r tomfl }
  \alternative { { tomfl4 r r2 }
  %10
  { tomfl4 r r2 } }
  \repeat volta 2 { tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r tomfl  |
  tomfl4 r r2  |
  %15
  tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r tomfl }
  \alternative { { tomfl4 r r2 }
  { tomfl4 r r2 } }
  %20
  \repeat volta 2 { tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r tomfl  |
  tomfl4 r r2  |
  tomfl4 r r2  |
  %25
  tomfl4 r r2  |
  tomfl4 r r tomfl }
  \alternative { { tomfl4 r r2 }
  { tomfl4 r r2 } }
  \repeat volta 2 { tomfl4 r r2  |
  %30
  tomfl4 r r2  |
  tomfl4 r r tomfl  |
  tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r2  |
  %35
  tomfl4 r r tomfl }
  \alternative { { tomfl4 r r2 }
  { tomfl4 r r2 } }
  \repeat volta 2 { tomfl4 r r2  |
  tomfl4 r r2  |
  %40
  tomfl4 r r tomfl  |
  tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r tomfl }
  %45
  \alternative { { tomfl4 r r2 }
  { tomfl4 r r2 } }
  \repeat volta 2 { tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r tomfl  |
  %50
  tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r2  |
  tomfl4 r r tomfl }
  \alternative { { tomfl4 r r2 }
  %55
  { tomfl4 r r tomfl } }
  r2 tomfl4 r  |
  r4 tomfl r r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

