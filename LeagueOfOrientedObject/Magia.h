//
//  Magia.h
//  Jogador
//
//  Created by ALANA CAVALCANTI on 11/19/13.
//  Copyright (c) 2013 ALANA CAVALCANTI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"
@interface Magia : Arma{
    int habilidade;
}

-(double)calcularForcaAtaque:(Jogador *)jogador;

@end
