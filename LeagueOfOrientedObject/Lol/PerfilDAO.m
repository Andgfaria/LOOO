//
//  PerfilDAO.m
//  Lol
//
//  Created by André Gimenez Faria on 13/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import "PerfilDAO.h"

@implementation PerfilDAO

// Construtor padrão
-(PerfilDAO *) init {
    self = [super init];
    if (self) {
        dados = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

-(Perfil *)buscarPerfil:(NSString *)nome {
    NSData *objetoCodificado = [dados objectForKey:nome];
    if (objetoCodificado == nil) {
        return nil;
    }
    else {
        Perfil *perfilEncontrado = [NSKeyedUnarchiver unarchiveObjectWithData:objetoCodificado];
        return perfilEncontrado;
    }
}

-(void) persistirPerfil:(Perfil *)perfil {
    NSData *objetoCodificado = [NSKeyedArchiver archivedDataWithRootObject:perfil];
    [dados setObject:objetoCodificado forKey:[perfil nome]];
    [dados synchronize];
}

@end
