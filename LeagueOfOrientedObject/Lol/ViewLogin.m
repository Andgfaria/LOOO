//
//  ViewLogin.m
//  Lol
//
//  Created by André Gimenez Faria on 14/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import "ViewLogin.h"
#import "Perfil.h"
#import "PerfilDAO.h"

@interface ViewLogin ()

@end

@implementation ViewLogin

@synthesize loginOK;

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
    loginOK = true;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) efetuarAcesso {
    loginOK = true;
    [_txtNomePerfil resignFirstResponder];
    [_txtSenha resignFirstResponder];
    NSString *nomePerfil = [[NSString alloc] initWithString:[_txtNomePerfil text]];
    NSString *senha = [[NSString alloc] initWithString:[_txtSenha text]];
    PerfilDAO *acesso = [[PerfilDAO alloc] init];
    Perfil *perfilEncontrado = [acesso buscarPerfil:nomePerfil];
    if (perfilEncontrado != nil) {
        if ([perfilEncontrado senhaValida:senha]) {
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"loginEfetuado"];
            [[NSUserDefaults standardUserDefaults] setObject:nomePerfil forKey:@"usuarioLogado"];
        }
        else {
            loginOK = false;
            UIAlertView *erro = [[UIAlertView alloc] initWithTitle:@"Login Falhou" message:@"Senha inválida." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [erro show];
        }
    }
    else {
        loginOK = false;
        UIAlertView *erro = [[UIAlertView alloc] initWithTitle:@"Login Falhou" message:@"Nome de perfil inválido." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [erro show];
    }
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"segueLogin"]) {
        if (!loginOK) {
            return NO;
        }
        else return YES;
    }
    else return YES;
}


- (IBAction)acessarPerfil:(id)sender {
    [self efetuarAcesso];
}
@end
