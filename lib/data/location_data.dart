import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/models/Category.dart';

class LocationData {

  static LocationData get shared => LocationData();

  List<Location> get locations => [
    Location(
        name: "Lady Stair Close",
        category: Category.Landmark,
        address: "Lawnmarket, Edinburgh, EH1 2PA",
        description: "Site of Baxter's Close (now demolished) and the lodgings of Robert Burns on his first visit to Edinburgh during 1786-7. The ploughman poet journeyed to Edinburgh from Ayrshire to find a printer for a second edition of his Poems, Chiefly in the Scottish Dialect. William Creech became his publisher and Burns himself became a sensation in the polite circles of Edinburgh. He left a lasting impression on a young Sir Walter Scott who later wrote of him: ‘I never saw such another eye in a human head, though I have seen the most distinguished men in my time.",
        image: "lady_stair_close.jpeg",
        latitude: 55.94959278,
        longitude: -3.19338131,
        website: "https://hiddenscotland.co/listings/lady-stairs-close/"),
    Location(
        name: "Writers' Museum (Lady Stair's House)",
        category: Category.Attraction,
        address: "Lady Stairs House Lady Stair's Close Lawnmarket Royal Mile, Edinburgh, EH1 2PA",
        description: "[Admission free] – This museum is a fitting tribute to the writers who helped shape Edinburgh into the literary city it is today. There are collections dedicated to the life and works of Robert Burns, Sir Walter Scott and Robert Louis Stevenson. Treasures include Burns’ writing desk, Scott’s rocking horse and a pair of Stevenson’s riding boots. The museum is in the historic Lady Stair’s House which was built in1622 and is divided into three floors. The Burns collection is in the attic, Scott occupies the middle floor and Stevenson’s belongings, including a cabinet made by the infamous criminal Deacon Brodie, are in the basement.",
        image: "writers_museum.jpeg",
        latitude: 55.9495566,
        longitude: -3.1933428,
        website: ""),
    Location(
        name: "Makars' Court",
        category: Category.Landmark,
        address: "457/1 Lawnmarket, Edinburgh, EH1 2NT",
        description: "Here, Scottish writers and Makars [Poet Laureates] are celebrated with inscriptions carved into stones. #'Imagine my surprise when, one cold winter's morning last year, I was phoned up out of the blue and asked if I would accept the post of Edinburgh Makar. Would I! I was gobsmacked.'#Ron Butlin (Current Makar) The stones feature quotations from English, Scots and Gaelic writers, including this line from Sorley MacLean: #‘Nan robh againn Alba shaor, #Alba co-shìnte ri ar gaol...'  #‘If we had a Scotland free, Scotland equal to our love...’",
        image: "makars_court.jpeg",
        latitude: 55.9495566,
        longitude: -3.1933428,
        website: ""),
    Location(
        name: "Central Library",
        category: Category.Attraction,
        address: "7-9 George IV Bridge, Edinburgh, EH1 1EG",
        description: "Our half a million people visit the library each year, from the regular borrower looking for a copy of Ian Rankin’s Knots and Crosses (the library has a starring role in the novel) to serious researchers who make use of the library’s vast archive of newspapers, census records and old photos of the city. The library is in fact made up of six separate libraries including art, music and reference. The Scottish Library is a fantastic resource and contains around 72,000 items with works from the sixteenth-century onwards. #The library also hosts regular exhibitions and events with Scottish authors.",
        image: "central_library.jpeg",
        latitude: 55.9483209,
        longitude: -3.1923005,
        website: ""),
    Location(
        name: "National Library of Scotland",
        category: Category.Attraction,
        address: "George IV Bridge, Edinburgh , EH1 1EW",
        description: "[Admission free] - Opposite the Central Library you'll find this information treasure trove of Scotland's knowledge, history and culture, with more than 14 million printed items - books, manuscripts and maps - covering every subject. There's also a café and regular free exhibitions. The National Library is the home to the archive of the John Murray publishing house. It contains letters and manuscripts from over 16,000 writers and thinkers including Jane Austen, Charles Darwin, Sir Walter Scott and Herman Melville.",
        image: "national_library_scotland.jpeg",
        latitude: 55.9485487,
        longitude: -3.1918734,
        website: ""),
    Location(
        name: "Greyfriars Kirkyard",
        category: Category.Landmark,
        address: "26A Candlemaker Row, Edinburgh, EH1 2QE",
        description: "Not only was this one of the favourite haunts of a young Robert Louis Stevenson but it also has memorials to a clutch of famous writers, poets and publishers. Gaelic poet Duncan Ban MacIntyre, ‘Scotland’s worst poet’ William McGonagall, the editor of the first Encyclopaedia Britannica William Smellie and the poet Allan Ramsay can all be found if you take a walk around this peaceful place at the heart of the tourist hubbub.",
        image: "greyfriars_kirkyard.jpeg",
        latitude: 55.947196,
        longitude: -3.192781,
        website: ""),
    Location(
        name: "Greyfriars Bobby",
        category: Category.Landmark,
        address: "Edinburgh, EH1 2QQ",
        description: "This statue of the loyal dog that stayed by his master’s grave for 18 years is a must-see for lovers of Eleanor Atkinson’s popular story. #His master's grave can be seen in the nearby Greyfriars Kirkyard. #Bobby's monument reads:'Greyfriars Bobby#Died 14th January 1872#Aged 16 Years Let his loyalty and devotion be a lesson to us all.' Bobby’s statue is also the site of the Harrow Inn, the periodic residence of James Hogg, the Ettrick Shepherd (1770-1835). Hogg’s most famous work, The Private Memoirs and Confessions of a Justified Sinner, is largely set in Edinburgh with scenes on the nearby Royal Mile and Arthur’s Seat.",
        image: "greyfriars_bobby.jpeg",
        latitude: 55.9469535,
        longitude: -3.1912195,
        website: ""),
  ];
}


