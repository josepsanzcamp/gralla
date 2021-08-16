\version "2.16.0"

\header {
  dedication="Bestiari"
  title="   "
  subtitle="Ball de l'indiot"
  subsubtitle=""
  poet="              Solemne"
  meter=""
  piece=""
  composer="Josep Prats i Tarsà"
  arranger="Nulles - juny de 2003"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { a8. b16 c8 d  |
  e8. f16 e8 c  |
  d8. e16 d8 b  |
  c8. b16 a4  |
  %05
  a8. b16 c8 d  |
  e8. f16 e8 c  |
  d8. e16 d8 a  |
  b2  \bar "||"
  a8. b16 c8 d  |
  %10
  e8. f16 e8 c  |
  d8. e16 d8 b  |
  c8. b16 a4  |
  a8. b16 c8 d  |
  e8. f16 e8 c  |
  %15
  d8. e16 d8 b  |
  a2  \bar "||"
  e'8. a16 g8 f  |
  e8. d16 c8 b  |
  e8. d16 c8 b  |
  %20
  c8. b16 a4  |
  e'8. a16 g8 f  |
  e8. d16 c8 b  |
  e8. d16 c8 b  |
  e2  |
  %25
  e8. a16 g8 f  |
  e8. d16 c8 b  |
  e8. d16 c8 b  |
  c8. b16 a4  |
  e'8. a16 g8 f  |
  %30
  e8. d16 c8 b  |
  e8. d16 c8 b }
  \alternative { { a2 }
  { e'4. g8 } }
  f8. e16 d8 f  |
  %35
  e8. d16 c8 b  |
  e4 e  |
  c8. b16 a8 g'  |
  f8. e16 d8 f  |
  e8. d16 c8 b  |
  %40
  e4 _"rit." e  |
  a,2\fermata  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { <c e>2  |
  <c e>2  |
  <a f'>2  |
  <a e'>2  |
  %05
  <c e>2  |
  <c e>2  |
  <b f'>8. <b g'>16 <b f'>8 <c e>  |
  <g d'>8. <c e>16 <b d>8 <g d'>  \bar "||"
  <c e>2  |
  %10
  <c e>2  |
  <a f'>2  |
  <a e'>2  |
  <c e>2  |
  <c e>2  |
  %15
  <b f'>8. <c e>16 <b f'>8 <g g'>  |
  <c e>2  \bar "||"
  e4. f8  |
  e4. d8  |
  g8. f16 e8 d  |
  %20
  e8. d16 c8 b  |
  e4 d  |
  c4 g  |
  a8. g16 a8 b  |
  a8. b16 c8 d  |
  %25
  e4. f8  |
  e4. d8  |
  g8. f16 e8 d  |
  e8. d16 c8 b  |
  e4 d  |
  %30
  c4 g  |
  a8. g16 a8 b }
  \alternative { { <a c>2 }
  { a8. e'16 d8 c } }
  d4 b  |
  %35
  c4 a  |
  b8. g16 c8 d  |
  e8. d16 c8 e  |
  d4 b  |
  c8. b16 a8 g  |
  %40
  c4 b  |
  a2\fermata  \bar "|."
}

\book {

\paper {
  print-page-number = false
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 14)
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

