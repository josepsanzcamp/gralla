\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Gegants"
  subtitle="Ball de l'aniversari"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger="Marcel Casellas, 25/02/1998"
  opus="A en Jordi Fàbregas i la Dolors Capdevila"
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  r4 b c  |
  \repeat volta 2 { b4. d8 c4  |
  b4 a g  |
  e'4. dis8 e fis  |
  %05
  g4 b, c  |
  b4. d8 c4  |
  b4 a g  |
  e2. ~  |
  e4 b'4. c8  |
  %10
  d8 g fis e d c  |
  e4. f8 e4 ~  |
  e8 d c4. b8  |
  a8 e' a c b a  |
  g8 fis a4. cis,8  |
  %15
  g'4. a8 fis4 ~  |
  fis8 e d2  |
  r2 r4  |
  d4. c8 b4  |
  f'4. e8 d4  |
  %20
  g4. f8 e4  |
  a4. g8 fis e  |
  b'2. ~  |
  b4 a gis  |
  b4 a4. a,8  |
  %25
  g'2 fis4  |
  e2 fis4  |
  dis2 r4  |
  r8 fis g a b c  |
  b4 a gis  |
  %30
  a4. a,8 c g'  |
  fis4. c8 fis a }
  \alternative { { g2. ~  |
  g4 b, c }
  { g'2. ~ } }
  %35
  \time 6/8   g4. r  \bar "||"
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %40
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  \repeat volta 2 { r2 r4  |
  %45
  r2 r4  |
  r2 r4  |
  r4. r8 g, a  |
  b4. ~ b8 a gis  |
  a4 a8 a c b  |
  %50
  a4 a8 a cis e  |
  d4 cis c  \bar "||"
  b4 c8 b c d  |
  c4. ~ c8 d c  |
  b4 a8 gis4 r8  |
  %55
  r8 e' fis g a b  |
  c4 b a  |
  b4 a gis  |
  a4. c }
  \alternative { { b4. r }
  %60
  { b4. r } }
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r8 e, fis g a b  |
  %65
  c4 b a  |
  b4 a gis  |
  a4. c  |
  b4. c  |
  b2.\fermata  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  r2 r4  |
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4 b8 c b a  |
  b2 r4  |
  %10
  r8 e d c b a  |
  gis4. b8 b4 ~  |
  b8 a a4. gis8  |
  a2 r4  |
  r2 r8 a  |
  %15
  cis4. cis8 cis4 ~  |
  cis8 b a2  |
  r8 fis g a b c  |
  b4. a8 g4  |
  d'4. c8 b4  |
  %20
  e4. d8 c4  |
  e4. e8 d c  |
  d2. ~  |
  d2 r4  |
  r2 r4  |
  %25
  r2 r4  |
  r2 r4  |
  r8 g, a b c d  |
  e8 d b c d e  |
  d2 e4  |
  %30
  c2 a4  |
  c4. a8 d c }
  \alternative { { b8 c d c b a  |
  b2 r4 }
  { b8 c d c b a } }
  %35
  \time 6/8   b4. r  \bar "||"
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %40
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4. r8 g a  |
  \repeat volta 2 { b4 b8 b c b  |
  %45
  a4 g8 ~ g dis' e  |
  fis4 fis8 fis g fis  |
  e4. r8 e f  |
  e4 d8 d c b  |
  c4 a8 a e' d  |
  %50
  cis4 a8 c e g  |
  fis4. ~ fis8 e fis  \bar "||"
  g4 a8 d, e f  |
  e4. ~ e8 f e  |
  d4 c8 b4 c8  |
  %55
  a4. r8 a b  |
  c4 b a  |
  b4 a r  |
  r8 d e fis e d }
  \alternative { { g4. r8 g, a }
  %60
  { g'4. r } }
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %65
  c,4 b a  |
  b4 a b  |
  c8 d e fis e d  |
  g4. fis  |
  g2.\fermata  \bar "|."
}

liniaroAc =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  r2 r4  |
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  e2. ~  |
  %05
  e4 r2  |
  r2 r4  |
  r2 r4  |
  r4 g8 a g fis  |
  g2 r4  |
  %10
  b4 gis fis  |
  e4. gis8 g4 ~  |
  g8 a a4. e8  |
  e2 r4  |
  r2 r8 a  |
  %15
  a4. a8 a4 ~  |
  a8 g fis2  |
  r8 fis g a g fis  |
  g4. fis8 g4  |
  b4. g8 g4  |
  %20
  g4. g8 g4  |
  c4. a8 b c  |
  b4 a gis8 a  |
  b2 r4  |
  r2 r4  |
  %25
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r8 fis g a b c  |
  b4 c b  |
  %30
  a4 r a  |
  a4 r fis }
  \alternative { { g2. ~  |
  g2 r4 }
  { g2. ~ } }
  %35
  \time 6/8   g4. r  \bar "||"
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %40
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  \repeat volta 2 { g4 r8 r4.  |
  %45
  r4. r8 b c  |
  a4 a8 a b a  |
  g4. r  |
  r2 r4  |
  r2 r4  |
  %50
  g2.  |
  fis4 a fis  \bar "||"
  g4 fis8 g4 r8  |
  g4 fis8 g4 r8  |
  e4 e8 e4 r8  |
  %55
  r8 c' d e c d  |
  e4 g dis  |
  d4 e d  |
  c4. a }
  \alternative { { g4 g8 g g g }
  %60
  { g4 g8 g g g } }
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %65
  e'4 g dis  |
  d4 e d  |
  c4. a  |
  g4. b  |
  g2.\fermata  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 3/4
  r2 r4  |
  \repeat volta 2 { tomfl4. tomfl8 tomfl4  |
  tomfl4 tomfl tomfl  |
  tomfl2.:32 ~  |
  %05
  tomfl4 r2  |
  tomfl4. tomfl8 tomfl4  |
  tomfl4 tomfl tomfl  |
  tomfl2.:32 ~  |
  tomfl4 r2  |
  %10
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4. tomfl8 tomfl4:32 ~  |
  tomfl8 tomfl tomfl2:32 ~  |
  tomfl4 r tomfl  |
  tomfl8 tomfl tomfl4.:32 tomfl8  |
  %15
  tomfl4.:32 tomfl8 tomfl4:32 ~  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl4. tomfl8 tomfl4  |
  tomfl4. tomfl8 tomfl4  |
  %20
  tomfl4. tomfl8 tomfl4  |
  tomfl4. tomfl8 tomfl4  |
  tomfl2.:32 ~  |
  tomfl4 r2  |
  r4 tomfl4.:32 tomfl8  |
  %25
  tomfl4 r tomfl  |
  tomfl4 r tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:32 tomfl:32 tomfl:32 tomfl:32 tomfl:32  |
  tomfl4 tomfl tomfl  |
  %30
  tomfl4 r tomfl  |
  tomfl4 r tomfl }
  \alternative { { tomfl2.:32 ~  |
  tomfl4 r2 }
  { tomfl2.:32 ~ } }
  %35
  \time 6/8   tomfl4 r2  \bar "||"
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl2.:32 ~  |
  tomfl4 tomfl tomfl  |
  %40
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl2.:32 ~  |
  tomfl4. r  |
  \repeat volta 2 { tomfl4. ~ tomfl4 tomfl8  |
  %45
  tomfl4 tomfl8 ~ tomfl4.  |
  tomfl4. ~ tomfl4 tomfl8  |
  tomfl4 tomfl8 ~ tomfl4.  |
  tomfl2.:32 ~  |
  tomfl4 tomfl tomfl  |
  %50
  tomfl2.:32 ~  |
  tomfl4 tomfl tomfl  \bar "||"
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %55
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl4. tomfl }
  \alternative { { tomfl4 tomfl8 tomfl tomfl tomfl }
  %60
  { tomfl4 tomfl8 tomfl tomfl tomfl } }
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl2.:32 ~  |
  %65
  tomfl4 tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl4. tomfl  |
  tomfl4. _"molto rit." tomfl  |
  tomfl2.\fermata  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
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
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
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

\bookpart {
  \header {instrument="Gralla 3"}
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

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

