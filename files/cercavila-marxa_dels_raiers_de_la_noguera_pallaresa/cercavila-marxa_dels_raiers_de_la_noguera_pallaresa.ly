\version "2.22.1"

\header {
  dedication="Cercavila"
  title=""
  subtitle="Marxa dels raiers de la Noguera Pallaresa"
  subsubtitle="Premi Pallars 1995"
  poet=""
  meter=""
  piece=""
  composer="Antoni Serra"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \clef treble
  \key g \major
  \time 2/4
  g16 a b c \tempo 4 = 110 d8 ( g, )  |
  b4 r  |
  b16 ( c d e ) f8 b,  |
  d4 r  |
  %05
  d16 ( c d e ) fis ( e fis g )  |
  a8. g16 fis8 e  |
  d8 c b a  \bar "||"
  \time 6/8   g4. r  |
  r2 r4  |
  %10
  r2 r4  |
  r4 b8 a4 g8  |
  b4. d ~  |
  d4 b8 a4 g8  |
  b4. e ~  |
  %15
  e4 b8 a4 g8  |
  b4. d  |
  e4. g  |
  fis2. ~  |
  fis4 c8 b4 a8  |
  %20
  c4. e ~  |
  e4 c8 b4 a8  |
  c4. fis ~  |
  fis4 c8 b4 a8  |
  c4. e  |
  %25
  g4. fis  |
  d2. ~  |
  d4 b8 a4 g8  |
  b4. d ~  |
  d4 b8 a4 g8  |
  %30
  b4. e ~  |
  e4 b8 a4 g8  |
  b4. d  |
  e4. f  |
  e2. ~  |
  %35
  e4 e8 dis4 e8  |
  g2. ~  |
  g4 e8 dis4 e8  |
  g2. ~  |
  g4 b,8 c4 d8  |
  %40
  e4. c  |
  fis4. d  |
  g2. ~  |
  g4 r8 r4.  \bar "||"
  \time 2/4   \mark \markup {\musicglyph #"scripts.segno"} r2  |
  %45
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %50
  r2  \bar "||"
  \time 6/8   r4. g8 g g  |
  g4 fis8 fis4 e8  |
  e4 d8 d4 b8  |
  c4 d8 d4. ~  |
  %55
  d4. fis8 fis fis  |
  fis4 e8 e4 d8  |
  d4 c8 c4 a8  |
  b4 d8 d4. ~  |
  d4. d8 c d  |
  %60
  e8 r4 r4.  |
  r4 b8 a4 b8  |
  c4 d8 e4. ~  |
  e4. c8 b c  |
  fis8 r4 r4.  |
  %65
  r4 fis8 e4 fis8  |
  g2. ~  |
  g4. g8 g g  |
  g4 dis8 dis4 c8  |
  c4 dis8 d4 c8  |
  %70
  b4 c8 d4. ~  |
   d4. e8 e e  \bar "||"
  e4 d8 d4 c8  |
  c4 a8 a4 b8  |
  g2. ~  \bar "||"
  %75
  \time 2/4   g8 r r4  \bar "||"
  \key c \major   r2  |
  r2  |
  r8 e'16 f e8 e16 f  |
  e4 r  |
  %80
  r2  |
  r2  |
  r8 f16 g f8 f16 g  |
  f8 r d8. e16  |
  f2 ~  |
  %85
  f4 c8. d16  |
  e2 ~  |
  e4 b8. c16  |
  d4 d  |
  e4 fis  |
  %90
  g2 ~  |
  \mark \markup {D.S. e Coda} g4 r  \bar "||"
  \key g \major   \time 6/8   \mark \markup {\musicglyph #"scripts.coda"} e2. ~  |
  e4. f8 f f  |
  f2. ~  |
  %95
  f8 r r fis4.  |
  g4. g8 g g  |
  g4 fis8 fis4 e8  |
  e4 d8 e4 fis8  |
  g2. ~  |
  %100
  g8 r r g,-> g-> g->  |
  g8-> r4 r4.  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4 = 110
  \clef treble
  \key g \major
  \time 2/4
  r2  |
  r8 g16 ( a ) g4  |
  r2  |
  r8 g16 ( a g4 )  |
  %05
  b16 ( a b c ) d ( c d e )  |
  fis8. e16 d8 cis  |
  d8 c b a  \bar "||"
  \time 6/8   g4. r  |
  r2 r4  |
  %10
  r2 r4  |
  r4 b8 a4 g8  |
  b4. b ~  |
  b4 b8 a4 g8  |
  b4. b ~  |
  %15
  b4 b8 a4 g8  |
  b4. b  |
  b4. b  |
  c2. ~  |
  c4 c8 b4 a8  |
  %20
  c4. c ~  |
  c4 c8 b4 a8  |
  c4. c ~  |
  c4 c8 b4 a8  |
  c4. c  |
  %25
  c4. c  |
  b2. ~  |
  b4 b8 a4 g8  |
  b4. b ~  |
  b4 b8 a4 g8  |
  %30
  b4. b ~  |
  b4 b8 a4 g8  |
  b4. b  |
  b4. b  |
  c2. ~  |
  %35
  c4 c8 c4 c8  |
  cis2. ~  |
  cis4 c8 c4 c8  |
  d2. ~  |
  d4 g,8 a4 b8  |
  %40
  c4. a  |
  d4. c  |
  b2. ~  |
  b4 r8 r4.  \bar "||"
  \time 2/4   r2  |
  %45
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %50
  r2  \bar "||"
  \time 6/8   g4 r8 b b b  |
  b4 d8 d4 c8  |
  c4 b8 b4 g8  |
  a4 b8 a4. ~  |
  %55
  a4. a8 a a  |
  a4 c8 c4 b8  |
  b4 a8 a4 a8  |
  g4 b8 b4. ~  |
  b4. b8 a b  |
  %60
  g8 r4 r4.  |
  r4 b8 a4 g8  |
  a4 b8 c4. ~  |
  c4. c8 b c  |
  dis8 r4 r4.  |
  %65
  r4 dis8 e4 dis8  |
  e2. ~  |
  e4. e8 e e  |
  dis4 c8 c4 a8  |
  a4 c8 b4 a8  |
  %70
  g4 a8 b4. ~  |
  b4. c8 c c  \bar "||"
  c4 b8 b4 a8  |
  a4 a8 a4 b8  |
  g2. ~  \bar "||"
  %75
  \time 2/4   g8 r r4  \bar "||"
  \key c \major   r2  |
  r2  |
  r8 c16 d c8 c16 d  |
  c4 r  |
  %80
  r2  |
  r2  |
  r8 d16 e d8 d16 e  |
  d8 r r4  |
  r4 f8. e16  |
  %85
  d4 g, ~  |
  g4 e'8. d16  |
  c4 g8. a16  |
  b4 d  |
  cis4 c  |
  %90
  b2 ~  |
  b4 r  \bar "||"
  \key g \major   \time 6/8   c2. ~  |
  c4. c8 c c  |
  d2. ~  |
  %95
  d8 r r c4.  |
  b2. ~  |
  b2. ~  |
  b2. (  |
  d2. ~ )  |
  %100
  d8 r r g,-> g-> g->  |
  g8-> r4 r4.  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4 = 110
  \clef treble
  \key g \major
  \time 2/4
  g16 a b c d8 ( g, )  |
  b4 r  |
  g16 ( a b c ) d8 g,  |
  b4 r  |
  %05
  d16 ( c d e ) fis ( e fis g )  |
  a8. g16 fis8 e  |
  d8 d d d  \bar "||"
  \time 6/8   g4. r  |
  r2 r4  |
  %10
  r2 r4  |
  r2 r4  |
  g,4 g8 g4 g8  |
  g4 r8 r4.  |
  g4 g8 g4 g8  |
  %15
  g4 r8 r4.  |
  g4. g  |
  g4. g  |
  a2. ~  |
  a4 r8 r4.  |
  %20
  a4 a8 a4 a8  |
  a4 r8 r4.  |
  a4 a8 a4 a8  |
  a4 r8 r4.  |
  a4. a  |
  %25
  a4. a  |
  g4. gis   |
  a4 r8 r4.  |
  g4 g8 g4 g8  |
  g4 r8 r4.  |
  %30
  g4 g8 g4 g8  |
  g4 r8 r4.  |
  g4. g  |
  g4. g  |
  g2. ~  |
  %35
  g4 g8 g4 g8  |
  ais2. ~  |
  ais4 g8 g4 g8  |
  b2. ~  |
  b4 b8 c4 d8  |
  %40
  e4. c  |
  b4. a  |
  g2. ~  |
  g4 r8 r4.  \bar "||"
  \time 2/4   g4 b  |
  %45
  d4. e8  |
  d8 b c b  |
  a2  |
  a4 c  |
  d4. e8  |
  %50
  d8 c b a  \bar "||"
  \time 6/8   g4 r8 r4.  |
  g'2.  |
  g2.  |
  fis4 fis8 fis4. ~  |
  %55
  fis4. r  |
  fis2.  |
  fis2.  |
  g2. ~  |
  g4. b,8 a b  |
  %60
  b8 r4 r4.  |
  r4 b8 a4 b8  |
  c4 b8 a4. ~  |
  a4. c8 b c  |
  b8 r4 r4.  |
  %65
  r4 c8 c4 c8  |
  b2. ~  |
  b4. g8 g g  |
  g4. g  |
  a4. g  |
  %70
  b4 a8 g4. ~  |
  g4. e'8 e e  \bar "||"
  e4 b8 d4 c8  |
  c4 a8 a4 b8  |
  g2. ~  \bar "||"
  %75
  \time 2/4   g8 r e'8. dis16  \bar "||"
  \key c \major   e4 d  |
  c4 a  |
  g2 ~  |
  g4 e'8. dis16  |
  %80
  e4 d  |
  c4 a  |
  b2 ~  |
  b4 r  |
  r4 d8. c16  |
  %85
  b4 g ~  |
  g4 c8. b16  |
  a4 b8. a16  |
  g4 b  |
  a4 a  |
  %90
  g2 ~  |
  g4 r  \bar "||"
  \key g \major   \time 6/8   g2. ~  |
  g4. a8 a a  |
  ais2. ~  |
  %95
  ais8 r r a4.  |
  g2. ~  |
  g2. ~  |
  g2. (  |
  b2. ~ )  |
  %100
  b8 r r g-> g-> g->  |
  g8-> r4 r4.  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4 = 110
  \time 2/4
  r2  |
  r8 tomfl32 tomfl tomfl tomfl tomfl4->  |
  r2  |
  r8 tomfl32 tomfl tomfl tomfl tomfl4->  |
  %05
  tomfl2:32  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8 tomfl tomfl4:32  \bar "||"
  \time 6/8   tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %10
  tomfl8:32 tomfl tomfl tomfl:32 tomfl tomfl  |
  tomfl4. r  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %15
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %20
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %25
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4. r  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %30
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %35
  tomfl4. r  |
  tomfl8:32 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4. r  |
  tomfl8:32 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %40
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4. r  \bar "||"
  \time 2/4   r8 tomfl:32 r tomfl:32  |
  %45
  r8 tomfl16 tomfl tomfl8 tomfl  |
  r8 tomfl:32 r tomfl:32  |
  r8 tomfl16 tomfl tomfl8 tomfl  |
  r8 tomfl:32 r tomfl:32  |
  r8 tomfl16 tomfl tomfl8 tomfl  |
  %50
  r8 tomfl:32 r tomfl:32  \bar "||"
  \time 6/8   tomfl4. r  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %55
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %60
  tomfl4 tomfl8:32 tomfl-> tomfl-> tomfl->  |
  tomfl4.-> r  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8:32 tomfl-> tomfl-> tomfl->  |
  %65
  tomfl4.-> r  |
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  tomfl4.-> r  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %70
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  \bar "||"
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  \bar "||"
  %75
  \time 2/4   tomfl4 r  \bar "||"
  tomfl4 tomfl8. tomfl16  |
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  tomfl4 tomfl8. tomfl16  |
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  %80
  tomfl4 tomfl8. tomfl16  |
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  tomfl4 tomfl8. tomfl16  |
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  tomfl4 tomfl8. tomfl16  |
  %85
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  tomfl4 tomfl8. tomfl16  |
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  tomfl4 tomfl8. tomfl16  |
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  %90
  tomfl4:32 tomfl:32  |
  tomfl4:32 r  \bar "||"
  \time 6/8   tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %95
  tomfl4. r  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %100
  tomfl8 r r tomfl-> tomfl-> tomfl->  |
  tomfl8-> r4 r4.  \bar "|."
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

