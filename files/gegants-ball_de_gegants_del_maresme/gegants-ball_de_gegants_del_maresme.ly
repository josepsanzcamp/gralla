\version "2.22.1"

\header {
  dedication="Gegants"
  title=""
  subtitle="Ball de gegants del Maresme"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Aniol Noguera/Santi Prat"
  arranger="Maig de 2002"
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
  e8. e16 _"Introducció" \tempo 4 = 90   |
  \time 4/4   e4. -> d8 b e d8. d16  |
  d2 -> r4 d8. d16  |
  d4. -> d8 c d e8. e16  |
  %05
  e2 -> r4 e8. e16  |
  e4. -> d8 b e d8. d16  |
  d2 r4 -> d8. d16  |
  d4. -> d8 c d e8. e16  |
  e2 \fermata r4 c  \bar "||"
  %10
  \key f \major   \time 3/4   f4 d _"......" \tempo 4 = 100  f \f  |
  e4 c e  |
  d8. des16 d8. f16 e8. d16  |
  des8-. b-. a4-. r  |
  f'8 e d4 -> f8 d ->  |
  %15
  e8 -> d c4 e8 -> c  |
  d4 -> e8 d des8. d16  |
  d2 r4  |
  a'4 \ff -- f -- a --  |
  g4 -- e -- g --  |
  %20
  f8. e16 d8 e f4  |
  e2.  |
  a8. -> g16 f4 a8. f16  |
  g8. -> f16 e4 g8. e16  |
  f4 a,8 b des4  |
  %25
  d2. \fermata  |
  \key g \major   \time 6/8   r4. r8 b a  |
  \repeat volta 2 { g4 \tempo 4. = 150   g8 b d e  |
  d4 b8 g -> a b  |
  d4 -> b8 e fis e  |
  %30
  d4. -. r8 b a  |
  g4 -> g8 b d e  |
  d8 -. c -. b -. g -. g -. a -.  |
  b4 -> b8 -. a -. g -. a -. }
  \alternative { { g4. r8 b a -. }
  %35
  { g4. -. r8 g b } }
  e4 e8 e fis e  |
  d8 d4 -> r8 g, b  |
  e8 e e e fis e  |
  d4 -- d -- g,8 b  |
  %40
  e4 e8 e fis e  |
  d8 d4 r8 g, a _"D"  |
  b4 d a  |
  g4. \fermata r  |
  \key c \major   \time 3/4   \repeat volta 2 { a8 b \tempo 4 = 125  c e f e  |
  %45
  d2 c4  |
  b4 e d  |
  c8 b a2  |
  a8 b c e f e  |
  d2 f4  |
  %50
  g4 d8 e f4  |
  e2.  |
  a,8 b c e f e  |
  d2 f4  |
  e4 b d  |
  %55
  c8 b a2  |
  a8 b c e f e  |
  d2 f4  |
  e4 b8 d c b }
  \alternative { { a2 r4 }
  %60
  { a2. } }
  \key g \major   \time 6/8   r4. r8 b a \tempo 4. = 160  |
  \repeat volta 2 { g4  g8 -> b d e  |
  d4 -> b8 g a b  |
  d4 b8 e -> fis e  |
  %65
  d4. r8 b a  |
  g4 -> g8 b d e  |
  d8 -. c -. b -. g -. g -. a -.  |
  b4 -> b8 -. a -. g -. a -. }
  \alternative { { g4. -. r8 b a }
  %70
  { g4. -. r8 g b } }
  e4 e8 e fis e  |
  d8 d4 -> r8 g, b  |
  e8 e e e fis e  |
  d4 -- d -- g,8 b  |
  %75
  e4 e8 e fis e  |
  d8 d4 r8 g, a   |
  b4 d a  |
  g4. r8 d'4 \fermata  |
  \time 3/4   \repeat volta 2 { g4 e  \tempo 4 = 100 g \f  |
  %80
  fis4 d fis  |
  e8. dis16 e8. g16 fis8. e16  |
  dis8-. cis-. b4-. r  |
  g'8 -> fis e4 g8 -> e  |
  fis8 -> e d4 fis8 -> d  |
  %85
  e4 fis8 e -> dis8. e16  |
  e2 r4  |
  b'4 \ff -- g -- b --  |
  a4 -- fis -- a --  |
  g8. fis16 e8 fis g4  |
  %90
  fis2.  |
  b8. -> a16 g4 b8. g16  |
  a8. -> g16 fis4 a8. fis16  |
  g4 b,8 cis dis4 }
  \alternative { { e2. }
  %95
  { e2. } }
  \time 6/8   r4. g,8 a b  |
  \repeat volta 2 { d4. \tempo 4. = 150 g,8  a b  |
  d4. e8 d c  |
  b4 b8 b d e  |
  %100
  d4 b8 g a b  |
  d4. g,8 a b  |
  d4. e8 d c  |
  b4 b8 a b a  |
  g4. g8 a b  | }
  %105
  d4. g,8 a b  |
  d4. e8 d c  |
  b4 b8 b d e  |
  d4 b8 g a b  |
  c4 c8 a b c  |
  %110
  d4 d8 b c d  |
  e4 g fis  |
  g4 \fermata r g,8 -> g ->  |
  g4. -. r  \bar "|."
}

liniaroAb =
\relative d''
{
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 4/4   r2 r4 r8. d16 \ff  |
  g2 -> r4 r  |
  r2 r4 r8. e16  |
  %05
  a2 -> r4 a,8. \mf a16  |
  a4. -> g8 g a g8. d'16  |
  g2 r4 -> g,8. g16  |
  g4. g8 a g a8. e'16  |
  a2 \fermata r4 c,  \bar "||"
  %10
  \key f \major   \time 3/4   d2. \mp  |
  c2.  |
  bes4 a8. g16 bes4  |
  a2 r4  |
  d4. des8 -> d4  |
  %15
  c4. -> d8 c4  |
  bes8 g a bes a4  |
  d2 r4  |
  a2.  |
  c2.  |
  %20
  d8. c16 bes8 a4 aes8  |
  a4 a8 b c4  |
  f8. -> e16 d4 f8. d16  |
  e8. -> d16 c4 e8. c16  |
  d8 e f4 g8 e  |
  %25
  d2. \fermata  |
  \key g \major   \time 6/8   r4. r8 b a  |
  \repeat volta 2 { g4 -> g8 g b a  |
  b4 g8 g4 -> g8 ->  |
  d'8 c b g a b  |
  %30
  a4. -. r8 b a  |
  g4 -> g8 g b a  |
  b4 g8 d'4 g,8  |
  b8 -. a -. g -. fis4 -> a8 -. }
  \alternative { { g4. r8 b a -. }
  %35
  { g4. -. r8 g b } }
  c4 c8 c b a  |
  g8 g4 -> r8 g b  |
  c8 c c c b a  |
  g4 -- a -- g8 b  |
  %40
  c4 c8 c b a  |
  g8 g4 r8 g a  |
  d4 f fis  |
  g4. \fermata r  |
  \key c \major   \time 3/4   \repeat volta 2 { a,2 a4  |
  %45
  a4 a fis  |
  gis4 fis gis  |
  a4 c8 b a4  |
  a2 a4  |
  a2 d4  |
  %50
  b4 a2  |
  gis2.  |
  a2 a4  |
  a4 a c  |
  b4 fis gis  |
  %55
  a2.  |
  a2 a4  |
  a4 b8 c d c  |
  b4. a8 gis4 }
  \alternative { { a4 c8 b a gis }
  %60
  { a2. } }
  \key g \major   \time 6/8   r4. r8 b a  |
  \repeat volta 2 { g4 g8 -> g b a  |
  b4 -> g8 g4 -> g8  |
  d'8 c b g a b  |
  %65
  a4. r8 b a  |
  g4 -> g8 g b a  |
  b4 g8 d'4 g,8  |
  b8 -. a -. g -. fis4 -> a8 -. }
  \alternative { { g4. -. r8 b a }
  %70
  { g4. -. r8 g b } }
  c4 c8 c b a  |
  g8 g4 -> r8 g b  |
  c8 c c c b a  |
  g4 -- a -- g8 b  |
  %75
  c4 c8 c b a  |
  g8 g4 r8 g a  |
  d4 f fis  |
  g4. r8 d4 \fermata  |
  \time 3/4   \repeat volta 2 { e2. \mf  |
  %80
  d2.  |
  c4 b8. a16 c4  |
  b2 r4  |
  e4. -> dis8 e4  |
  d4. -> e8 d4  |
  %85
  c8 a b c b4  |
  e2 r4  |
  b2.  |
  d2.  |
  e8. d16 c8 b4 ais8  |
  %90
  b4 b8 cis d4  |
  g8. -> fis16 e4 g8. e16  |
  fis8. -> e16 d4 fis8. d16  |
  e8 fis g4 a8 fis }
  \alternative { { e4 e8 dis e4 }
  %95
  { e2. } }
  \time 6/8   r4. g,8 a b  |
  \repeat volta 2 { <g b>4. g8 a b  |
  b4. c8 b a  |
  g4 g8 g4 c8  |
  %100
  b4 g8 g a b  |
  b4. g8 a b  |
  b4. c8 d e  |
  g4 g8 fis e fis  |
  g4. g,8 a b  | }
  %105
  b4. g8 a b  |
  b4. c8 b a  |
  g4 g8 g4 c8  |
  b4 g8 g a b  |
  a4 a8 fis g a  |
  %110
  b4 b8 g a b  |
  a4 b8 cis d4  |
  g,4 \fermata r g'8 -> g ->  |
  g4. -. r  \bar "|."
}

liniaroAc =
\relative a'
{
  \clef treble
  \key c \major
  \time 1/4
  a4 \mf  |
  \time 4/4   a2 r4 g  |
  g2 r4 g  |
  g2 r4 a  |
  %05
  a2 fis4 e  |
  e2 r4 b'  |
  b2 r4 b  |
  b2 r4 c  |
  c2 \fermata r4 c  \bar "||"
  %10
  \key f \major   \time 3/4   f,2. \mp  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  f2.  |
  %15
  g2.  |
  a2.  |
  d4 d8 des d4  |
  f,2 e8 f  |
  g2.  |
  %20
  g2 aes4  |
  a2.  |
  f2.  |
  e4 c' g  |
  bes2 a4  |
  %25
  d2. \fermata  |
  \key g \major   \time 6/8   r4. r8 b a  |
  \repeat volta 2 { g2 r4  |
  b4. g  |
  d'4. g,  |
  %30
  a4. r8 b a  |
  g2 r4  |
  b4. d  |
  b8 -. a -. g fis4. -. -> }
  \alternative { { g4. r8 b -. a }
  %35
  { g4. r } }
  g4. a8 g a  |
  b4. r  |
  c4 d8 c4 a8  |
  g4 r r8 g  |
  %40
  e4. a8 g a  |
  b4. r  |
  g4 f fis  |
  g4. \fermata r  |
  \key c \major   \time 3/4   \repeat volta 2 { a2 a4  |
  %45
  f2 a4  |
  e2 b'4  |
  a2.  |
  a2 a4  |
  f4 b a  |
  %50
  g2 f4  |
  e2.  |
  a2 a4  |
  f2 a4  |
  e2 b'4  |
  %55
  a4 e8 f e4  |
  a2 a4  |
  f2 g4  |
  a2 e4 }
  \alternative { { e2 r4 }
  %60
  { a2. } }
  \key g \major   \time 6/8   r4. r8 b a  |
  \repeat volta 2 { g2 r4  |
  b4. g  |
  d'4. g,  |
  %65
  a4. r8 b a  |
  g2 r4  |
  b4. d  |
  b8 -. a -. g -. fis4. -> }
  \alternative { { g4. -. r8 b a }
  %70
  { g4. -. r } }
  g4. a8 g a  |
  b4. r  |
  c4 d8 c4 a8  |
  g4 r r8 g  |
  %75
  e4. a8 g a  |
  b4. r  |
  g4 f fis  |
  g4. r8 d'4 \fermata  |
  \time 3/4   \repeat volta 2 { g,2. \mf  |
  %80
  r2 r4  |
  r2 r4  |
  r2 r4  |
  g2.  |
  a2.  |
  %85
  b2.  |
  e4 e8 dis e4  |
  g,2 fis8 g  |
  a2.  |
  a2 ais4  |
  %90
  b2.  |
  g2.  |
  fis4 d' a  |
  c2 b4 }
  \alternative { { e8 c b a g fis }
  %95
  { e'2. } }
  \time 6/8   r4. g,8 a b  |
  \repeat volta 2 { g4. g8 a b  |
  g4. e'8 d c  |
  b4 b8 b d e  |
  %100
  d4 b8 g a b  |
  g4. g8 a b  |
  g4. e'8 d c  |
  b4 b8 a b a  |
  g4. g8 a b  | }
  %105
  g4. g8 a b  |
  g4. e'8 d c  |
  b4 b8 b d e  |
  d4 b8 g4 fis8  |
  e4 e8 fis g a  |
  %110
  g4 g8 g a b  |
  a4 b a  |
  g4 \fermata r g8 -> g ->  |
  g4. -. r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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

\bookpart {
  \header {instrument=""}
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

