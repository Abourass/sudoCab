#!/usr/bin/env bash
# DO NOT EDIT THIS FILE

wordArray=(
"Anna und Lukas kommen aus Deutschland." 
"Apfel" 
"Bitte" 
"Danke" 
"Dankeschön" 
"Das Haustier" 
"Das Mädchen" 
"Das Mädchen und der Junge, die Frau und der Mann" 
"Das Tier" 
"Das Tier tinkt." 
"Das bin ich nicht!" 
"Das ist Afrika" 
"Der Junge" 
"Der Junge kommt aus Amerika" 
"Der Mann" 
"Der Rock passt dir nicht" 
"Der Tropfen, der das Fass zum Überlaufen bringt." 
"Deutsche Sprache, schwere Sprache." 
"Die Fraue" 
"Die Kuh trinkt Wasser." 
"Die Vögel" 
"Die Vögel fressen Brot" 
"Du bist schlau." 
"Du bist schön" 
"Du bist witzig." 
"Du kannst gut tanzen!" 
"Ein Junge" 
"Ein Mann" 
"Ein Mädchen" 
"Eine Ente ist ein Vogel" 
"Eine Frau" 
"Ende gut, alles gut." 
"Es tut mir Leid" 
"Esse" 
"Essen" 
"Esst" 
"Frau" 
"Frauen" 
"Gern Geschehen" 
"Gerne" 
"Gut" 
"Guten Abend" 
"Guten Tag" 
"Hallo" 
"Ich bin Fred" 
"Ich gebe dir einen Dollar." 
"Ich hab mich in dich verliebt." 
"Ich liebe dich." 
"Ich mag dich" 
"Ihr" 
"Isst" 
"Junge" 
"Jungen" 
"Kann ich dich anrufen?" 
"Kann ich dir ein Getränk bestellen?" 
"Kind" 
"Kinder" 
"Mann" 
"Mädchen" 
"Männer" 
"Nein, Entschuldigung!" 
"Nein, leider." 
"Schon gut!" 
"Spinne" 
"Tausend Dank" 
"Viele Köche verderben den Brei." 
"Vielen Dank" 
"Willst du mit mir ausgehen?" 
"das Pferd" 
"der Hund" 
"der Vogel" 
"die Katze" 
"die Maus" 
"tschüss"
)
meaningArray=(
"Anna and Lukas come from Germany." 
"Apple" 
"Please" 
"Thanks / Thank you" 
"Thank you very much" 
"The pet" 
"The girl" 
"The girl and the boy, the woman and the man" 
"The animal" 
"The animal drinks" 
"That is not me!" 
"That is Afrika" 
"The boy" 
"The boy is from America" 
"The man" 
"The skirt does not fit you" 
"The straw that breaks the camel's back" 
"German is hard" 
"The woman" 
"The cow is drinking water." 
"The birds" 
"The birds are eating bread" 
"You are smart." 
"You are beautifull" 
"You are funny." 
"You can dance well!" 
"A boy" 
"A man" 
"A girl" 
"A duck is a bird" 
"A woman" 
"All's well that ends well" 
"I'm sorry, or literally translated 'It does me Harm'" 
"Am Eating / Eat / Eating" 
"Are Eating" 
"Are Eating / Eating / Eat" 
"Woman" 
"Women" 
"You're Welcome" 
"A less formal 'You're Welcome'" 
"Good / Fine" 
"Good Evening" 
"Good Day" 
"Hello, a greeting" 
"I am Fred" 
"I am giving you one dollar." 
"I have fallen in love with you" 
"I love you" 
"I like you." 
"You / Her" 
"Are Eating / Eats" 
"Boy" 
"Boys" 
"Can I call you?" 
"Can I order you a drink?" 
"Child" 
"Children" 
"Man" 
"Girl" 
"Men" 
"No, I am sorry!" 
"No, unfortunately." 
"All right!" 
"Spider" 
"A Thousand Thanks" 
"Too many cooks spoil the broth" 
"Many Thanks" 
"Do you want to go out with me?" 
"The Horse" 
"The dog" 
"The bird" 
"The cat" 
"The Mouse" 
"Bye"
)
pronunciationArray=(
"Anna und Lukas co-men ow-s Doy-tch-Land" 
"app-fel" 
"bit-teh" 
"dahn-keh" 
"dahn-keh-show-n" 
"Das House-tier" 
"Das Maid-ken" 
"Das Maid-ken und der You-n-ge, dee frow und der Mah-nn" 
"Das Tee-r" 
"Das Tee-r tree-n-kt" 
"Das bin eek neekt" 
"Das ist Afrika" 
"Der you-n-ge" 
"Der you-n-ge com-t ow-s America" 
"Der Mann" 
"Dare raw-ck pass-t de-ir knee-kt" 
"Der Tropfen, der das Fass zum Überlaufen bringt." 
"Deutsche Sprache, schwere Sprache." 
"Dee Frow" 
"Dee Ku-h tree-nkt  vass-er" 
"Dee Vo-gehl" 
"Dee Vo-gehl Fress-en Bro-t" 
"Du bist schlau." 
"Do bist shown" 
"Du bist witzig" 
"Du kannst gut tanzen !" 
"eye-n you-n-geh" 
"eye-n Man" 
"eye-n maid-ken" 
"Eye-ne En-teh is-t eye-n vo-ghel" 
"eye-neh frow" 
"Ende gut, alles gut." 
"Es toot meir lied" 
"es-seh" 
"es-sen" 
"esst" 
"frow" 
"Frow-en" 
"Ghern gah-shane" 
"Ghern" 
"goo-t" 
"Goo-ten Ah-ben" 
"gu-ten tag" 
"ha-low" 
"Eee-k bin Fred" 
"Ich gey-ba de-ir eye-nen Dollar" 
"Ich hab mich in dich verliebt." 
"Ich liebe dich." 
"Ich mag dich. " 
"e-hr" 
"isst" 
"you-n-geh" 
"You-n-gen" 
"Kann ich dich anrufen?" 
"Kann ich dir ein Getränk bestellen?" 
"Kin-d" 
"Kin-der" 
"mah-n" 
"maid-ken" 
"Man-ner" 
"Nine En-shull-dee-goo-ng" 
"Nine lie-der" 
"Show-n goo-t!" 
"Shpin-eh" 
"t-ow-zend Dahnk" 
"Viele Köche verderben den Brei." 
"Feel-en Dahnk" 
"Willst du mit mir ausgehen?" 
"das F-aird" 
"der hund" 
"der Vo-gel" 
"dee Kat-ze" 
"dee mow-se" 
"choosse"
)
export wordArray
export meaningArray
export pronunciationArray
# chmod +x ~/.vocab-script.sh
. ~/.vocab-script.sh
exit 0