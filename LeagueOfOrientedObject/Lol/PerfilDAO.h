//
//  PerfilDAO.h
//  Lol
//
//  Created by André Gimenez Faria on 13/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Perfil.h"

@interface PerfilDAO : NSObject {
    NSUserDefaults *dados;
}

-(PerfilDAO *) init;
-(Perfil *)buscarPerfil:(NSString *)nome;
-(void) persistirPerfil:(Perfil *)perfil;
@end
