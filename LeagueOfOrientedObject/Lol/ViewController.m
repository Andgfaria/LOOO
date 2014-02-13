//
//  ViewController.m
//  ViewController
//
//  Created by Alana Lujan Cavalcanti Silva on 13/02/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
                /////////////// CÓDIGO ORIGINAL usado aqui nessa classe está NA CLASSE LOL
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

/*
@implementation ViewController{
    Arma *primaria;
    Arma *secundaria;
    int raca;
}

//@synthesize labelPrincipal;
@synthesize textNome;

- (void)viewDidLoad
{
    ViewController *temp =[[ViewController alloc]init];
    [temp jogo];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)opcaoClasse:(id)sender {
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            raca = 0;
            break;
        case 1:
            raca = 1;
            break;
        case 2:
            raca = 2;
            break;
        case 3:
            raca = 3;
            break;
    }
}


- (IBAction)opcaoArmaPrimaria:(id)sender {
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            primaria = [[Espada alloc]init];;
            break;
        case 1:
            primaria = [[Machado alloc]init];
            break;
        case 2:
            primaria = [[Magia alloc]init];
            break;
        case 3:
            primaria = [[ArcoEFlecha alloc]init];
            break;
    }
    
}


- (IBAction)opcaoArmaSecundaria:(id)sender {
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            secundaria = [[Espada alloc]init];;
            break;
        case 1:
            secundaria = [[Machado alloc]init];
            break;
        case 2:
            secundaria = [[Magia alloc]init];
            break;
        case 3:
            secundaria = [[ArcoEFlecha alloc]init];
            break;
    }
    
}

////////////esse método jogo poderia ir para a SegundaView
-(void)jogo{
    ViewController *player = [ViewController alloc];
    [player setjogador1:player];
    [player setjogador2:player];
    //labelPrincipal.text = @"funciona";
    float dano;
    int turno;
    float ataque;
    float defesa;
   // int escolha;
    srand((int)time(NULL));
    turno=rand()%(2-1+1)+1;
    while ( [player verificaVencedor:player] == false)
    {
        if (turno == 1)
        {
            if(primaria == 1)
            {
                ataque = [player->jogador1 ataque:[player->jogador1 getArmaPrimaria]];
            }
            if(primaria == 2)
            {
                ataque = [player->jogador1 ataque:[player->jogador1 getArmaSecundaria]];
            }
            defesa = [player->jogador2 sofrerAtaque];
            dano = ataque - defesa;
            [player->jogador2 setVida:dano];
        }
        if (turno == 2)
        {
            if(secundaria == 1)
            {
                ataque = [player->jogador2 ataque:[player->jogador2 getArmaPrimaria]];
            }
            if(secundaria == 2)
            {
                ataque = [player->jogador2 ataque:[player->jogador2 getArmaSecundaria]];
            }
            defesa = [player->jogador1 sofrerAtaque];
            dano = ataque - defesa;
            [player->jogador1 setVida:dano];
        }
        if(turno == 1) turno = 2;
        if(turno == 2) turno = 1;
    }
  //  labelPrincipal.text = @"o vencedor foi o %@",[[player vencedor:player]nome];
 
    
    [textNome resignFirstResponder];
    
}
 
 

-(Jogador *)vencedor:(ViewController *)player
{
    if([player->jogador1 getVida] <= 0)
    {
        return player->jogador2;
    }
    else
        return player->jogador1;
    
    
}

-(bool)verificaVencedor:(ViewController *)player
{
    if ([player->jogador1 getVida] <= 0 || [player->jogador2 getVida] <= 0)
    {
        return true;
    }
    else
        return false;
}

-(void)setjogador1:(ViewController *)player
{
    
    NSString *nome = self.textNome.text;
    
    player->jogador1 = [[Jogador alloc]initWithNome:nome andRaca:raca andarmaprimaria:primaria andarmasecundaria:secundaria andVida:100];
    
}

-(void)setjogador2:(ViewController *)player
{
    
    NSString *nome = self.textNome.text;
    
    
    player->jogador2 = [[Jogador alloc]initWithNome:nome andRaca:raca andarmaprimaria:primaria andarmasecundaria:secundaria andVida:100];
    
}


- (IBAction)botaoOk:(id)sender {
    [textNome resignFirstResponder];
    [sender resignFirstResponder];
    [self jogo];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self jogo];
    [textNome resignFirstResponder];
    
    return YES;
}

*/


