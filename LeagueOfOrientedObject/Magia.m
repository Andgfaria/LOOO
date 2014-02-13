//
//  Magia.m
//  Jogador
//
//  Created by ALANA CAVALCANTI on 11/19/13.
//  Copyright (c) 2013 ALANA CAVALCANTI. All rights reserved.
//

#import "Magia.h"

@implementation Magia

-(id)init
{
    self=[super init];
    if (self)
    {
        habilidade = 20;
        
    }
    return self;
}

-(double)calcularForcaAtaque:(Jogador *)jogador{
    double forcaMaxima=15;
    srand((int)time(NULL));
    precisaoDoAtaque=rand()%(100-60+1)+60;
    if(raca == [Jogador ELFO] || [Jogador ORC]){
        if(raca == [Jogador ELFO])
        {
        forcaMaxima =((forcaMaxima * 1.2) * (habilidade/100));
        habilidade=habilidade+10;
return forcaMaxima*(precisaoDoAtaque/100);
        }
        if(raca == [Jogador ORC])
        {
            forcaMaxima =10+((forcaMaxima * 1.2) * (habilidade/100));
            habilidade=habilidade+10;
return forcaMaxima*(precisaoDoAtaque/100);
        }
    }

        else
        if(raca == [Jogador ANAO])
        {
            forcaMaxima =5+((forcaMaxima) * (habilidade/100));
            habilidade=habilidade+10;
return forcaMaxima*(precisaoDoAtaque/100);
        }
        forcaMaxima =(forcaMaxima) * (habilidade/100);
        habilidade=habilidade+10;
return forcaMaxima*(precisaoDoAtaque/100);
}

@end