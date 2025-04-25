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
    a2 g | fs2. \bar "||" b4 | b a g e | g2 fs | e1 \fermata \bar "."
    e2 e |
}

alto = \relative c' { % Alto melody
    \global
    \stemUp
    g4 (a) b \stemDown fs' | e2 g4 (fs) | e2 e4 (ds) | e2. \bar "||" c4 |
    b e fs e | d (fs) fs2 | ds2. \bar "||" g4 | fs e ds d | 
    e (ds) e2 | fs2. \bar "||" g4 | g fs8 e d4 e | cs (e2) ds4 | e1 \bar "."
    c2 b |

}

tenor = \relative {
    \global
    e4 (fs) g b | g (a) b2 | c4 (a) b2 | g2. \bar "||" a4 |
    g g fs as | b2. as4 | b2. \bar "||" b4 | b e, fs b |
    c2 b4 (cs) | ds2. \bar "||" d4 | d c d b | cs2 fs, | g1 \bar "."
    a2 gs |
}

bass = \relative {
    \global
    e2 e4 d | c2 g | a4 (c) b2 | e2. \bar "||" a,4 |
    e' e d cs | b (d) fs2 | b,2. \bar "||" e4 | d cs b b |
    a2 e' | b2. \bar "||" g4 | g a b g | a2 b | e1 \fermata \bar "."
    a,2 e' |
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
        
        \new Lyrics \lyricsto "soprano" {
            \set stanza = "1."
            My God! My God! and can it be
            That I should sin so light -- ly now,
            And think no more of e -- vil thoughts
            Than of the wind that waves the bough?
        }

        \new Lyrics \lyricsto "soprano" {
            \set stanza = "2."
            I walk the earth with light -- some step,
            Smile at the sun -- shine, breath the air,
            Do my own will, nor e -- ver heed 
            Geth -- se -- ma -- ne and thy long prayer.
        }

        \new Lyrics \lyricsto "soprano" {
            \set stanza = "3."
            Shall it be al -- ways thus, O Lord?
            Wilt thou not work this hour in me
            The grace thy Pa -- ssion mer -- i -- ted,
            Ha -- tred of self, and love of thee!
        }

        \new Lyrics \lyricsto "soprano" {
            \set stanza = "4."
            E -- ver when tempt -- ed, make me see,
            Be -- neath the o -- lives' moon -- pierced shade,
            My God, a -- lone, out -- stretched, and bruised,
            And blee -- ding, on the earth he made;
        }

        \new Lyrics \lyricsto "soprano" {
            \set stanza = "5."
            And make me feel it was my sin, 
            As though no o -- ther sins there were,
            That was to him who bears the world 
            A load that he could scarce -- ly bear.
            A -- men.
        }

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