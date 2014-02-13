//
//  ArcoEFlecha.m
//  Jogador
//
//  Created by ALANA CAVALCANTI on 11/19/13.
//  Copyright (c) 2013 ALANA CAVALCANTI. All rights reserved.
//

#import "ArcoEFlecha.h"

@implementation ArcoEFlecha

-(id)init
{
    self=[super init];
    if (self)
    {
        quantidadeFlechas = 40;
        
    }
    return self;
}

-(double)calcularForcaAtaque:(Jogador *)jogador

{        srand((int)time(NULL));
    
    precisaoDoAtaque=rand()%(100-60+1)+60;
    
    double forcaAtaque=10;
    if(raca == [Jogador ELFO])
    {
        forcaAtaque = forcaAtaque * 1.1;
        quantidadeFlechas--;
        return forcaAtaque*(precisaoDoAtaque/100);
    }
    else{
        if(raca == [Jogador ORC]){
        forcaAtaque = forcaAtaque +10;
        quantidadeFlechas--;
            return forcaAtaque*(precisaoDoAtaque/100);
        }
    if(raca == [Jogador ANAO]){
            forcaAtaque = forcaAtaque +5;
        quantidadeFlechas--;
        return forcaAtaque*(precisaoDoAtaque/100);
    }
    }
    quantidadeFlechas--;
        return forcaAtaque*(precisaoDoAtaque/100);
    
}
@end