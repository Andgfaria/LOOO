//
//  ArcoEFlecha.h
//  Jogador
//
//  Created by ALANA CAVALCANTI on 11/19/13.
//  Copyright (c) 2013 ALANA CAVALCANTI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"
@interface ArcoEFlecha : Arma{
    int quantidadeFlechas;
}

-(double)calcularForcaAtaque:(Jogador *)jogador;

@end