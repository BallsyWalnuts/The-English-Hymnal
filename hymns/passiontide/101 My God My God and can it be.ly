\version "2.22.2"
\language "english"

\header {
  title = "101: My God! My God! And Can It Be"
  composer = "M. Vulpius"
  poet = "F.W. Faber"
}

global = {
  \key e \minor
  \time 4/4
  \tempo 4 = 84
}

soprano = \relative c' {
    \global % Soprano melody
    e2 b'4 b | c2 b | a4 (e) g (fs) | e2. \bar "||" e4 | 
    g e b' cs | d (b) d (cs) | b2. \bar "||" b4 | b as b fs |
    a2 g | fs2. \bar "||" b4 | b a g e | g2 fs | e1 \fermata |
}

alto = \relative c' { % Alto melody
    \global

}

tenor = \relative {
    \global
}

bass = \relative {
    \global
}

\score {
    \new ChoirStaff <<
        \new Staff <<
            \new Voice = "soprano" {
                \voiceOne
                \soprano
            }
            \new Voice = "alto" {
                \voiceTwo
                \alto
            }
        >>
        % This is where lyrics go

        \new Staff <<
            \clef bass 
            \new Voice = "tenor" {
                \voiceThree
                \tenor
            }
            \new Voice = "bass" {
                \voiceFour
                \bass
            }
        >>
    >>
}