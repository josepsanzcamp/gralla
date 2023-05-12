\version "2.16.2"

\header {
  dedication=""
  title="Ball de bastons"
  subtitle="El salt del pi"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer=""
  arranger="Marcel Casellas"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative a''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  a4 r  |
  g4 r  |
  d16 e f g a8 g  |
  c4 r8 g,  |
  %05
  \repeat volta 2 { g8. a16 g8 c  |
  c8. d16 c8 e  |
  e8. f16 e8 c  |
  d4 r8 a'  |
  a16 b a g f8 g  |
  %10
  g16 a g f e8 f  |
  f16 g f e d8 g  |
  g4 r8 g,  |
  g8. a16 g8 e'  |
  e8. f16 e8 g,  |
  %15
  g'8. a16 g8 e  |
  d4 r8 a'  |
  a16 g a b c4  |
  e,16 d e f g4  |
  f16 e f g a8 f  |
  %20
  e4 r8 f  |
  f4 e8 d  |
  f4 r8 e  |
  e4 d8 c  |
  e4 r8 a  |
  %25
  a4 g8 fis  |
  a4 fis  |
  r8 g f g  |
  d8 g b, g'  |
  g,8. a16 g8 e'  |
  %30
  e8. f16 e8 g,  |
  g'8. a16 g8 e  |
  d4 r8 a'  |
  a16 g a b c4  |
  e,16 d e f g4  |
  %35
  f16 e f g a8 f  |
  e4 e8 g,  |
  g8. a16 g8 c  |
  c8. d16 c8 e  |
  e8. f16 e8 c  |
  %40
  d4 r8 a'  |
  a4 r  |
  g16 a g f e4  |
  r8 g g g  |
  g4 r8 g  |
  %45
  e4 r  |
  e8. f16 e8 g,  |
  g'4 r  |
  r4 r8 a  |
  a16 g a b c4  |
  %50
  e,16 d e f g4  |
  f16 e f g a8 f  |
  e4 r8 f  |
  f4 e8 d  |
  f4 r  |
  %55
  r2 _"Solo de bastons"  |
  r4 r8 a  |
  a4 g8 fis  |
  a4 fis  |
  r8 g f g  |
  %60
  d8 g b, g'  |
  g,8. a16 g8 c  |
  e8. f16 e8 g,  |
  g'8. a16 g8 e  |
  d4 r8 a'  |
  %65
  a4 r  |
  g4 r  |
  d16 e f g a8 g  |
  c4 c8 g, }
  \alternative { { c'4 r8 g, }
  %70
  { c'4 c } }
  \time 6/8   r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %75
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4. e,8 f e  |
  %80
  e4 d8 c4 d8  |
  f4 e8 e f e  |
  e4 c8 b4 c8  |
  d4. d8 e d  |
  d4 b8 a b c  |
  %85
  e4 d8 d e d  |
  d4 b8 f' e d  |
  c4. e8 f e  |
  e4 d8 c4 d8  |
  f4 e8 e f e  |
  %90
  e4 c8 b4 c8  |
  d4. d8 e d  |
  d4 b8 a b c  |
  e4 d8 d e d  |
  d4 b8 f' e d  |
  %95
  c4. g'8 a g  |
  g4 f8 e4 f8  |
  a4 g8 g a g  |
  g4 e8 d4 e8  |
  f4. f8 g f  |
  %100
  f4 e8 d4 e8  |
  g4 f8 f g f  |
  f4 d8 a' g f  |
  e4. g8 a g  |
  r2 r4   |
  %105
  r8 d e f g f  |
  f4 e8 d4 e8  |
  g4 f8 f g f  |
  f4 d8 a' g <f b>  |
  <e c'>4. r  \bar "|."
}

liniaroAb =
\relative f''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  f4 r  |
  e4 r  |
  b16 c d e f8 c  |
  e4 r8 g,  |
  %05
  \repeat volta 2 { g8. a16 g8 c  |
  c8. d16 c8 e  |
  e8. f16 e8 c  |
  d4 r8 f  |
  f16 g f e d8 e  |
  %10
  e16 f e d c8 d  |
  f16 g f e d8 dis  |
  e4 r8 g,  |
  g8. a16 g8 c  |
  c8. d16 c8 e  |
  %15
  e8. f16 e8 c  |
  d4 r  |
  r4 f16 e d e  |
  c4 e16 d c d  |
  b16 c d e f8 b,  |
  %20
  c4 r8 d  |
  d4 c8 b  |
  c4 r8 c  |
  c4 b8 a  |
  c4 r  |
  %25
  r8 fis r e  |
  r8 d r c  |
  b4 r  |
  r4. g8  |
  g8. a16 g8 c  |
  %30
  c8. d16 c8 e  |
  e8. f16 e8 c  |
  d4 r  |
  r4 f16 e d e  |
  c4 e16 d c d  |
  %35
  b16 c d e f8 b,  |
  c4 c8 g  |
  g8. a16 g8 c  |
  c8. d16 c8 e  |
  e8. f16 e8 c  |
  %40
  d4 r8 f  |
  f4 r  |
  e16 f e d c4  |
  r8 g' fis f  |
  e8 d c b  |
  %45
  c4 r  |
  c8. d16 c8 g  |
  e'4 r  |
  r8 g, b d  |
  r4 f16 e d e  |
  %50
  c4 e16 d c d  |
  b16 c d e f8 b,  |
  c4 r8 d  |
  d4 c8 b  |
  d4 r  |
  %55
  r2  |
  r2  |
  r8 fis r e  |
  r8 d r c  |
  b4 r  |
  %60
  r4 r8 g  |
  g8. a16 g8 c  |
  c8. d16 c8 e  |
  e8. f16 e8 c  |
  b4 r8 f'  |
  %65
  f4 r  |
  e4 r  |
  b16 c d e f8 d  |
  e4 e8 g, }
  \alternative { { e'4 r8 g, }
  %70
  { e'4 e } }
  \time 6/8   r4. e8 f e  |
  e4 d8 c4 d8  |
  f4 e8 e f e  |
  e4 c8 b4 c8  |
  %75
  d4. d8 e d  |
  d4 b8 a b c  |
  e4 d8 d e d  |
  d4 b8 f' e d  |
  e4. e8 f e  |
  %80
  e4 d8 c4 d8  |
  f4 e8 e f e  |
  e4 c8 b4 c8  |
  d4. d8 e d  |
  d4 b8 a b c  |
  %85
  e4 d8 d e d  |
  d4 b8 f' e d  |
  c4. e8 f e  |
  e4 d8 c4 d8  |
  f4 e8 e f e  |
  %90
  e4 c8 b4 c8  |
  d4. d8 e d  |
  d4 b8 a b c  |
  e4 d8 d e d  |
  d4 b8 f' e d  |
  %95
  c4. e8 f e  |
  e4 d8 c4 d8  |
  f4 e8 e f e  |
  e4 c8 b4 c8  |
  d4. d8 e d  |
  %100
  d4 b8 a b c  |
  e4 d8 d e d  |
  d4 b8 f' e d  |
  c4. e8 f e  |
  r2 r4  |
  %105
  r8 b c d e d  |
  d4 b8 a b c  |
  e4 d8 d e d  |
  d4 b8 f' e d  |
  c4. r  \bar "|."
}

liniaroAc =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  c4 r  |
  c8 g16 g g8 g  |
  g8 b a g  |
  c4 r  |
  %05
  \repeat volta 2 { r2  |
  r2  |
  r2  |
  r8 g a g  |
  c8 f, f c'  |
  %10
  c8 g g d'  |
  d8. c16 b8 g  |
  c8 b a g  |
  r2  |
  r2  |
  %15
  r2  |
  r8 g b d  |
  f8 f a, a  |
  e'8 e g, g  |
  r8 b a g  |
  %20
  c4 r  |
  gis4 e  |
  gis4 r  |
  a4 e  |
  a4 r8 d  |
  %25
  d4 c  |
  b4 a  |
  g4 r  |
  r2  |
  r2  |
  %30
  r2  |
  r2  |
  r4 r8 f'  |
  f8 f a, a  |
  e'8 e g, g  |
  %35
  r8 b a g  |
  c4 c  |
  r2  |
  r2  |
  r2  |
  %40
  r8 g a g  |
  c4 r  |
  c8 g g4  |
  r8 g a b  |
  c8 b a g  |
  %45
  c4 r  |
  r4 r8 g  |
  c4 r  |
  r8 g b d  |
  f8 f a, a  |
  %50
  e'8 e g, g  |
  r8 b a g  |
  c4 r  |
  gis4 e  |
  gis4 r  |
  %55
  r2  |
  r4 r8 d'  |
  d4 c  |
  b4 a  |
  g4 r  |
  %60
  r2  |
  r2  |
  r2  |
  r2  |
  r4 r8 f'  |
  %65
  c4 r  |
  c8 g16 g g8 g  |
  g8 b a g  |
  c4 c }
  \alternative { { c4 r }
  %70
  { c4 c } }
  \time 6/8   r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %75
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %80
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %85
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4. a  |
  g4. ~ g4 g8  |
  %90
  c8 b a g4 e8  |
  f4. ~ f4 b8  |
  g'8 f e f4 a,8  |
  b4. ~ b4 d8  |
  c8 b a g4 f8  |
  %95
  e4. e'8 f e  |
  e4 d8 c4 d8  |
  f4 e8 e f e  |
  e4 c8 b4 c8  |
  d4. d8 e d  |
  %100
  d4 b8 a b c  |
  e4 d8 d e d  |
  d4 b8 f' e d  |
  c4. e8 f e  |
  r2 r4  |
  %105
  r8 b c d e d  |
  d4 b8 a b c  |
  e4 d8 d e d  |
  d4 b8 <a f'> <g e'> d'  |
  c4. r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

