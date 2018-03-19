//
//  PlaceIDs.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 09-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation

enum PlaceManager {
    //De bieren van Amsterdam
    case AMSR1L1  //Het IJ
    case AMSR1L2  //De prael
    case AMSR1L3  //De wildeman
    case AMSR1L4  //Gollem

    //Chill aan het water
    case AMSR2L1 //Roest
    case AMSR2L2  //Hannekes boom
    case AMSR2L3 //Pllek
    case AMSR2L4 //Noorderlicht

    //Stadsoases
    case AMSR3L1 //de ceuvel
    case AMSR3L2 //tolhuistuin
    case AMSR3L3 //madam
    case AMSR3L4 //Pacific parc

    //Buuitengewoon buitengewoon!
    case AMSR4L1 //de waterkant
    case AMSR4L2 //mata hari
    case AMSR4L3 //de prael
    case AMSR4L4 //winston kingdom

    //OUD EN NIEUW NOORD
    case ROTR1L1  //Paddy Murphy's Irish Pub
    case ROTR1L2  //Biergarten
    case ROTR1L3  //De bel
    case ROTR1L4  //Bird jazzcafe

    //Mooie Maas
    case ROTR2L1 //De ballentent
    case ROTR2L2  //Hotel New York
    case ROTR2L3 //De ouwehoer
    case ROTR2L4 //SS Rotterdam

    //Vreemde smaken
    case ROTR3L1 //Hotel Bazar
    case ROTR3L2 //De schouw
    case ROTR3L3 //Wunderbar
    case ROTR3L4 //Tiki's

    //Oude glorie
    case UTRR1L1  // cafe olivier
    case UTRR1L2  //Oudean
    case UTRR1L3  //cafe van wegen
    case UTRR1L4  //de oude dikke dries

    //relaxt aan het water
    case UTRR2L1 //Watertoren Utrecht
    case UTRR2L2  //Orloff aan de kade
    case UTRR2L3 //cafe het ledig erf
    case UTRR2L4 //Cafe de drie dorstige herten

    //De binnenste binnenstad
    case UTRR3L1 //Florin
    case UTRR3L2 //Hofman
    case UTRR3L3 //De bastaard
    case UTRR3L4 //'t hart

    //Liefde voor bier
    case BERR1L1  //IPA BAR
    case BERR1L2  //BERLINER BERG
    case BERR1L3  //twinpigs
    case BERR1L4  //klunkerkranig

    //Zomertijd
    case BERR2L1 //Holzmarkt am spree
    case BERR2L2 //sage beach
    case BERR2L3 //white trash
    case BERR2L4 //urban spree

    //Rock 'n roll
    case BERR3L1 //Prater biergarten
    case BERR3L2 //monterey
    case BERR3L3 //the pub!
    case BERR3L4 //Clärchens ballhaus

    //Dandies
    case BERR4L1 //Schleusenkrug am Spree
    case BERR4L2 //Am neuensee biergarten
    case BERR4L3 //Monkeybar
    case BERR4L4 //A-trane


    var placeId: String {
        switch self {

        case .BERR1L1:
            return "ChIJ7xwVnZ9PqEcR_NYfQ4z9xiU"
        case .BERR1L2:
            return "ChIJC8oyvqJPqEcRJiH6bTWiOos"
        case .BERR1L3:
            return "ChIJz3VaWbtPqEcRec3mqhqg9Bc"
        case .BERR1L4:
            return "ChIJBfIPPbtPqEcRMnne4FZmMfk"
        case .BERR2L1:
            return "ChIJ3XawDTlOqEcRzHeB5MHQ5Y0"
        case .BERR2L2:
            return "ChIJffwiZUhOqEcRAjoz4BZDnVU"
        case .BERR2L3:
            return "white"
        case .BERR2L4:
            return "ChIJlbANTVpOqEcRmYuZzOrj6M8"
        case .BERR3L1:
            return "ChIJD0vsHf9RqEcR66OXHP3xmXE"
        case .BERR3L2:
            return "ChIJq6qauABOqEcR8NNwvFJjuQc"
        case .BERR3L3:
            return "ChIJlczQJOBRqEcRXVYk4DrcCSo"
        case .BERR3L4:
            return "ChIJXe3VaOZRqEcRDQfjbd4zLac"
        case .BERR4L1:
            return "ChIJ7YCzHQFRqEcRkSQ6-XarVLw"
        case .BERR4L2:
            return "ChIJ3bFmt6tRqEcR5H-FijiDrvc"
        case .BERR4L3:
            return "ChIJ-RAVYVVQqEcRPZ3e-XXyPbg"
        case .BERR4L4:
            return "ChIJlUFd5eJQqEcRrMn_ekJYt60"

        case .AMSR1L1:
            return "ChIJk_jIQQsJxkcRxEsf3kkT_nc"
        case .AMSR1L2:
            return "ChIJXbROsrkJxkcR7q2r1JpovrE"
        case .AMSR1L3:
            return "ChIJ-UZn7McJxkcRGQkp-vCx-1U"
        case .AMSR1L4:
            return "ChIJzSPYfMEJxkcR-UUyFYCRqTg"
        case .AMSR2L1:
            return "ChIJu6iZ7g4JxkcRK54QA7mfGQU"
        case .AMSR2L2:
            return "ChIJY5AfZKUJxkcRp_HUUuoEkbM"
        case .AMSR2L3:
            return "ChIJ856viTkIxkcRXFJrwFltL_4"
        case .AMSR2L4:
            return "ChIJ_0I5gzkIxkcRQ7If6PckZ4o"
        case .AMSR3L1:
            return "ChIJ48qqbU4IxkcR2L1J_86AiRI"
        case .AMSR3L2:
            return "ChIJ42qtkbMJxkcRwWb-lV0ikSU"
        case .AMSR3L3:
            return "ChIJTRxAR7QJxkcROKv4N4YdXEw"
        case .AMSR3L4:
            return "ChIJBYM_-dQJxkcRxmyl_z87hw0"
        case .AMSR4L1:
            return "ChIJO5oH0t0JxkcRKkXlC7IYHMA"
        case .AMSR4L2:
            return "ChIJC83Lp7kJxkcR6e4dkMmc6fQ"
        case .AMSR4L3:
            return "ChIJXbROsrkJxkcR7q2r1JpovrE"
        case .AMSR4L4:
            return "ChIJ9do5m7gJxkcR_a0liAL981U"

        case .ROTR1L1:
            return "ChIJn8k0KF8zxEcRBjSHNpvHZd0"
        case .ROTR1L2:
            return "ChIJCS6P2ac0xEcR9censjezmLU"
        case .ROTR1L3:
            return "ChIJ9YPph6o0xEcRQIQSmQiyaDo"
        case .ROTR1L4:
            return "ChIJAxGa71czxEcRFbHqr0mNrr8"
        case .ROTR2L1:
            return "ChIJxxJAsYI0xEcRY83lT--6wAw"
        case .ROTR2L2:
            return "ChIJkRX7KHszxEcRQUhq4b_gbuA"
        case .ROTR2L3:
            return "ChIJfStBW3ozxEcRoeokey6z5Ag"
        case .ROTR2L4:
            return "ChIJp7FYw4E0xEcRYSEwWYrdZp8"
        case .ROTR3L1:
            return "ChIJR8sy218zxEcRQR9Z73zcbNM"
        case .ROTR3L2:
            return "ChIJN5Ou-Z80xEcRQdv6jfaeU40"
        case .ROTR3L3:
            return "ChIJIYsNAaA0xEcRB9D13bMyPd8"
        case .ROTR3L4:
            return "ChIJ4atPk18zxEcRe9mGp0gpsmY"

        case .UTRR1L1:
            return "ChIJ_dlisFxvxkcRA3Fd4GPCQ9Y"
        case .UTRR1L2:
            return "ChIJWxOEnURvxkcRvlE0JbI2exI"
        case .UTRR1L3:
            return "ChIJvT_JB0NvxkcRceOyGXKnook"
        case .UTRR1L4:
            return "ChIJaUBnTkJvxkcRpCo9YpecYYg"
        case .UTRR2L1:
            return "ChIJp4l32AxvxkcR9wpJJV4a2_4"
        case .UTRR2L2:
            return "ChIJXTOme_hlxkcREdqDAV6CvTE"
        case .UTRR2L3:
            return "ChIJSbWiuVdvxkcR73J839w3-5A"
        case .UTRR2L4:
            return "ChIJv5TtkVBvxkcRacysMt12SEo"
        case .UTRR3L1:
            return "ChIJWXf6gk9vxkcRHTIzf0-2KDs"
        case .UTRR3L2:
            return "ChIJwTyrpUVvxkcRhYSw5kjBRG4"
        case .UTRR3L3:
            return "ChIJy87dUkRvxkcRwlIBi-CTIqQ"
        case .UTRR3L4:
            return "ChIJfavCXURvxkcRD0y9qFoVX1Y"

        }
    }
}
