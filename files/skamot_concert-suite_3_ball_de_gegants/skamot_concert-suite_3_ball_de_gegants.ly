\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Concert"
  subtitle="Suite de festa"
  subsubtitle="sobre un tema popular, per a tres gralles i timbal"
  poet="3. Ball de gegants. Sarabanda"
  meter=""
  piece=""
  composer="Pep Coca, 1991"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { a8 b c ( b a gis  |
  a4 e' ) ( a,  |
  f'8 e d c b a  |
  gis8 a b4 ) r  |
  %05
  g8 ( c d c b c )  |
  a4 ( f' \mf \< d ) \! (  |
  \times 2/3 { e8 f g } c,4 b  |
  c4 \> ) r2 \!  | }
  \repeat volta 2 { c4 c4. d8  |
  %10
  b4 b2  |
  a4-. f'-. a,-.  |
  g2 r4 }
  \alternative { { d'4 _"eno" d4. e8  |
  c4. d8 e4  |
  %15
  f8 ( e ) d c b c  |
  b2\trill r4 }
  { d4 d8 f e ( d )  |
  c4. b8 a4  |
  b4 ( a-. ) gis-.  |
  %20
  \mark \markup {D.C. e Coda} a4 r2 } }
  \mark \markup {\musicglyph #"scripts.coda"} d4 d8 ( f e ) d  |
  c4. b8 a4  |
  b4 a-. ( gis-. )  |
  a4 r2  |
  %25
  b8 ( d c \< ) b ( a gis )  |
  a4 \! r2  |
  \times 2/3 { f'8 ( e d ) } c b a ( gis )  |
  gis4 a2  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { r2 r4 \mf _"legato"  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  c2.  |
  c2 b4  |
  c4 a g  |
  c4 r2  | }
  \repeat volta 2 { e4 \mf e4. f8  |
  %10
  d4 d2  |
  c4-. d-. c-.  |
  e2 r4 }
  \alternative { { b4 b4. c8  |
  a4. b8 c4  |
  %15
  d8 ( c ) b a gis a  |
  gis2\trill r4 }
  { r2 r4  |
  r2 r4  |
  r2 r4  |
  %20
  r2 r4 } }
  b4 \mf b8 ( d c ) b  |
  a4. b8 c4  |
  d4 c-. ( e-. )  |
  f4 r2  | % troigo!
  %25
  r2 r4  |
  r2 r4  |
  r4 \p r8 f  _"it." e f  |
  e2.  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  | }
  \repeat volta 2 { g4 \mf g2  |
  %10
  g4 gis2  |
  a4-. a-. c-.  |
  b2 r4 }
  \alternative { { r2 r4  |
  r2 r4  |
  %15
  r2 r4  |
  r2 r4 }
  { r2 r4  |
  r2 r4  |
  r2 r4  |
  %20
  r2 r4 } }
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %25
  r4 r8 \< d b e  |
  f4 \! r2  | % kompletite
  r4 \p \p r8 d  c d  |
  b4 c2  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 3/4
  \repeat volta 2 { r2 r4  |
  tomfl2 tomfl4  |
  tomfl2 tomfl4  |
  tomfl2 r4  |
  %05
  tomfl2 \pp tomfl4  |
  tomfl2 tomfl4  |
  tomfl4 tomfl tomfl  |
  tomfl2.  | }
  \repeat volta 2 { tomfl4 tomfl2->  |
  %10
  tomfl2 tomfl4  |
  tomfl4 tomfl8 tomfl tomfl4  |
  tomfl2 r4 }
  \alternative { { tomfl4 \p tomfl2  |
  tomfl4 tomfl2 ~  |
  %15
  tomfl4. tomfl8 tomfl tomfl  |
  tomfl2 r4 }
  { r2 r4  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl2->  |
  %20
  tomfl4 r2 } }
  r2 r4  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl2->  |
  tomfl4 r2  |
  %25
  r2 \< tomfl4  |
  tomfl4 \! r2  |
  tomfl4 \> tomfl _"al" tomfl  |
  tomfl4 r2 \!  \bar "|."
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

