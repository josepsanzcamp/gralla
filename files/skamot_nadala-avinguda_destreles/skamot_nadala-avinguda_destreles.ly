\version "2.16.2"

\header {
  dedication=""
  title="Nadala"
  subtitle="Avinguda d'estreles"
  subsubtitle="(nadalenca torrentina)"
  poet=""
  meter=""
  piece=""
  composer="Luís Sanz Ruiz"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative e''
{
  \clef treble
  \key c \major
  \time 1/8
  e16 f \tempo 4 = 110  |
  \time 2/4   \repeat volta 2 { g8-. g-. g-- a16 g   |
  f8-. f-. f-- g16 f  |
  e8-. -. e-. -. e-- d16 c  |
  %05
  d8-. -. g,-. -. g-- e'16 f  |
  g8-. g-. g-- a16 g  |
  f8-. f-. f-- g16 ( f )  |
  e8 c e16 ( d ) c b }
  \alternative { { c4. e16 f }
  %10
  { c2 } }
  \repeat volta 2 { e4 c (  |
  d4 f  |
  e4 g )  |
  \times 2/3 { f8 e d } \times 2/3 { c b a }  |
  %15
  c4 g  |
  e'4 g-.  }
  \alternative { { \times 2/3 { g,8 a b } \times 2/3 { c d e }  |
  \times 2/3 { d8 c b } c4-. }
  { \times 2/3 { g8 a b } \times 2/3 { c d e }  |
  %20
  \times 2/3 { d8 c b } c4 } }
  \times 2/3 { g8 a b } \times 2/3 { c d ( e ) } |
  \times 2/3 { g8 ( f ) d } c4 ~  |
  c4. e16 f  |
  \repeat volta 2 { g8-. g-. g-- a16 g   |
  %25
  f8-. f-. f-- g16 ( f )  |
  e8-. e-. -. e-- -. d16 c  |
  d8-. -. g,-. -. g-- e'16 f  |
  g8-. g-. g-- a16 ( g ) }
  \alternative { { f8-. f-. f-- g16 ( f )  |
  %30
  e8 c e16 ( d ) c d  |
  c4. e16 f }
  { f8-. f-. r4  | % kompletite
  e8 c d g ~  |
  g2  |
  %35
  c2\fermata } } \bar "||"
}

liniaroAb =
\relative e''
{
  \tempo 4 = 110
  \clef treble
  \key c \major
  \time 1/8
  e16 f  |
  \time 2/4   \repeat volta 2 { e2 _"(tacet)"  |
  d2  |
  c2  |
  %05
  g2  |
  e'2  |
  d2  |
  c8 g g g }
  \alternative { { c4. e16 f }
  %10
  { c2 } }
  \repeat volta 2 { e4 c (  |
  d4 f  |
  e4 g )  |
  \times 2/3 { g,8 g g } \times 2/3 { g g g }  |
  %15
  e'4 c  |
  c4 e-.  }
  \alternative { { \times 2/3 { g,8 a b } \times 2/3 { c d e }  |
  \times 2/3 { d8 c b } c4-. }
  { \times 2/3 { g8 a b } \times 2/3 { c d e }  |
  %20
  \times 2/3 { d8 c b } \times 2/3 { c b a } } }
  \times 2/3 { g8 a b } \times 2/3 { c d ( e ) } |
  \times 2/3 { d8 g, b } e4 ~  |
  e4. e16 f  |
  \repeat volta 2 { e8-. e-. e4--  |
  %25
  d8-. d-. d4--  |
  c8-. c-. c4--  |
  g8-. g-. g4--  |
  e'8-. e-. e4-- }
  \alternative { { d8-. -. d-. -. d4--  |
  %30
  c8 g g b  |
  e4. e16 f }
  { d8-. d-. r4  | % kompletite
  c8 g g b ~  |
  b2  |
  %35
  <c e>2\fermata } } \bar "||"
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

