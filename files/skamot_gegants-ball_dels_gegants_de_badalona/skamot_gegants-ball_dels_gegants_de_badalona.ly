\version "2.16.2"

\header {
  dedication=""
  title="Ball de gegants"
  subtitle=""
  subsubtitle="Ball dels gegants de Badalona"
  poet=""
  meter=""
  piece=""
  composer="Jordi Fàbregas"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/16
  g16  |
  \time 2/4   fis8. g16 e8. g16  |
  d2\trill ~  |
  d2 ~  |
  %05
  d2  |
  \key c \major   \time 3/4   \repeat volta 2 { a4 c e-.   |
  f2 ( e4 )  |
  e4 e d  |
  d8 c d c a4  |
  %10
  a4 ( c ) e-.  |
  f2 ( e4 )  |
  e8 f e d c b }
  \alternative { { a2. }
  { a4 c e } }
  %15
  a4 r c,8. c16  |
  \key f \major   \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} c4 f-. d (  |
  c2 ) a4  |
  bes8 a bes a bes d  |
  d4 ( c ) c8. c16  |
  %20
  c4 f-. d (  |
  c2 ) a4  |
  bes8 a bes a bes c }
  \alternative { { a4 r c8. c16 }
  { a4 r d8 e } }
  %25
  \repeat volta 2 { f4 f8 e f d  |
  c4 ( f-. ) c--  |
  bes4 ( f'-. ) bes,--  |
  a4 f' d8 e  |
  f4 f8 e f d  |
  %30
  \mark \markup {\musicglyph #"scripts.coda" ???} c4 f-. c--   \bar "||"
  bes8 a bes a bes c }
  \alternative { { a4 r d8 e }
  { \mark \markup {D.S. e Coda} a,2 c8. c16 } }
  \mark \markup {\musicglyph #"scripts.coda"} bes8 a bes c d e  |
  %35
  f2.  \bar "|."
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/16
  g16  |
  \time 2/4   fis8. g16 e8. g16  |
  d4 b  |
  c4 a ~  |
  %05
  a2  |
  \key c \major   \time 3/4   \repeat volta 2 { a2 c4  |
  d4 b gis  |
  e4 fis gis  |
  a2.  |
  %10
  a2 c4  |
  d4 b gis  |
  e4 fis gis }
  \alternative { { a2. }
  { a2. ~ } }
  %15
  a4 r a8. a16  |
  \key f \major   \repeat volta 2 { a2 bes4  |
  a4 g f  |
  g8 f g f e4  |
  f2 a8. a16  |
  %20
  a2 bes4  |
  a4 g f  |
  g8 f g f e4 }
  \alternative { { f4 r a8. a16 }
  { f4 r bes8 c } }
  %25
  \repeat volta 2 { d4 d8 c d bes  |
  a2 a4  |
  g2 g4  |
  f2 bes8 c  |
  d4 d8 c d bes  |
  %30
  a2.  \bar "||"
  g8 f g f e4 }
  \alternative { { f4 r bes8 c }
  { f,2 a8. a16 } }
  g8 f g a bes c  |
  %35
  a2.  \bar "|."
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

