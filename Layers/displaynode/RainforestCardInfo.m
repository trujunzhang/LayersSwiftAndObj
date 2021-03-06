//
// Created by djzhang on 11/24/14.
// Copyright (c) 2014 djzhang. All rights reserved.
//

#import "RainforestCardInfo.h"


@implementation RainforestCardInfo {
}

- (instancetype)initWithName:(NSString *)name descriptionValue:(NSString *)descriptionValue imageName:(NSString *)imageName articleAttribution:(NSString *)articleAttribution articleOriginLink:(NSString *)articleOriginLink articleLicense:(NSString *)articleLicense articleLicenseLink:(NSString *)articleLicenseLink imageAttribution:(NSString *)imageAttribution imageOriginLink:(NSString *)imageOriginLink imageLicense:(NSString *)imageLicense imageLicenseLink:(NSString *)imageLicenseLink {
   self = [super init];
   if (self) {
      self.name = name;
      self.descriptionValue = descriptionValue;
      self.imageName = imageName;
      self.articleAttribution = articleAttribution;
      self.articleOriginLink = articleOriginLink;
      self.articleLicense = articleLicense;
      self.articleLicenseLink = articleLicenseLink;
      self.imageAttribution = imageAttribution;
      self.imageOriginLink = imageOriginLink;
      self.imageLicense = imageLicense;
      self.imageLicenseLink = imageLicenseLink;
   }
   return self;
}


+ (instancetype)infoWithName:(NSString *)name descriptionValue:(NSString *)descriptionValue imageName:(NSString *)imageName articleAttribution:(NSString *)articleAttribution articleOriginLink:(NSString *)articleOriginLink articleLicense:(NSString *)articleLicense articleLicenseLink:(NSString *)articleLicenseLink imageAttribution:(NSString *)imageAttribution imageOriginLink:(NSString *)imageOriginLink imageLicense:(NSString *)imageLicense imageLicenseLink:(NSString *)imageLicenseLink {
   return [[self alloc] initWithName:name
                         descriptionValue:descriptionValue
                           imageName:imageName
                  articleAttribution:articleAttribution
                   articleOriginLink:articleOriginLink
                      articleLicense:articleLicense
                  articleLicenseLink:articleLicenseLink
                    imageAttribution:imageAttribution
                     imageOriginLink:imageOriginLink
                        imageLicense:imageLicense
                    imageLicenseLink:imageLicenseLink];
}


+ (NSArray *)getAllCardInfo {
   NSArray * array = @[
    [RainforestCardInfo infoWithName:@"Parrot"
                         descriptionValue:@"The blue-headed parrot, also known as the blue-headed pionus (Pionus menstruus) is a medium large parrot. It is about 27 cm long and they are mainly green with a blue head and neck, and red under tail feathers. It is a resident bird in tropical and subtropical South America and southern Central America, from Costa Rica, Venezuela and Trinidad south to Bolivia and Brazil."
                           imageName:@"blueParrot"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Blue-headed_parrot"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Uploaded by Snowmanradio"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/User:File%20Upload%20Bot%20(Magnus%20Manske)"
                        imageLicense:@"CC BY 2.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by/2.0"],
    [RainforestCardInfo infoWithName:@"Harpy Eagle"
                         descriptionValue:@"The harpy eagle (Harpia harpyja) is a Neotropical species of eagle. It is sometimes known as the American harpy eagle to distinguish it from the Papuan eagle which is sometimes known as the New Guinea harpy eagle or Papuan harpy eagle. It is the largest and most powerful raptor found in the Americas, and among the largest extant species of eagles in the world."
                           imageName:@"harpy"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Harpy_eagle"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Harpia harpyja -Belize Zoo-8-3c"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/File:Harpia_harpyja_-Belize_Zoo-8.jpg"
                        imageLicense:@"CC BY 2.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by/2.0"],
    [RainforestCardInfo infoWithName:@"Macaw"
                         descriptionValue:@"Macaws are long-tailed, often colourful New World parrots. Of the many different Psittacidae (true parrots) genera, six are classified as macaws: Ara, Anodorhynchus, Cyanopsitta, Primolius, Orthopsittaca, and Diopsittaca. Previously, the members of the genus Primolius were placed in Propyrrhura, but the former is correct in accordance with ICZN rules."
                           imageName:@"macaw"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Macaw"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"By Arpingstone"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/File:Macaw.blueyellow.arp.750pix.jpg"
                        imageLicense:@"Public Domain"
                    imageLicenseLink:@"http://commons.wikimedia.org/wiki/File:Macaw.blueyellow.arp.750pix.jpg"],
    [RainforestCardInfo infoWithName:@"Lovebird"
                         descriptionValue:@"A lovebird is one of nine species of the genus Agapornis (Greek: αγάπη agape 'love'; όρνις ornis 'bird'). They are a social and affectionate small parrot. Eight species are native to the African continent, and the grey-headed lovebird is native to Madagascar. Their name stems from the parrots' strong, monogamous pair bonding and the long periods which paired birds spend sitting together."
                           imageName:@"lovebird"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Lovebird"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"BS Thurner Hof"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/User:BS_Thurner_Hof"
                        imageLicense:@"CC BY-SA 3.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0/"],
    [RainforestCardInfo infoWithName:@"Blue Morpho"
                         descriptionValue:@"The Menelaus Blue Morpho (Morpho menelaus) is an iridescent tropical butterfly of Central and South America. It has a wing span of 15 cm (5.9 in). The adult drinks juice from rotten fruit with its long proboscis, which is like a sucking tube. The adult males have brighter colours than the females. Morpho menelaus is a very large butterfly, with a wingspan of approximately 138 mm."
                           imageName:@"blueMorpho"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Morpho_menelaus"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Derkarts"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/File:Blue_Morpho.jpg"
                        imageLicense:@"CC BY-SA 3.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0/"],
    [RainforestCardInfo infoWithName:@"Brown Peacock"
                         descriptionValue:@"The brown peacock or scarlet peacock (Anartia amathea) is a species of nymphalid butterfly, found primarily in South America. The type locality is probably Suriname, and the species is found from Panama to Argentina; Grenada, Barbados, Antigua. It is reported as common in Argentina, Paraguay, Uruguay, the Brazilian highlands, the eastern Amazon, the Guianas, Venezuela, and Panama, ..."
                           imageName:@"brownPeacock"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Anartia_amathea"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Arpingstone"
                     imageOriginLink:@"http://en.wikipedia.org/wiki/User:Arpingstone"
                        imageLicense:@"Public Domain"
                    imageLicenseLink:@"http://commons.wikimedia.org/wiki/File:Insect.anartia.amathea.arp.750pix.jpg"],
    [RainforestCardInfo infoWithName:@"Cock of the Rock"
                         descriptionValue:@"The cock-of-the-rock, which compose the genus Rupicola, are South American cotingid birds. The Andean cock-of-the-rock is the national bird of Peru. They are found in tropical and subtropical rainforests close to rocky areas, where they build their nests. The males are magnificent birds, not only because of their bright orange or red colors, but also because of their very prominent..."
                           imageName:@"rock"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Cock-of-the-rock"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"chdwckvnstrsslhm - Flickr"
                     imageOriginLink:@"http://www.flickr.com/photos/chdwckvnstrsslhm/128203207/"
                        imageLicense:@"CC BY 2.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by/2.0"],
    [RainforestCardInfo infoWithName:@"Cockatoo"
                         descriptionValue:@"A cockatoo is any of the 21 species belonging to the bird family Cacatuidae, the only family in the superfamily Cacatuoidea. Along with the Psittacoidea (true parrots) and the Strigopoidea (large New Zealand parrots], they make up the order Psittaciformes (parrots). The family has a mainly Australasian distribution, ranging from the Philippines and the eastern Indonesian islands of Wallacea..."
                           imageName:@"atoo"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Cockatoo"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Doug Janson"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/User:Dougjj"
                        imageLicense:@"CC BY-SA 3.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0/"],
    [RainforestCardInfo infoWithName:@"Golden Lion"
                         descriptionValue:@"The golden lion tamarin (Leontopithecus rosalia, Portuguese: mico-leão-dourado [ˈmiku ɫiˈɐ̃w̃ dowˈɾaðu]) also known as the golden marmoset, is a small New World monkey of the family Callitrichidae. Native to the Atlantic coastal forests of Brazil, the golden lion tamarin is an endangered species with an estimated wild population of about 1,000 individuals spread between three..."
                           imageName:@"goldenLion"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Golden_lion_tamarin"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Jeroen Kransen - Flickr"
                     imageOriginLink:@"http://www.flickr.com/photos/jkransen/2954024509/"
                        imageLicense:@"CC BY-SA 2.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by-sa/2.0"],
    [RainforestCardInfo infoWithName:@"Pygmy Marmoset"
                         descriptionValue:@"The pygmy marmoset (Cebuella pygmaea) is a small New World monkey native to rainforests of the western Amazon Basin in South America. It is notable for being the smallest monkey and one of the smallest primates in the world at just over 100 grams (3.5 oz) (Madame Berthe's mouse lemur is smaller). It is generally found in evergreen and river edge forests and is a gum-feeding specialist."
                           imageName:@"pygmy"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Pygmy_marmoset"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Karra Rothery - Flickr"
                     imageOriginLink:@"http://www.flickr.com/photos/50571298@N04/4642089704"
                        imageLicense:@"CC BY 2.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by/2.0"],
    [RainforestCardInfo infoWithName:@"Toucan"
                         descriptionValue:@"Toucans are members of the family Ramphastidae of near passerine birds from the Neotropics. The Ramphastidae family is most closely related to the American barbets. They are brightly marked and have large, often colorful bills. The family includes five genera and about forty different species. The name of this bird group is derived from the Tupi word tukana, via Portuguese."
                           imageName:@"toucan"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Toucan"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Raúl Hernández González"
                     imageOriginLink:@"http://www.flickr.com/photos/24175071@N00/3486478218"
                        imageLicense:@"CC BY 2.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by/2.0"],
    [RainforestCardInfo infoWithName:@"Sloth"
                         descriptionValue:@"Sloths (/ˈsloʊθ/ sloh-th, /ˈslɒθ/ slo-th) are medium-sized mammals belonging to the families Megalonychidae (two-toed sloth) and Bradypodidae (three-toed sloth], classified into six species. They are part of the order Pilosa and are therefore related to anteaters, which sport a similar set of specialized claws. Extant sloths are arboreal (tree-dwelling) residents of the jungles of Central..."
                           imageName:@"sloth"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Sloth"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Christian Mehlführer,"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/User:Chmehl"
                        imageLicense:@"CC BY 2.5"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by/2.5"],
    [RainforestCardInfo infoWithName:@"Leafcutter Ant"
                         descriptionValue:@"Leafcutter ants, a non-generic name, are any of 47 species of leaf-chewing ants belonging to the two genera Atta and Acromyrmex. These species of tropical, fungus-growing ants are all endemic to South and Central America, Mexico, and parts of the southern United States. Leafcutter ants \"cut and process fresh vegetation (leaves, flowers, and grasses) to serve as the nutritional substrate for..."
                           imageName:@"ant"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Leafcutter_ant"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"The stronger of the two"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/File:The_stronger_of_the_two.jpg"
                        imageLicense:@"CC BY 2.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by/2.0"],
    [RainforestCardInfo infoWithName:@"Margay"
                         descriptionValue:@"The margay (Leopardus wiedii) is a small cat native to Central and South America that is listed as \"Near Threatened\" by the IUCN since 2008 because remaining populations are thought to be declining due to loss of habitat following conversion of forests. In his first descriptionValue, Schinz named the margay Felis wiedii in honour of Prince Maximilian of Wied-Neuwied who collected..."
                           imageName:@"margay"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Margay"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Clément Bardot"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/User:Clément_Bardot"
                        imageLicense:@"CC BY-SA 3.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"],
    [RainforestCardInfo infoWithName:@"Tree Frog"
                         descriptionValue:@"A tree frog is any frog that spends a major portion of its lifespan in trees, known as an arboreal state. Several lineages of frogs among the Neobatrachia have given rise to tree frogs, even though they are not closely related to each other. Many millions of years of convergent evolution have resulted in almost identical morphology and ecologies. In fact, they are so similar as regards their..."
                           imageName:@"treeFrog"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Tree_frog"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Charlesjsharp"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/User:Charlesjsharp"
                        imageLicense:@"CC BY-SA 3.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"],
    [RainforestCardInfo infoWithName:@"Spider Monkey"
                         descriptionValue:@"Spider monkeys of the genus Ateles are New World monkeys in the subfamily Atelinae, family Atelidae. Like other atelines, they are found in tropical forests of Central and South America, from southern Mexico to Brazil. The genus contains seven species, all of which are under threat; the black-headed spider monkey, and brown spider monkey are critically endangered."
                           imageName:@"spiderMonkey"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Spider_monkey"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"http://www.birdphotos.com"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/User:Tomfriedel"
                        imageLicense:@"CC BY-SA 3.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"],
    [RainforestCardInfo infoWithName:@"Anteater"
                         descriptionValue:@"Anteater is a common name for the four mammal species of the suborder Vermilingua (meaning \"worm tongue\") commonly known for eating ants and termites. The individual species have other names in English and other languages. Together with the sloths, they compose the order Pilosa. The name \"anteater\" is also colloquially applied to the unrelated aardvark..."
                           imageName:@"anteater"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Anteater"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"DirkvdM tamandua"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/File:DirkvdM_tamandua.jpg"
                        imageLicense:@"CC BY-SA 3.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0/"],
    [RainforestCardInfo infoWithName:@"Jaguar"
                         descriptionValue:@"The jaguar (/ˈdʒæɡwɑr/ or UK /ˈdʒæɡjuː.ər/; Brazilian Portuguese: [ʒɐˈɡwaʁ], Spanish: [xaˈɣwar]], Panthera onca, is a big cat, a feline in the Panthera genus, and is the only Panthera species found in the Americas. The jaguar is the third-largest feline after the tiger and the lion, and the largest in the Western Hemisphere. The jaguar's present range extends from Southwestern United States and Mexico across..."
                           imageName:@"jag"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Jaguar"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Kairos14"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/File:Jaguars.JPG"
                        imageLicense:@"CC BY-SA 3.0"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"],
    [RainforestCardInfo infoWithName:@"Caiman"
                         descriptionValue:@"Caimans are alligatorid crocodylians within Caimaninae. The group is one of two primary lineages within Alligatoridae, the other being alligators. Caimans inhabit Central and South America. They are relatively small crocodylians, with the smallest being Cuvier's dwarf caiman (Paleosuchus palpebrosus], which grows to 1 m (3 ft) long, and the largest being the black..."
                           imageName:@"caiman"
                  articleAttribution:@"Abbreviated from Wikipedia"
                   articleOriginLink:@"http://en.wikipedia.org/wiki/Caiman"
                      articleLicense:@"CC-BY-SA"
                  articleLicenseLink:@"http://creativecommons.org/licenses/by-sa/3.0"
                    imageAttribution:@"Spectacled Caiman"
                     imageOriginLink:@"http://commons.wikimedia.org/wiki/File:Spectacled_Caiman.JPG"
                        imageLicense:@"CC BY-SA 2.5"
                    imageLicenseLink:@"http://creativecommons.org/licenses/by-sa/2.5"]
   ];

   return array;
}

@end