/*
    Implementação da classe Perfil
 */

#import "Perfil.h"

@implementation Perfil

@synthesize nome;

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        nome = [aDecoder decodeObjectForKey:@"nome"];
        senha = [aDecoder decodeObjectForKey:@"senha"];
        guerreiro1 = [aDecoder decodeObjectForKey:@"guerreiro1"];
        guerreiro2 = [aDecoder decodeObjectForKey:@"guerreiro2"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:nome forKey:@"nome"];
    [aCoder encodeObject:senha forKey:@"senha"];
    [aCoder encodeObject:guerreiro1 forKey:@"guerreiro1"];
    [aCoder encodeObject:guerreiro2 forKey:@"guerreiro2"];
}

//Cria um perfil sem guerreiros.
-(Perfil *)initWithNome:(NSString *)n eSenha:(NSString *)s {
    self = [super init];
    if (self) {
        nome = n;
        senha = s;
        guerreiro1 = guerreiro2 = nil;
    }
    return self;
}

//Verifica se uma string coincide com a senha do jogador.
-(BOOL)senhaValida:(NSString *)s {
    return [senha isEqualToString:s];
}

@end
