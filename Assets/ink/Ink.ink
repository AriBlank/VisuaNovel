VAR cocktail_strength = 0
VAR cocktail_sweetness = 0
VAR cocktail_sourness = 0
VAR cocktail_bitterness = 0
VAR cocktail_spiciness = 0
VAR cocktail_ice = false
===begining===
Alright… Time to get back to work. It’s only been three days since the murder of our regular customer, Zack. The police only left around lunchtime today, and they still haven’t fully solved the case. On top of that, the manager got reprimanded because most of the security cameras turned out to be fake dummies, which is why the case remains unsolved. Hopefully, he’ll take improving the bar’s security seriously in the near future. #name: Miki

Since the manager decided to rebrand the bar, I need to go through the new cocktail menu he put together.
-> tutorial

=== tutorial ===
#tutorial
...
->first_client
===first_client===
\*sound of the door opening*\

Yooooooooooo~ #name: ?
Miki, hey there, sweetheart.#name: ?
Same to you, John. What’ll you have to drink?#name: Miki
Haven’t decided yet. Heard some guy got killed around here or something. So, how’s the investigation going? You keep talking while I figure out what to order from such a charming bartender~ #name: John
Long story short, the case is currently on hold due to a lack of evidence. But as for what happened, our regular got shot. There’s not much we can do right now, so all that’s left is to keep working.#name: Miki
\*I probably shouldn’t mention that the cameras were fake dummies…*\ #name: Miki
\*I wouldn’t want to stay in a place where someone got killed and there are security issues on top of that.*\ #name: Miki
\*Though now that I think about it, I’m still here… what a nightmare.*\ #name:Miki
Mmm, I see. Well then, as they say: “May justice prevail, and may the culprit be found.#name: John
This whole story inspired me to drink something strong, but smooth enough to go down easy.#name: John
\*bro is insane, how can murders inspire someone*\ #name: Miki
Coming right up. #name: Miki
#start_making_cock
{
    - cocktail_strength == 5 and cocktail_sweetness == 2 and cocktail_sourness == 2:
        -> secret_reaction_John
    - cocktail_strength < 5 and cocktail_strength >= 3:
        -> great_reaction_John
    - else:
        -> ordinary_reaction_John
}
===secret_reaction_John===
You did it fucking well #name: John
-> ending_John

===great_reaction_John===
yeah, it what i wanted #name:John
-> ending_John

===ordinary_reaction_John===
So... In general, it's okay #name: John
-> ending_John

===ending_John===
gre
-> END

