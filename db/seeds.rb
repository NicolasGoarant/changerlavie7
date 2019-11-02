puts "Cleaning database..."
Article.destroy_all
Library.destroy_all

puts "Creating libraries"

library_1 = Library.create!(
  id: 1,
  )



puts "Creating articles..."
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
  Paragraphe4: "",
  Paragraphe5: "",
  Paragraphe6: "",
  Paragraphe7: "",
  Paragraphe8: "",
  Paragraphe9: "",
  Paragraphe10: "",
  Paragraphe11: "",
  Paragraphe12: "",
  Paragraphe13: "",
  Paragraphe14: "",
  Paragraphe15: "",
  Paragraphe16: "",
  Paragraphe17: "",
  Paragraphe18: "",
  Paragraphe19: "",
  Paragraphe20: "",
  newspaper_id: 1,
  library_id: 1,
  status: "ouvert",
  address: "3 via Piazza Farnese, Roma",
  city: "Roma"
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
  Paragraphe18: "",
  Paragraphe19: "",
  Paragraphe20: "",
  newspaper_id: 1,
  library_id: 1,
  status: "ouvert",
  address: "110 rue Charles Nungesser, Guipavas",
  city: "Guipavas",
  )
