/*
    Classe Perfil: Representa um perfil de usuário do jogo.
    Dados: nome (ID do jogador) e senha.
 */

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface Perfil : NSObject <NSCoding> {
    NSString *nome;
    NSString *senha;
    Jogador *guerreiro1;
    Jogador *guerreiro2;
}

//Cria um perfil sem guerreiros.
-(Perfil *) initWithNome:(NSString *)n eSenha:(NSString *)s;

//Verifica se uma string coincide com a senha do jogador.
-(BOOL) senhaValida:(NSString *)s;

-(id)initWithCoder:(NSCoder *)aDecoder;
-(void)encodeWithCoder:(NSCoder *)aCoder;

@property NSString *nome;
@property NSString *senha;
@property Jogador *guerreiro1;
@property Jogador *guerreiro2;

@end
