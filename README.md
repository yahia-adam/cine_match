# Cine_match

> This project implements a movie recommendation system using ML.

### project idea
In this notebook, we will use the TF-IDF (term frequency-inverse document frequency) method to recommend movies based on how similar these movies are.
Users can give a title of movie. This system can search for the movies with similar title and make a recommendation based on the ratings and genres.

### algo:
    1: TF-IDF term frequency-inverse document frequency
    2: Matrix factorization

### data visu
    https://www.kaggle.com/code/aminaromdhani/exploring-apache-spark-for-movie-recommendation
    https://www.tensorflow.org/tensorboard/tensorboard_projector_plugin

### notes

- Deux types de recommandations sont couramment utilisés:
    recommandations de la page d'accueil
    recommandations d'articles associés

- Éléments (également appelés documents)
Entités recommandées par un système.  Pour YouTube, il s'agit d'éléments vidéo.

- Requête (également appelée "contexte")
Informations utilisées par un système pour formuler des recommandations.
    informations sur l'utilisateur
        ID de l'utilisateur
        éléments avec lesquels les utilisateurs ont déjà interagi

- Représentation vectorielle continue
Un mappage d'un ensemble discret (dans ce cas, l'ensemble de requêtes ou l'ensemble d'éléments à recommander) sur un espace vectoriel appelé espace de représentation vectorielle.

- Une architecture courante pour les systèmes de recommandation est composants suivants:
    Génération de candidats : Sélection d'un sous-ensemble d'éléments potentiellement pertinents.
    Notation : Évaluation et classement des candidats selon leur pertinence.
    Reclassement : Ajustement final du classement pour optimiser les recommandations.

- Mesures de similarité
    Une mesure de similarité est une fonction qui prend une paire de représentations vectorielles continues s(film, utilisateur)et renvoie une valeur scalaire mesurant leur similarité. 

https://developers.google.com/machine-learning/glossary?hl=fr#embeddings
https://developers.google.com/machine-learning/recommendation/overview/candidate-generation?hl=fr


heroku link
https://mycinematch-8be0ed558c56.herokuapp.com/