//
//  ViewInicial.m
//  Lol
//
//  Created by André Gimenez Faria on 13/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import "ViewInicial.h"
#import "ViewCriacaoPerfil.h"
#import "Perfil.h"
#import "PerfilDAO.h"

@interface ViewInicial ()

@end

@implementation ViewInicial

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    PerfilDAO *perfis = [[PerfilDAO alloc]init];
    Perfil *perfil = [perfis buscarPerfil:[[NSUserDefaults standardUserDefaults] objectForKey:@"usuarioLogado"]];
    NSLog(@"%@\n%@\n",perfil.guerreiro1,perfil.guerreiro2);
    [self carregarUsuario];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewCriacaoPerfil *view = [segue destinationViewController];
}

-(IBAction)retornarView:(UIStoryboardSegue *)sender {
    [self carregarUsuario];
    PerfilDAO *perfis = [[PerfilDAO alloc]init];
    Perfil *perfil = [perfis buscarPerfil:[[NSUserDefaults standardUserDefaults] objectForKey:@"usuarioLogado"]];
    NSLog(@"%@\n%@\n",perfil.guerreiro1,perfil.guerreiro2);
}

-(void)carregarUsuario {
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"loginEfetuado"]) {
        [_botaoCriarPerfil setHidden:YES];
        [_botaoAcessarPerfil setHidden:YES];
        [_botaoCriarGuerreiro setHidden:NO];
        [_botaoDeslogar setHidden:NO];
    }
    else {
        [_botaoCriarPerfil setHidden:NO];
        [_botaoAcessarPerfil setHidden:NO];
        [_botaoCriarGuerreiro setHidden:YES];
        [_botaoDeslogar setHidden:YES];
    }
}

- (IBAction)deslogar:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"loginEfetuado"];
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:@"usuarioLogado"];
    [_botaoCriarGuerreiro setHidden:YES];
    [_botaoCriarPerfil setHidden:NO];
    [_botaoAcessarPerfil setHidden:NO];
    [_botaoDeslogar setHidden:YES];
    
}
@end
