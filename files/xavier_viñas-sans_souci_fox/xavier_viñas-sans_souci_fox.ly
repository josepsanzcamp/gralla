\version "2.16.2"

\header {
  dedication=""
  title="Sans Souci (fox)"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="(de Max Havart. Adaptada"
  arranger="per Gralla de Boix)"
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
  \key c \major
  \time 4/4
  d4 d8. cis16 d4 d8. cis16   |
  d4 b a g  |
  c4 a'2 g4  |
  c,4 r r2   |
  %05
  \repeat volta 2 { e4 e8. \coda dis16 e4 e8. dis16  |
  e4 g, c e  |
  d2. a4 _"FI"  |
  d2. r4  |
  d4 d8. cis16 d4 d8. cis16  |
  %10
  d4 b a g }
  \alternative { { c4 b8 c ~ c b a4  |
  b4 a8 b ~ b a g4 }
  { c1 ~ } }
  \mark \markup {\musicglyph #"scripts.segno"} c4 c d e  |
  %15
  f4 c a f' ~  |
  f4 g2 f4  |
  e4 c a e' ~  |
  e4 f2 e4  |
  d4 c a d  |
  %20
  r4 a b c  |
  d4 r r2  |
  dis1  |
  \repeat volta 2 { e4 e8. dis16 e4 e8. dis16  |
  e4 g, c e  |
  %25
  d2. a4  |
  d2. r4  |
  d4 d8. cis16 d4 d8. cis16  |
  d4 b a g }
  \alternative { { c4 b8 c ~ c b a4  |
  %30
  b4 a8 b ~ b a g4 }
  { \mark "D.S." c1 } }
  r2 r4 g  |
  g'2 a4 g  |
  f2 e4 d  |
  %35
  c2 e4 g, ~  |
  g4 c b c  |
  d2 d4 d ~  |
  d4 d c d  |
  e1 ~  |
  %40
  e2. g,4  |
  g'2 a4 g  |
  f2 _"anar a" e4 d  |
  c2 e4 g, ~  |
  g4 c b c  |
  %45
  d2 a'4 a ~  |
  a4 fis e d  |
  g4 r r2  |
  \mark "D.S. al Fine" dis1 _"fins a FI" \coda  \bar "|."
}

\score {
  \new StaffGroup {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
    >>
  }
  \layout {}
}
\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
    >>
  }
  \midi {}
}
