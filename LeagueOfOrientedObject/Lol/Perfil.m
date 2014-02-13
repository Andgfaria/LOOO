/*
    Implementação da classe Perfil
 */

#import "Perfil.h"

@implementation Perfil

@synthesize nome;

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.nome = [aDecoder decodeObjectForKey:@"nome"];
        self.senha = [aDecoder decodeObjectForKey:@"senha"];
        self.guerreiro1 = [aDecoder decodeObjectForKey:@"guerreiro1"];
        self.guerreiro2 = [aDecoder decodeObjectForKey:@"guerreiro2"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.nome forKey:@"nome"];
    [aCoder encodeObject:self.senha forKey:@"senha"];
    [aCoder encodeObject:self.guerreiro1 forKey:@"guerreiro1"];
    [aCoder encodeObject:self.guerreiro2 forKey:@"guerreiro2"];
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
