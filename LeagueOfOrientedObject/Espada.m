//
//  Espada.m
//  Jogador
//
//  Created by ALANA CAVALCANTI on 11/19/13.
//  Copyright (c) 2013 ALANA CAVALCANTI. All rights reserved.
//

#import "Espada.h"

@implementation Espada

-(id)init
{
    self=[super init];
    if (self)
    {
        forcaMaxima =10;
        desgaste = 100;
        
    }
    return self;
}

-(double)calcularForcaAtaque:(Jogador *)jogador
{
    srand((int)time(NULL));
    precisaoDoAtaque=rand()%(100-60+1)+60;
        forcaMaxima=10;
    
        if(raca == [Jogador HUMANO] || [Jogador ORC])
        {
            if(raca == [Jogador HUMANO])
               {
                   forcaMaxima =(forcaMaxima * 1.1) * (desgaste/100);
                   desgaste = desgaste - 10;
return forcaMaxima*(precisaoDoAtaque/100);
               }
            if(raca == [Jogador ORC])
               {
                   forcaMaxima =10+((forcaMaxima * 1.1) * (desgaste/100));
                   desgaste = desgaste - 10;
return forcaMaxima*(precisaoDoAtaque/100);
               }
        }
        else if(raca == [Jogador ELFO])
               {
                   forcaMaxima =(forcaMaxima * 1.1) * (desgaste/100);
                   desgaste = desgaste - 10;
return forcaMaxima*(precisaoDoAtaque/100);
               }

        forcaMaxima =5+((forcaMaxima * 1.1) * (desgaste/100));
        desgaste = desgaste - 10;
return forcaMaxima*(precisaoDoAtaque/100);
}

@end
