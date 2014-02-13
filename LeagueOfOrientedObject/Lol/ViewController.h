//
//  ViewController.h
//  Lol
//
//  Created by Alana Lujan Cavalcanti Silva on 13/02/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

#include "Jogador.h"
#import "Arma.h"
#import "Espada.h"
#import "Machado.h"
#import "Magia.h"
#import "ArcoEFlecha.h"

@interface ViewController : UIViewController{
    Jogador *jogador1;
    Jogador *jogador2;
}

@property (weak, nonatomic) IBOutlet UITextField *textNome;

- (IBAction)botaoOk:(id)sender;

-(void)jogo;
-(Jogador *)vencedor:(ViewController *)player;
-(bool)verificaVencedor:(ViewController *)player;
-(void)setjogador1:(ViewController *)player;
-(void)setjogador2:(ViewController *)player;

- (IBAction)opcaoClasse:(id)sender;
- (IBAction)opcaoArmaPrimaria:(id)sender;
- (IBAction)opcaoArmaSecundaria:(id)sender;


@end
