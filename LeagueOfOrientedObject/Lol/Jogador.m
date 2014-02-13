//
//  Jogador.m
//  Jogador
//
//  Created by ALANA CAVALCANTI on 11/19/13.
//  Copyright (c) 2013 ALANA CAVALCANTI. All rights reserved.
//

#import "Jogador.h"
#import "Arma.h"

@implementation Jogador
@synthesize nome;

static const int ELFO = 0;
static const int HUMANO = 1;
static const int ORC = 2;
static const int ANAO = 3;

+(int)HUMANO{
    return HUMANO;
}

+(int)ELFO{
    return ELFO;
}

+(int)ORC{
    return ORC;
}

+(int)ANAO{
    return ANAO;
}




-(id)initWithNome:(NSString *)cnome andRaca:(int)craca andarmaprimaria:(Arma *)carmaprimaria andarmasecundaria:(Arma *)carmasecundaria andVida:(int)cvida
{
    self=[super init];
    if (self)
    {
        nome = cnome;
        raca = craca;
        vida = cvida;
        forcaEscudo = 10;
        armaPrimaria =carmaprimaria;
        armaSecundaria =carmasecundaria;
        
    }
    return self;
}


-(float) ataque:(Arma *)armaEscolhida
{
    float f;
    if (armaEscolhida == armaPrimaria)
    {
        f = [armaPrimaria calcularForcaAtaque:self];
        return f;
    }
    else
        
        f = [armaSecundaria calcularForcaAtaque:self];
        f = f * 0.8;
        return f;
}
    

-(float) sofrerAtaque;
{
    srand((int)time(NULL));
    int defesa;
    if(raca == [Jogador HUMANO] || [Jogador ELFO])
    {
        defesa = 15;
    }
    else if(raca == [Jogador ANAO])
    {
        defesa = 10;
    }
    else
        defesa = 5;
    
    int chanceDefesa;
    chanceDefesa=rand()%100;
    defesa = defesa * chanceDefesa;
    defesa = defesa + forcaEscudo;
    return defesa;
}

-(void)setVida:(int)d{
    vida = vida - d ;
}
-(Arma *)getArmaPrimaria{
    return armaPrimaria;
}
-(Arma *)getArmaSecundaria{
    return armaSecundaria;
}
-(float)getVida{
    return vida;
}
@end