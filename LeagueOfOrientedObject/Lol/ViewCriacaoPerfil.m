//
//  ViewCriacaoPerfil.m
//  Lol
//
//  Created by André Gimenez Faria on 13/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import "ViewCriacaoPerfil.h"
#import "PerfilDAO.h"

@interface ViewCriacaoPerfil ()

@end

@implementation ViewCriacaoPerfil

@synthesize entradaOK;

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
    entradaOK = true;
    [_txtNomePerfil addTarget:self action:@selector(entradaModificada) forControlEvents:UIControlEventEditingChanged];
    [_txtSenhaPerfil addTarget:self action:@selector(entradaModificada) forControlEvents:UIControlEventEditingChanged];
    [_txtConfirmacaoSenhaPerfil addTarget:self action:@selector(entradaModificada) forControlEvents:UIControlEventEditingChanged];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)criarPerfil:(id)sender {
    PerfilDAO *persistenciaPerfil = [[PerfilDAO alloc] init];
    Perfil *existente = [persistenciaPerfil buscarPerfil:_txtNomePerfil.text];
    if (existente != nil) {
        UIAlertView *erro = [[UIAlertView alloc] initWithTitle:@"Perfil Existente" message:@"O nome do perfil escolhido já foi utilizado." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [erro show];
        entradaOK = false;
    }
    else {
        if ([_txtSenhaPerfil.text isEqualToString:_txtConfirmacaoSenhaPerfil.text]) {
            Perfil *novo = [[Perfil alloc] initWithNome:_txtNomePerfil.text eSenha:_txtSenhaPerfil.text];
            [persistenciaPerfil persistirPerfil:novo];
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"loginEfetuado"];
            [[NSUserDefaults standardUserDefaults] setObject:_txtNomePerfil.text forKey:@"usuarioLogado"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        else {
            UIAlertView *erro = [[UIAlertView alloc] initWithTitle:@"Senhas Não Coincidem" message:@"As senhas inseridas não coincidiram." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
            [erro show];
            entradaOK = false;
        }
    }
}

-(void)entradaModificada {
    if ([self camposPreenchidos]) {
        [_botaoCriarPerfil setEnabled:YES];
    }
    else [_botaoCriarPerfil setEnabled:NO];
}

-(BOOL)camposPreenchidos{
    BOOL nomePreenchido, senhaPreenchida, confirmacaoSenhaPreenchida;
    nomePreenchido = ![_txtNomePerfil.text isEqualToString:@""];
    senhaPreenchida = ![_txtSenhaPerfil.text isEqualToString:@""];
    confirmacaoSenhaPreenchida = ![_txtConfirmacaoSenhaPerfil.text isEqualToString:@""];
    return nomePreenchido && senhaPreenchida && confirmacaoSenhaPreenchida;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"segueCriarPerfil"]) {
        if (!entradaOK) {
            return NO;
        }
        else return YES;
    }
    else return YES;
}

@end
