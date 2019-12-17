puts "Cleaning database..."
Article.destroy_all
Library.destroy_all
Newspaper.destroy_all
User.destroy_all

puts "Creating Users..."
user = User.create!(
  email: "nicolas.goarant@gmail.com",
  password: "secret",
  id: 1,
  )

puts "Creating Newspapers..."
newspaper = Newspaper.create!(
  id: 1,
  )

puts "Creating Libraries..."
library = Library.create!(
  id: 1,
  user_id: 1,)

puts "Creating Articles..."
article_1 = Article.create!(
  title: "Lutter contre le harcèlement à l'école",
  summary: "L’idée est simple : faire intervenir des bikers au sein d’établissements scolaires (du CM1/CM2 à la 6e-5e), pour sensibiliser sur le thème du harcèlement. ",
  photo: "https://res.cloudinary.com/dgz1y7eww/image/upload/v1570629243/efsauzttrjbh8te6eaq0.jpg",
  media: 'https://res.cloudinary.com/dgz1y7eww/image/upload/v1570634447/mlm7b7px6wc3uhdttudh.png',
  content: "Des bikers qui s’impliquent dans la lutte contre le harcèlement à l’école ou au collège : c’est l’objectif de l’association Ubaka Bretagne Chapter, qui vient de créer une antenne dans la région de Saint-Malo. L’occasion d’en apprendre un peu plus sur ces motards au grand cœur.
A l’origine, l’association Ubaka est née aux Etats-Unis et au Canada, il y a une cinquantaine d’années. Des policiers à la retraite prenaient l’engagement d’escorter les enfants victimes d’agression, sexuelle notamment, au tribunal, pour les soutenir et les aider à faire face à leur agresseur.
L’association a ensuite essaimé dans plusieurs pays. En France, en 2013, l’association Ubaka Bretagne Chapter a vu le jour, sous l’impulsion du Vannetais Bernard Mignot.
Depuis, des sections apparaissent un peu partout en France et l’association continue son développement en Bretagne. Déjà présente en Ille-et-Vilaine depuis trois ans, une section malouine vient de se lancer sous la houlette de six-sept motards locaux.
Jouer sur l’image des motards
La version française d’Ubaka a choisi une orientation un peu différente que celle des origines américaines. Son action est désormais centrée au niveau de la lutte contre le harcèlement scolaire.
L’idée est simple : faire intervenir des bikers au sein d’établissements scolaires (du CM1/CM2 à la 6e-5e), pour sensibiliser sur le thème du harcèlement. Comme l’explique Dominique, l’un des représentants malouins d’Ubaka :« Nous arrivons à moto et en cuirs. Nous jouons sur notre image pour engager le dialogue, ne serait-ce que, au début, sur les motos. Nous montrons aussi que malgré notre look, nous ne sommes pas agressifs ni violents. Au contraire, nous mettons en avant des valeurs de respect. Nous demandons aux enfants quel est leur avis sur l’agressivité, le harcèlement. On finit par arriver à en parler, mais progressivement ».
Le sujet étant sensible, les bikers font attention :
« Nous ne ciblons personne, même si nous savons qu’un groupe harcèle un de leurs camarades. Nous allons essayer de les faire verbaliser la situation. Pour qu’ils la comprennent et qu’ils prennent conscience des conséquences que cela peut avoir ».
En support, les motards diffusent de petits films fournis par l’Académie, adaptés à l’âge des enfants. Les interventions dans les établissements s’effectuent à la demande des chefs d’établissement. Mais des parents peuvent être les moteurs d’une telle démarche. C’est d’ailleurs souvent le cas.
Accompagner un enfant agressé
L’association propose un autre type d’action : l’accompagnement d’un enfant agressé. « Dans des cas de harcèlement grave, nous pouvons être appelés à partir du moment où des parents ont porté plainte ». On se rapproche alors plus de l’action de base de l’Ubaka américaine :
« Nous accompagnons et nous allons chercher l’enfant à l’école, il devient notre filleul. L’idée évidemment, c’est de le rassurer ».
Mais pourquoi ces motards s’engagent-ils dans ce combat ? « Pour certains, c’est simplement la fibre paternelle qui joue. D’autres ont vécu eux-mêmes un rapport à la violence par le passé. D’une manière générale, nous constatons une recrudescence de la violence à l’école, qui nous gêne. En France, environ 12 % des enfants de CM1/CM2, et 8 % des collégiens, se plaignent de harcèlement. »
Avec dans les cas les plus graves des conséquences parfois dramatiques. Dominique glisse ainsi :
 « Je ne peux pas supporter l’idée qu’un enfant soit dans une telle souffrance, qu’il en vienne à se suicider ».
Pour cela, il est prêt à enfourcher sa Harley et à intervenir dans les écoles.
# ",
  Paragraphe1: "Des bikers qui s’impliquent dans la lutte contre le harcèlement à l’école ou au collège : c’est l’objectif de l’association Ubaka Bretagne Chapter, qui vient de créer une antenne dans la région de Saint-Malo. L’occasion d’en apprendre un peu plus sur ces motards au grand cœur.",
  Paragraphe2: "A l’origine, l’association Ubaka est née aux Etats-Unis et au Canada, il y a une cinquantaine d’années. Des policiers à la retraite prenaient l’engagement d’escorter les enfants victimes d’agression, sexuelle notamment, au tribunal, pour les soutenir et les aider à faire face à leur agresseur.",
  Paragraphe3: "L’association a ensuite essaimé dans plusieurs pays. En France, en 2013, l’association Ubaka Bretagne Chapter a vu le jour, sous l’impulsion du Vannetais Bernard Mignot.
Depuis, des sections apparaissent un peu partout en France et l’association continue son développement en Bretagne. Déjà présente en Ille-et-Vilaine depuis trois ans, une section malouine vient de se lancer sous la houlette de six-sept motards locaux.",
  Paragraphe4: "Jouer sur l’image des motards",
  Paragraphe5: "La version française d’Ubaka a choisi une orientation un peu différente que celle des origines américaines. Son action est désormais centrée au niveau de la lutte contre le harcèlement scolaire.
L’idée est simple : faire intervenir des bikers au sein d’établissements scolaires (du CM1/CM2 à la 6e-5e), pour sensibiliser sur le thème du harcèlement. Comme l’explique Dominique, l’un des représentants malouins d’Ubaka :",
  Paragraphe6: "« Nous arrivons à moto et en cuirs. Nous jouons sur notre image pour engager le dialogue, ne serait-ce que, au début, sur les motos. Nous montrons aussi que malgré notre look, nous ne sommes pas agressifs ni violents. Au contraire, nous mettons en avant des valeurs de respect. Nous demandons aux enfants quel est leur avis sur l’agressivité, le harcèlement. On finit par arriver à en parler, mais progressivement ».",
  Paragraphe7: "Le sujet étant sensible, les bikers font attention :",
  Paragraphe8: "« Nous ne ciblons personne, même si nous savons qu’un groupe harcèle un de leurs camarades. Nous allons essayer de les faire verbaliser la situation. Pour qu’ils la comprennent et qu’ils prennent conscience des conséquences que cela peut avoir ».",
  Paragraphe9: "En support, les motards diffusent de petits films fournis par l’Académie, adaptés à l’âge des enfants. Les interventions dans les établissements s’effectuent à la demande des chefs d’établissement. Mais des parents peuvent être les moteurs d’une telle démarche. C’est d’ailleurs souvent le cas.",
  Paragraphe11: "L’association propose un autre type d’action : l’accompagnement d’un enfant agressé. « Dans des cas de harcèlement grave, nous pouvons être appelés à partir du moment où des parents ont porté plainte ». On se rapproche alors plus de l’action de base de l’Ubaka américaine :",
  Paragraphe12: "« Nous accompagnons et nous allons chercher l’enfant à l’école, il devient notre filleul. L’idée évidemment, c’est de le rassurer ».",
  Paragraphe13: "Mais pourquoi ces motards s’engagent-ils dans ce combat ? « Pour certains, c’est simplement la fibre paternelle qui joue. D’autres ont vécu eux-mêmes un rapport à la violence par le passé. D’une manière générale, nous constatons une recrudescence de la violence à l’école, qui nous gêne. En France, environ 12 % des enfants de CM1/CM2, et 8 % des collégiens, se plaignent de harcèlement. »",
  Paragraphe14: "Avec dans les cas les plus graves des conséquences parfois dramatiques. Dominique glisse ainsi :",
  Paragraphe15: "« Je ne peux pas supporter l’idée qu’un enfant soit dans une telle souffrance, qu’il en vienne à se suicider ».",
  Paragraphe16: "Pour cela, il est prêt à enfourcher sa Harley et à intervenir dans les écoles.",
  Paragraphe17: "",
  Paragraphe18: "",
  Paragraphe19: "",
  Paragraphe20: "",
  newspaper_id: 1,
  library_id: 1,
  status: "ouvert",
  address: "27 rue Frederic Bazille, Saint-Malo",
  city: "saint-malo",
  engagement: "proposer un projet similaire avec l'école de ses enfants",
  place: 1,
  publication: Date.new(2014, 5, 17),
    )


article_2 = Article.create!(
  summary: "À Rome, en Italie, un nouveau moyen de paiement pour le moins original est actuellement testé dans trois stations de métro. Pour obtenir des tickets, il suffit de déposer dans une borne des bouteilles en plastique à recycler. ",
  # photo: Rails.root.join("gt7tmy7oj4n4ggwzjjre").open,
  photo: "https://res.cloudinary.com/dgz1y7eww/image/upload/v1570629280/gt7tmy7oj4n4ggwzjjre.jpg",
  media: 'https://res.cloudinary.com/dgz1y7eww/image/upload/v1570634926/eacpuejbttonhdwjfnv9.png',
  content: "Sortir sa petite monnaie ou sa carte bleue pour obtenir des tickets de métro pourrait devenir quelque peu dépassé à Rome. Dans plusieurs stations qui tentent actuellement l'expérience, il suffit de recycler ses bouteilles en plastique pour pouvoir voyager. 
Ce système est mis en place pour un an dans trois stations situées dans trois lignes différentes. Des bornes y sont installées : y déposer ses bouteilles en plastique à recycler permet d'accumuler des crédits pour acheter des tickets de métro et de bus. Tarif : 5 centimes par bouteille déposée, à savoir que le ticket de métro coûte 1,50 €. 30 bouteilles permettent donc d'obtenir un ticket. Virginia Raggi, la maire de Rome, citée par Il Globo, a indiqué que la capitale était la première ville en Italie et parmi les premières en Europe à promouvoir cette initiative respectueuse de l'environnement. ",
  title: "Recycler les bouteilles en plastique",
  Paragraphe1: "À Rome, en Italie, un nouveau moyen de paiement pour le moins original est actuellement testé dans trois stations de métro. Pour obtenir des tickets, il suffit de déposer dans une borne des bouteilles en plastique à recycler. ",
  Paragraphe2: "Sortir sa petite monnaie ou sa carte bleue pour obtenir des tickets de métro pourrait devenir quelque peu dépassé à Rome. Dans plusieurs stations qui tentent actuellement l'expérience, il suffit de recycler ses bouteilles en plastique pour pouvoir voyager. ",
  Paragraphe3: "Ce système est mis en place pour un an dans trois stations situées dans trois lignes différentes. Des bornes y sont installées : y déposer ses bouteilles en plastique à recycler permet d'accumuler des crédits pour acheter des tickets de métro et de bus. Tarif : 5 centimes par bouteille déposée, à savoir que le ticket de métro coûte 1, 50 euro. 30 bouteilles permettent donc d'obtenir un ticket. Virginia Raggi, la maire de Rome, citée par Il Globo, a indiqué que la capitale était la première ville en Italie et parmi les premières en Europe à promouvoir cette initiative respectueuse de l'environnement. ",
  newspaper_id: 1,
  library_id: 1,
  status: "ouvert",
  address: "3 via Piazza Farnese, Roma",
  city: "Roma",
  engagement: "s'adresser à sa mairie ou déposer un projet dans le cadre d'un budget participatif",
  place: 1,
  publication: Date.new(2013,4,6),
  )


article_3 = Article.create!(
  summary: "En quelques clics, tout un chacun peut financer des arbres, qui sont plantés dans les massifs forestiers en France, en devenir propriétaire.",
  # photo: Rails.root.join("vohux4g56rromvjbdx6z").open,
  photo: "https://res.cloudinary.com/dgz1y7eww/image/upload/v1570628009/vohux4g56rromvjbdx6z.jpg",
  media: 'https://res.cloudinary.com/dgz1y7eww/image/upload/v1570634953/mzczqamdolcrnh1p4zsv.jpg',
  content: "Alors que de nombreuses marches pour le climat se tiendront partout en France et dans le monde, ce samedi 21 septembre, l’urgence climatique est au cœur des préoccupations.
Pour limiter le réchauffement de la planète, la baisse des émissions de CO2 est une priorité absolue. Planter des arbres peut justement permettre d’en capter une partie. C’est le constat duquel est partie la start-up bretonne EcoTree. Lancée en 2016, cette dernière vend des arbres sur Internet et engage les citoyens dans le reboisement des forêts.
Baudoin Vercken, l’un des cofondateurs d’EcoTree, explique : “En quelques clics, tout un chacun peut financer des arbres, qui sont plantés dans les massifs forestiers en France, en devenir propriétaire”, avant de poursuivre : “L’arbre est un actif environnemental, puisqu’il permet de contribuer à la captation carbonne, aux enjeux de biodiversité, mais il a aussi un aspect économique, puisqu’un jour ce bois qui va grandir, servira à fournir la filière en bois d’oeuvre, en bois d’ameublement.” 
“Ce qui veut dire qu’il y a un rendement, ce n’est pas uniquement un acte écologique”, souligne Stéphane Dépinoy. “Vous avez essayé de marier l’acte écologique avec une rentabilité économique”
“Exactement”, réplique le cofondateur d’EcoTree. “On a essayé de coupler un acte écologique avec une dimension économique, même si la dimension économique vient en fin de parcours, elle vient récompenser la personne qui a financé ces arbres au moment où ces arbres vont être transformés pour une seconde vie”
Un internaute peut ainsi s’offrir un chêne, un pin, voire même un châtaignier, tout en réalisant un investissement pouvant rapporter jusqu’à 2% par an. Et lorsqu’il est coupé, son acheteur perçoit 100 % des revenus.
Mais peut-on revendre cet arbre avant sa coupe, afin de récupérer son investissement ?
“Aujourd’hui, on est vraiment dans un cycle de vie propre à l’arbre, donc c’est au moment où l’arbre sera transformé. Pour tout ce qui concerne la forêt, on s’inscrit dans des cycles longs, et on a une logique patrimoniale quand on se lance dans ce type de projet parce qu’on agit pour les générations futures”, précise Baudoin Vercken. 
“Mais alors, ce sont des arbres que vous plantez ou qui existent déjà et qu’on va soigner ?, questionne Stéphane Dépinoy. “Car vous achetez des forêts qui sont mal-en-point”
“En fait, chez EcoTree, on répond à différents types de défis forestiers. Quand il s’agit de boiser des terres anciennement agricoles, on boise, mais quand on récupère des forêts en carence de gestion ou qui ont souffert, on intervient pour mettre en place de l’ingénierie forestière. Du coup, selon cette typologie de défis, on laisse l’existent sur place”, affirme le cofondateur de la start-up. 
Et quel est le panier moyen ? Combien une personne achète en moyenne d’arbres par l’intermédiaire d’EcoTree ? “C’est assez variable. Les gens sont assez fidèles et s’inscrivent dans une démarche dans le temps. Donc, on va dire autour de 10 arbres, si l’on devait faire une logique moyenne d’achat côté particuliers”, assure Baudoin Vercken. “Dès 15€, on peut financer de la plantation et la gestion forestière qui va être appliquée derrière sur le massif, c’est tout à fait accessible. On devient aussi un outil pédagogique pour le grand public, où l’on sensibilise sur les enjeux de la forêt française, qui est un excellent levier face aux objectifs climats auxquels on a tous à répondre”, poursuit-il.
“On a l’ambition d’aller très loin. Aujourd’hui, on a permis de reprendre des surfaces à la hauteur de 80 fois le Stade de France, en à peine trois ans d’existence. Bien sûr, il faut faire beaucoup plus, beaucoup plus vite, mais ça, ça dépend aussi de l’implication de tout un chacun”, explique Baudoin Vercken.
“On intervient auprès du grand public, mais on embarque aussi les entreprises sur ces sujets-là, car elles ont une forte implication, elles essaient d’appliquer des politiques environnementales de taille, de s’impliquer en faveur de la réduction carbone, de l’évitement carbone mais aussi de la compensation carbone.”, détaille-t-il. La SNCF fait notamment partie des clients d’EcoTree. 
Selon notre invité, sur un cycle de 20 ans, un arbre peut séquestrer quasiment une demi-tonne de CO2. Baudoin Vercken en est persuadé : “Les petits ruisseaux font les grandes rivières”. Pour lui, l’essentiel est d’agir chacun à son échelle, aussi petite soit-elle. 
La start-up bretonne, qui s’est beaucoup inspirée de la culture scandinave, vient d’ailleurs d’ouvrir un bureau au Danemark, toujours avec l’ambition de récolter des financements pour les forêts françaises en mobilisant des acteurs européens. 
Chaque année, entre 13 et 15 millions d’hectares de forêts disparaissent dans le monde, soit la surface de la Belgique et, selon le Giec, la déforestation est à l’origine de 17 % des émissions de gaz à effet de serre, rappelle la start-up EcoTree sur son site.
L’interview s’est achevée sur “Rebirth (Reno’s Intro)” de Napkey. ",
  title: "Financer des plantations d'arbres",
  Paragraphe1: "Alors que de nombreuses marches pour le climat se tiendront partout en France et dans le monde, ce samedi 21 septembre, l’urgence climatique est au cœur des préoccupations.",
  Paragraphe2: "Pour limiter le réchauffement de la planète, la baisse des émissions de CO2 est une priorité absolue. Planter des arbres peut justement permettre d’en capter une partie. C’est le constat duquel est partie la start-up bretonne EcoTree. Lancée en 2016, cette dernière vend des arbres sur Internet et engage les citoyens dans le reboisement des forêts.",
  Paragraphe3: "Baudoin Vercken, l’un des cofondateurs d’EcoTree, explique : “En quelques clics, tout un chacun peut financer des arbres, qui sont plantés dans les massifs forestiers en France, en devenir propriétaire”, avant de poursuivre : “L’arbre est un actif environnemental, puisqu’il permet de contribuer à la captation carbonne, aux enjeux de biodiversité, mais il a aussi un aspect économique, puisqu’un jour ce bois qui va grandir, servira à fournir la filière en bois d’oeuvre, en bois d’ameublement.” ",
  Paragraphe4: "“Ce qui veut dire qu’il y a un rendement, ce n’est pas uniquement un acte écologique”, souligne Stéphane Dépinoy. “Vous avez essayé de marier l’acte écologique avec une rentabilité économique”",
  Paragraphe5: "“Exactement”, réplique le cofondateur d’EcoTree. “On a essayé de coupler un acte écologique avec une dimension économique, même si la dimension économique vient en fin de parcours, elle vient récompenser la personne qui a financé ces arbres au moment où ces arbres vont être transformés pour une seconde vie”",
  Paragraphe6: "Un internaute peut ainsi s’offrir un chêne, un pin, voire même un châtaignier, tout en réalisant un investissement pouvant rapporter jusqu’à 2 % par an. Et lorsqu’il est coupé, son acheteur perçoit 100 % des revenus.",
  Paragraphe7: "Mais peut-on revendre cet arbre avant sa coupe, afin de récupérer son investissement ?",
  Paragraphe8: "“Aujourd’hui, on est vraiment dans un cycle de vie propre à l’arbre, donc c’est au moment où l’arbre sera transformé. Pour tout ce qui concerne la forêt, on s’inscrit dans des cycles longs, et on a une logique patrimoniale quand on se lance dans ce type de projet parce qu’on agit pour les générations futures”, précise Baudoin Vercken. ",
  Paragraphe9: "“Mais alors, ce sont des arbres que vous plantez ou qui existent déjà et qu’on va soigner ?, questionne Stéphane Dépinoy. “Car vous achetez des forêts qui sont mal-en-point”",
  Paragraphe10: "“En fait, chez EcoTree, on répond à différents types de défis forestiers. Quand il s’agit de boiser des terres anciennement agricoles, on boise, mais quand on récupère des forêts en carence de gestion ou qui ont souffert, on intervient pour mettre en place de l’ingénierie forestière. Du coup, selon cette typologie de défis, on laisse l’existent sur place”, affirme le cofondateur de la start-up. ",
  Paragraphe11: "Et quel est le panier moyen ? Combien une personne achète en moyenne d’arbres par l’intermédiaire d’EcoTree ? “C’est assez variable. Les gens sont assez fidèles et s’inscrivent dans une démarche dans le temps. Donc, on va dire autour de 10 arbres, si l’on devait faire une logique moyenne d’achat côté particuliers”, assure Baudoin Vercken. “Dès 15€, on peut financer de la plantation et la gestion forestière qui va être appliquée derrière sur le massif, c’est tout à fait accessible. On devient aussi un outil pédagogique pour le grand public, où l’on sensibilise sur les enjeux de la forêt française, qui est un excellent levier face aux objectifs climats auxquels on a tous à répondre”, poursuit-il.",
  Paragraphe12: "“On a l’ambition d’aller très loin. Aujourd’hui, on a permis de reprendre des surfaces à la hauteur de 80 fois le Stade de France, en à peine trois ans d’existence. Bien sûr, il faut faire beaucoup plus, beaucoup plus vite, mais ça, ça dépend aussi de l’implication de tout un chacun”, explique Baudoin Vercken.",
  Paragraphe13: "“On intervient auprès du grand public, mais on embarque aussi les entreprises sur ces sujets-là, car elles ont une forte implication, elles essaient d’appliquer des politiques environnementales de taille, de s’impliquer en faveur de la réduction carbone, de l’évitement carbone mais aussi de la compensation carbone.”, détaille-t-il. La SNCF fait notamment partie des clients d’EcoTree. ",
  Paragraphe14: "Selon notre invité, sur un cycle de 20 ans, un arbre peut séquestrer quasiment une demi-tonne de CO2. Baudoin Vercken en est persuadé : “Les petits ruisseaux font les grandes rivières”. Pour lui, l’essentiel est d’agir chacun à son échelle, aussi petite soit-elle. ",
  Paragraphe15: "La start-up bretonne, qui s’est beaucoup inspirée de la culture scandinave, vient d’ailleurs d’ouvrir un bureau au Danemark, toujours avec l’ambition de récolter des financements pour les forêts françaises en mobilisant des acteurs européens. ",
  Paragraphe16: "Chaque année, entre 13 et 15 millions d’hectares de forêts disparaissent dans le monde, soit la surface de la Belgique et, selon le Giec, la déforestation est à l’origine de 17 % des émissions de gaz à effet de serre, rappelle la start-up EcoTree sur son site.",
  Paragraphe17: "L’interview s’est achevée sur “Rebirth (Reno’s Intro)” de Napkey. ",
  newspaper_id: 1,
  library_id: 1,
  status: "ouvert",
  address: "110 rue Charles Nungesser, Guipavas",
  city: "Guipavas",
  engagement: "aller sur Ecotree.fr",
  place: 1,
  publication: Date.new(2009,4,1),
  )

article_4 = Article.create!(
  summary: "Six mois après son installation, l’îlot écolo du canal Saint-Martin affiche une végétation luxuriante et accueille oiseaux et poissons.",
  # photo: Rails.root.join("vohux4g56rromvjbdx6z").open,
  photo: "https://res.cloudinary.com/dgz1y7eww/image/upload/v1575132769/juiingtmpchahz34bhla.jpg",
  media: 'https://res.cloudinary.com/dgz1y7eww/image/upload/v1575231913/qzojpxsieavqvqc9xsws.png',
  content: "",
  title: "Paris : le radeau végétalisé est devenu un refuge de biodiversité",
  Paragraphe1: "Mis à flot en février au niveau du 94, quai de Jemmapes (Xe), certains ne lui prédisaient pas un grand avenir. Et pourtant, six mois après son installation, le radeau uvégétalisé du canal Saint-Martin (X e ) est franchement luxuriant. Mieux, il remplit parfaitement sa fonction écologique, assure sa conceptrice Katarina Dear, une trentenaire parisienne qui l'a financé grâce au budget participatif de la Ville de Paris. « Je suis très contente du résultat, explique-t-elle. Non seulement il apporte une note bucolique sur le canal mais il a permis l'éclosion d'une vraie biodiversité ».",
  Paragraphe2: "Les premières mesures d'impact valident en effet son intuition de départ. Choisies pour leur capacité à stocker les polluants de l'eau, les plantes piquées dans le radeau de 40 m2 (fabriqué en plastique recyclé et en fibre de coco) se sont épanouies. Et au milieu des iris des marais, de la menthe aquatique et des joncs, animaux et insectes n'ont pas tardé à élire domicile.",
  Paragraphe3: "« Il y a une famille de canards colvert qui y vit en permanence, détaille Katarina Dear. On peut aussi y observer tous les jours un canard de barbarie de couleur blanche. Et puis, on voit régulièrement la bergeronnette des ruisseaux (NDLR : un oiseau protégé reconnaissable à ses plumes jaunes). C'est un signe positif car cela veut dire qu'un écosystème se met en place ».« Il y a une famille de canards colvert qui y vit en permanence, détaille Katarina Dear. On peut aussi y observer tous les jours un canard de barbarie de couleur blanche. Et puis, on voit régulièrement la bergeronnette des ruisseaux (NDLR : un oiseau protégé reconnaissable à ses plumes jaunes). C'est un signe positif car cela veut dire qu'un écosystème se met en place ».",
  Paragraphe4: "Voilà pour la partie émergée. Car, sous le radeau, des caissons grillagés et des modules remplis de coquilles d'huîtres ont été installés pour servir de refuge et de garde-manger aux poissons. « Un scaphandrier a effectué une plongée en juin et a pu observer que plusieurs espèces de poissons venaient pour se reproduire et nidifier » explique la jeune femme.",
  Paragraphe5: "À la tête de son association Nature & Us, elle a pu organiser avant l'été un atelier de sensibilisation à la biodiversité autour de son îlot pour une vingtaine d'élèves du X e. Une expérience qu'elle rééditera à la rentrée. Autre motif de satisfaction : mis à part l'abordage de quelques canettes de bière ou de papiers gras, l'îlot n'a pas été vandalisé. « Les gens sont intrigués mais les retours sont très positifs » se réjouit Katarina Dear qui a déjà été sollicitée pour installer de nouveaux radeaux végétalisés à Paris et dans d'autres villes françaises.",
  newspaper_id: 1,
  library_id: 1,
  status: "ouvert",
  address: "94 quai de Jemmapes, Paris",
  city: "Paris",
  auteur: "par Julien Duffé",
  engagement: "déposer un projet similaire dans le cadre d'un projet participatif",
  place: 2,
  publication: Date.new(2012,1,25),
  )



article_5 = Article.create!(
  summary: "Maîtriser le développement informatique permet de booster son CV. Les entreprises apprécient les compétences opérationnelles des candidats issus de domaines différents.",
  photo: "https://res.cloudinary.com/dgz1y7eww/image/upload/v1575204829/u5hbqzush6kl9r6tlaei.jpg",
  media: 'https://res.cloudinary.com/dgz1y7eww/image/upload/v1575206200/vuqkgckusjd67dddy6ta.jpg',
  title: "Faire du « code » pour travailler tout de suite",
  Paragraphe1: "« Changez de vie. Apprenez à coder. » Le slogan qui accueille les visiteurs à l’entrée du site Le Wagon.com est clair : en neuf semaines intensives, cette formation lancée en 2014 promet à ses élèves d’acquérir les fondamentaux du développement Web, afin de pouvoir postuler comme développeur ou monter son propre projet entrepreneurial.",
  Paragraphe2: "Deux mois seulement pour se reconvertir ou doper radicalement son employabilité ? La formule paraît presque trop belle. Pourtant, elle séduit de plus en plus de jeunes en début de carrière, constate Romain Paillard, l’un des fondateurs de ce programme décliné dans dix villes (cinq en France, quatre en Europe et un à Beyrouth). Les raisons de cet engouement sont nombreuses, explique cet ancien avocat, lui-même reconverti : « Certains ne veulent plus avoir de patron. Avec le code, on peut travailler depuis une plage à Bali. D’autres souhaitent migrer vers des jeunes boîtes innovantes ou rêvent de monter leur start-up. »",
  Paragraphe3: "Rémi Lebigre décide, lui, de se reconvertir pour une raison encore plus courante : l’impossibilité de trouver un travail. Après des études de neurosciences à l’université Pierre-et-Marie-Curie, à Paris, et un deuxième master en management des connaissances sur la vie en entreprise, il passe neuf mois à chercher un emploi, sans succès. Il se tourne alors vers la 3W Académie, qui forme des développeurs et des webmasters, et finance de sa poche 3 000 euros pour les trois mois de formation au Web.",
  Paragraphe4: "Un investissement rentable pour ce jeune homme âgé de 25 ans : « Au lendemain de ma formation, j’étais en CDI comme développeur pour une agence de communication digitale ! Je gagne 32 000 euros brut par an et c’est moi qui ai proposé le salaire. Mes horaires sont très souples : si je le souhaite, je peux partir à 17 heures pour mon cours de sport. »",
  Paragraphe5: "Depuis, M. Lebigre a reçu une dizaine de coups de fil de jeunes souhaitant se reconvertir comme lui. Le secteur est porteur : d’après le syndicat professionnel Syntec numérique, le secteur logiciels et services informatiques a créé 12 000 emplois en 2014, après en avoir créé 7 000 en 2013.",
  Paragraphe6: "C’est aussi par son efficacité qu’Alice Clavel a séduit la start-up française Save : « Ils ont été surpris par l’aspect pratique de mes connaissances. La plupart des ingénieurs et informaticiens qui postulent ont de très bonnes bases théoriques mais sont incapables d’écrire une ligne de code. » Sortie du centre de formation Le Wagon en mars 2015, Alice est passée par la prestigieuse école de commerce ESCP. Déçue par le niveau médiocre de ses cours, elle apprend à coder à la suite d’un stage dans une start-up berlinoise.",
  Paragraphe7: "Au Wagon, les premières semaines sont rudes, le contenu est dense, mais la jeune fille est séduite par la méthode pédagogique : « On travaille en binôme et on change de partenaire tous les jours pour apprendre à connaître tout le monde et à travailler avec différents niveaux. Contrairement aux croyances populaires, il y a très peu de mathématiques. En revanche, il faut aimer la logique et être rigoureux. On apprend la patience et on ravale sa fierté. »",
  Paragraphe8: "Peu importe les études d’origine : à condition d’être curieux et prêts à s’investir, le code s’ouvre à tous les profils. Nicolas Sadirac, directeur général de l’école 42, affirme même apprécier la diversité, source de richesse : « Parmi les diplômés, on a des étudiants qui sortent des Beaux-Arts, d’autres d’écoles d’ingénieur, de doctorat de psychologie, de master de sociologie, d’école vétérinaire… On a même un moine tibétain. »",
  Paragraphe9: "Si les compétences peuvent s’apprendre sur le tas, il est en revanche indispensable d’intégrer un certain état d’esprit. Romain Paillard évoque une « philosophie » propre au milieu numérique qu’il essaie d’insuffler aux élèves du Wagon : « Ils apprennent à se documenter par eux-mêmes, à s’améliorer sans cesse, à travailler en collaboration, avec cette idée fondamentale que rien n’est jamais acquis. Un développeur qui travaille depuis trente ans continue à apprendre chaque jour. » ",
  newspaper_id: 1,
  library_id: 1,
  status: "ouvert",
  address: "16 Villa Gaudelet, Paris",
  city: "Paris",
  auteur: "par Margherita Nasi et Camille Thomine",
  engagement: "aller sur www.lewagon.com",
  place: 2,
  publication: Date.new(2011,5,17),
  )


article_6 = Article.create!(
  summary: "La filière de la tomate a mis en place un incubateur de start up afin de valoriser au mieux les déchets, avec comme première application la possibilité de fabriquer des vêtements. ",
  # photo: Rails.root.join("gt7tmy7oj4n4ggwzjjre").open,
  photo: "https://res.cloudinary.com/dgz1y7eww/image/upload/v1575227582/pcspjwy3frpveqy6qmpy.jpg",
  media: 'https://res.cloudinary.com/dgz1y7eww/image/upload/v1575227867/zqvujmhuvtc0x3hla4hl.png',
  content: "Sortir sa petite monnaie ou sa carte bleue pour obtenir des tickets de métro pourrait devenir quelque peu dépassé à Rome. Dans plusieurs stations qui tentent actuellement l'expérience, il suffit de recycler ses bouteilles en plastique pour pouvoir voyager. 
Ce système est mis en place pour un an dans trois stations situées dans trois lignes différentes. Des bornes y sont installées : y déposer ses bouteilles en plastique à recycler permet d'accumuler des crédits pour acheter des tickets de métro et de bus. Tarif : 5 centimes par bouteille déposée, à savoir que le ticket de métro coûte 1,50 €. 30 bouteilles permettent donc d'obtenir un ticket. Virginia Raggi, la maire de Rome, citée par Il Globo, a indiqué que la capitale était la première ville en Italie et parmi les premières en Europe à promouvoir cette initiative respectueuse de l'environnement. ",
  title: "Recyclage : bientôt des vêtements en tiges de tomates ?",
  Paragraphe1: "Après le coton, le lin, la soie, la tomate va servir à créer des tissus. Dans la région de Nantes, les producteurs misent sur ce projet pour valoriser leurs tiges de tomates car ils ne savent pas quoi en faire. Et les tiges de tomate, c'est quelque chose : dans les serres, elles peuvent mesurer jusqu'à 15 mètres de long, et ressemblent à des lianes suspendues. Deux fois par an, quand elles ont donné des tomates, les producteurs doivent s'en débarrasser pour en planter d'autres.",
  Paragraphe2: "Elles sont habituellement transformées en compost. Mais la profession a demandé à La Ressourceraie, une entreprise spécialisée dans le recyclage des végétaux, de chercher des solutions. Cette entreprise est basée en Touraine et travaille avec des chercheurs de Chimie Paris Tech. Ils ont mis au point une technique pour extraire les fibres des tiges, comme celle du lin.",
  Paragraphe3: "Elles s'est associée à des chercheurs de Paris Tech et un fabricant de tissus, les Soieries de Touraine. Ils ont a mis au point une technique pour extraire les fibres des tiges, comme celle du lin et en faire des tissus. Les producteurs de tomates espèrent rapidement pouvoir fabriquer des pantalons, des pulls en tomate. ",
  Paragraphe4: "Les chercheurs se sont aussi intéressés aux feuilles. Et là, ils arrivent à récupérer les pigments pour en faire de la peinture verte ou de l'encre pour stylo bille. Des pigments naturels, un débouché formidable pour les producteurs qui vont valoriser leurs tiges et leurs feuilles. Ils espèrent passer au stade industriel en fin d'année.",
  newspaper_id: 1,
  library_id: 1,
  status: "ouvert",
  address: "25 Rue de la Bourdaisière, Montlouis-sur-Loire",
  city: "Montlouis-sur-Loire",
  engagement: "acheter des vêtements ainsi conçus",
  place: 2,
  publication: Date.new(2018,11,26),
  )


article_7 = Article.create!(
  title: "Don de moelle osseuse : hommes jeunes, mobilisez-vous !",
  summary: "Redouté, ce prélèvement est pourtant assez anodin et sauve des vies. En France, seuls 35 % des donneurs sont des hommes… Trop peu.",
  photo: "https://res.cloudinary.com/dgz1y7eww/image/upload/v1575289322/evgipfdegwbhxhpdh71j.jpg",
  media: 'https://res.cloudinary.com/dgz1y7eww/image/upload/v1575231913/qzojpxsieavqvqc9xsws.png',
  Paragraphe1: "À travers les continents, il y a 36 millions de volontaires inscrits sur les registres de don de moelle osseuse. « On peut se dire : c'est énorme, c'est suffisant ! Eh bien, pas du tout », s'exclame la docteure Évelyne Marry alors que se tient ce samedi la journée mondiale du don.",
  Paragraphe2: "Pour la France, la directrice du prélèvement à l'Agence de la biomédecine pointe notamment le manque d'hommes. Ils ne représentent que 35 % des 300 000 donneurs potentiels de l'Hexagone. « C'est trop peu. Il manque plus particulièrement des hommes jeunes, de moins de 35 ans. Il faut lever les freins. Je dirais même plus, il faut y aller, là! C'est un des plus beaux gestes que l'on peut faire, et cela ne fait pas mal. »",
  Paragraphe3: "Si la docteure insiste sur ce point, c'est que la moelle osseuse, mal connue, souvent confondue avec la moelle épinière, souffre d'une réputation un peu galvaudée. On imagine le don très douloureux alors que dans 75 % des cas, il consiste à un prélèvement dans le sang, comme un don de plaquettes, durant trois à quatre heures. Les chances d'être compatible étant infimes, il se passe en moyenne huit ans entre l'inscription et le don, s'il a lieu.",
  Paragraphe4: "La greffe aide à guérir 80 % des maladies du sang : leucémie, lymphome, myélome. Le rôle de la moelle osseuse est en effet vital dans le fonctionnement du corps humain. Ce tissu, lové au cœur des os, participe à la fabrication des globules rouges, transporteurs d'oxygène et des globules blancs, protecteurs du système immunitaire. « Il sauve des vies », résume la docteure Marry.",
  Paragraphe5: "Pour s'inscrire, il faut avoir entre 18 et 50 ans, être en très bonne santé et de ne pas suivre de traitement chronique. Un rendez-vous médical et une prise de sang sont nécessaires.",
  Paragraphe6: "Tous les centres et informations sur www.dondemoelleosseuse.fr",
  newspaper_id: 1,
  library_id: 1,
  status: "ouvert",
  address: "21 rue Crozatier, Paris",
  city: "Paris",
  auteur: "par Florence Méréo",
  engagement: "aller sur www.dondemoelleosseuse.fr",
  place: 2,
  publication: Date.new(2016,4,30),
    )
