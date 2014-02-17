//
//  Jogador.h
//  Jogador
//
//  Created by ALANA CAVALCANTI on 11/19/13.
//  Copyright (c) 2013 ALANA CAVALCANTI. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Arma;
@interface Jogador : NSObject <NSCoding>
{
    NSString *nome;
    int raca;
    float vida;
    int forcaEscudo;
    Arma *armaPrimaria;
    Arma *armaSecundaria;
    
}
    +(int) ORC;
    +(int) ANAO;
    +(int)  ELFO;
    +(int)  HUMANO;
@property(nonatomic,strong)NSString *nome;

-(id)initWithNome:(NSString *)cnome andRaca:(int)craca andarmaprimaria:(Arma *)carmaprimaria andarmasecundaria:(Arma *)carmasecundaria andVida:(int)cvida;
-(float) ataque:(Arma *)armaEscolhida;
-(float) sofrerAtaque;
-(void)setVida:(int)d;
-(Arma *)getArmaPrimaria;
-(Arma *)getArmaSecundaria;
-(float)getVida;


@end
