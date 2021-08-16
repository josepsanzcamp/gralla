\version "2.16.0"

\header {
  dedication="Moixiganga"
  title="  "
  subtitle="Moixiganga de Sitges"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Baix Penedès"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 6/8
  \repeat volta 4 { <b d>8 <c e> <d f> <e g>4. ~ ~  |
  <e g>4 <c e>8 <d f>4 <b d>8  |
  <c e>4 <b d>8 ~ ~ <b d>4. ~ ~  |
  <b d>4 r8 <e g>4. ~ ~  |
  %05
  <e g>8 <d f> <c e> <b d> <c e> <d f>  |
  <e g>4 <d f>8 <c e> <b d> <d f> }
  \alternative { { <c e>2. ~ ~  |
  <c e>4. ~ ~ <c e>8 r r }
  { <c e>2. ~ ~  |
  %10
  <c e>4. ~ ~ <c e>8 r16 g a b } }
  \time 3/8   c8 b c  |
  d8. e16 f8  |
  e8 d c  |
  g'8 g16 a g f  |
  %15
  d8 e f ~  |
  f8 e16 d c b  |
  a8 b g  |
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} r8 g16 a b c  |
  <b d>16 <a c> <g b> <a c> <b d>8 ~ ~  |
  %20
  <b d>8 <e g>16 <d f> <c e> <d f>  |
  <b d>16 <c e> <d f> <c e> <b d>8 ~ ~  |
  <b d>8 <e g>16 <d f> <c e> <d f>  |
  <b d>8 <a c> <g b>  |
  a8 g a  |
  %25
  b8. a16 g8 \coda  | }
  g8 r r  |
  \repeat volta 2 { <e' g>8. <d f>16 <c e>8  |
  <c e>8 r r  |
  <d f>8. <b d>16 <d f>8 }
  %30
  \alternative { { <d f>8 r r }
  { <d f>8 <e g> <f a> } }
  <e g>8 <d f> <c e>  |
  <e g>4.  |
  <d f>4.  |
  %35
  <c e>4.  |
  <b d>4.  |
  \repeat volta 2 { <c e>8 <e g>8. <c e>16  |
  <b d>8 <d f>8. <b d>16  | }
  \repeat volta 2 { <c e>8 <c e>16 <c e> <c e> <c e>  |
  %40
  <d f>8 <b d>16 <b d> <b d> <b d>  | }
  \repeat volta 2 { <c e>8 <e g>8. <c e>16  |
  <b d>8 <d f>8. <b d>16  | }
  <c e>8 <c e>16 <b d> <c e> <d f>  |
  <c e>4. ~ ~  |
  %45
  \mark \markup {D.S. e Coda} <c e>4.  \bar "||"
  \time 2/4   \mark \markup {\musicglyph #"scripts.coda"} g8 r r \times 2/3 { g16 a b }  |
  \repeat volta 2 { <g c>8-. r <c e>-. r  |
  <g c>8 r r d'16 e  |
  <d f>8 <b d> <c e> <a c>  |
  %50
  <b d>16 <a c> <g b> a g8 \times 2/3 { g16 a b }  |
  <g c>8-. r <c e>-. r  |
  <g c>8 r r d'16 e  |
  f8 g, a b }
  \alternative { { c8 r r \times 2/3 { g16 a b } }
  %55
  { c8 r r <e g> } }
  \repeat volta 2 {
  <e g>8 <d f>16 <c e> <b d>8 <c e>  |
  <d f>8 <b d>16 <c e> <d f> <c e> <b d> <a c> }
  \alternative { { <g b>8 <g c> <b d> <b f'>  |
  <c e>4 <b d>8 <e g> }
  %60
  { <g, b>8 <g c> <b d> <b e>  |
  <c e g c>4. r8 } } \bar "||" % kompletite
}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a4")
  #(layout-set-staff-size 20)
}

\bookpart {

\score {
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 1 i 2"} \liniaroAa
    >>
  }
  \layout {}
}\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 1 i 2"} \liniaroAa
    >>
  }
  \midi {}
}

}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a5landscape")
  #(layout-set-staff-size 16)
}

\bookpart {

\score {
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 1 i 2"} \liniaroAa
    >>
  }
  \layout {}
}

}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 12)
}

\bookpart {

\score {
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 1 i 2"} \liniaroAa
    >>
  }
  \layout {}
}

}

}

