puts "Cleaning database..."
Article.destroy_all
Library.destroy_all
Newspaper.destroy_all
User.destroy_all

puts "Creating Newspapers..."
newspaper = Newspaper.create!(
  id: 1,
  )

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

Des bikers qui s’impliquent dans la lutte contre le harcèlement à l’école ou au collège : c’est l’objectif de l’association Ubaka Bretagne Chapter, qui vient de créer une antenne dans la région de Saint-Malo. L’occasion d’en apprendre un peu plus sur ces motards au grand cœur.

A l’origine, l’association Ubaka est née aux Etats-Unis et au Canada, il y a une cinquantaine d’années. Des policiers à la retraite prenaient l’engagement d’escorter les enfants victimes d’agression, sexuelle notamment, au tribunal, pour les soutenir et les aider à faire face à leur agresseur.
L’association a ensuite essaimé dans plusieurs pays. En France, en 2013, l’association Ubaka Bretagne Chapter a vu le jour, sous l’impulsion du Vannetais Bernard Mignot.
Depuis, des sections apparaissent un peu partout en France et l’association continue son développement en Bretagne. Déjà présente en Ille-et-Vilaine depuis trois ans, une section malouine vient de se lancer sous la houlette de six-sept motards locaux.
Jouer sur l’image des motards
La version française d’Ubaka a choisi une orientation un peu différente que celle des origines américaines. Son action est désormais centrée au niveau de la lutte contre le harcèlement scolaire.
L’idée est simple : faire intervenir des bikers au sein d’établissements scolaires (du CM1/CM2 à la 6e-5e), pour sensibiliser sur le thème du harcèlement. Comme l’explique Dominique, l’un des représentants malouins d’Ubaka :
« Nous arrivons à moto et en cuirs. Nous jouons sur notre image pour engager le dialogue, ne serait-ce que, au début, sur les motos. Nous montrons aussi que malgré notre look, nous ne sommes pas agressifs ni violents. Au contraire, nous mettons en avant des valeurs de respect. Nous demandons aux enfants quel est leur avis sur l’agressivité, le harcèlement. On finit par arriver à en parler, mais progressivement ».
Le sujet étant sensible, les bikers font attention :
« Nous ne ciblons personne, même si nous savons qu’un groupe harcèle un de leurs camarades. Nous allons essayer de les faire verbaliser la situation. Pour qu’ils la comprennent et qu’ils prennent conscience des conséquences que cela peut avoir ».
En support, les motards diffusent de petits films fournis par l’Académie, adaptés à l’âge des enfants. Les interventions dans les établissements s’effectuent à la demande des chefs d’établissement. Mais des parents peuvent être les moteurs d’une telle démarche. C’est d’ailleurs souvent le cas.
L’association propose un autre type d’action : l’accompagnement d’un enfant agressé. « Dans des cas de harcèlement grave, nous pouvons être appelés à partir du moment où des parents ont porté plainte ». On se rapproche alors plus de l’action de base de l’Ubaka américaine :
« Nous accompagnons et nous allons chercher l’enfant à l’école, il devient notre filleul. L’idée évidemment, c’est de le rassurer ».
Mais pourquoi ces motards s’engagent-ils dans ce combat ? « Pour certains, c’est simplement la fibre paternelle qui joue. D’autres ont vécu eux-mêmes un rapport à la violence par le passé. D’une manière générale, nous constatons une recrudescence de la violence à l’école, qui nous gêne. En France, environ 12 % des enfants de CM1/CM2, et 8 % des collégiens, se plaignent de harcèlement. »
Avec dans les cas les plus graves des conséquences parfois dramatiques. Dominique glisse ainsi :
« Je ne peux pas supporter l’idée qu’un enfant soit dans une telle souffrance, qu’il en vienne à se suicider ».
Pour cela, il est prêt à enfourcher sa Harley et à intervenir dans les écoles.",
  newspaper_id: 1,
  status: "ouvert",
  address: "27 rue Frederic Bazille, Saint-Malo",
  city: "saint-malo",
  engagement: "proposer un projet similaire avec l'école de ses enfants",
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
  newspaper_id: 1,
  status: "ouvert",
  address: "3 via Piazza Farnese, Roma",
  city: "Roma",
  engagement: "s'adresser à sa mairie ou déposer un projet dans le cadre d'un budget participatif",
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
  newspaper_id: 1,
  status: "ouvert",
  address: "110 rue Charles Nungesser, Guipavas",
  city: "Guipavas",
  engagement: "aller sur Ecotree.fr",
  publication: Date.new(2009,4,1),
  )

article_4 = Article.create!(
  summary: "Six mois après son installation, l’îlot écolo du canal Saint-Martin affiche une végétation luxuriante et accueille oiseaux et poissons.",
  # photo: Rails.root.join("vohux4g56rromvjbdx6z").open,
  photo: "https://res.cloudinary.com/dgz1y7eww/image/upload/v1575132769/juiingtmpchahz34bhla.jpg",
  media: 'https://res.cloudinary.com/dgz1y7eww/image/upload/v1575231913/qzojpxsieavqvqc9xsws.png',
  title: "Paris : le radeau végétalisé est devenu un refuge de biodiversité",
  content: "Mis à flot en février au niveau du 94, quai de Jemmapes (Xe), certains ne lui prédisaient pas un grand avenir. Et pourtant, six mois après son installation, le radeau uvégétalisé du canal Saint-Martin (X e ) est franchement luxuriant. Mieux, il remplit parfaitement sa fonction écologique, assure sa conceptrice Katarina Dear, une trentenaire parisienne qui l'a financé grâce au budget participatif de la Ville de Paris. « Je suis très contente du résultat, explique-t-elle. Non seulement il apporte une note bucolique sur le canal mais il a permis l'éclosion d'une vraie biodiversité »
Les premières mesures d'impact valident en effet son intuition de départ. Choisies pour leur capacité à stocker les polluants de l'eau, les plantes piquées dans le radeau de 40 m2 (fabriqué en plastique recyclé et en fibre de coco) se sont épanouies. Et au milieu des iris des marais, de la menthe aquatique et des joncs, animaux et insectes n'ont pas tardé à élire domicile.
« Il y a une famille de canards colvert qui y vit en permanence, détaille Katarina Dear. On peut aussi y observer tous les jours un canard de barbarie de couleur blanche. Et puis, on voit régulièrement la bergeronnette des ruisseaux (NDLR : un oiseau protégé reconnaissable à ses plumes jaunes). C'est un signe positif car cela veut dire qu'un écosystème se met en place ».« Il y a une famille de canards colvert qui y vit en permanence, détaille Katarina Dear. On peut aussi y observer tous les jours un canard de barbarie de couleur blanche. Et puis, on voit régulièrement la bergeronnette des ruisseaux (NDLR : un oiseau protégé reconnaissable à ses plumes jaunes). C'est un signe positif car cela veut dire qu'un écosystème se met en place ».
Voilà pour la partie émergée. Car, sous le radeau, des caissons grillagés et des modules remplis de coquilles d'huîtres ont été installés pour servir de refuge et de garde-manger aux poissons. « Un scaphandrier a effectué une plongée en juin et a pu observer que plusieurs espèces de poissons venaient pour se reproduire et nidifier » explique la jeune femme.
À la tête de son association Nature & Us, elle a pu organiser avant l'été un atelier de sensibilisation à la biodiversité autour de son îlot pour une vingtaine d'élèves du X e. Une expérience qu'elle rééditera à la rentrée. Autre motif de satisfaction : mis à part l'abordage de quelques canettes de bière ou de papiers gras, l'îlot n'a pas été vandalisé. « Les gens sont intrigués mais les retours sont très positifs » se réjouit Katarina Dear qui a déjà été sollicitée pour installer de nouveaux radeaux végétalisés à Paris et dans d'autres villes françaises.",
  newspaper_id: 1,
  status: "ouvert",
  address: "94 quai de Jemmapes, Paris",
  city: "Paris",
  auteur: "par Julien Duffé",
  engagement: "déposer un projet similaire dans le cadre d'un projet participatif",
  publication: Date.new(2012,1,25),
  )



article_5 = Article.create!(
  summary: "Maîtriser le développement informatique permet de booster son CV. Les entreprises apprécient les compétences opérationnelles des candidats issus de domaines différents.",
  photo: "https://res.cloudinary.com/dgz1y7eww/image/upload/v1575204829/u5hbqzush6kl9r6tlaei.jpg",
  media: 'https://res.cloudinary.com/dgz1y7eww/image/upload/v1575206200/vuqkgckusjd67dddy6ta.jpg',
  title: "Faire du « code » pour travailler tout de suite",
  content: "« Changez de vie. Apprenez à coder. » Le slogan qui accueille les visiteurs à l’entrée du site Le Wagon.com est clair : en neuf semaines intensives, cette formation lancée en 2014 promet à ses élèves d’acquérir les fondamentaux du développement Web, afin de pouvoir postuler comme développeur ou monter son propre projet entrepreneurial.",
  newspaper_id: 1,
  status: "ouvert",
  address: "16 Villa Gaudelet, Paris",
  city: "Paris",
  auteur: "par Margherita Nasi et Camille Thomine",
  engagement: "aller sur www.lewagon.com",
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
  newspaper_id: 1,
  status: "ouvert",
  address: "25 Rue de la Bourdaisière, Montlouis-sur-Loire",
  city: "Montlouis-sur-Loire",
  engagement: "acheter des vêtements ainsi conçus",
  publication: Date.new(2018,11,26),
  )


article_7 = Article.create!(
  title: "Don de moelle osseuse : hommes jeunes, mobilisez-vous !",
  summary: "Redouté, ce prélèvement est pourtant assez anodin et sauve des vies. En France, seuls 35 % des donneurs sont des hommes… Trop peu.",
  photo: "https://res.cloudinary.com/dgz1y7eww/image/upload/v1575289322/evgipfdegwbhxhpdh71j.jpg",
  media: 'https://res.cloudinary.com/dgz1y7eww/image/upload/v1575231913/qzojpxsieavqvqc9xsws.png',
  newspaper_id: 1,
  status: "ouvert",
  address: "21 rue Crozatier, Paris",
  city: "Paris",
  auteur: "par Florence Méréo",
  engagement: "aller sur www.dondemoelleosseuse.fr",
  publication: Date.new(2016,4,30),
    )
