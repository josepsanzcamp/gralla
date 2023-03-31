\version "2.16.2"

\header {
  dedication="Concert"
  title=""
  subtitle="Suite de festa"
  subsubtitle="sobre un tema popular per a tres gralles i un timbal"
  poet="5. Sardana curta I i II"
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
\relative c''
{
  \clef treble
  \key c \major
  \time 6/8
  c8 d _"Introit" \tempo 4. = 92 c b a b  |
  c8 d c b8. a16 g8  |
  c8 d c b a b  |
  c8 e d g,4 r8  |
  %05
  g'4.\trill ~ g8 d g  |
  f8 e d c b a  |
  g4. r8 g g  |
  g8 a b c d e  |
  f4 e8 d4 e16 fis  |
  %10
  \time 2/4   g16 fis g a b8. g16  |
  \time 6/8   d4-. r8 r  c b   |
  \mark \markup {\musicglyph #"scripts.segno"} c4 d8 e4 f8  |
  g4-> e8 f e d   |
  g4-> e8 g4-> f8  |
  %15
  e4 c8 d-. c ( b )  |
  c4 d8 e4 f8  |
  g4-> e8 f ( e ) d  |
  c8 ( b ) a b4 c8  |
  b4 r8 r4.  |
  %20
  \repeat volta 2 { r4. r4 b8  |
  c4-. r8 r4.  |
  r2 r4  |
  b4 c8 e-. g, ( a )  |
  b4 c8 d4 f8  |
  %25
  e4 e g8 f   |
  f4. g4 f8 }
  \alternative { { e4 r8 r4. }
  { \mark "Fine" e4 r8 g4  g8 } }
  \time 9/8   g8 fis e d e fis g fis e  |
  %30
  \time 6/8   d4-. r8 r d d  |
  \repeat volta 2 { g,4 g8 b d c  |
  b4 g8 a b c  |
  d8 e d ~ d r d  |
  g4 fis8 e4 d8  |
  %35
  cis4 a8 a b cis }
  \alternative { { d4 r8 r d d }
  { d4 r8 r4. } }
  \repeat volta 2 { r2 r4  |
  d8 ( e ) f f4 e8  |
  %40
  d4 b8 c4 e8  |
  d4 b r  |
  \time 2/4   r2  |
  \time 6/8   b8 c ( d d4 ) d8  |
  g4 g f }
  %45
  \alternative { { g4 r8 r4. }
  { \mark "D.S. al Fine" g4 r8 r c, ( b ) } } \bar "||"
}

liniaroAb =
\relative c''
{
  \tempo 4. = 92
  \clef treble
  \key c \major
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %10
  \time 2/4   r2  |
  \time 6/8   r4. r8 c b \f   |
  c4 d8 e4 f8  |
  g4-> e8 f e d   |
  g4-> e8 g4-> f8  |
  %15
  e4 c8 d-. c ( b )  |
  c4 d8 e4 f8  |
  g4-> e8 d ( c ) b  |
  c4 c d  |
  e4 r8 r4.  |
  %20
  \repeat volta 2 { r4. r4 gis,8 \p  |
  a4-. r8 r4.  |
  r2 r4  |
  g4. c8-. \f r4  | % kompletite
  g2. ~  |
  %25
  g2.   |
  a4. b4 g8 }
  \alternative { { c4 r8 r4. }
  { c4 r8 r4. } }
  \time 9/8   r1 r8  | % kompletite
  %30
  \time 6/8   r4. r8 d d  |
  \repeat volta 2 { g,4 g8 b d c  |
  b4 g8 a b c  |
  d8 e d ~ d r d  |
  d4. r  |
  %35
  e4. r }
  \alternative { { a,4 r8 r d d }
  { a4 r8 r d \f d } }
  \repeat volta 2 { d4 a8 c4.  |
  d8 ( \f e ) f d4 c8  |
  %40
  b4 g8 a4 c8  |
  b4 g d'8 d  |
  \time 2/4   d8 a c4  |
  \time 6/8   d8 e ( f d4 ) c8  |
  \times 2/3 { b8 ( a ) g } \times 3/3 { a4 } \times 3/3 { a } } % kompletite
  %45
  \alternative { { g4 r8 r d' d }
  { g,4 r8 r4. } } \bar "||"
}

liniaroAc =
\relative c''
{
  \tempo 4. = 92
  \clef treble
  \key c \major
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %10
  \time 2/4   r2  |
  \time 6/8   r2 r4  |
  c2.  |
  c2.  |
  c4. c  |
  %15
  c4 a8 b r4  |
  c2.  |
  c4. b4 gis8  |
  a4 b8 gis4 a8  |
  gis4 r8 r gis a   |
  %20
  \repeat volta 2 { b4 d8 c4 b8  |
  a4 e'8 a4 g8  |
  f8 e ( d ) c4 b8  |
  d4 e8 c-. b ( c )  |
  d4 e8 f4 a8  |
  %25
  g4 c b8 a  |
  g8 ( f ) e d ( c ) b }
  \alternative { { c4 r8 gis4 \p a8 }
  { c4 r8 r4. } }
  \time 9/8   r1 r8  | % kompletite
  %30
  \time 6/8   r2 r4  |
  \repeat volta 2 { g2.  |
  g4. g  |
  g4. ~ g8 r d'  |
  b4 a8 g4 b8  |
  %35
  a4 a8 a g a }
  \alternative { { fis4 r8 r4. }
  { fis4 r8 r4. } }
  \repeat volta 2 { r2 r4  |
  b8 ( c ) d a4 a8  |
  %40
  g4 g a  |
  g4 g r  |
  \time 2/4   r2  |
  \time 6/8   r4 d'8 c b ( a )  |
  g4 b c }
  %45
  \alternative { { b4 r8 r4. }
  { b4 r8 r4. } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4. = 92
  \time 6/8
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl8. tomfl16 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 r8  |
  %05
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl4. r8 tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %10
  \time 2/4   tomfl4 tomfl  |
  \time 6/8   tomfl4.-. r  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4-> tomfl8 tomfl4 tomfl8  |
  tomfl4-> tomfl8 tomfl4-> tomfl8  |
  %15
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl4 r8 r tomfl tomfl \p  |
  %20
  \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl \f tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %25
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl }
  \alternative { { tomfl4 r8 r4. }
  { tomfl4 r8 r4. } }
  \time 9/8   r1 r8  | % kompletite
  %30
  \time 6/8   tomfl4-. r8 r4.  |
  \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %35
  tomfl8 tomfl tomfl tomfl tomfl tomfl }
  \alternative { { tomfl8 tomfl tomfl tomfl r4 }
  { tomfl4 r8 r4. } }
  \repeat volta 2 { tomfl2.-> \f  |
  tomfl8 \f tomfl tomfl tomfl4 tomfl8  |
  %40
  tomfl8 tomfl tomfl ~ tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl4 r8  |
  \time 2/4   tomfl2->  |
  \time 6/8   tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl4 }
  %45
  \alternative { { tomfl4 r8 r4. }
  { tomfl4 r8 r4. } } \bar "||"
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

