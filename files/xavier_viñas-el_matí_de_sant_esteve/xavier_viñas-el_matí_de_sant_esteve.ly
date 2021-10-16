\version "2.16.2"

\header {
  dedication=""
  title="El Matí de Sant Esteve."
  subtitle=""
  subsubtitle=""
  poet="adaptació a gralla"
  meter="Xavier Viñas"
  piece=""
  composer="Pau Riba. 1969"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key f \major
  \repeat volta 2 { \time 1/4 a8 g   |
  \time 4/4   f4.  c'8 bes d4.  |
  c2 a4 a8 g  |
  f4. c'8 bes d4.  |
  %05
  c2. c8 c  |
  f4 c8 c d c bes a ~  |
  a2 f4 a8 \upbow g  |
  f4. c'8 bes d4. }
  \alternative { { c2. r4 } % kompletite
  %10
  { c4 bes4 ( a g  | % troigo!
  <f c'>2. ) r4 } } \bar "||"
}
\addlyrics
{
  El ma ti de sant Es te ve els galls ja no can ta ran, I_amb el fred i la vi la de ser ta la tris tor se rà molt gran
}
\addlyrics
{
  Quan del gris des per ti l'al ba, i s'ai xa qui_el sol bri llant, sen se_els galls can tant li l'ar ri ba da la gent no_es des per ta ran
}
\addlyrics
{
  A pa vin ga nois i no ies, vin gueu tots a qui_a can tar! Cor re rem per car rers de la vi la, des per tant a la gent gran
}
\addlyrics
{
  Pen drem pals i pots i o lles, fa rem gran ter ra bas tall. Di ran Ai, a què vé tan ta gres ca? Di rem: És que vo lem galls!
}
\addlyrics
{
  No vo lem no, no, se nyo ra que_els ma teu tots per Na dal, i vo lem que ca da ma ti na da ens des per tin bo ican tant!
}
\addlyrics
{
  No_ens a gra den les ga lli nes, no sal tres vo lem els galls, si_els ma teu al tra cop fa rem va ga per què ah, ah, ah, ah, ah!
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key f \major
  \repeat volta 2 { \time 1/4 a8 g  |
  \time 4/4   f8 c' d e f bes,4.  |
  a2. f8 e  |
  f8 c' d e f bes,4.  |
  %05
  c8 a4. ~ a4 f8 g  |
  a2 bes8 a g f ~  |
  f2. f8 e  |
  f2 bes }
  \alternative { { a2. r4 }
  %10
  { a1 ~  |
  a2. r4 } } \bar "||" % kompletite
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument=""}
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
    \midi {}
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
    \midi {}
  }
}

