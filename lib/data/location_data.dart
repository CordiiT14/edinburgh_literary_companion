import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/models/Category.dart';

class LocationData {

  // Sharing data with other files through LocationData()
  static LocationData get shared => LocationData();

  
  List<Location> get locations => [
    Location(
        name: "Lady Stair's Close",
        category: Category.Landmark,
        address: "Lawnmarket, Edinburgh, EH1 2PA",
        description: "Site of Baxter's Close (now demolished) and the lodgings of Robert Burns on his first visit to Edinburgh during 1786-7. The ploughman poet journeyed to Edinburgh from Ayrshire to find a printer for a second edition of his Poems, Chiefly in the Scottish Dialect. William Creech became his publisher and Burns himself became a sensation in the polite circles of Edinburgh. He left a lasting impression on a young Sir Walter Scott who later wrote of him: ‘I never saw such another eye in a human head, though I have seen the most distinguished men in my time.",
        image: "landmarks/lady_stair_close.jpeg",
        latitude: 55.94959278,
        longitude: -3.19338131,
        website: "https://hiddenscotland.co/listings/lady-stairs-close/"),
    Location(
        name: "Writers' Museum",
        category: Category.Attraction,
        address: "Lady Stair's Close, Edinburgh, EH1 2PA",
        description: "[Admission free] – This museum is a fitting tribute to the writers who helped shape Edinburgh into the literary city it is today. There are collections dedicated to the life and works of Robert Burns, Sir Walter Scott and Robert Louis Stevenson. Treasures include Burns’ writing desk, Scott’s rocking horse and a pair of Stevenson’s riding boots. The museum is in the historic Lady Stair’s House which was built in1622 and is divided into three floors. The Burns collection is in the attic, Scott occupies the middle floor and Stevenson’s belongings, including a cabinet made by the infamous criminal Deacon Brodie, are in the basement.",
        image: "attractions/writers_museum.jpeg",
        latitude: 55.9495566,
        longitude: -3.1933428,
        website: ""),
    Location(
        name: "Makars' Court",
        category: Category.Landmark,
        address: "457/1 Lawnmarket, Edinburgh, EH1 2NT",
        description: "Here, Scottish writers and Makars [Poet Laureates] are celebrated with inscriptions carved into stones. #'Imagine my surprise when, one cold winter's morning last year, I was phoned up out of the blue and asked if I would accept the post of Edinburgh Makar. Would I! I was gobsmacked.'#Ron Butlin (Current Makar) The stones feature quotations from English, Scots and Gaelic writers, including this line from Sorley MacLean: #‘Nan robh againn Alba shaor, #Alba co-shìnte ri ar gaol...'  #‘If we had a Scotland free, Scotland equal to our love...’",
        image: "landmarks/makars_court.jpeg",
        latitude: 55.9495566,
        longitude: -3.1933428,
        website: ""),
    Location(
        name: "Central Library",
        category: Category.Attraction,
        address: "7-9 George IV Bridge, Edinburgh, EH1 1EG",
        description: "Our half a million people visit the library each year, from the regular borrower looking for a copy of Ian Rankin’s Knots and Crosses (the library has a starring role in the novel) to serious researchers who make use of the library’s vast archive of newspapers, census records and old photos of the city. The library is in fact made up of six separate libraries including art, music and reference. The Scottish Library is a fantastic resource and contains around 72,000 items with works from the sixteenth-century onwards. #The library also hosts regular exhibitions and events with Scottish authors.",
        image: "attractions/central_library.jpeg",
        latitude: 55.9483209,
        longitude: -3.1923005,
        website: ""),
    Location(
        name: "National Library of Scotland",
        category: Category.Attraction,
        address: "George IV Bridge, Edinburgh , EH1 1EW",
        description: "[Admission free] - Opposite the Central Library you'll find this information treasure trove of Scotland's knowledge, history and culture, with more than 14 million printed items - books, manuscripts and maps - covering every subject. There's also a café and regular free exhibitions. The National Library is the home to the archive of the John Murray publishing house. It contains letters and manuscripts from over 16,000 writers and thinkers including Jane Austen, Charles Darwin, Sir Walter Scott and Herman Melville.",
        image: "attractions/national_library_scotland.jpeg",
        latitude: 55.9485487,
        longitude: -3.1918734,
        website: ""),
    Location(
        name: "Greyfriars Kirkyard",
        category: Category.Landmark,
        address: "26A Candlemaker Row, Edinburgh, EH1 2QE",
        description: "Not only was this one of the favourite haunts of a young Robert Louis Stevenson but it also has memorials to a clutch of famous writers, poets and publishers. Gaelic poet Duncan Ban MacIntyre, ‘Scotland’s worst poet’ William McGonagall, the editor of the first Encyclopaedia Britannica William Smellie and the poet Allan Ramsay can all be found if you take a walk around this peaceful place at the heart of the tourist hubbub.",
        image: "landmarks/greyfriars_kirkyard.jpeg",
        latitude: 55.947196,
        longitude: -3.192781,
        website: ""),
    Location(
        name: "Greyfriars Bobby",
        category: Category.Landmark,
        address: "Candlemaker Row, Edinburgh, EH1 2QQ",
        description: "This statue of the loyal dog that stayed by his master’s grave for 18 years is a must-see for lovers of Eleanor Atkinson’s popular story. #His master's grave can be seen in the nearby Greyfriars Kirkyard. #Bobby's monument reads:'Greyfriars Bobby#Died 14th January 1872#Aged 16 Years Let his loyalty and devotion be a lesson to us all.' Bobby’s statue is also the site of the Harrow Inn, the periodic residence of James Hogg, the Ettrick Shepherd (1770-1835). Hogg’s most famous work, The Private Memoirs and Confessions of a Justified Sinner, is largely set in Edinburgh with scenes on the nearby Royal Mile and Arthur’s Seat.",
        image: "landmarks/greyfriars_bobby.jpeg",
        latitude: 55.9469535,
        longitude: -3.1912195,
        website: ""),
    Location(
      name: "St Giles' Cathedral",
      category: Category.Attraction,
      address: "High St, Edinburgh EH1 1RE",
      description: "[Admission free] – A church has stood on this site since before AD 854 and today this majestic building contains memorials to a number of famous literary figures including Robert Louis Stevenson, the novelist Margaret Oliphant, the publisher William Chambers and the bard himself, Robert Burns. The stunning stained glass and awe-inspiring architecture are a treat, as are the regular concerts.",
      image: "attractions/st-giles-cathedral.jpeg",
      latitude: 55.9494837,
      longitude: -3.1930805,
      website: ""
    ),
    Location(
        name: "David Hume Statue",
        category: Category.Landmark,
        address: "379-381 High St, Edinburgh EH1 1PW",
        description: "Hume, the ‘Father of the Scottish Enlightenment’, studied law at Edinburgh University from the age of 12. Hume had no interest in learning from his professors, preferring the written word: #'There is nothing to be learned from a professor, which is not met with in books.' #However Hume did not confine himself to the library, he was very sociable and often held parties because, as he believed: ‘Truth springs from argument amongst friends’. In his work, Hume was intent on dispelling superstition and religion as no more than an aspect of human psychology. His religious beliefs, or lack of them, meant he was never given a university position. Nevertheless his philosophy went on to inspire the likes of Benjamin Franklin, Sigmund Freud and Albert Einstein. ",
        image: "landmarks/David-Hume-Statue.jpeg",
        latitude: 55.9495375,
        longitude: -3.194603,
        website: ""
    ),
    Location(
        name: "Advocate's Close",
        category: Category.Landmark,
        address: "Royal Mile, Edinburgh EH1 1ND",
        description: "Site of the first appearance of Bob Skinner, Quintin Jardine's maverick detective, in his first novel Skinner’s Rules. Skinner is the Head of CID and when a lawyer is brutally murdered in this close, followed by a series of other inexplicable murders including the wife of a colleague, the pressure is on Skinner to find the culprit. ",
        image: "landmarks/Advocates_Close.jpeg",
        latitude: 55.9498438,
        longitude: -3.1915204,
        website:""
    ),
    Location(
        name: "City Chambers",
        category: Category.Landmark,
        address: "253 High St, Edinburgh EH1 1YJ",
        description: "See the handprints of Ian Rankin and JK Rowling in the courtyard (as you enter on the left). Rankin received the award in 2007 and Rowling was honoured the following year. Their contributions to the literary scene, from the gritty dealings of Detective Inspector Rebus to Harry Potter’s magic misadventures have cemented Edinburgh’s reputation as a writer’s city.",
        image: "landmarks/Edinburgh_City_Chambers.jpeg",
        latitude: 55.9501623,
        longitude: -3.1901325,
        website: ""
    ),
    Location(
        name: "Anchor Close",
        category: Category.Landmark,
        address: "Anchor Close, Edinburgh EH1 1NY",
        description: "Site of William Smellie's printing house which printed works by the poet Robert Fergusson, economist Adam Smith, philosopher Adam Fergusson, and work by Robert Burns. #Smellie was also involved in editing the first edition of the Encyclopaedia Britannica (1768-71). He was great friends with Burns, who wrote of him: #‘His uncomb’d, hoary locks, wild-staring, #thatch’d #A head for thought profound and clear #unmatch’d’.",
        image: "landmarks/anchor-close.jpeg",
        latitude: 55.950375,
        longitude: -3.1900113,
        website:""
    ),
    Location(
        name: "Fleshmarket Close",
        category: Category.Landmark,
        address: "Royal Mile, Edinburgh EH1 1DY",
        description: "Formerly the city abattoir, the close provides the setting for one of Ian Rankin's most famous Inspector Rebus novels of the same name. The skeletons of a woman and an infant are discovered in a cellar on the close and an illegal immigrant has been murdered in one of the city’s housing schemes. Rebus’ investigation takes him to an asylum seekers’ detention centre and deep into Edinburgh’s underworld to find the spider at the centre of this web of crime. ",
        image: "landmarks/fleshmarket-cl.jpeg",
        latitude: 55.9506239,
        longitude: -3.1892168,
        website:""
    ),
    Location(
        name: "Scott Monument",
        category: Category.Landmark,
        address: "E. Princes St Gardens, Edinburgh EH2 2EJ",
        description:"Get an outstanding view of the city as you climb the 287 steps that take you to the top of the world's largest monument to an author, Sir Walter Scott, also known as 'The Wizard of the North'. The monument is 200ft tall and 64 statuettes of characters from Scott’s novels are carved into its stone. Scott’s statue at the centre of the monument is accompanied by his beloved dog Maida. Scott initially wrote anonymously but his novels were so successful he was eventually forced into the limelight. Even if you have not read Scott, the legacy of his historical fiction is such that figures such as Rob Roy and Ivanhoe are well known. He also coined many common phrases such as ‘cold shoulder’ and ‘caught red-handed’.  ",
        image: "landmarks/scott-monument.jpeg",
        latitude: 55.952381,
        longitude: -3.1954628,
        website: ""
    ),
    Location(
        name: "Waverley Station",
        category: Category.Landmark,
        address: "Waverley Bridge, Edinburgh EH1 1BE",
        description: "Named after Waverley, Walter Scott’s first novel which was published in 1814 and became one of the most widely read books of the nineteenth-century. #Scott's novels were highly influential in developing Scottish identity, both at home and perceptions abroad. He even popularised tartan, by asking George IV to don a kilt on his visit to Edinburgh in 1822.",
        image: "landmarks/waverley-station.jpeg",
        latitude: 55.952381,
        longitude: -3.1954628,
        website: ""
    ),
    Location(
        name: "Blackfriars Street",
        category: Category.Landmark,
        address: "Blackfriars Street, Edinburgh EH1 1NE",
        description: "At the foot of Blackfriars Street is a plaque marking the spot where Walter Chepman and Androw Myllar set up Scotland’s first printing press. They were given exclusive permission by James IV on the condition that they focused on books developing Scottish culture and identity. However the first book they completed, on 4 April 1508, was The Complaint of the Black Knight, a courtly love poem by the English monk John Lydgate. This site also has rich theatrical significance as Shakespeare’s company toured to Edinburgh, performing in Blackfriars Street under James’ protection. Scottish events may colour both Hamlet and Macbeth.",
        image: "landmarks/blackfriars.jpeg",
        latitude: 55.949071,
        longitude: -3.18552,
        website: ""
    ),
    Location(
        name: "Scottish Book Trust",
        category: Category.Landmark,
        address: "55 High St, Edinburgh EH1 1SR",
        description: "[not open to the public] - Scotland's national agency for reading and writing, an organisation committed to the promotion of reading and books. The Book Trust also leads Book Week Scotland, encouraging people of all ages and interests to celebrate Scotland’s literary scene with hundreds of events across the country.",
        image: "landmarks/Scottish-Book-Trust.jpeg",
        latitude: 55.9508356,
        longitude: -3.1854707,
        website: ""
    ),
    Location(
        name: "Scottish Storytelling Centre" ,
        category: Category.Attraction,
        address: "43-45 High St, Edinburgh EH1 1SR",
        description: "The home of Scotland's stories and the best place to nurture your storytelling skills. There are regular events featuring storytellers from Scotland and around the world. The centre hosts the Scottish International Storytelling Festival and there are regular free exhibitions and a great café too.",
        image: "attractions/ssc.jpeg",
        latitude: 55.9506153,
        longitude: -3.1854213,
        website: "https://www.scottishstorytellingcentre.com/"
    ),
    Location(
        name: "John Knox House",
        category: Category.Attraction,
        address: "43-45 High St, Edinburgh EH1 1SR",
        description: "The Storytelling Centre was first opened in 2006 and is adjoined to the historic John Knox House, the home of the leader of the Reformation in Scotland. On the exterior of the builidng there is a quotation from the Glaswegian author of the landmark Scottish novel Lanark, Alasdair Gray, reading: ‘Work as if you live in the early days of a better nation.’",
        image: "attractions/jkh.png",
        latitude: 55.9506268,
        longitude: -3.1849772,
        website: "https://www.scottishstorytellingcentre.com/john-knox-house/"
    ),
    Location(
        name: "Moubray House",
        category: Category.Landmark,
        address: "61 High St, Edinburgh EH1 1SR",
        description: "Thought to be where Daniel Defoe, author of Robinson Crusoe, stayed and wrote when in Edinburgh. The character of Crusoe was inspired by a Scottish sailor, Alexander Selkirk, who was castaway on an island off the coast of Chile with no human contact until his rescue four years later. #It happen'd one day about noon going towards my boat, I was exceedingly surprised with the print of a man's naked foot on the shore.#from Robinson Crusoe .The Edinburgh Courant was one of the first newspapers in Britain, a forerunner of the Edinburgh Evening News, and the Capital’s main source of local information. It is believed that Daniel Defoe was its editor, working from this house, in the early 18th century. More than this though he lodged here as a spy for the English Government in 1705-06.",
        image: "landmarks/moubray-house.jpeg",
        latitude: 55.9505901,
        longitude: -3.1852927,
        website:""
    ),
    Location(
        name: "Tweeddale Court",
        category: Category.Landmark,
        address: "14 High Street, Edinburgh EH1 1TE",
        description: "This area has been a haunt of writers and publishers for centuries; Sir Walter Scott and James Hogg came to be published here. Later the publishers Oliver and Boyd occupied the house at the far end, once the town residence of the Earl of Tweeddale. More recently, in 1984, the Scottish Poetry Library began its life here, led by poet Tessa Ransford, supported by a galaxy of literary talent. This included leading figures in Scotland’s literary renaissance, such as Sorley MacLean, Iain Crichton Smith, Norman MacCaig and Naomi Mitchison, all of whom read their work in this courtyard. The Library, which was housed in what is now the Evergreen Studios, moved in 1999 to a new building in the Canongate, but publishing continues with Canongate Books and The List based in Tweeddale House.",
        image: "landmarks/Tweedale-Court.jpeg",
        latitude: 55.9504052,
        longitude: -3.1846636,
        website:""
    ),
    Location(
        name: "Scottish Poetry Library",
        category: Category.Attraction,
        address: "5 Crichton's Close, Edinburgh EH8 8DT",
        description: "This is the place for poetry in Scotland, for the regular reader, the serious student or the casual browser. There are around 30,000 items, from the oft-recited giants to the little known voices in English, Scots and Gaelic. There is also an expanding collection of European poetry, both in translation and the original language. Special collections include the archive of the first Scots Makar (poet laureate) Edwin Morgan and a substantial collection of work by Ian Hamilton Finlay. The library specialises in concrete poetry, small press and artists’ books. There are events, workshops and courses throughout the year.",
        image: "attractions/spl.jpeg",
        latitude: 55.9514237,
        longitude: -3.1802714,
        website:""
    ),
    // Location(
    //     name: ,
    //     category: ,
    //     address: ,
    //     description: ,
    //     image: ,
    //     latitude: ,
    //     longitude: ,
    //     website:
    // ),
    Location(
        name: "Armchair Books",
        category: Category.Bookshop,
        address: "72-74 West Port, Edinburgh EH1 2LE",
        description: "A favourite stop for bibliophiles for two decades, Armchair Books is owned by the independently-minded David Govan. The shop has a good general stock of fiction, non-fiction and antiquarian, split over two narrow premises. No. 72 houses most of the fiction, including a decent sci-fi section, whilst no.74, next door, contains pretty much everything else.",
        image: "bookshops/armchairBooks.jpg",
        latitude: 55.946267,
        longitude: -3.20009,
        website: "http://www.armchairbooks.co.uk/"
    ),
    Location(
        name: "Edinburgh Books",
        category: Category.Bookshop,
        address: "145-147 West Port, Edinburgh EH3 9DP",
        description: "Edinburgh Books has been a landmark for book lovers for more than twenty years. Formerly known as West Port Books, this off-beat Edinburgh bookshop has a huge, wide ranging stock of second-hand and antiquarian books. For the reader, there is a large stock of fiction and non-fiction; for the collector, a sizeable number of intriguing titles; and for the musician, one basement room is rented by Alba Musick of Glasgow and is full of sheet music.",
        image: "bookshops/edinburghBooks.jpg",
        latitude: 55.946014,
        longitude: -3.201753,
        website: "http://edinburghbooks.net/"
    ),
    Location(
        name: "The Edinburgh Bookshop",
        category: Category.Bookshop,
        address: "219 Bruntsfield Place, Edinburgh EH10 4DH",
        description: "The Edinburgh Bookshop stocks a carefully chosen selection of titles, from the classics to the quirky and from beautifully illustrated non-fiction titles to the latest graphic novel. The children's section is to the back, and has everything from cloth books for young customers to challenging fiction for teenagers.",
        image: "bookshops/edinburghBookshop.jpg",
        latitude: 55.934548,
        longitude: -3.209832,
        website: "http://edinburghbookshop.com/"
    ),
    Location(
        name: "Ginger and Pickles Chidren's Bookshop",
        category: Category.Bookshop,
        address: "51 St Stephen St, Edinburgh EH3 5AH",
        description: "Ginger and Pickles is an independent bookshop for children. The shop is both cosy and quaint, designed especially with young readers in mind and is passionate about children’s literature. Their carefully curated beautiful books collections range from baby to young adult.",
        image: "bookshops/gingerAndPickles.jpg",
        latitude: 55.95807,
        longitude: -3.20651,
        website: "https://www.gingerandpicklesbookshop.com"
    ),
    Location(
        name: "Golden Hare Books",
        category: Category.Bookshop,
        address: "68 St Stephen St, Edinburgh EH3 5AQ",
        description: "The books at Golden Hare are handpicked with an emphasis on beautiful editions that will take pride of place on discerning bookshelves and nightstands. Golden Hare Books also run a regular bookgroup, as well as hosting a variety of author readings and discussions.",
        image: "bookshops/goldenHareBooks.jpg",
        latitude: 55.95792,
        longitude: -3.20636,
        website: "http://goldenharebooks.com/"
    ),
    Location(
        name: "John Kay's",
        category: Category.Bookshop,
        address: "8 Victoria St, Edinburgh EH1 2HG",
        description: "Formerly The Old Town Bookshop, John Kay’s sits on Victoria Street, one of Edinburgh’s most colourful and most iconic streets. Named after John Kay, an engraver and caricaturist famous for his humourous portraits of the great and good Edinburgh residents at the turn of the 19th Century. There is always a good selection of his original prints in the shop.",
        image: "bookshops/johnKays.jpg",
        latitude: 55.94884,
        longitude: -3.19313,
        website: "https://www.facebook.com/johnkayshop/"
    ),
    Location(
        name: "Lighthouse Books",
        category: Category.Bookshop,
        address: "43-45 W Nicolson St, Edinburgh EH8 9DB",
        description: "Lighthouse is a queer-owned and woman-led independent community bookshop - an unapologetically activist, intersectional, feminist, antiracist, lgbtq+ community space that celebrates diversity of thought and expression, championing voices from the margins.",
        image: "bookshops/lighthouseBooks.jpg",
        latitude: 55.94462,
        longitude: -3.18546,
        website: "https://www.lighthousebookshop.com"
    ),
    Location(
        name: "Main Point Books",
        category: Category.Bookshop,
        address: "77 Bread Street, Edinburgh EH3 9AH",
        description: "If the books on the shelves here reflect the interests of the customers, it would seem that they are an athletic, intelligent and somewhat dreamy lot. Founded 14 years ago on Lauriston Street, between a lap dancing club and a church, 'catering for saints and sinners alike', Main Point Books now sits between a lap dancing club and a tattoo parlour, hence the playful slogan: 'For a couple of quid, a book will sit on your lap all night long'.",
        image: "bookshops/mainPointBooks.jpg",
        latitude: 55.94592,
        longitude: -3.202525,
        website: "http://mainpointbooks.co.uk/"
    ),
    Location(
        name: "McNaughtan's Bookshop",
        category: Category.Bookshop,
        address: "3a-4a Haddington Place, Edinburgh EH7 4AE",
        description: "Established in 1957, McNaughtan's is a second-hand and antiquarian bookshop dealing in a wide variety of areas including literature, children's and illustrated books, history, travel and topography, and Scottish books. The craft, antiques, art & architecture sections flank the in-house art gallery.",
        image: "bookshops/mcnaughtonsBookshop.jpg",
        latitude: 55.959451,
        longitude: -3.183632,
        website: "https://mcnaughtans.co.uk/"
    ),
    Location(
        name: "The Portobello Bookshop",
        category: Category.Bookshop,
        address: "46 Portobello High St, Edinburgh EH15 1DA",
        description: "An independent bookshop based in Edinburgh's seaside community of Portobello. A warm, modern, open space that’s welcoming and a pleasure to spend time browsing books in, The Portobello Bookshop also hosts a great events programme.",
        image: "bookshops/portobelloBookshop.jpg",
        latitude: 55.95506,
        longitude: -3.11766,
        website: "https://theportobellobookshop.com"
    ),
    Location(
        name: "Rare Birds Book Shop",
        category: Category.Bookshop,
        address: "13 Raeburn Pl, Edinburgh EH4 1HU",
        description: "Rare Birds Book Shop is new on the map, having opened in 2021, and is Scotland's only bookshop dedicated entirely to women's writing. Their mission is to champion female authors and help you discover brilliant books you'd never have otherwise heard of. From literary heavyweights to breezy beach reads, the staff will help you make space on your bookshelf for women's writing across every genre.",
        image: "bookshops/rareBirdsBookshop.jpg",
        latitude: 55.95883,
        longitude: -3.21072,
        website: "https://rarebirdsbooks.com/pages/visit-us"
    ),
    Location(
        name: "Till's Bookshop",
        category: Category.Bookshop,
        address: "1 Hope Park Crescent, Edinburgh EH8 9NA",
        description: "Founded in 1986, Tills bookshop specialises in literature, genre fiction (including science fiction and mystery) and the humanities. Close to the university and popular with students and staff, Tills has become something of an institution. One review from the Students' Association reads: 'If all second-hand bookshops were like Tills, the world would be a better place.'",
        image: "bookshops/tillsBookshop.jpg",
        latitude: 55.941184,
        longitude: -3.182784,
        website: "https://www.tillsbookshop.co.uk/"
    ),
    Location(
        name: "Transreal Fiction",
        category: Category.Bookshop,
        address: "7 Cowgatehead, Edinburgh EH1 1JY",
        description: "Transreal Fiction is dedicated to selling science fiction, fantasy, related books, and a limited selection of other merchandise. Mike Calder opened the shop in 1996 and named the shop after the term coined by Rudy Rucker to describe his own fiction (yes, Rudy gave his permission).",
        image: "bookshops/transrealFiction.jpg",
        latitude: 55.947714,
        longitude: -3.193974,
        website: "http://transreal.wordpress.com/"
    ),
    Location(
        name: "Topping and Company",
        category: Category.Bookshop,
        address: "2 Blenheim Pl, Edinburgh EH7 5JH",
        description: "The Edinburgh branch of this family-owned bookstore is enormous and holds around 70,000 titles over two floors. In fact, the Topping family have boasted that this is the largest independent bookshop to open in the country for decades!",
        image: "bookshops/toppingAndCo.jpg",
        latitude: 55.95776,
        longitude: -3.18428,
        website: "https://www.toppingbooks.co.uk"
    ),
    Location(
        name: "Typewronger Books",
        category: Category.Bookshop,
        address: "4a Haddington Pl, Edinburgh EH7 4AE",
        description: "Attached to McNaughton’s Bookshop & Gallery is Typewronger Books, a bookshop with a very different vibe. They sell both books and typewriters, which make for the perfect combination. Isn’t it every writer’s dream to have a vintage typewriter? The books are all carefully selected by the owner so there’s a small but well-curated assortment of books in all genres.",
        image: "bookshops/typewrongerBooks.jpg",
        latitude: 55.95931,
        longitude: -3.1837,
        website: "https://www.typewronger.com"
    ),
  ];
}


