import 'package:edin_lit_companion/models/Book.dart';

class BookData {
  static BookData get shared => BookData();

  List<Book> get books => [
        Book(
          title: "All the Hidden Truths",
          author: "Claire Askew",
          description:
              "A compelling novel about the aftermath of a major crime at an Edinburgh college, focusing on three women for whom the lack of answers is unbearable: DI Helen Birch, the detective charged with solving the case. Ishbel, the mother of the first victim, struggling to cope with her grief. And Moira, mother of the killer, who needs to understand what happened to her son. But as people search for someone to blame, the truth seems to vanish...",
          image: "books/allTheHiddenTruths.jpg",
        ),
        Book(
          title: "One Good Turn",
          author: "Kate Atkinson",
          description:
              "It is summer, it is the Edinburgh Festival. People queuing for a lunchtime show witness a road-rage incident which changes the lives of everyone involved. Jackson Brodie, ex-army, ex-police, ex-private detective, is also an innocent bystander - until he becomes a suspect.\nAs the body count mounts, each member of the teeming Dickensian cast’s story contains a kernel of the next, like a set of nesting Russian dolls...",
          image: "books/oneGoodTurn.jpg",
        ),
        Book(
          title: "Complicity",
          author: "Iain Banks",
          description:
              "Complicity - n. 1. the fact of being an accomplice, esp. in a criminal act... It's just a regular day at the office for free-wheeling, substance-abusing Cameron Colley, a fully paid-up Gonzo hack on an Edinburgh newspaper but the police are checking out a series of bizarre deaths and Cameron just might know more about it than he’d care to admit. Complicity is an exploration of the morality of greed, corruption and violence.",
          image: "books/complicity.jpg",
        ),
        Book(
          title: "Quite Ugly One Morning",
          author: "Christopher Brookmyre",
          description:
              "Like your crime fiction with a sprinkling of dark comedy? Then you'll love this, the first novel in the Jack Parlabane series from Glasgow author, Christopher Brookmyre. Jack Parlabane has a perfectly good hangover to be getting on with before he finds the corpse of Ponsonby - scion of a venerable Edinburgh medical clan. But his instincts as an investigative journalist (morally ambiguous or not), commit him to the case with an unusual tenacity.",
          image: "books/quiteUgly.jpg",
        ),
        Book(
          title: "The Strings of Murder",
          author: "Oscar de Muriel",
          description:
              "It is Edinburgh, 1888. A violinist is murdered in his home. The dead virtuoso's maid swears she heard three musicians playing in the night. But with only one body in the locked room - and no way in or out - the case makes no sense. Fearing a national panic over another Ripper, Scotland Yard sends disgraced London Inspector Ian Frey to investigate with Edinburgh local, Detective 'Nine-Nails' McGray. A classic murder-mystery full of twists and turns, perfect for fans of Sherlock Holmes.",
          image: "books/stringsOfMurder.jpg",
        ),
        Book(
          title: "Where the Shadow Falls",
          author: "Gillian Galbraith",
          description:
              "When the body of a retired Sheriff is discovered in his grand house in the New Town of Edinburgh, Detective Sergeant Alice Rice finds herself hunting his killer. The search leads her to an unfamiliar world where wind farm developers - with millions of pounds at stake - and protestors face each other with daggers drawn. And just as Alice thinks an answer is beginning to emerge, the Sheriff's lover is killed in an apparent hit-and-run accident. It's an unlikely coincidence, and the investigation widens as she now seeks a double murderer.",
          image: "books/whereTheShadowFalls.jpg",
        ),
        Book(
          title: "The Private Memoirs and Confessions of a Justified Sinner",
          author: "James Hogg",
          description:
              "It is Scotland in the early eighteenth century. Fear and superstition grip the land. Robert Wringhim, a boy of strict Calvinist upbringing, is corrupted by a shadowy figure who calls himself Gil-Martin. Under his influence Robert commits a series of murders which he regards as ‘justified’ by God under the tenets of his faith. Hogg’s masterpiece is a brilliant portrayal of the power of evil and a scathing critique of organised religion. Superbly crafted and deftly executed, it resists any easy explanation of events: is this stranger a figment of Robert’s imagination, or the devil himself?",
          image: "books/privateMemoirs.jpg",
        ),
        Book(
          title: "Breakers",
          author: "Doug Johnstone",
          description:
              "There are two sides to every family... Seventeen-year-old Tyler lives in one of Edinburgh's most deprived areas. Coerced and bullied by his older siblings, trying to care for his drug-addict mum. When his brother stabs a homeowner during a burglary gone wrong, it's just the beginning of their nightmare. With his shattered family in devastating danger, will Tyler drag down everyone around him? A gripping psychological thriller from Edinburgh-based author, Doug Johnstone.",
          image: "books/breakers.jpg",
        ),
        Book(
          title: "The Way of All Flesh",
          author: "Ambrose Parry",
          description:
              "The first in the Raven and Fisher novels from crime author, Christopher Brookmyre and partner, Marisa Haetzman. Edinburgh, 1847. Will Raven is a medical student, apprenticing for the brilliant and renowned Dr Simpson. Sarah Fisher, Simpson’s housemaid, has all of Raven’s intelligence but none of his privileges. As bodies begin to appear across the Old Town, Raven and Sarah find themselves propelled headlong into the darkest shadows of Edinburgh’s underworld. And if either of them are to make it out alive, they will have to work together to find out who’s responsible for the gruesome deaths.",
          image: "books/wayOfAllFlesh.jpg",
        ),
        Book(
          title: "The Fanatic",
          author: "James Robertson",
          description:
              "Spring, 1997. Hugh Hardie needs a ghost for his Tours of Old Edinburgh, and Andrew Carlin is the perfect candidate. So with cape, stick, and plastic rat, Carlin is paid to scare the tourists, pretending to be the spirit of Colonel Weir, a religious extremist burned at the stake in 1670. But who was Weir? Carlin's research draws him into the past and, in particular, to James Mitchel, imprisoned in 1674 for the attempted assassination of the Archbishop of St Andrews. Through the story of Carlin and Mitchel, The Fanatic reveals an extraordinary history of Scotland: a tale of betrayals, witch hunts, Puritan exiles, smuggled journeys, and disguised identities. A gripping, richly imagined novel.",
          image: "books/fanatic.jpg",
        ),
        Book(
          title: "The Heart of Midlothian",
          author: "Sir Walter Scott",
          description:
              "Edinburgh, 1736: an indignant crowd has gathered in the Grassmarket to watch the execution of a smuggler. Opening with the start of the Porteous Riots, The Heart of Midlothian is one of Walter Scott’s most famous historical novels, featuring murder, madness and seduction. Following his brutal suppression of the spectators, John Porteous, Captain of the Guard, is charged with murder and locked up in Edinburgh’s Tolbooth prison, also known as the Heart of Midlothian. When news comes that he has been pardoned, an angry mob breaks into the jail, liberating its inmates and bringing Porteous to its own form of justice. But one prisoner who fails to take this opportunity to flee is Effie Deans, who, wrongly convicted of infanticide, has been sentenced to death. Jeanie, her older sister, sets off to London on foot to beg for her pardon from the queen. A tale of religious piety, filial devotion and legal loopholes.",
          image: "books/heartOfMidlothian.jpg",
        ),
        Book(
          title: "44 Scotland Street",
          author: "Alexander McCall Smith",
          description:
              "Just one of many Edinburgh-set novels from prolific author, Alexander McCall Smith. The story revolves around the comings and going at number 44 Scotland Street, a fictitious building in a real New Town street. Love triangles, a lost painting, intriguing new friends, and an encounter with a famous Scottish crime writer are just a few of the ingredients that add to this delightful and witty portrait of Edinburgh society, which was first published as a serial in The Scotsman newspaper.",
          image: "books/scotlandStreet.jpg",
        ),
        Book(
          title: "Kidnapped",
          author: "Robert Louis Stevenson",
          description:
              "An adventure novel from Edinburgh's most famous author, Kidnapped has become a classic of historical romance the world over and is justly famous as a novel of travel and adventure set deep in the Scottish landscape. Stevenson’s vivid descriptive powers were never better than in this account of remote places and dangerous action in the Highlands in the years following Culloden.",
          image: "books/kidnapped.jpg",
        ),
        Book(
          title: "Fleshmarket Close",
          author: "Ian Rankin",
          description:
              "Just one of many crime novels featuring Edinburgh detective, John Rebus. An illegal immigrant is found murdered in an Edinburgh housing scheme: a racist attack, or something else entirely? Rebus is drawn into the case, he must deal with the sleazy Edinburgh underworld. Then there's the small matter of the two skeletons - a woman and an infant - found buried beneath a concrete cellar floor in Fleshmarket Close. The scene begins to look like an elaborate stunt - but whose, and for what purpose?",
          image: "books/fleshmarketClose.jpg",
        ),
        Book(
          title: "The Prime of Miss Jean Brodie",
          author: "Muriel Spark",
          description:
              "Romantic, heroic, comic and tragic, unconventional schoolmistress Jean Brodie has become an iconic figure in post-war fiction. Her glamour, unconventional ideas and manipulative charm hold dangerous sway over her girls at the Marcia Blaine Academy - 'the creme de la creme' - who become the Brodie 'set', introduced to a privileged world of adult games that they will never forget. The Prime of Miss Jean Brodie was adapted onscreen, starring Maggie Smith in the titular role. One to watch once you've devoured the book.",
          image: "books/primeOfMissJeanBrodie.jpg",
        ),
        Book(
          title: "Trainspotting",
          author: "Irvine Welsh",
          description:
              "Trainspotting is the novel that first launched Irvine Welsh's spectacular career - an authentic, unrelenting, and strangely exhilarating episodic group portrait of blasted lives. It accomplished for its own time and place what Hubert Selby, Jr.'s Last Exit to Brooklyn did for his. Rents, Sick Boy, Mother Superior, Swanney, Spuds, and Seeker are as unforgettable a clutch of junkies, rude boys, and psychos as readers will ever encounter. Trainspotting was adapted for the screen starring Ewan MacGregor.",
          image: "books/trainspotting.jpg",
        ),
        Book(
          title: "The Vanishing Act of Esme Lennox",
          author: "Maggie O'Farrell",
          description: "Set between the 1930s and the present, this novel is the story of Esme, a woman edited out of her family's history, and of the secrets that come to light when, sixty years later, she is released from care and a young woman, Iris, discovers the great aunt she never knew she had. The mystery that unfolds is the heartbreaking tale of two sisters in colonial India and 1930s Edinburgh - of the loneliness that binds them together and the rivalries that drive them apart and lead one of them to a shocking betrayal - but above all it is the story of Esme, a fiercely intelligent, unconventional young woman, and of the terrible price she is made to pay for her family's unhappiness.",
          image: "books/vanishingAct.jpg",
        ),
        Book(
          title: "Rule 34",
          author: "Charles Stross",
          description: "Meet Edinburgh Detective Inspector Liz Kavanaugh, head of the Innovative Crimes Investigation Unit, otherwise known as the Rule 34 Squad. They monitor the Internet for potential criminal activity, analyzing trends in the extreme fringes of explicit content. And occasionally, even more disturbing patterns arise…\nThree ex-cons have been murdered in Germany, Italy, and Scotland. The only things they had in common were arrests for spamming and a taste for unorthodox entertainment. As the first officer on the scene of the most recent death, Liz finds herself sucked into an international investigation that isn’t so much asking who the killer is, but what - and if she doesn’t find the answer soon, the homicides could go viral.",
          image: "books/rule34.jpg",
        ),
        Book(
          title: "The Sopranos",
          author: "Alan Warner",
          description: "As the choir from Our Lady of Perpetual Succor for Girls is bussed from rural Scotland into the capital to participate in the national singing finals, five of the teenage schoolgirls let loose for a night of pub crawling, shoplifting, and body piercing. And, since a nuclear submarine has just anchored in the bay, the local nightclub will be full of sailors on leave. After a bout of preparatory drinking, the girls are ready for their big night...\nAn outrageous tale of adolescent debauchery, The Sopranos opens the lid on desire and excess in all its grim glory.",
          image: "books/sopranos.jpg",
        ),
        Book(
          title: "The Sewing Machine",
          author: "Natalie Fergie",
          description: "It is 1911, and Jean is about to join the mass strike at the Singer factory. For her, nothing will be the same again. Decades later, in Edinburgh, Connie sews coded moments of her life into a notebook, as her mother did before her.\nMore than a hundred years after his grandmother’s sewing machine was made, Fred discovers a treasure trove of documents. His family history is laid out before him in a patchwork of unfamiliar handwriting and colourful seams. He starts to unpick the secrets of four generations, one stitch at a time.",
          image: "books/sewingMachine.jpg",
        ),
        Book(
          title: "The Other Mrs Walker",
          author: "Mary Paulson-Ellis",
          description: "An old lady dies alone and unheeded in a cold Edinburgh flat on a snowy Christmas night. A faded emerald dress hangs in her wardrobe; a spilt glass of whisky pools on the floor.\nA few days later a middle-aged woman arrives back in the city she thought she’d left behind, her future uncertain, her past in tatters. She soon finds herself a job at the Office for Lost People, tracking down the families of those who have died neglected and alone. But what Margaret Penny cannot yet know, is just how entangled her own life will become in the death of one lonely stranger . . .",
          image: "books/otherMrsWalker.jpg",
        ),
        Book(
          title: "The Skeleton Road",
          author: "Val McDermid",
          description: "In the center of historic Edinburgh, builders are preparing to demolish a disused Victorian Gothic building. They are understandably surprised to find skeletal remains hidden in a high pinnacle that hasn’t been touched by maintenance for years. Who do the bones belong to, and how did they get there? Could the eccentric British pastime of free climbing the outside of buildings play a role? Enter cold case detective Karen Pirie, who gets to work trying to establish the corpse’s identity. And when it turns out the bones may be from as far away as former Yugoslavia, Karen will need to dig deeper than she ever imagined into the tragic history of the Balkans: to war crimes and their consequences, and ultimately to the notion of what justice is and who serves it.",
          image: "books/skeletonRoad.jpg",
        ),
        Book(
          title: "The Last Watch",
          author: "Sergei Lukyanenko",
          description: "While on holiday in Scotland, visiting a macabre tourist attraction, a young Russian tourist is murdered. As the police grapple with the death, the Watches are immediately aware that there is a renegade vampire on the loose. Anton is detailed to this seemingly mundane investigation, but on arriving in Scotland begins to realize that there is much more to the story than a wildcat vampire and a single murder. Aided by Thomas, the head of Edinburgh's Night Watch, Anton investigates and ruminates, and becomes aware that a team of unlicensed Others are hunting for a fabled magical treasure, hidden in the sixth level of the Twilight by Merlin himself.",
          image: "books/lastWatch.jpg",
        ),
        Book(
          title: "Regeneration",
          author: "Pat Barker",
          description: "In Craiglockhart war hospital, Edinburgh, Doctor William Rivers attempts to restore the sanity of officers from World War I. When Siegfried Sassoon publishes his declaration of protest against the war, the authorities decide to have him declared mentally defective and send him to Craiglockhart. The first novel in Pat Barker's Regeneration trilogy, based on the true events that took place at Craiglockhart (now Napier University) during and after the Great War.",
          image: "books/regeneration.jpg",
        ),
        Book(
          title: "Fleshmarket",
          author: "Nicola Morgan",
          description: "It is Edinburgh, 1822, and young Robbie is eight years old when he witnesses his mother's pain and subsequent death from an operation - without anaesthetic - at the hands of Dr Knox. Haunted by this terrible event, Robbie attempts to move on with his life but is left to look after himself and his sister in the Edinburgh slums. He falls in with Burke and Hare, the two men whom Knox employs to 'collect' bodies for medical research, and sees a way to avenge his mother's death...",
          image: "books/fleshmarket.jpg",
        ),
        Book(
          title: "The New Confessions",
          author: "William Boyd",
          description: "In this extraordinary novel, William Boyd presents the autobiography of John James Todd, whose uncanny and exhilarating life as one of the most unappreciated geniuses of the twentieth century is equal parts Laurence Stern, Charles Dickens, Robertson Davies, and Saul Bellow, and a hundred percent William Boyd. John James Todd’s reminiscences carry us through the ups and downs of a long and lively career that begins in genteel Edinburgh...",
          image: "books/newConfessions.jpg",
        ),
        Book(
          title: "Women Talking Dirty",
          author: "Isla Dewar",
          description: "Ellen Quinn kept her sanity in the suffocating Edinburgh suburb where she grew up by imagining it was a hotbed of intrigue. A neglected child, she’s still looking for love as an adult; and so she finds herself married to Daniel. How could she know that he would misbehave?\nCora O’Brien is the total opposite; outrageous and outspoken, she inspires the children she teaches with her enthusiasm. The city can’t soften her Highland lilt but her lifestyle would raise a few eyebrows back home. But her vividness is a façade: most of her secrets she’s still keeping to herself.\nFast friends from the start, Ellen and Cora may have plenty to learn about life, but they always have vodka and each other to talk to when the unexpected happens…",
          image: "books/womenTalkingDirty.jpg",
        ),
        Book(
          title: "Perfect Remains",
          author: "Helen Fields",
          description: "In the concealed back room of a house in Edinburgh, Elaine Buxton screams into the darkness…\nDetective Inspector Luc Callanach has barely set foot in his new office when Elaine’s missing persons case is escalated to a murder investigation. Having left behind a promising career at Interpol, he’s eager to prove himself to his new team. But Edinburgh, he discovers, is a long way from Lyon, and Elaine’s killer has covered his tracks with meticulous care.",
          image: "books/perfectRemains.jpg",
        ),
        Book(
          title: "Ghost Moon",
          author: "Ron Butlin",
          description: "Having been thrown out onto the Edinburgh streets by her family, Maggie knows she must fight to survive. Many years later, the struggles she had to endure can be kept a secret no longer.\nSet mostly in post-war Britain and inspired by a real-life story, Ghost Moon is narrated with humour and compassion. A life-affirming read.",
          image: "books/ghostMoon.jpg",
        ),
        Book(
          title: "The Edinburgh Dead",
          author: "Brian Ruckley",
          description: "The year is 1827. For Adam Quire, an officer of the recently formed City Police, Edinburgh is a terrifying place. It is a city populated by mad alchemists and a criminal underclass prepared to treat with the darkest of powers. But nothing can prepare him for the trail of undead hounds, emptied graves, brutal murders and mob violence that will take him into the darkest corners of the underworld and to the highest reaches of elegant Edinburgh society.",
          image: "books/edinburghDead.jpg",
        ),
        Book(
          title: "The Wages of Sin",
          author: "Kaite Welsh",
          description: "An irresistible mystery set in 1890s Edinburgh. Sarah Gilchrist has fled from London to Edinburgh in disgrace and is determined to become a doctor, despite the misgivings of her family and society. As part of the University of Edinburgh's first intake of female medical students, Sarah comes up against resistance from lecturers, her male contemporaries, and - perhaps worst of all - her fellow women, who will do anything to avoid being associated with a fallen woman. When one of Sarah's patients turns up in the university dissecting room as a battered corpse, Sarah finds herself drawn into Edinburgh's dangerous underworld of bribery, brothels and body snatchers - and a confrontation with her own past.",
          image: "books/wagesOfSin.jpg",
        ),
        Book(
          title: "Edinburgh Twilight",
          author: "Carole Lawrence",
          description: "As a new century approaches, Edinburgh is a city divided. The wealthy residents of New Town live in comfort, while Old Town’s cobblestone streets are clotted with criminals, prostitution, and poverty. Detective Inspector Ian Hamilton is no stranger to Edinburgh’s darkest crimes. Scarred by the mysterious fire that killed his parents, he faces his toughest case yet when a young man is found strangled in Holyrood Park. With little evidence aside from a strange playing card found on the body, Hamilton engages the help of a gifted photographer and a librarian with a shared interest in the criminal mind. But the body count is rising and, as newspapers spin tales of the “Holyrood Strangler,” panic sets in across the city.",
          image: "books/edinburghTwilight.jpg",
        ),
        Book(
          title: "The Fair Botanists",
          author: "Sara Sheridan",
          description: "It's the summer of 1822 and Edinburgh is abuzz with rumours of King George IV's impending visit. In botanical circles, however, a different kind of excitement has gripped the city. In the newly-installed Botanic Garden, the Agave Americana plant looks set to flower - an event that only occurs once every few decades.\nWhen newly widowed Elizabeth arrives in Edinburgh, she's determined to put her unhappy past behind her. As she settles into her new home, she becomes fascinated by the beautiful Botanic Garden which borders the grand house and offers her services as an artist to record the rare plant's impending bloom. In this pursuit, she meets Belle, a vivacious young woman with a passion for botany and the lucrative, dark art of perfume creation...",
          image: "books/fairBotanists.jpg",
        ),
        Book(
          title: "Rizzio",
          author: "Denise Mina",
          description: "Denise Mina delivers a radical new take on one of the darkest episodes in Scottish history - the bloody assassination of David Rizzo, private secretary to Mary, Queen of Scots, in the queen’s chambers in Holyrood Palace.\nOn the evening of March 9th, 1566, David Rizzio was brutally murdered. Dragged from the chamber of the heavily pregnant Mary, Rizzio was stabbed fifty six times by a party of assassins. This breathtakingly tense novella dramatises the events that led up to that night, telling the infamous story as it has never been told before.\nA dark tale of sex, secrets and lies, Rizzio looks at a shocking historical murder through a modern lens and explores the lengths that men and women will go to in their search for love and power.",
          image: "books/rizzio.jpg",
        ),
        Book(
          title: "Beneath the Skin",
          author: "Sandra Ireland",
          description: "Suffering from combat stress and struggling to outrun the demons from his past, Walt takes a job in the studio of an Edinburgh taxidermist. His enigmatic boss, Alys, has her own uneasy relationship with the past and someone who doesn't want to let her go. Deliciously disturbing, this psychological thriller peels back the skin of one modern family to reveal the wounds no one wants to see. It deals with the effects of trauma and how facing up to vulnerability is sometimes the only way to let go of the past.",
          image: "books/beneathTheSkin.jpg",
        ),
        Book(
          title: "Luckenbooth",
          author: "Jenni Fagan",
          description: "1910, Edinburgh. Jessie, the devil's daughter, arrives on the doorstep of an imposing tenement building, sent by her father to bear a child for a wealthy couple but, when things go wrong, she places a curse on the building and all who live there - and it lasts a century.\nCaught in the crossfire are the residents of 10 Luckenbooth Close. While the world outside is changing, inside, the curse creeps up through the floors. Soon, the building's longest kept secret - the truth of what happened to Jessie - will finally be heard.",
          image: "books/luckenbooth.jpg",
        ),
      ];
}
