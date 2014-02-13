//
//  LOL.h
//  Lol
//
//  Created by Alana Lujan Cavalcanti Silva on 13/02/14.
//  Copyright (c) 2014 Alana Lujan Cavalcanti Silva. All rights reserved.
//

#include "Jogador.h"
#import "Arma.h"
#import "Espada.h"
#import "Machado.h"
#import "Magia.h"
#import "ArcoEFlecha.h"

@interface LOL : NSObject
{
    Jogador *jogador1;
    Jogador *jogador2;
}

//CLASSE LOL É O CÓDIGO ORIGINAL q foi adaptado no ViewController

-(void) jogo;
-(Jogador *)vencedor:(LOL *)player;
-(bool)verificaVencedor:(LOL *)player;
-(void)setjogador1:(LOL *)player;
-(void)setjogador2:(LOL *)player;

@end