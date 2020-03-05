class ArticlesController < ApplicationController
  layout "/application"
  before_action :set_library

  def new
    @library = current_user
    @user = current_user
    if @user.email != "nicolas.goarant@gmail.com"
      redirect_to newspapers_path
    end
    @article = Article.new
  end

  def update
    # J'arrive ici lors de l'ajout à la bibliothèque
    # L'action articles#update n'est pas idéale car l'article n'est pas modifié - il reste le mm
    # On utilisera articles#update dans le cas d'une modification de l'article (changement de titre par exemple.)
    # Je supprime donc tout le code ci-dessous

    # La structure de données en l'état ne permet pas d'ajouter d'articles aux bibliothèque.
    # En effet, chaque utilisateur a une seule bibliothèque. Chaque bibliothèque doit pouvoir avoir plusieurs articles.
    # Mais chaque article doit pouvoir appartenir à plusieurs bibliothèques.
    # Il nous faut donc une relation HABTM (has and belongs to many). Il y a 2 manières de faire cela en Rails
    # 1. La relation HABTM (avec une join table gérée automatiquement)
    # 2. La relation has_many :through, implémentée dans les 2 sens A&B:
    #   A. articles has_many :libraries, through: ??
    #   B. libraries has_many :articles, through: ??
    #
    # C'est un cas classique. Il faut toujours choisir B. La relation A. (HABTM) semble plus simple, mais elle est trop 'magique'
    # et est cause de bugs pour les débutants. Surtout, il n'est pas possible de manipuler la table de jonction, ce qui est 
    # systématiquement un problème lorsque l'on développer les capacités de l'app. Par exemple, si tu veux savoir quand les articles
    # ont été ajoutés aux libraries, tu ne pourras le faire qu'avec le has_many :through, et il faudra donc transformer A. en B.
    # Tu verras avec l'expérience que ça arrive dans 99% des cas, et que du coup, il vaut toujours mieux partir sur le has_many :through
    # dès le début. Les pros n'utilisent quasiment pas la HABTM en Rails.
    #
    # Reste le plus délicat: comment nommer la table de jonction (join table).
    # Il s'agit de la jonction entre une library et un article.
    # Dans le cas d'une jonction ami <-> ami, la jonction pourrait s'appeler amitié (ou friendship)
    # Dans le cas d'une jonction bibli <-> article, il n'y a pas de mot idéal
    # Il n'y a mm pas de mot pour l'action d'ajouter un article à une bibliothèque (ajout?)
    # Dans le cas où il est difficile de nommer l'action ou la relation qui unit 2 modèles, je te conseille d'utiliser models1_models2
    # en conservant l'ordre alphabétique, et en mettant le modèle au pluriel (c'est une convention).
    #
    # Ici, ça nous donnera:
    # articles_libraries
    #
    # Du coup, il faut faire plusieurs choses:
    # 1. Créer la table dans la BDD avec une migration
    # 2. Créer le modèle ArticleLibrary, avec les belongs_to :article et :library
    # 3. Rajouter les has_many :through dans les modèles article et library
    # 4. Créer un controller ArticlesLibrariesController
    # 5. Ajouter une action #create dans ce controlleur
    # 6. Router le clic sur le bouton "Ajouter à ma librairie" vers articles_libraries#create
    # 7. Dans l'action create, créer l'association
    # Tu peux faire par exemple: user.library.article_libraries.create(article_id: @article.id)
    # Rediriger l'utilisateur vers la page où il était en lui affichant un message de succès
    #
    # -> Je te laisse faire tout cela, je corrigerai si tu veux.
  end


  def edit
  end

  def show
    @library = current_user.library
    @markers = @article.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
  end

  # def index
  #   @articles = Article.geocoded
  #   @markers = @articles.map { |a| { lat: a.longitude, lng: a.latitude } }
  # end

  def destroy
    @article.destroy
    redirect_to newspapers_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :newspaper_id, :summary, :photo, :media, :content, :address, :engagement, :publication, :auteur, :status)
  end

  def set_library
    @user = current_user
    @article = Article.find(params[:id])
  end
end
