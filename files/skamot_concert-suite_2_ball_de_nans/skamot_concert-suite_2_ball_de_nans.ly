\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Concert"
  subtitle="Suite de festa"
  subsubtitle="sobre un tema popular, per a tres gralles i timbal"
  poet="2. Ball de nans. Xotis"
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
\relative e''
{
  \clef treble
  \key c \major
  \time 1/4
  r8 e16 \tempo 4 = 92 f   |
  \time 2/4   e8-- c-- d-- b--  |
  c4-- c8-- e16 ( f )  |
  e8-- c-- d-- b--  |
  %05
  c4-- r8 e16 ( f )  |
  e8-. c-. d-. b-.  |
  c4-- c8-- e16 f   |
  e8-. c-. d-. b-.  |
  c4-. r  |
  %10
  \key g \major   \repeat volta 2 { r2  |
  r2  |
  r2 }
  \alternative { { r4 r8 d16 ( e )  |
  d8-. b-. g'-. b,-.  |
  %15
  c4-- c8-- c16 ( d )  |
  c8-. a-. fis'-. a,-.  |
  b4-- r }
  { r4 r8 d16 e   |
  f8 f f f } }
  %20
  e4 ^\markup {\draw-line #'(2 . 2)} c'  |
  r4 fis,16 ( g ) a fis  |
  \mark "D.C." g4. r8  \bar "|." % kompletite
}

liniaroAb =
\relative e''
{
  \tempo 4 = 92
  \clef treble
  \key c \major
  \time 1/4
  r8 e16 f \f   |
  \time 2/4   e8-- c-- d-- b--  |
  c4-- c8-- e16 ( f )  |
  e8-- c-- d-- b--  |
  %05
  c4-- r \p  |
  r4 r8 \f g  |
  c16 d c ( b ) c8 e16 f \p   |
  g8-. g-. f-. f-.  |
  e4-. r8 b16 \mf ( c )  |
  %10
  \key g \major   \repeat volta 2 { d8 e16 fis g8 ( a )  |
  fis4 fis8 a,16 ( b )  |
  c8 c16 d e8 fis  }
  \alternative { { d4 r \p  |
  r2  |
  %15
  r2  |
  r2  |
  r4 r8 b16 ( c ) }
  { d4 r \f  |
  r8 d16 ( e f8 ) f } }
  %20
  e4 r  |
  r4 c  |
  b4. r8  \bar "|." % kompletite
}

liniaroAc =
\relative g'
{
  \tempo 4 = 92
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 2/4   r2  |
  r2  |
  r2  |
  %05
  r2  |
  r4 r8 g \f  |
  c16 d c ( b c8 ) r  |
  r2  |
  r4 r8 g16 ( a )  |
  %10
  \key g \major   \repeat volta 2 { b8 c16 d e8 ( dis )  |
  d4 d8 a16 ( g )  |
  a8 a16 b c8 d  }
  \alternative { { b4 r  |
  r2  |
  %15
  r2  |
  r2  |
  r4 r8 g16 ( a ) }
  { b4 r  |
  r4 \f r8 d16 ( e ) } }
  %20
  c4 r  |
  r4 a16 ( b ) c a  |
  g4. r8  \bar "|." % kompletite
}

liniaroAd =
\drummode
{
  \tempo 4 = 92
  \time 1/4
  r4  |
  \time 2/4   tomfl4 \f tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  %05
  tomfl4 r  |
  tomfl4 \p tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 r  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 r  |
  %10
  \repeat volta 2 { tomfl4 tomfl8 tomfl  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl }
  \alternative { { tomfl4 r  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  %15
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 r4 r8 } % kompletite
  { tomfl4 r  |
  tomfl2 ~ \< } }
  %20
  tomfl4 \! r  |
  tomfl4-^ r  |
  tomfl4. r8  \bar "|." % kompletite
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

