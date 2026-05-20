VAR cocktail_strength = 0
VAR cocktail_sweetness = 0
VAR cocktail_sourness = 0
VAR cocktail_bitterness = 0
VAR cocktail_spiciness = 0
VAR cocktail_ice = false

VAR john_suspect = 0
VAR rikky_suspect = 0
VAR mikaela_suspect = 0
VAR neutral_suspect = 0


===begining===
Alright… Time to get back to work. It’s only been three days since the murder of our regular customer, Zack. The police only left around lunchtime today, and they still haven’t fully solved the case. On top of that, the manager got reprimanded because most of the security cameras turned out to be fake dummies, which is why the case remains unsolved. Hopefully, he’ll take improving the bar’s security seriously in the near future. #name: Miki
Since the manager decided to rebrand the bar, I need to go through the new cocktail menu he put together. #name: Miki
#tutorial
...
->first_client

===first_client===
\*sound of the door opening*\ #clear_name

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
...
{
    - cocktail_strength == 5 and cocktail_sweetness == 2 and cocktail_sourness == 2:
        -> secret_reaction_John
    - cocktail_strength >= 3:
        -> great_reaction_John
    - else:
        -> ordinary_reaction_John
}
===secret_reaction_John===
God, this is damn good. That’s exactly why I love you, Miki. #name: John
I’m glad you liked it. So, how have things been going for you? #name: Miki
Oh, everything’s been fucking great. Bought myself a couple of new weapons for the collection. #name: John
To celebrate, I’m planning a little private exhibition party for my people. It won’t just be my weapons on display — there’ll also be some interesting delicacies. Small and sweet ones… though I could probably find something else for you too, if you know what I mean... Ahem, you should come by as well~ #name: John
Um… Thanks, but I think I’ll pass. I still haven’t recovered from what happened here. #name: Miki
You’re missing out on so much. You always find excuses. But Zack... Sure, he was a bit of a freak, but he never refused. I’d even say he came with particular enthusiasm. Though after him, I often had to deal with certain problems because of the trouble he caused... #name: John
-> ending_John

===great_reaction_John===
Yeah… This is exactly what I wanted. Thanks! #name: John
You’re welcome! So, how have things been going for you? #name: Miki
Well, pretty much the usual: on weekdays I deal with disgusting idiots who can’t do their jobs properly, and on weekends I throw parties. Being the manager of a company full of morons is a thankless job. You think so too, don’t you, sweetheart? #name: John
Well… I guess so… #name: Miki
Money doesn’t come easy to anyone. Speaking of money, that guy Zack borrowed quite a large sum from me and never paid it back. #name: John
Maybe fate punished him for it. I heard he borrowed money from pretty much everyone here. #name: John
Who knows, maybe he really did make quite a few enemies who want to get his head. #name:Miki
Exactly, that’s what I’m saying. #name: John
-> ending_John

===ordinary_reaction_John===
Well… it’s alright, I guess, though it could’ve been stronger. Thanks. #name: John
I’ll try to satisfy your tastes better next time. So, how have things been going for you? #name: Miki
Well, pretty much the usual, yeah. My wife and I are planning to go to a restaurant in a few days to celebrate her professional promotion as a dentist. #name: John
Oh, congratulations to both of you! #name: Miki
Yeah-yeah, thanks, Miki. #name: John
Honestly, I like that we share the same interests, and she helps me out with the parties we organize together. #name: John
I’d even say we live in the perfect harmony, sharing every moment and every desire together. #name: John
-> ending_John

===ending_John===
Anyway, I’ve already talked too much. Time for me to go. #name: John
Thanks for the drink. See you around, sweetheart. #name: John
Thank you for coming! I was very GLAD to see you... #name: Miki
\*Gosh, he kinda scares me*\ #name: Miki
->second_client

===second_client===
\*sound of the door opening*\ #clear_name

... #name: ?
Welcome, what will you drink today, Rikky? #name: Miki
I wanna drink something provocative, something thrilling. Preferably with ice. #name: Rikky
Coming right up. #name: Miki
#start_making_cock
...
{
    - cocktail_strength == 5 and cocktail_spiciness == 3 and cocktail_bitterness == 2 and cocktail_ice == true:
        -> secret_reaction_Rikky
    - cocktail_strength < 5 and cocktail_strength >= 3 and cocktail_spiciness >= 1 and cocktail_spiciness < 3 and cocktail_ice == true:
        -> great_reaction_Rikky
    - else:
        -> ordinary_reaction_Rikky
}
===secret_reaction_Rikky===
You managed to satisfy my request. No wonder I keep coming to this bar. Though, to be fair, my mere presence already makes this place better. \*light chuckle*\ #name: Rikky
A place is shaped by its visitors, that’s true. #name: Miki
\*and by the people who make them come to places like this - bartenders, for example*\ #name: Miki
So, how have things been going for you, Rikky? #name: Miki
Fucking terrible and great at the same time. Some bastard was sleeping with my wife. No, seriously, can you imagine - sleeping with MY wife? #name: Rikky
All women are the damn same. No matter how much you give them, it’s never enough. Any of them can be bought for the right price. Everyone has their price. #name: Rikky
Who knows… #name: Miki
Later I had a little man-to-man talk with that guy. He won’t be causing any trouble anymore. Ever. #name: Rikky
I’ll get rid of anyone who lays eyes on what’s mine. #name: Rikky
->ending_Rikky

===great_reaction_Rikky===
Well, not bad. You know how to serve a client, a man, THE man, don't you? #name: Rikky
Yeah, sure. I'm glad that you like it, Rikky... #name:Miki
\*today is a day of difficult people*\ #name: Miki
How the investigation is going? Where is Zack now? #name: Rikky
Um... Where the dead body has to be. Unfortunately, it's on hold for now due to the lack of evidence. #name: Miki
Great. I like our department of investigation. They always do some useless shit. #name: Rikky
Anyway, I think they do everything they can. #name: Miki
Maybe, maybe. #name: Rikky
-> ending_Rikky

===ordinary_reaction_Rikky===
It could be worth, you know. #name: Rikky
Next time it will be better. I can asure you. #name: Miki
I hope so. #name: Rikky
So, how is your life going? #name: Miki
I'm so fed up with everything. Bitches here, dumb guys there. I'm surrounded by dumbasses. At least they were able to implemented new implants which can add to your sight some features. Wanna try them, huh?  #name: Rikky
Totally understand you. However, I'm going to reject your offer. I have lots of things to do, so thank you for asking. #name: Miki
->ending_Rikky

===ending_Rikky===
Anyway, it's time to go to my sweeties. #name: Rikky
Thanks for a drink. #name: Rikky
Have a great day, Rikky. #name: Miki
\*what does he mean "sweeties"*\ #name: Miki
->third_client

===third_client===
\*sound of the door opening*\ #clear_name
...Keep our business on the low-low... #name: ?
Hiiii, darling~ #name: ?
Good evening, Mikaela. What were you talking about? #name: Miki
Never mind. I was just singing. #name: Mikaela
Got you. What are you wanna drink today? #name: Miki
I would like to have something light, refreshing and delicate. #name: Mikaela
Whatever you want. #name: Miki
#start_making_cock
...
{
    - cocktail_strength == 2 and cocktail_sweetness == 3 and cocktail_sourness == 1 and cocktail_ice == true:
        -> secret_reaction_Mikaela
    - cocktail_strength != 2 and cocktail_strength <= 3 and cocktail_sweetness >= 1 and cocktail_sweetness != 3:
        -> great_reaction_Mikaela
    - else:
        -> ordinary_reaction_Mikaela
}
===secret_reaction_Mikaela===
Caramba! #name: Mikaela
That's divine. It is even better than crystals which I sell. #name: Mikaela
Glad that you like it. That's my job - to bring joy to the people's lifes. #name: Miki
You're good at this for sure~ #name: Mikaela
Unrelated, but I heard that one of your clients and concurrently one of mine had died few days ago. Did he OD or what? #name:Mikaela
I'm not really sure. However, he got shot in a head. #name:Miki
That's kinda sad. He was spending lots of money on my goods. He was sweet as well. In every sense. #name: Mikaela
I'm sorry for this question but could a person die because of them? #name: Miki
You know, darling, people can die from any shit you can imagine. For example, if someone mix substances, a person would die without a doubt. #name: Mikaela
Anyway, it is not my problem. Moreover, I'm not responsible for people's actions. #name: Mikaela
->ending_Mikaela

===great_reaction_Mikaela===
Hm, hm, hm... #name: Mikaela
Something is wrong? #name: Miki
No, I'm just trying to figure out how you do it better with each time~ #name: Mikaela
Thanks, Mika. #name : Miki
I wanted to ask is it true that my Zackie died? #name: Mikaela
Yeah, shot in a head. #name: Miki
You are pretty chill when you talk about it. #name: Mikaela
Every person that have come today asked me about this... um situation. So I cannot be emotional every time I talk about it. #name: Miki
Got it. Oh... It was a mistake to give him those crystals in advance. I didn't got my money back. #name: Mikaela
As it is. #name: Miki
->ending_Mikaela

===ordinary_reaction_Mikaela===
Mhm... Well, Miki, usualy you do a better job than this. #name: Mikaela
My bad, I'm still thinking about what happened that night. #name: Miki
Yeah, poor Zackie... However, I think maybe it is a fate that I have to stop having situationships. #name:Mikaela
You liked him though. Even if just for a bit. #name: Miki
\*I'm not going to mention that I know that they had fucked here every time they met each other*\ #name :Miki
Rigth, rigth. #name: Mikaela
->ending_Mikaela

===ending_Mikaela===
Well, it's time to go. Thanks for today. #name: Mikaela
So, have a great evening, darling! #name: Mikaela
You too, Mika. #name: Miki
->thougth_Miki

===thougth_Miki===
\*finally, the end of the day*\ #name: Miki
\*I don't think that somebody will come*\ #name:Miki
\*sound of the door opening*\ #clear_name
\*or wil.... UGH*\
->detective

===detective===
Good evening, miss. I'm detective and I'm responsible for investigation of a bar crime. My name is Johnovan. #name: ?
I would like to ask you some question if you don't mind. #name: Johnovan
Nice to meet you, Jonhovan. #name: Miki
It's not hard to answer, so what is the first question? #name: Miki
Well... Before I start, I want to warn you that EVERY your word can have an impact on the case. So, first question: #name: Johnovan
1. Who do you think Zack had the closest relationship with among the regular customers?#name: Johnovan
+ John
    ~john_suspect ++
    ->second_question
+ Rikky
    ~rikky_suspect ++
    ->second_question
+ Mikaela
    ~mikaela_suspect ++
    ->second_question
+ Nobody was close enough
    ~neutral_suspect ++
    ->second_question
===second_question===
2. Did any of the customers behave strangely? #name: Johnovan
+ John
    ~john_suspect ++
    ->third_question
+ Rikky
    ~rikky_suspect ++
    ->third_question
+ Mikaela
    ~mikaela_suspect ++
    ->third_question
+ Nobody
    ~neutral_suspect ++
    ->third_question
    
===third_question===
3. Did Zack owe anything to anyone? #name: Johnovan
+ John
    ~john_suspect ++
    ->fourth_question
+ Rikky
    ~rikky_suspect ++
    ->fourth_question
+ Mikaela
    ~mikaela_suspect ++
    ->fourth_question
+ He owes nothing to anyone
    ~neutral_suspect ++
    ->fourth_question
    
===fourth_question===
4. Do you think Zack had a bad relationship with someone? #name: Johnovan
+ John
    ~john_suspect ++
    ->fifth_question
+ Rikky
    ~rikky_suspect ++
    ->fifth_question
+ Mikaela
    ~mikaela_suspect ++
    ->fifth_question
+ He didn't had bad relationship with anyone.
    ~neutral_suspect ++
    ->fifth_question
    
===fifth_question===
5. Which customer seems the most suspicious? #name: Johnovan
+ John
    ~john_suspect +=2
    ->checking
+ Rikky
    ~rikky_suspect +=2
    ->checking
+ Mikaela
    ~mikaela_suspect +=2
    ->checking
+ I don't think that suspect is among out frequenters.
    ~neutral_suspect +=2
    ->checking
    
===checking===
{
    - john_suspect >= 4:
    ->john_bad_ending
    - rikky_suspect >= 4:
    ->rikky_good_ending
    - mikaela_suspect >=4:
    ->mikaela_bad_ending
    -else:
    ->neutral_ending
}

===john_bad_ending===
grgrsg
->the_ending
===rikky_good_ending===
jsrh
->the_ending
===mikaela_bad_ending===
rgerayhh
->the_ending
===neutral_ending===
erahikifb
->the_ending
===the_ending===

-> END

