//
//  Arma.m
//  Jogador
//
//  Created by ALANA CAVALCANTI on 11/19/13.
//  Copyright (c) 2013 ALANA CAVALCANTI. All rights reserved.
//

#import "Arma.h"
//#include <stdlib.h>
#import <time.h>


@implementation Arma

-(double) calcularForcaAtaque:(Jogador *)jogador{

    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
                                 userInfo:nil];
    
    

}


@end
