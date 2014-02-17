//
//  ViewCriacaoGuerreiro.m
//  Lol
//
//  Created by André Gimenez Faria on 17/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import "ViewCriacaoGuerreiro.h"
#import "Jogador.h"
#import "Arma.h"
#import "ArcoEFlecha.h"
#import "Machado.h"
#import "Magia.h"
#import "Espada.h"
#import "Perfil.h"
#import "PerfilDAO.h"

@interface ViewCriacaoGuerreiro ()

@end

@implementation ViewCriacaoGuerreiro

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
    flag = NO;
    [_botaoCriarGuerreiro addTarget:self action:@selector(ativarBotaoCriacao) forControlEvents:UIControlEventValueChanged];
    [_segmentedSlot addTarget:self action:@selector(ativarBotaoCriacao) forControlEvents:UIControlEventValueChanged];
        // Do any additional setup after loading the view
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) ativarBotaoCriacao {
    if ([self todosCamposPreenchidos]) {
        [_botaoCriarGuerreiro setEnabled:YES];
    }
    else [_botaoCriarGuerreiro setEnabled:NO];
}
-(BOOL) todosCamposPreenchidos {
    if ([_txtNomeGuerreiro.text isEqualToString:@""] || [_segmentedSlot selectedSegmentIndex] == -1) {
        return false;
    }
    else return true;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)criarGuerreiro:(id)sender {
    PerfilDAO *gerenciadorPerfis = [[PerfilDAO alloc] init];
    Perfil *perfil = [gerenciadorPerfis buscarPerfil:[[NSUserDefaults standardUserDefaults] objectForKey:@"usuarioLogado"]];
    if (_segmentedSlot.selectedSegmentIndex == 0) {
        if (perfil.guerreiro1 != nil) {
            UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Slot Ocupado" message:@"Deseja sobrescrever o guerreiro no slot 1?" delegate:nil cancelButtonTitle:@"Não" otherButtonTitles:@"Sim", nil];
            [alerta show];
            if (flag) {
                perfil.guerreiro1 = [self getGuerreiro];
            }
        }
        else perfil.guerreiro1 = [self getGuerreiro];
    }
    if (_segmentedSlot.selectedSegmentIndex == 1) {
        if (perfil.guerreiro2 != nil) {
            UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Slot Ocupado" message:@"Deseja sobrescrever o guerreiro no slot 2?" delegate:nil cancelButtonTitle:@"Não" otherButtonTitles:@"Sim", nil];
            [alerta show];
            if (flag) {
                perfil.guerreiro2 = [self getGuerreiro];
            }
        }
        else perfil.guerreiro2 = [self getGuerreiro];
    }
    NSLog(@"%@\n%@\n",perfil.guerreiro1, perfil.guerreiro2);
    [gerenciadorPerfis persistirPerfil:perfil];
}

- (Jogador *)getGuerreiro {
    NSString *nome = _txtNomeGuerreiro.text;
    int raca = _segmentedRaca.selectedSegmentIndex;
    Arma *primaria = nil, *secundaria = nil;
    switch (_segmentedArmaPrimaria.selectedSegmentIndex) {
        case 0:
            primaria = [[Espada alloc] init];
            break;
        case 1:
            primaria = [[Machado alloc] init];
            break;
        case 2:
            primaria = [[Magia alloc] init];
            break;
        case 3:
            primaria = [[ArcoEFlecha alloc] init];
            break;
    }
    switch (_segmentedArmaSecundaria.selectedSegmentIndex) {
        case 0:
            secundaria = [[Espada alloc] init];
            break;
        case 1:
            secundaria = [[Machado alloc] init];
            break;
        case 2:
            secundaria = [[Magia alloc] init];
            break;
        case 3:
            secundaria = [[ArcoEFlecha alloc] init];
            break;
    }
    Jogador *guerreiro = [[Jogador alloc] initWithNome:nome andRaca:raca andarmaprimaria:primaria andarmasecundaria:secundaria andVida:1000];
    return guerreiro;
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        flag = YES;
    }
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"segueCriarPerfil"]) {
        return !flag;
    }
    else return YES;
}

@end
