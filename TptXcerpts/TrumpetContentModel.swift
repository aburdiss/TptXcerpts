//
//  TrumpetContentModel.swift
//  TptXcerpts
//
//  Created by Alexander Burdiss on 5/25/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

//TODO: Add more excerpts that aren't just on Lexcerpts

import Foundation

/**
 Composition collection that holds all information about a composition, and is displayed on a view.
 */
struct Composition: Identifiable {
    let id: Int
    var composer: String
    var composerLast: String
    var name: String
    var date: String
    var era: String
    var genre: String
    var excerpts: [Excerpt]
    var mutes: String
    var videos: [[String]] /// [Name, YouTubeID]
}

/**
 Excerpt collection that holds images of an excerpt.
 */
struct Excerpt: Identifiable {
    let id: Int
    var description: String
    var measures: String
    var pictures: [[String]] /// [Part, PictureNo.]
}

/**
 Composer collection that holds all the information about a composer. This information is displayed in one view.
 */
struct Composer: Identifiable {
    let id: Int
    var name: String
    var ipa: String
    var image: Int
    var country: String
    var dates: String
    var bio: String
    var excerpts: [Composition]
}

//MARK: Compositions

let bachBrandenburg2 = Composition(id: 0, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Brandenburg Concerto No. 3", date: "1721", era: "Baroque", genre: "Concerto", excerpts: [
    Excerpt(id: 0, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 37", pictures: [["F Alto Trumpet", "1000"]]),
    Excerpt(id: 1, description: "Excerpt 2", measures: "Mov. III, mm. 1 - 27", pictures: [["F Alto Trumpet", "1001"]]),
    Excerpt(id: 2, description: "Excerpt 3", measures: "Mov. III, mm. 41 - 57", pictures: [["F Alto Trumpet", "1002"]])
], mutes: "", videos: [
    ["", ""]
])

let bachCantata = Composition(id: 1, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Cantata BWV 51", date: "1730", era: "Baroque", genre: "Cantata", excerpts: [
    Excerpt(id: 3, description: "Excerpt 1", measures: "mm. 1 - 29", pictures: [["C Trumpet", "1003"]])
], mutes: "", videos: [
    ["", ""]
])

let bachChristmasOratorio = Composition(id: 2, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Weihnachtsoratorium", date: "1735", era: "Baroque", genre: "Oratorio", excerpts: [
    Excerpt(id: 4, description: "Excerpt 1", measures: "No. 64, Choral", pictures: [["D Trumpet 1", "1004"], ["D Trumpet 2", "1005"], ["D Trumpet 3", "1006"]])
], mutes: "", videos: [
    ["", ""]
])

let bachMagnificant = Composition(id: 3, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Magnificat in D major", date: "1735", era: "Baroque", genre: "Magnificant", excerpts: [
    Excerpt(id: 5, description: "Excerpt 1", measures: "No. 1, mm. 1 - 49", pictures: [["D Trumpet 1", "1007"], ["D Trumpet 2", "1008"], ["D Trumpet 3", "1009"]])
], mutes: "", videos: [
    ["", ""]
])

let bachMassB = Composition(id: 4, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Mass in B minor", date: "1749", era: "Baroque", genre: "Mass", excerpts: [
    Excerpt(id: 6, description: "Excerpt 1", measures: "Credo, mm. 29 - 47", pictures: [["D Trumpet 1", "1010"]]),
    Excerpt(id: 7, description: "Excerpt 2", measures: "Credo, mm. 65 - End", pictures: [["D Trumpet 1", "1011"], ["D Trumpet 2", "1012"], ["D Trumpet 3", "1013"]])
], mutes: "", videos: [
    ["", ""]
])

let beethovenLeonore2 = Composition(id: 5, composer: "Ludwig Van Beethoven", composerLast: "Beethoven", name: "Leonora Overture No.2", date: "1805", era: "Early Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 8, description: "Excerpt 1", measures: "mm. 392 - 411", pictures: [["E♭ Trumpet", "1014"]])
], mutes: "", videos: [
    ["", ""]
])


let beethovenLeonore3 = Composition(id: 6, composer: "Ludwig Van Beethoven", composerLast: "Beethoven", name: "Leonora Overture No.3", date: "1806", era: "Early Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 9, description: "Excerpt 1", measures: "20 mm. after [D] - [E]", pictures: [["B♭ Trumpet", "1015"]])
], mutes: "", videos: [
    ["", ""]
])

let beethoven5 = Composition(id: 7, composer: "Ludwig Van Beethoven", composerLast: "Beethoven", name: "Symphony No. 5", date: "1808", era: "Early Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 10, description: "Excerpt 1", measures: "Mov. II, [A] - 9 mm. after [A]", pictures: [["C Trumpet 1", "1016"], ["C Trumpet 2", "1017"]]),
    Excerpt(id: 11, description: "Excerpt 2", measures: "Mov. IV, mm. 374 - 4 mm. before [A]", pictures: [["C Trumpet 1", "1018"], ["C Trumpet 2", "1019"]])
], mutes: "", videos: [
    ["", ""]
])

let beethoven9 = Composition(id: 8, composer: "Ludwig Van Beethoven", composerLast: "Beethoven", name: "Symphony No. 9", date: "1824", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 12, description: "Excerpt 1", measures: "Mov. IV, [B] - 15 mm. after [C] ", pictures: [["D Trumpet 1", "1020"], ["D Trumpet 2", "1021"]])
], mutes: "", videos: [
    ["", ""]
])

let beethovenViolin = Composition(id: 9, composer: "Ludwig Van Beethoven", composerLast: "Beethoven", name: "Violin Concerto in D Major", date: "1806", era: "Early Romantic", genre: "Violin Concerto", excerpts: [
    Excerpt(id: 13, description: "Excerpt 1", measures: "Mov. I, mm. 346 - 357", pictures: [["D Trumpet 1", "1022"], ["D Trumpet 2", "1023"]])
], mutes: "", videos: [
    ["", ""]
])

let berliozRomanCarnival = Composition(id: 10, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Roman Carnival Overture", date: "1844", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 14, description: "Excerpt 1", measures: "[3] - 5 mm. before [4] ", pictures: [["D Trumpet 1", "1024"], ["D Trumpet 2", "1025"], ["A Cornet 1", "1026"], ["A Cornet 2", "1027"]]),
    Excerpt(id: 15, description: "Excerpt 2", measures: "12 mm. before [8] - [8] ", pictures: [["D Trumpet 1", "1028"], ["D Trumpet 2", "1029"], ["A Cornet 1", "1030"], ["A Cornet 2", "1031"]])
], mutes: "", videos: [
    ["", ""]
])

let berliozSymphonie = Composition(id: 11, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Symphonie fantastique", date: "1830", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 16, description: "Excerpt 1", measures: "Mov. II, [21] - [22]", pictures: [["B♭ Cornet obbligato", "1032"]]),
    Excerpt(id: 17, description: "Excerpt 2", measures: "Mov. II, 12 mm. after [25] - [26]", pictures: [["B♭ Cornet obbligato", "1033"]]),
    Excerpt(id: 18, description: "Excerpt 3", measures: "Mov. II, 3 mm. before [28] - 3 mm. after [29]", pictures: [["B♭ Cornet obbligato", "1034"]]),
    Excerpt(id: 19, description: "Excerpt 4", measures: "Mov. II, 7 mm. before [31] - 8 mm. before [33]", pictures: [["B♭ Cornet obbligato", "1035"]]),
    Excerpt(id: 20, description: "Excerpt 5", measures: "Mov. II, 8 mm. after [33] - [35]", pictures: [["B♭ Cornet obbligato", "1036"]]),
    Excerpt(id: 21, description: "Excerpt 6", measures: "Mov. II, 14 mm. before [36] - End", pictures: [["B♭ Cornet obbligato", "1037"]]),
    Excerpt(id: 22, description: "Excerpt 7", measures: "Mov. IV, [53] - 7 mm. before [54] ", pictures: [["B♭ Trumpet 1", "1038"], ["B♭ Trumpet 2", "1039"], ["B♭ Cornet 1", "1040"], ["B♭ Cornet 2", "1041"]])
], mutes: "", videos: [
    ["", ""]
])

let bizetCarmen = Composition(id: 12, composer: "Georges Bizet", composerLast: "Bizet", name: "Carmen Suite No. 1", date: "1874", era: "Romantic", genre: "Orchestral Suite", excerpts: [
    Excerpt(id: 23, description: "Excerpt 1", measures: "No. 1", pictures: [["A Trumpet 1", "1042"], ["A Trumpet 2", "1043"]])
], mutes: "", videos: [
    ["", ""]
])

let brahmsAcademic = Composition(id: 13, composer: "Johannes Brahms", composerLast: "Brahms", name: "Academic Festival Overture", date: "1880", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 24, description: "Excerpt 1", measures: "Mov. I, 15 mm. after [C] - 12 mm. after [D]", pictures: [["C Trumpet 1", "1044"], ["C Trumpet 2", "1045"], ["C Trumpet 3", "1046"]])
], mutes: "", videos: [
    ["", ""]
])

let brahms1 = Composition(id: 14, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 1", date: "1876", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 25, description: "Excerpt 1", measures: "Mov. II, mm. 122 - End", pictures: [["E Trumpet 1", "1047"], ["E Trumpet 2", "1048"]])
], mutes: "", videos: [
    ["", ""]
])

let brahms2 = Composition(id: 15, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 2", date: "1877", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 26, description: "Excerpt 1", measures: "Mov. 1,  mm. 281 - 298", pictures: [["D Trumpet 1", "1049"], ["D Trumpet 2", "1050"]]),
    Excerpt(id: 27, description: "Excerpt 2", measures: "Mov. 1, mm. 513 - End", pictures: [["D Trumpet 1", "1051"], ["D Trumpet 2", "1052"]]),
    Excerpt(id: 28, description: "Excerpt 3", measures: "Mov. 4, mm. 397 - End", pictures: [["D Trumpet 1", "1053"], ["D Trumpet 2", "1054"]])
], mutes: "", videos: [
    ["", ""]
])

let bruckner4 = Composition(id: 16, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 4", date: "1874", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 29, description: "Excerpt 1", measures: "", pictures: [["F Trumpet 1", "1055"], ["F Trumpet 2", "1056"], ["F Trumpet 3", "1057"]])
], mutes: "", videos: [
    ["", ""]
])

let bruckner7 = Composition(id: 17, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 7", date: "1883", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 30, description: "Excerpt 1", measures: "Mov. I, mm. 91 - 98", pictures: [["F Trumpet 1", "1058"]]),
    Excerpt(id: 31, description: "Excerpt 2", measures: "Mov. I, mm. 139 - 148", pictures: [["F Trumpet 1", "1059"], ["F Trumpet 2", "1060"], ["F Trumpet 3", "1061"]]),
    Excerpt(id: 32, description: "Excerpt 3", measures: "Mov. I, [M] - 2 mm. before [N]", pictures: [["F Trumpet 1", "1062"], ["F Trumpet 2", "1063"], ["F Trumpet 3", "1064"]]),
    Excerpt(id: 33, description: "Excerpt 4", measures: "Mov. I, 4 mm. after [X] - End", pictures: [["F Trumpet 1", "1065"], ["F Trumpet 2", "1066"], ["F Trumpet 3", "1067"]]),
    Excerpt(id: 34, description: "Excerpt 5", measures: "Mov. II, mm. 172 - 182", pictures: [["F Trumpet 1", "1068"], ["F Trumpet 2", "1069"], ["F Trumpet 3", "1070"]]),
    Excerpt(id: 35, description: "Excerpt 6", measures: "Mov. III, mm. 169 - 196", pictures: [["F Trumpet 1", "1071"], ["F Trumpet 2", "1072"]]),
    Excerpt(id: 36, description: "Excerpt 7", measures: "Mov. IV, [P] - [S] ", pictures: [["F Trumpet 1", "1073"], ["F Trumpet 2", "1074"], ["F Trumpet 3", "1075"]])
], mutes: "", videos: [
    ["", ""]
])

let bruckner8 = Composition(id: 18, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 8", date: "1887", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 37, description: "Excerpt 1", measures: "Mov. IV, mm. 11 - [B] ", pictures: [["F Trumpet 1", "1076"], ["C Trumpet 2", "1077"], ["C Trumpet 3", "1078"]])
], mutes: "", videos: [
    ["", ""]
])

let debussyNocturnes = Composition(id: 19, composer: "Claude Debussy", composerLast: "Debussy", name: "Nocturnes", date: "1899", era: "Romantic", genre: "Nocturne", excerpts: [
    Excerpt(id: 38, description: "Excerpt 1", measures: "Fêtes, 8 mm. after [10] - [11] ", pictures: [["F Trumpet 1 and 2", "1079"], ["F Trumpet 3", "1080"]])
], mutes: "", videos: [
    ["", ""]
])

let debussyLaMer = Composition(id: 20, composer: "Claude Debussy", composerLast: "Debussy", name: "La Mer", date: "1905", era: "Romantic", genre: "Orchestral Piece", excerpts: [
    Excerpt(id: 39, description: "Excerpt 1", measures: "Mov. I, 3 mm. before [1] - 6 mm. before [2]", pictures: [["F Trumpet 1", "1081"]]),
    Excerpt(id: 40, description: "Excerpt 2", measures: "Mov. 3, 5 mm. after [52] - 7 mm. after [52])", pictures: [["C Cornet 1", "1082"]]),
    Excerpt(id: 41, description: "Excerpt 3", measures: "Mov. 3, 8 mm. after [57] - [58]", pictures: [["F Trumpet 1 and 2", "1083"], ["F Trumpet 3", "1084"], ["C Cornet 1 and 2", "1085"]])
], mutes: "", videos: [
    ["", ""]
])

let donizettiDonPasquale = Composition(id: 21, composer: "Gaetano Donizetti", composerLast: "Donizetti", name: "Don Pasquale", date: "1843", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 42, description: "Excerpt 1", measures: "Prelude to Act II, mm. 5 - 3 mm. after [1]", pictures: [["B♭ Trumpet 1 and 2", "1086"]])
], mutes: "", videos: [
    ["", ""]
])

let dvorak8 = Composition(id: 22, composer: "Antonín Dvořák", composerLast: "Dvořák", name: "Symphony No. 8", date: "1889", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 43, description: "Excerpt 1", measures: "Mov. I, 17 mm. after [K] - 2 mm. after [L] ", pictures: [["C Trumpet 1", "1087"], ["C Trumpet 2", "1088"]]),
    Excerpt(id: 44, description: "Excerpt 2", measures: "Mov. II, 7 mm. before [E] - [F] ", pictures: [["C Trumpet 1", "1089"], ["C Trumpet 2", "1090"]]),
    Excerpt(id: 45, description: "Excerpt 3", measures: "Mov. IV, mm. 1 - 18", pictures: [["D Trumpet 1", "1091"], ["D Trumpet 2", "1092"]])
], mutes: "", videos: [
    ["", ""]
])

let dvorak9 = Composition(id: 23, composer: "Antonín Dvořák", composerLast: "Dvořák", name: "Symphony No. 9", date: "1893", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 46, description: "Excerpt 1", measures: "Movement II, 5 mm. after [4] - [5] ", pictures: [["C Trumpet 1", "1093"], ["C Trumpet 2", "1094"]]),
    Excerpt(id: 47, description: "Excerpt 2", measures: "Mov. IV, mm. 8 - 25", pictures: [["E Trumpet 1", "1095"], ["E Trumpet 2", "1096"]])
], mutes: "", videos: [
    ["", ""]
])

let handelMessiah = Composition(id: 24, composer: "George Frideric Handel", composerLast: "Handel", name: "Messiah", date: "1741", era: "Baroque", genre: "Oratorio", excerpts: [
    Excerpt(id: 48, description: "Excerpt 1", measures: "No. 46, Air", pictures: [["C Trumpet 1", "1097"]])
], mutes: "", videos: [
    ["", ""]
])

let haydn100 = Composition(id: 25, composer: "Franz Joseph Haydn", composerLast: "Haydn", name: "Symphony No. 100", date: "1794", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 49, description: "Excerpt 1", measures: "Mov. II, mm. 152 - 159", pictures: [["C Trumpet 2", "1098"]])
], mutes: "", videos: [
    ["", ""]
])

let mahlerDasLied = Composition(id: 26, composer: "Gustav Mahler", composerLast: "Mahler", name: "Das Lied von der Erde", date: "1909", era: "Romantic", genre: "Symphonic Piece", excerpts: [
    Excerpt(id: 50, description: "Excerpt 1", measures: "Mov. I, 5 mm. before [29] - 3 mm. before [30]", pictures: [["F Trumpet 1", "1099"]])
], mutes: "", videos: [
    ["", ""]
])

let mahler1 = Composition(id: 27, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 1", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 51, description: "Excerpt 1", measures: "Mov. I, 4 mm. after [1] - 8 mm. before [2]", pictures: [["F Trumpet 1", "1100"], ["F Trumpet 2", "1101"], ["B♭ Trumpet 3", "1102"]]),
    Excerpt(id: 52, description: "Excerpt 2", measures: "Mov. I, [2] - 2 mm. after [3] ", pictures: [["F Trumpet 1", "1103"], ["F Trumpet 2", "1104"]]),
    Excerpt(id: 53, description: "Excerpt 3", measures: "Mov. III, [5] - 4 mm. after [7]", pictures: [["F Trumpet 1", "1105"], ["F Trumpet 2", "1106"]])
], mutes: "", videos: [
    ["", ""]
])

let mahler2 = Composition(id: 28, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 2", date: "1894", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 54, description: "Excerpt 1", measures: "Mov. I, [17] - 8 mm. after [19]", pictures: [["F Trumpet 1", "1107"], ["F Trumpet 2", "1108"], ["F Trumpet 3", "1109"], ["F Trumpet 4", "1110"]]),
    Excerpt(id: 55, description: "Excerpt 2", measures: "Mov. V, [22] to [25]", pictures: [["Offstage F Trumpet 1", "1111"], ["Offstage C Trumpet 2", "1112"]]),
    Excerpt(id: 56, description: "Excerpt 3", measures: "Mov. V, [30] - [31] ", pictures: [["Offstage F Trumpet 1", "1113"], ["Offstage F Trumpet 2", "1114"], ["Offstage F Trumpet 3", "1115"], ["Offstage F Trumpet 4", "1116"]])
], mutes: "", videos: [
    ["", ""]
])

let mahler3 = Composition(id: 29, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 3", date: "1896", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 57, description: "Excerpt 1", measures: "Mov. III, 1 mm. before [14] - [16] ", pictures: [["B♭ Flügelhorn", "1117"]]),
    Excerpt(id: 58, description: "Excerpt 2", measures: "Mov. VI, [26] - [31] ", pictures: [["F Trumpet 1", "1118"], ["F Trumpet 2", "1119"], ["B♭ Trumpet 3", "1120"], ["B♭ Trumpet 4", "1121"]])
], mutes: "", videos: [
    ["", ""]
])

let mahler4 = Composition(id: 30, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 4", date: "1901", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 59, description: "Excerpt 1", measures: "Mov. I, 3 mm. after [16] - 3 mm. before [18]", pictures: [["F Trumpet 1", "1122"], ["F Trumpet 2", "1123"], ["F Trumpet 3", "1124"]])
], mutes: "", videos: [
    ["", ""]
])

let mahler5 = Composition(id: 31, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 5", date: "1902", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 60, description: "Excerpt 1", measures: "Mov. I, Beginning - 6 mm. after [1] ", pictures: [["B♭ Trumpet 1", "1125"], ["B♭ Trumpet 2", "1126"], ["B♭ Trumpet 3", "1127"], ["B♭ Trumpet 4", "1128"]]),
    Excerpt(id: 61, description: "Excerpt 2", measures: "Mov. I, [3] - 4 mm. before [4] ", pictures: [["B♭ Trumpet 1", "1129"], ["B♭ Trumpet 2", "1130"], ["B♭ Trumpet 3", "1131"], ["B♭ Trumpet 4", "1132"]]),
    Excerpt(id: 62, description: "Excerpt 3", measures: "Mov. I, [10] - 7 mm. before [12]", pictures: [["B♭ Trumpet 1", "1133"], ["B♭ Trumpet 2", "1134"], ["B♭ Trumpet 3", "1135"], ["B♭ Trumpet 4", "1136"]]),
    Excerpt(id: 63, description: "Excerpt 4", measures: "Mov. I, 1 mm. before [13] - 1 mm. before [14] ", pictures: [["F Trumpet 1", "1137"]]),
    Excerpt(id: 64, description: "Excerpt 5", measures: "Mov. III, [13] - 8 mm. after [13] ", pictures: [["B♭ Trumpet 1", "1138"]])
], mutes: "", videos: [
    ["", ""]
])

let mahler6 = Composition(id: 32, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 6", date: "1904", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 65, description: "Excerpt 1", measures: "Movement I: 6 measures after [2] to 2 measures before [3]", pictures: [["B♭ Trumpet 1", "1139"]]),
    Excerpt(id: 66, description: "Excerpt 2", measures: "Mov. IV, 6 mm. after [105] - [106]", pictures: [["F Trumpet 1", "1140"], ["F Trumpet 2", "1141"], ["B♭ Trumpet 3", "1142"], ["B♭ Trumpet 4", "1143"]])
], mutes: "", videos: [
    ["", ""]
])

let mahler7 = Composition(id: 33, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 7", date: "1906", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 67, description: "Excerpt 1", measures: "Mov. V, 4 mm. before [224] - 3 mm. after [229] ", pictures: [["B♭ Trumpet 1", "1144"], ["B♭ Trumpet 2", "1145"], ["B♭ Trumpet 3", "1146"]])
], mutes: "", videos: [
    ["", ""]
])

let mahler9 = Composition(id: 34, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 9", date: "1910", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 68, description: "Excerpt 1", measures: "Mov. III, 20 mm. after [36] - 8 mm. before [38]", pictures: [["F Trumpet 1", "1147"], ["F Trumpet 2", "1148"], ["F Trumpet 3", "1149"]])
], mutes: "", videos: [
    ["", ""]
])

let mozartSerenade9 = Composition(id: 35, composer: "Wolfgang Amadeus Mozart", composerLast: "Mozart", name: "Serenade in D major", date: "1779", era: "Classical", genre: "Serenade", excerpts: [
    Excerpt(id: 69, description: "Excerpt 1", measures: "Mov. VI, Trio II - D", pictures: [["A Posthorn", "1150"]])
], mutes: "", videos: [
    ["", ""]
])

let rimskykorsakovCappricio = Composition(id: 36, composer: "Nikolay Rimsky-Korsakov", composerLast: "Rimsky-Korsakov", name: "Capriccio espagnol", date: "1887", era: "Romantic", genre: "Capriccio", excerpts: [
    Excerpt(id: 70, description: "Excerpt 1", measures: "Mov. IV, Beginning - [L]", pictures: [["B♭ Trumpet 1", "1151"], ["B♭ Trumpet 2", "1152"]])
], mutes: "", videos: [
    ["", ""]
])

let rimskyKorsakovScheherazade = Composition(id: 37, composer: "Nikolay Rimsky-Korsakov", composerLast: "Rimsky-Korsakov", name: "Scheherazade", date: "1888", era: "Romantic", genre: "Suite", excerpts: [
    Excerpt(id: 71, description: "Excerpt 1", measures: "Mov. II, 5 mm. after [D] - [E]", pictures: [["B♭ Trumpet 1", "1153"]]),
    Excerpt(id: 72, description: "Excerpt 2", measures: "Mov. II, 17 mm. before [K] - [L] ", pictures: [["B♭ Trumpet 1", "1154"], ["B♭ Trumpet 2", "1155"]]),
    Excerpt(id: 73, description: "Excerpt 3", measures: "Mov. III, [G] - [H] ", pictures: [["B♭ Trumpet 1", "1156"], ["B♭ Trumpet 2", "1157"]]),
    Excerpt(id: 74, description: "Excerpt 4", measures: "Mov. IV, [C] - [E]", pictures: [["A Trumpet 1", "1158"], ["A Trumpet 2", "1159"]]),
    Excerpt(id: 75, description: "Excerpt 5", measures: "Mov. IV, 9 mm. before [Q] - [R] ", pictures: [["A Trumpet 1", "1160"], ["B♭ Trumpet 2", "1161"]]),
    Excerpt(id: 76, description: "Excerpt 6", measures: "Mov. IV, [T] - [U] ", pictures: [["A Trumpet 1", "1162"]])
], mutes: "", videos: [
    ["", ""]
])

let schumann2 = Composition(id: 38, composer: "Robert Schumann", composerLast: "Schumann", name: "Symphony No. 2", date: "1846", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 77, description: "Excerpt 1", measures: "Mov. I, Beginning to mm. 13", pictures: [["C Trumpet 1", "1163"], ["C Trumpet 2", "1164"]])
], mutes: "", videos: [
    ["", ""]
])

let scriabin4 = Composition(id: 39, composer: "Aleksandr Scriabin", composerLast: "Scriabin", name: "Symphony No. 4", date: "1908", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 78, description: "Excerpt 1", measures: "mm. 13 - 8 mm. before [1]", pictures: [["B♭ Trumpet 1", "1165"]])
], mutes: "", videos: [
    ["", ""]
])

let sibelius2 = Composition(id: 40, composer: "Jean Sibelius", composerLast: "Sibelius", name: "Symphony No. 2", date: "1902", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 79, description: "Excerpt 1", measures: "Mov. I, 3 mm. before [N] - 10 mm. before [O]", pictures: [["F Trumpet 1", "1166"], ["F Trumpet 2", "1167"], ["F Trumpet 3", "1168"]]),
    Excerpt(id: 80, description: "Excerpt 2", measures: "Mov. IV, [Q] - 6 mm. before [S]", pictures: [["F Trumpet 1", "1169"], ["F Trumpet 2", "1170"], ["F Trumpet 3", "1171"]])
], mutes: "", videos: [
    ["", ""]
])

let straussAlsoSprach = Composition(id: 41, composer: "Richard Strauss", composerLast: "Strauss", name: "Also sprach Zarathustra", date: "1896", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 81, description: "Excerpt 1", measures: "mm. 5 - 3 mm. after [1] ", pictures: [["C Trumpet 1", "1172"], ["C Trumpet 2", "1173"], ["C Trumpet 3", "1174"], ["C Trumpet 4", "1175"]]),
    Excerpt(id: 82, description: "Excerpt 2", measures: "10 mm. after [3] - 13 mm. after [3]", pictures: [["C Trumpet 1", "1176"], ["C Trumpet 2", "1177"]]),
    Excerpt(id: 83, description: "Excerpt 3", measures: "[18] - 3 mm. after [19]", pictures: [["C Trumpet 1", "1178"]]),
    Excerpt(id: 84, description: "Excerpt 4", measures: "8 mm. before [51] - 9 mm. after [53]", pictures: [["C Trumpet 1", "1179"], ["C Trumpet 2", "1180"], ["C Trumpet 3", "1181"], ["C Trumpet 4", "1182"]])
], mutes: "", videos: [
    ["", ""]
])

let straussDeathAndTransfiguration = Composition(id: 42, composer: "Richard Strauss", composerLast: "Strauss", name: "Tod und Verklärung", date: "1889", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 85, description: "Excerpt 1 ", measures: "11 mm. after [Y] - [Z] ", pictures: [["C Trumpet 1", "1183"], ["C Trumpet 2", "1184"], ["F Trumpet 3", "1185"]])
], mutes: "", videos: [
    ["", ""]
])

let straussDonJuan = Composition(id: 43, composer: "Richard Strauss", composerLast: "Strauss", name: "Don Juan", date: "1889", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 86, description: "Excerpt 1", measures: "4 mm. after [F] - 3 mm. before [G]", pictures: [["E Trumpet 1", "1186"], ["E Trumpet 2", "1187"], ["E Trumpet 3", "1188"]]),
    Excerpt(id: 87, description: "Excerpt 2", measures: "7 mm. after [H] - [K] ", pictures: [["E Trumpet 1", "1189"], ["E Trumpet 2", "1190"], ["E Trumpet 3", "1191"]])
], mutes: "", videos: [
    ["", ""]
])

let straussDonQuixote = Composition(id: 44, composer: "Richard Strauss", composerLast: "Strauss", name: "Don Quixote", date: "1897", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 88, description: "Excerpt 1", measures: "[3] - 4 mm. before [4]", pictures: [["D Trumpet 1", "1192"], ["D Trumpet 2", "1193"], ["D Trumpet 3", "1194"]]),
    Excerpt(id: 89, description: "Excerpt 2", measures: "3 mm. before [37] - [38] ", pictures: [["D Trumpet 1", "1195"], ["D Trumpet 2", "1196"], ["D Trumpet 3", "1197"]]),
    Excerpt(id: 90, description: "Excerpt 3", measures: "3 mm. before [67] - [69] ", pictures: [["D Trumpet 1", "1198"], ["D Trumpet 2", "1199"], ["D Trumpet 3", "1200"]])
], mutes: "", videos: [
    ["", ""]
])

let straussHeldenleben = Composition(id: 45, composer: "Richard Strauss", composerLast: "Strauss", name: "Ein Heldenleben", date: "1898", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 91, description: "Excerpt 1", measures: "[42] - [43]", pictures: [["B♭ Trumpet 1", "1201"], ["B♭ Trumpet 2", "1202"], ["B♭ Trumpet 3", "1203"]]),
    Excerpt(id: 92, description: "Excerpt 2", measures: "7 mm. before [50] - [55]", pictures: [["E♭ Trumpet 1", "1210"], ["E♭ Trumpet 2", "1211"]]),
    Excerpt(id: 93, description: "Excerpt 3", measures: "[58] - 2 mm. after [61]", pictures: [["B♭ Trumpet 1", "1204"], ["B♭ Trumpet 2", "1205"], ["B♭ Trumpet 3", "1206"], ["E♭ Trumpet 2", "1207"]]),
    Excerpt(id: 94, description: "Excerpt 4", measures: "[65] - [66]", pictures: [["B♭ Trumpet 1", "1212"], ["B♭ Trumpet 2", "1213"], ["B♭ Trumpet 3", "1214"], ["E♭ Trumpet 1", "1215"], ["E♭ Trumpet 2", "1216"]]),
    Excerpt(id: 95, description: "Excerpt 5", measures: "[80] - 1 mm. before [83]", pictures: [["B♭ Trumpet 1", "1208"], ["E Trumpet 1", "1209"]]),
    Excerpt(id: 96, description: "Excerpt 6", measures: "8 mm. before End - End", pictures: [["B♭ Trumpet 1", "1217"], ["B♭ Trumpet 2", "1218"], ["B♭ Trumpet 3", "1219"], ["E♭ Trumpet 1", "1220"], ["E♭ Trumpet 2", "1221"]])
], mutes: "Straight", videos: [
    ["", ""]
])

let straussAlpineSymphony = Composition(id: 46, composer: "Richard Strauss", composerLast: "Strauss", name: "Eine Alpensinfonie", date: "1915", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 97, description: "Excerpt 1", measures: "5 mm. before [68] - [71]", pictures: [["B♭ Trumpet 1", "1222"], ["B♭ Trumpet 2", "1223"], ["C Trumpet 3", "1224"], ["C Trumpet 4", "1225"]]),
    Excerpt(id: 98, description: "Excerpt 2", measures: "[75] - [76]", pictures: [["B♭ Trumpet 1", "1226"]]),
    Excerpt(id: 99, description: "Excerpt 3", measures: "[113a] - 3 mm. before [114]", pictures: [["B♭ Trumpet 1", "1227"], ["B♭ Trumpet 2", "1228"], ["C Trumpet 3", "1229"], ["C Trumpet 4", "1230"]])
], mutes: "", videos: [
    ["", ""]
])

let straussBourgeois = Composition(id: 47, composer: "Richard Strauss", composerLast: "Strauss", name: "Le bourgeois gentilhomme", date: "1912", era: "Late Romantic", genre: "Incidental Music", excerpts: [
    Excerpt(id: 100, description: "Excerpt 1", measures: "No. 3, 4 mm. before [33] - [33]", pictures: [["B♭ Trumpet", "1231"]]),
    Excerpt(id: 101, description: "Excerpt 2", measures: "No. 7, [6] - End", pictures: [["B♭ Trumpet", "1232"]]),
    Excerpt(id: 102, description: "Excerpt 3", measures: "No. 9, [104] - 4 mm. after [106]", pictures: [["B♭ Trumpet", "1233"]]),
    Excerpt(id: 103, description: "Excerpt 4", measures: "No. 9, 4 mm. before [111] - [115]", pictures: [["B♭ Trumpet", "1234"]])
], mutes: "", videos: [
    ["", ""]
])

let straussSymphoniaDomestica = Composition(id: 48, composer: "Richard Strauss", composerLast: "Strauss", name: "Sinfonia Domestica", date: "1903", era: "Late Romantic", genre: "Symphonic Poem", excerpts: [
    Excerpt(id: 104, description: "Excerpt 1", measures: "1 mm. before [2] - [2] ", pictures: [["F Trumpet 1", "1235"]]),
    Excerpt(id: 105, description: "Excerpt 2", measures: "[89] - [90]", pictures: [["C Trumpet 3", "1236"]])
], mutes: "", videos: [
    ["", ""]
])

let straussEulenspiegel = Composition(id: 49, composer: "Richard Strauss", composerLast: "Strauss", name: "Till Eulenspiegels lustige Streiche", date: "1895", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 106, description: "Excerpt 1", measures: "[14] - 5 mm. after [14]", pictures: [["F Trumpet 1", "1237"], ["F Trumpet 2", "1238"]]),
    Excerpt(id: 107, description: "Excerpt 2", measures: "2 mm. after [24] - 3 mm. before [26]", pictures: [["F Trumpet 1", "1239"], ["F Trumpet 2", "1240"]]),
    Excerpt(id: 108, description: "Excerpt 3", measures: "9 mm. after [27] - 7 mm. after [28]", pictures: [["C Trumpet 3", "1241"]]),
    Excerpt(id: 109, description: "Excerpt 4", measures: "[36] - 4 mm. before [38] ", pictures: [["F Trumpet 1", "1242"], ["F Trumpet 2", "1243"], ["F Trumpet 3", "1244"]])
], mutes: "", videos: [
    ["", ""]
])

let stravinskySoldier = Composition(id: 50, composer: "Igor Stravinsky", composerLast: "Stravinsky", name: "L'histoire du soldat", date: "1918", era: "Modern", genre: "Theatrical Work", excerpts: [
    Excerpt(id: 110, description: "Excerpt 1", measures: "The Royal March, Beginning - 2 mm. after [3]", pictures: [["B♭ Cornet", "1245"]])
], mutes: "", videos: [
    ["", ""]
])

let stravinskyFireworks = Composition(id: 51, composer: "Igor Stravinsky", composerLast: "Stravinsky", name: "Feu d'artifice", date: "1908", era: "Modern", genre: "Orchestral Fantasy", excerpts: [
    Excerpt(id: 111, description: "Excerpt 1", measures: "[1] - [9]", pictures: [["A Trumpet 1", "1246"], ["A Trumpet 2", "1247"], ["A Trumpet 3", "1248"]])
], mutes: "", videos: [
    ["", ""]
])


let pictures = [["F Trumpet 1", ""], ["F Trumpet 2", ""], ["F Trumpet 3", ""]]
let flat = "♭"

/*
X Bach – Brandenburg Concerto No. 2
X Bach – Cantata BWV 51
X Bach – Christmas Oratorio
X Bach – Magnificat in D Major
X Bach – Mass in B Minor
X Beethoven – Leonore Overture No. 2
X Beethoven – Leonore Overture No. 3
X Beethoven – Symphony No. 5
X Beethoven – Symphony No. 9
X Beethoven – Violin Concerto in D Major
X Berlioz – Roman Carnival Overture
X Berlioz – Symphonie fantastique
X Bizet – Carmen
X Brahms – Academic Festival Overture
X Brahms – Symphony No. 1
X Brahms – Symphony No. 2
X Bruckner – Symphony No. 4
X Bruckner – Symphony No. 7
X Bruckner – Symphony No. 8
X Debussy – Fêtes from Nocturnes
X Debussy – La Mer
X Donizetti – Don Pasquale
X Dvořák – Symphony No. 8
X Dvořák – Symphony No. 9
X Handel – Messiah
X Haydn – Symphony No. 100
X Mahler – Das Lied von der Erde
X Mahler – Symphony No. 1
X Mahler – Symphony No. 2
X Mahler – Symphony No. 3
X Mahler – Symphony No. 4
X Mahler – Symphony No. 5
X Mahler – Symphony No. 6  // Middle
X Mahler – Symphony No. 7
X Mahler – Symphony No. 9
X Mozart – Serenade No. 9
X Rimsky-Korsakov – Capriccio Espagnol
X Rimsky-Korsakov – Scheherazade
X Schumann – Symphony No. 2
X Scriabin – Le Poème De L’Extase
X Sibelius – Symphony No. 2
X Strauss – Also sprach Zarathustra
X Strauss – Death and Transfiguration
X Strauss – Don Juan
X Strauss – Don Quixote
X Strauss – Ein Heldenleben
X Strauss – Eine Alpensinfonie
X Strauss – Le bourgeois gentilhomme
X Strauss – Symphonia Domestica
X Strauss – Till Eulenspiegels lustige Streiche
X Stravinsky - The Soldier's Tale
X Stravinsky – Fireworks
 Stravinsky – Petrushka
 Stravinsky – The Firebird (1919)
 Stravinsky – The Rite of Spring
 Stravinsky – The Song of the Nightingale
 Tchaikovsky – Capriccio Italien
 Tchaikovsky – Swan Lake
 Tchaikovsky – Symphony No. 4
 Tchaikovsky – Symphony No. 5
 Tchaikovsky – The Nutcracker (Ballet)
 Wagner – Götterdämmerung
 Wagner – Parsifal
 Wagner – Rienzi
 Wagner – Tannhäuser
 */



//MARK: Composers

let bach = Composer(id: 0, name: "Johann Sebastian Bach", ipa: "joˈhan zeˈbastjan bɑx", image: 2000, country: "Germany", dates: "1685-1750", bio: "Johann Sebastian Bach was a German Baroque composer and musician. He is most well known for is keyboard works, and works for voice and orchestra. Bach was a master of counterpoint and harmonic organization and his influences in these fields continue to affect composers to this day.", excerpts: [
    bachBrandenburg2, bachCantata, bachChristmasOratorio, bachMagnificant, bachMassB
])

let beethoven = Composer(id: 1, name: "Ludwig Van Beethoven", ipa: "ˈlʊdvɪɡ væn ˈbeɪt(h)oʊvən", image: 2001, country: "Germany", dates: "1770-1827", bio: "Ludwig van Beethoven was a German composer and pianist. Beethoven began his compositional life firmly in the classical era, but was a key figure in the early romantic era. Beethoven grew to be mostly deaf in his lifetime, but never ceased composing. He was the first composer to incorporate trombones in a symphonic setting, and composed nine symphonies in his lifetime. He is considered to be one of the greatest composers of all time.", excerpts: [
    beethovenLeonore2, beethovenLeonore3, beethoven5, beethoven9, beethovenViolin
])

let berlioz = Composer(id: 2, name: "Hector Berlioz", ipa: "ɛkˈtɔr bɛr liˌoʊz", image: 2002, country: "France", dates: "1803-1869", bio: "Hector Berlioz was a French Romantic composer, who gained his popularity through his unwillingness to accept traditional rules and formulas. He frequently employed extended techniques in many instruments, and developed his own forms and techniques for composition. He was internationally acclaimed as a conductor, and was also a prominant musical journalist.", excerpts: [
    berliozRomanCarnival, berliozSymphonie
])

let bizet = Composer(id: 3, name: "Georges Bizet", ipa: "zhawrzh biˈzeɪ", image: 2003, country: "France", dates: "1838-1875", bio: "Georges Bizet was a prominant French composer of the Romantic Era. Best known for his operas and incidental music, Bizet had little success until his final work \"Carmen\".", excerpts: [
    bizetCarmen
])

let brahms = Composer(id: 4, name: "Johannes Brahms", ipa: "joˈhanəs ˈbʁaːms", image: 2004, country: "Germany", dates: "1833-1897", bio: "Johannes Brahms was one of the most famous composers of all time. He is most famous for his four symphonies, but he wrote for many diverse ensembles. Brahms was a perfectionist in all that he did, and was known to occaisionally destroy some of his work to prevent it from being seen by the outside world.", excerpts: [
    brahmsAcademic, brahms1, brahms2
])

let bruckner = Composer(id: 5, name: "Anton Bruckner", ipa: " 'antɔn ˈbʁʊknɐ", image: 2005, country: "Austria", dates: "1824-1896", bio: "Anton Bruckner was an Austrian organist, music theorist, and composer of the romantic era. He is best known for his symphonies and religious music. Bruckner was unlike other composers of his time, in that he was very a very humble man.", excerpts: [
    bruckner4, bruckner7, bruckner8
])

let debussy = Composer(id: 6, name: "", ipa: "", image: 2006, country: "France", dates: "", bio: "", excerpts: [
    debussyLaMer, debussyNocturnes
])

let donizetti = Composer(id: 7, name: "Gaetano Donizetti", ipa: "ɡaeˈtaːno donidˈdzetti", image: 2007, country: "Italy", dates: "1797-1848", bio: "Donizetti was one of the leading composers of the Bel Canto opera style, along with Rossini and Bellini. Donizetti did not come from a musical background, but was taken up by the composer Simon Mayr at a young age and enrolled in a music school. Throughout the course of his life he composed almost 70 operas. He moved to Paris towards the end of his career to escape the censorship that he was always subject to in Naples.", excerpts: [
    donizettiDonPasquale
])

let dvorak = Composer(id: 8, name: "Antonín Dvořák", ipa: "ˈɑn tɔ nyin ˈdvɔr ʒɑk", image: 2008, country: "Austrian Empire", dates: "1841-1904", bio: "Dvořák was one of the first Czech composers to recieve worldwide recognition. Dvořák was an admirer of Richard Wagner, and took influence from him especially in his Operas. He frequently included folk music in his compositions, and his music often had nationalistic themes.", excerpts: [
    dvorak8, dvorak9
])

let handel = Composer(id: 9, name: "", ipa: "", image: 2009, country: "England", dates: "", bio: "", excerpts: [
    handelMessiah
])

let haydn = Composer(id: 10, name: "Franz Joseph Haydn", ipa: "ˈfʁants ˈjoːzɛf ˈhaɪdn̩", image: 2010, country: "Austria", dates: "1732-1809", bio: "Haydn was a classical composer who is commonly known as \"The father of the Symphony\". He spent most of his life as a court musician for the Esterházy family. He was isolated in this role, with little to no contact with the rest of the music community, and was forced to create his own style because of this. Haydn was a prolific composer, producing 104 numbered symphonies and an immense amount of chamber music.", excerpts: [
    haydn100
])

let mahler = Composer(id: 11, name: "Gustav Mahler", ipa: "ˈgʊs tɑf ˈmɑ lər", image: 2011, country: "Austrian Empire", dates: "1860-1911", bio: "Mahler is one of the most popular composers of all time. In 2016, a BBC Music survey ranked three of his symphonies among the top ten symphonies of all time. His music continues to be among the top recorded and perfomed in all of classical music. During his day, he was also among one of the top conductors of his era, and was the first conductor of the New York Philharmonic Orchestra.", excerpts: [
    mahlerDasLied, mahler1, mahler2, mahler3, mahler4, mahler5, mahler6, mahler7, mahler9
])

let mozart = Composer(id: 12, name: "Wolfgang Amadeus Mozart", ipa: "ˈwʊlf gæŋ ˌæm əˈdeɪ əs ˈmoʊt sɑrt", image: 2012, country: "Germany", dates: "1756-1791", bio: "Mozart gained popularity as a pianist and composer at an early age. He gained employment as a court musician at the Salzburg court, but quickly lost interest and began traveling looking for other employment. In Vienna, he found great fame, but worked his whole life trying to achieve financial stability: a goal he was never able to achieve. Mozart's death is also very mysterious and controvercial.", excerpts: [
    mozartSerenade9
])

let rimskyKorsakov = Composer(id: 14, name: "Nikolai Rimsky-Korsakov", ipa: "nʲɪkəˈlaj ˈrʲimskʲɪj ˈkorsəkəf", image: 2014, country: "Russia", dates: "1844-1908", bio: "Nikolai Rimsky-Korsakov was one of the most famous Russian composers. He was a master orchestrator, publishing a textbook on the subject using musical examples solely from his own compositions, and his most famous compositions are his orchestral works. Rimsky-Korsakov also spent a large portion of his musical life in association with the Russian military.", excerpts: [
    rimskykorsakovCappricio, rimskyKorsakovScheherazade
])

let schumann = Composer(id: 15, name: "Robert Schumann", ipa: "ˈrɒb ərt ˈʃu mɑn", image: 2015, country: "Germany", dates: "1810-1856", bio: "Schumann was one of the most popular composers of the romantic era. He gave up the study of law to become a concert pianist, but his dreams were crushed by a hand injury. He subsequently pursued a career in composition, and married his teacher's daughter, Clara Wieck. Schumann mainly composed for piano, but later in live began to compose lieder, orchestral works, and one opera.", excerpts: [
    schumann2
])

let scriabin = Composer(id: 16, name: "", ipa: "", image: 2016, country: "", dates: "", bio: "", excerpts: [
    scriabin4
])

let sibelius = Composer(id: 17, name: "Jean Sibelius", ipa: "ʒɑn  sɪˈbeɪ li əs", image: 2017, country: "Finland", dates: "1865-1957", bio: "Sibelius is the most well known composer to come out of Finland. His music is credited with helping Finland to develop a national identity, and his most famous work \"Finlandia\" is known as Finland's unofficial national anthem. Sibelius mysteriously stopped composing in the last thirty years of his life, retiring to a quite life in Järvenpää.", excerpts: [
    sibelius2
])

let rStrauss = Composer(id: 18, name: "Richard Strauss", ipa: "ˈʁɪçaʁt ˈʃtʁaʊs", image: 2018, country: "Germany", dates: "1864-1949", bio: "Richard Strauss was one of the leading composers of the Romantic Era. He, along with Gustav Mahler, were considered successors of Richard Wagner. Although Strauss composed music for almost every classical genre, he is most famous for his tone poems. Strauss' compositional output began when he was just six years old, and continued almost eighty years later until his death.", excerpts: [
    straussAlsoSprach, straussDonJuan, straussDonQuixote, straussHeldenleben, straussAlpineSymphony, straussBourgeois, straussSymphoniaDomestica, straussEulenspiegel, straussDeathAndTransfiguration
])

let stravinsky = Composer(id: 19, name: "Igor Stravinsky", ipa: "ˈi gɔr strəˈvɪn ski", image: 2019, country: "Russia", dates: "1882-1971", bio: "Igor Stravinsky was one of the most influential composers of the twentieth century. Stravinsky's music is very unique from that of other composers, and often contains russian folk melodies. Throughout his life, the kinds of compositions that he composed also changed dramatically, from symphonies, to chamber music, to ballets.", excerpts: [
    stravinskySoldier, stravinskyFireworks
])

let tchaikovsky = Composer(id: 20, name: "Pyotr Ilyich Tchaikovsky", ipa: "ˈpyɔtr iˈlyitʃ tʃaɪˈkɒfski", image: 2020, country: "Russia", dates: "1840-1893", bio: "Tchaikovsky was the first Russian composer to gain international fame. Tchaikovsky recieved a western European style music education, which seemed to counter the traditional Russian music practices. This dichotomy posed a great challenge for Tchaikovsky, one that affected his self confidence a lot. Although Tchaikovsky's music gained popular support, his life was deeply affected by depression and personal crises.", excerpts: [
])


let wagner = Composer(id: 21, name: "Richard Wagner", ipa: "ˈʁɪçaʁt ˈvaːɡnɐ", image: 2021, country: "Germany", dates: "1813-1883", bio: "Wagner is one of the most well known composers of all time. His music frequently appears in television shows and movies. He was most well known in his era for his operas, which usually run about four hours. Wagner was unusual as an opera composer because he himself wrote the liberetto for the operas he composed. Wagner had his own opera house constructed, which still stands to this day.", excerpts: [
])


/**
 An Organized model of all of the Compositions and Composers in alphabetical order.
 */
class TrumpetContentModel: ObservableObject {
    /**
     An alphabetical list of all of the compositions in the app.
     */
    var excerpts: [Composition] = [
        bachBrandenburg2, bachCantata, bachChristmasOratorio, bachMagnificant, bachMassB, beethovenLeonore2, beethovenLeonore3, beethoven5, beethoven9, beethovenViolin, berliozRomanCarnival, berliozSymphonie, bizetCarmen, brahmsAcademic, brahms1, brahms2, bruckner4, bruckner7, bruckner8, debussyLaMer, debussyNocturnes, donizettiDonPasquale, dvorak8, dvorak9, handelMessiah, haydn100, mahlerDasLied, mahler1, mahler2, mahler3, mahler4, mahler5, mahler6, mahler7, mahler9, mozartSerenade9, rimskykorsakovCappricio, rimskyKorsakovScheherazade, schumann2, scriabin4, sibelius2, straussAlsoSprach, straussDonJuan, straussDonQuixote, straussHeldenleben, straussAlpineSymphony, straussBourgeois, straussSymphoniaDomestica, straussEulenspiegel, straussDeathAndTransfiguration, stravinskySoldier, stravinskyFireworks
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        bach, beethoven, berlioz, bizet, brahms, bruckner, debussy, donizetti, dvorak, handel, haydn, mahler, mozart, rimskyKorsakov, schumann, scriabin, sibelius, rStrauss, stravinsky, tchaikovsky, wagner
    ]
}

/**
 A Model for storing favorite compositions IDs as strings in an encapsulated list. Data is stored internally on every change.
 */
class Favorites: ObservableObject {
    // the actual resorts the user has favorited
    private var compositionIDs: [String]

    // the key we're using to read/write in UserDefaults
    private let saveKey = "Favorites"

    init() {
        // load our saved data
        self.compositionIDs = UserDefaults.standard.stringArray(forKey: saveKey) ?? [String]()
    }

    // returns true if our set contains this resort
    func contains(_ image: String) -> Bool {
        compositionIDs.contains(image)
    }

    // adds the resort to our set, updates all views, and saves the change
    func add(_ image: String) {
        objectWillChange.send()
        compositionIDs.append(image)
        save()
    }

    // removes the resort from our set, updates all views, and saves the change
    func remove(_ image: String) {
        objectWillChange.send()
        var counter = 0
        var removeIndex = 0
        while counter < compositionIDs.count {
            if compositionIDs[counter] == image {
                removeIndex = counter
            }
            counter += 1
        }
        compositionIDs.remove(at: removeIndex)
        save()
    }
    
    func removeAll() {
        objectWillChange.send()
        compositionIDs.removeAll()
        save()
    }

    func save() {
        // write out our data
        UserDefaults.standard.set(self.compositionIDs, forKey: saveKey)
    }
}

/**
 A model for saving user settings. Data is readable and writeable directly to memory from accessing and setting published variables.
 */
class settingsModel: ObservableObject {
    /**
     A static list to display names of random options in the Picker.
     */
    var randomOptions = ["All", "Favorites"]
    
    /**
     Selected Randoms is the user's choice for selecting whether only favorite excerpts or all excerpts will show in the RandomCompositionView. If the user has not chosen, it will default to 0 (All excerpts).
     <p>
     Note: Data will be saved and read directly from memory on read and write of this variable.
     */
    @Published var selectedRandoms: Int = UserDefaults.standard.integer(forKey: "Randoms") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.selectedRandoms, forKey: "Randoms")
        }
    }
}
