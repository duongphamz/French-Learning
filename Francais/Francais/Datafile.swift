//
//  Datafile.swift
//  Francais
//
//  Created by duongpham on 17/08/2023.
//

import Foundation

let jsonString = """
{
  "vocabs": [
    {
      "word": "observer",
      "meaning": "Watch,observe"
    },
    {
      "word": "cocher",
      "meaning": "tick"
    },
    {
      "word": "La majuscule",
      "meaning": "Uppercase, capital"
    },
    {
      "word": "La minuscule ",
      "meaning": "lowercase"
    },
    {
      "word": "L’affiche (une) ",
      "meaning": "poster"
    },
    {
      "word": "Le festival ",
      "meaning": "festival"
    },
    {
      "word": "Le nom ",
      "meaning": "Noun/name"
    },
    {
      "word": "former ",
      "meaning": "Form/train"
    },
    {
      "word": "La carte",
      "meaning": "map"
    },
    {
      "word": "Le pays ",
      "meaning": "country"
    },
    {
      "word": "nommer ",
      "meaning": "To name/appoint"
    },
    {
      "word": "Le drapeau",
      "meaning": " flag"
    },
    {
      "word": "La nationalité ",
      "meaning": "nationality"
    },
    {
      "word": "La syllabe",
      "meaning": "syllable"
    },
    {
      "word": "La francophonie",
      "meaning": "Francophonie"
    },
    {
      "word": "francophone",
      "meaning": "Francophone"
    },
    {
      "word": "anglophone",
      "meaning": "Anglophone"
    },
    {
      "word": "Le courriel ",
      "meaning": "E-mail"
    },
    {
      "word": "Réalisateur/réalisatrice",
      "meaning": "director"
    },
    {
      "word": "Le nuage",
      "meaning": "cloud"
    },
    {
      "word": "L’avocat/l’avocate",
      "meaning": "lawyer"
    },
    {
      "word": "L’auteur/l’auteure ",
      "meaning": "Author/writer"
    },
    {
      "word": "Le Journaliste/la journaliste ",
      "meaning": "journalist"
    },
    {
      "word": "répéter",
      "meaning": "repeat"
    },
    {
      "word": "Négatif/négative ",
      "meaning": "negative"
    },
    {
      "word": "Affirmatif/affirmative ",
      "meaning": "Affirmative/positive"
    },
    {
      "word": "accentuer ",
      "meaning": "Accentuate/increase"
    },
    {
      "word": "Le genre",
      "meaning": "gender"
    },
    {
      "word": "pratiquer",
      "meaning": "practice"
    },
    {
      "word": "connaitre",
      "meaning": "know"
    },
    {
      "word": "La langue ",
      "meaning": "language/tongue"
    },
    {
      "word": "souligner",
      "meaning": "underline"
    },
    {
      "word": "La profession ",
      "meaning": "job"
    },
    {
      "word": "cadavre ",
      "meaning": "dead body"
    },
    {
      "word": "exquis(-e) (être)",
      "meaning": "delicious"
    },
    {
      "word": "votre avis (un) ",
      "meaning": "your opinion"
    },
    {
      "word": "triste (être)",
      "meaning": "sad"
    },
    {
      "word": "fatigué(-e) (être)",
      "meaning": "tired"
    },
    {
      "word": "heureux(-euse) (être)",
      "meaning": "happy"
    },
    {
      "word": "malheureux(-euse) (être)",
      "meaning": "unhappy"
    },
    {
      "word": "éveillé(-e) (être)",
      "meaning": "awake"
    },
    {
      "word": "fâché(-e)/en colère (être)",
      "meaning": "angry"
    },
    {
      "word": "sympathique/gentil(-le) (être) ",
      "meaning": "friendly/kind"
    },
    {
      "word": "en forme (être) ",
      "meaning": "in good shape"
    },
    {
      "word": "content(e) (être) ",
      "meaning": "happy/glad"
    },
    {
      "word": "désagréable (être) ",
      "meaning": "unfriendly/unpleasant"
    },
    {
      "word": "rassasié(e) (être) ",
      "meaning": "be full (of food)"
    },
    {
      "word": "désaltéré (être) ",
      "meaning": "be full (of drinks)"
    },
    {
      "word": "chaud (avoir) ",
      "meaning": "warm/hot (be)"
    },
    {
      "word": "froid (avoir) ",
      "meaning": "cold (be)"
    },
    {
      "word": "soif (avoir) ",
      "meaning": "thirsty (be)"
    },
    {
      "word": "faim (avoir) ",
      "meaning": "hungry (be)"
    },
    {
      "word": "sommeil (avoir) ",
      "meaning": "sleepy (be)"
    },
    {
      "word": "L’identité (une) ",
      "meaning": "identity"
    },
    {
      "word": "Le dialogue ",
      "meaning": "dialog/conversation"
    },
    {
      "word": "défini(e)(s)",
      "meaning": "defined"
    },
    {
      "word": "indéfini(e)(s)",
      "meaning": "indefinite"
    },
    {
      "word": "désigner",
      "meaning": "designate"
    },
    {
      "word": "bois (le)",
      "meaning": "wood"
    },
    {
      "word": "chaise (la)",
      "meaning": "chair"
    },
    {
      "word": "prendre",
      "meaning": "take"
    },
    {
      "word": "apporter",
      "meaning": "bring"
    },
    {
      "word": "manger",
      "meaning": "eat"
    },
    {
      "word": "oeuf",
      "meaning": "egg"
    },
    {
      "word": "argent (masculin)",
      "meaning": "money"
    },
    {
      "word": "objet (un)",
      "meaning": "object"
    },
    {
      "word": "lunettes (les) ",
      "meaning": "the glasses"
    },
    {
      "word": "stylo (le) ",
      "meaning": "pen/handle"
    },
    {
      "word": "trousse (la)",
      "meaning": "pencilcase"
    },
    {
      "word": "téléphone (le)",
      "meaning": "phone"
    },
    {
      "word": "clé (la)",
      "meaning": "key"
    },
    {
      "word": "valise (la)",
      "meaning": "suitcase"
    },
    {
      "word": "gomme (la)",
      "meaning": "eraser"
    },
    {
      "word": "classe (la) ",
      "meaning": "class/classroom"
    },
    {
      "word": "portefeuille (le)",
      "meaning": "wallet"
    },
    {
      "word": "rond (le) ",
      "meaning": "circle/round"
    },
    {
      "word": "carré (le)",
      "meaning": "square"
    },
    {
      "word": "triangle (le)",
      "meaning": "triangle"
    },
    {
      "word": "rectangle (le)",
      "meaning": "rectangle"
    },
    {
      "word": "ordinateur (un)",
      "meaning": "computer"
    },
    {
      "word": "chaussette (la)",
      "meaning": "sock"
    },
    {
      "word": "sac (le)",
      "meaning": "bag"
    },
    {
      "word": "ciseaux (les)",
      "meaning": "scissors"
    },
    {
      "word": "calculatrice (la)",
      "meaning": "calculator"
    },
    {
      "word": "manquant(e)",
      "meaning": "missing"
    },
    {
      "word": "tableau (le) ",
      "meaning": "The board"
    },
    {
      "word": "souris (la)",
      "meaning": "mouse"
    },
    {
      "word": "écran (un)",
      "meaning": "screen"
    },
    {
      "word": "clavier (le)",
      "meaning": "keyboard"
    },
    {
      "word": "cartable (le)",
      "meaning": "Schoolbag"
    },
    {
      "word": "une brosse à dents",
      "meaning": "toothbrush"
    },
    {
      "word": "dentifrice (le)",
      "meaning": "toothpaste"
    },
    {
      "word": "vêtement (le) ",
      "meaning": "clothing/clothes"
    },
    {
      "word": "Contracté(e)",
      "meaning": "contracted"
    },
    {
      "word": "Cinéma (le) ",
      "meaning": "Movie theater"
    },
    {
      "word": "travailler",
      "meaning": "work"
    },
    {
      "word": "Bibliothèque (la)",
      "meaning": "library"
    },
    {
      "word": "Toilette (la)",
      "meaning": "toilet"
    },
    {
      "word": "Lettre (la) ",
      "meaning": "Mail/letter"
    },
    {
      "word": "École (une)",
      "meaning": "school"
    },
    {
      "word": "Peur (avoir) ",
      "meaning": "Scared (be)"
    },
    {
      "word": "Gare (la) ",
      "meaning": "Train station"
    },
    {
      "word": "Voiture (la)",
      "meaning": "car"
    },
    {
      "word": "Voisin(e)",
      "meaning": "Neighbor"
    },
    {
      "word": "Adorer ",
      "meaning": "Like/love"
    },
    {
      "word": "détester ",
      "meaning": "Hate/dislike"
    },
    {
      "word": "mais",
      "meaning": "but"
    },
    {
      "word": "faire ",
      "meaning": "Do/make"
    },
    {
      "word": "Musculation (la)",
      "meaning": "Bodybuilding"
    },
    {
      "word": "Natation (la)",
      "meaning": "Swimming"
    },
    {
      "word": "Randonnée (la)",
      "meaning": "Hiking"
    },
    {
      "word": "VTT (le) ",
      "meaning": "MTB(mountain bike)"
    },
    {
      "word": "Athlétisme (masculin)",
      "meaning": "Athletics"
    },
    {
      "word": "Peinture (la)",
      "meaning": "painting"
    },
    {
      "word": "Lecture (la)",
      "meaning": "Reading"
    },
    {
      "word": "Bande dessinée (la)",
      "meaning": "comics"
    },
    {
      "word": "Escalade (une)",
      "meaning": "climbing"
    },
    {
      "word": "Sondage (le)",
      "meaning": "survey"
    },
    {
      "word": "Enquête (une)",
      "meaning": "Investigation"
    },
    {
      "word": "Escrime (féminin)",
      "meaning": "Fencing (đấu kiếm)"
    },
    {
      "word": "Équitation (féminin) ",
      "meaning": "Horse riding"
    },
    {
      "word": "Roman (le)",
      "meaning": "novel"
    },
    {
      "word": "Bureau (le) ",
      "meaning": "Office/desk"
    },
    {
      "word": "Altérophilie (féminin)",
      "meaning": "Weightlifting"
    },
    {
      "word": "Aviron (masculin)",
      "meaning": "Rowing(chèo thuyền)"
    },
    {
      "word": "Bar (le)",
      "meaning": "bar"
    },
    {
      "word": "Mairie (la)",
      "meaning": " City hall"
    },
    {
      "word": "Piscine (la) ",
      "meaning": "Swimming pool"
    },
    {
      "word": "Cyclisme(le)",
      "meaning": "Cycling"
    },
    {
      "word": "Loisir (le) ",
      "meaning": "Leisure/hobby"
    },
    {
      "word": "l’après-midi (une)",
      "meaning": "afternoon"
    },
    {
      "word": "Le matin",
      "meaning": "morning"
    },
    {
      "word": "chez ",
      "meaning": "“At the house of...”"
    },
    {
      "word": "L’heure (une)",
      "meaning": "hour"
    },
    {
      "word": "Quelle heure est-il? ",
      "meaning": "What time is it?"
    },
    {
      "word": "Temps (le)",
      "meaning": "time"
    },
    {
      "word": "Le film ",
      "meaning": "The movie"
    },
    {
      "word": "Le cinéma ",
      "meaning": "The movie theater"
    },
    {
      "word": "L’horaire (un) ",
      "meaning": "The schedule"
    },
    {
      "word": "La séance",
      "meaning": " The session"
    },
    {
      "word": "C’est tôt ",
      "meaning": "It’s early"
    },
    {
      "word": "C’est tard",
      "meaning": " It’s late"
    },
    {
      "word": "Le week-end",
      "meaning": "weekend"
    },
    {
      "word": "La semaine",
      "meaning": "week"
    },
    {
      "word": "Aujourdh’hui",
      "meaning": "today"
    },
    {
      "word": "demain",
      "meaning": "tomorrow"
    },
    {
      "word": "hier",
      "meaning": "yesterday"
    },
    {
      "word": "Du......au....",
      "meaning": " From......to...."
    },
    {
      "word": "La pause",
      "meaning": " The break"
    },
    {
      "word": "préférer ",
      "meaning": "To prefer"
    },
    {
      "word": "Ma boisson préféré(e) ",
      "meaning": "My favorite drink"
    },
    {
      "word": "Le thé",
      "meaning": "tea"
    },
    {
      "word": "Le sucre",
      "meaning": "sugar"
    },
    {
      "word": "Le lait",
      "meaning": "milk"
    },
    {
      "word": "avec",
      "meaning": "with"
    },
    {
      "word": "sans",
      "meaning": "without"
    },
    {
      "word": "fruit",
      "meaning": "fruit"
    },
    {
      "word": "chocolat",
      "meaning": "chocolate"
    },
    {
      "word": "Un verre ",
      "meaning": "A glass"
    },
    {
      "word": "Une tasse ",
      "meaning": "A cup"
    },
    {
      "word": "Le lieu ",
      "meaning": "The place"
    },
    {
      "word": "Le spectacle ",
      "meaning": "The show"
    },
    {
      "word": "Le site ",
      "meaning": "The site"
    },
    {
      "word": "La date ",
      "meaning": "The date"
    },
    {
      "word": "Le prix ",
      "meaning": "The price"
    },
    {
      "word": "Le rendez-vous (RDV) ",
      "meaning": "The appointment"
    },
    {
      "word": "Lieux de sortie ",
      "meaning": "Places to hang out(go out)"
    },
    {
      "word": "libre",
      "meaning": "free"
    },
    {
      "word": "La patinoire ",
      "meaning": "Skating rink/ice rink"
    },
    {
      "word": "Le train",
      "meaning": "train"
    },
    {
      "word": "Partir ",
      "meaning": "To leave"
    },
    {
      "word": "La ligne de train ",
      "meaning": "Train line"
    },
    {
      "word": "Le restaurant",
      "meaning": "restaurant"
    },
    {
      "word": "La bibliothèque ",
      "meaning": "The library"
    },
    {
      "word": "Le musée ",
      "meaning": "The museum"
    },
    {
      "word": "Le théâtre municipal ",
      "meaning": "Municipal (city) theater"
    }
  ]
}
"""
