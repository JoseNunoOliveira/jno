
module K12 where

import Data.List
import Data.List.Split

main = do { x<- readFile "_.md" ; writeFile "_0.md" (f x) } where
     f = cincat sep . filter p . splitOn sep
     p = not . ( "backgroundColor: orange" `isSubsequenceOf`)
     sep = "\n---\n"

cincat s = concat . intersperse s




3590.5 | 3595 | "- Alegria! Alegria! | - Alegria! Alegria!"

Freude, schöner Götterfunken
Tochter aus Elysium,
Wir betreten feuertrunken,
Himmlische, dein Heiligtum!

3595.5 | 3601 | "- Alegria, formosa centelha divina, filha do Eliseu;"
3601.5 | 3608 | "Ébrios de fogo entramos no teu santuário celeste!"

Deine Zauber binden wieder
Was die Mode streng geteilt;
Alle Menschen werden Brüder,
Wo dein sanfter Flügel weilt.

3608.9 | 3615.2 | "A tua magia consegue unir | o que os costumes estritos dividiram;"
3615.3 | 3622 | “Todos os homens se irmanam | onde o teu doce voo se detém.”

Wem der große Wurf gelungen,
Eines Freundes Freund zu sein;
Wer ein holdes Weib errungen,
Mische seinen Jubel ein!

3642.2 | 3649.0 | "Quem conseguiu o grande sucesso | de ser amigo de um amigo;”
3649.1 | 3656 | "E quem conquistou uma esposa | dedicada, rejubile-se conosco!”

Ja, wer auch nur eine Seele
Sein nennt auf dem Erdenrund!
Und wer's nie gekonnt, der stehle
Weinend sich aus diesem Bund!

3656.1 | 3662 | "Sim, quem ainda clama para ser uma alma na terra!"
3662.1 | 3670 | "E quem nunca foi capaz de se | evadir desta aliança, chorando!"

    Freude trinken alle Wesen
    An den Brüsten der Natur;
    Alle Guten, alle Bösen
    Folgen ihrer Rosenspur.

3690 | 3697 | "Todos os seres bebem alegria do seio da natureza"
3697.1 | 3703 | "Todos os bons e todos os maus | que sigam o seu rasto de rosas."

    Küsse gab sie uns und Reben,
    Einen Freund, geprüft im Tod;
    Wollust ward dem Wurm gegeben,
    Und der Cherub steht vor Gott.

3703.1 | 3710.0 | "Ela deu-nos beijos e vinho e | amizade leal até a morte;"
3710.1 | 3717.5 | "Até aos vermes deu a força da vida | e ao querubim que está diante de Deus!"

xxx coro canta o que a seguir xxx?

Tenor and choir

    Froh, wie seine Sonnen fliegen
    Durch des Himmels prächt'gen Plan,
    Laufet, Brüder, eure Bahn,
    Freudig, wie ein Held zum Siegen.

Coro

    Seid umschlungen, Millionen!
    Diesen Kuß der ganzen Welt!
    Brüder, über'm Sternenzelt
    Muß ein lieber Vater wohnen.

    Ihr stürzt nieder, Millionen?
    Ahnest du den Schöpfer, Welt?
    Such' ihn über'm Sternenzelt!
    Über Sternen muß er wohnen.

