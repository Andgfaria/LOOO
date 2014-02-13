//
//  LOL.m
//  Lol
//
//  Created by Alana Lujan Cavalcanti Silva on 13/02/14.
//  Copyright (c) 2014 Alana Lujan Cavalcanti Silva. All rights reserved.
//

#import "LOL.h"


@implementation LOL

-(void) jogo;
{
    LOL *player = [LOL alloc];
    [player setjogador1:player];
    [player setjogador2:player];
    printf("funciona");
    float dano;
    int turno;
    float ataque;
    float defesa;
    int escolha;
    srand((int)time(NULL));
    turno=rand()%(2-1+1)+1;
    while ( [player verificaVencedor:player] == false)
    {
        if (turno == 1)
        {
            printf ("digite 1 para usar arma primaria ou 2 para usar arma secundaria");
            scanf("%d",&escolha);
            if(escolha == 1)
            {
                ataque = [player->jogador1 ataque:[player->jogador1 getArmaPrimaria]];
            }
            if(escolha == 2)
            {
                ataque = [player->jogador1 ataque:[player->jogador1 getArmaSecundaria]];
            }
            defesa = [player->jogador2 sofrerAtaque];
            dano = ataque - defesa;
            [player->jogador2 setVida:dano];
        }
        if (turno == 2)
        {
            printf ("digite 1 para usar arma primaria ou 2 para usar arma secundaria");
            scanf("%d",&escolha);
            if(escolha == 1)
            {
                ataque = [player->jogador2 ataque:[player->jogador2 getArmaPrimaria]];
            }
            if(escolha == 2)
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
    NSLog(@"o vencedor foi o %@",[[player vencedor:player]nome]);
    
}

-(Jogador *)vencedor:(LOL *)player
{
    if([player->jogador1 getVida] <= 0)
    {
        return player->jogador2;
    }
    else
        return player->jogador1;
    
    
}

-(bool)verificaVencedor:(LOL *)player
{
    if ([player->jogador1 getVida] <= 0 || [player->jogador2 getVida] <= 0)
    {
        return true;
    }
    else
        return false;
}
-(void)setjogador1:(LOL *)player
{
    char a[20];
    int b;
    int c;
    int d;
    
    printf ("digite o nome do jogador 1 \n");
    scanf("%s",a);
    NSString *nome = [NSString stringWithUTF8String:a];
    
    printf ("digite o numero correspondente a raca do jogador 1 \n");
    printf ("0 caso queira elfo \n1 caso queira humano \n2 caso queira orc \n3 caso queira anao\n");
    scanf("%d",&b );
    printf("\n");
    printf("------------------------------------------------------------------\n");
    
    printf ("digite o arma primaria das baixo para o jogador 1 \n");
    printf ("0 caso queira espada \n1 caso queira machado \n2 caso queira magia \n3 caso queira arco\n");
    scanf("%d",&c );
    
    printf("\n");
    printf("------------------------------------------------------------------\n");
    
    Arma *primaria;
    if(c == 0)
    {
        primaria = [[Espada alloc]init];
    }
    if(c == 1)
    {
        primaria = [[Machado alloc]init];
    }
    if(c == 2)
    {
        primaria = [[Magia alloc]init];
    }
    else
    {
        primaria = [[ArcoEFlecha alloc]init];
    }
    
    
    printf ("digite o arma secundaria das baixo para o jogador 1 \n");
    printf ("0 caso queira espada \n1 caso queira machado \n2 caso queira magia \n3 caso queira arco\n");
    scanf("%d",&d );
    
    printf("\n");
    printf("--------------------------------------------------------------------\n");
    
    Arma *secundaria;
    if(d == 0)
    {
        secundaria = [[Espada alloc]init];
    }
    if(d == 1)
    {
        secundaria = [[Machado alloc]init];
    }
    if(d == 2)
    {
        secundaria = [[Magia alloc]init];
    }
    if(d == 3)
    {
        secundaria = [[ArcoEFlecha alloc]init];
    }
    
    player->jogador1 = [[Jogador alloc]initWithNome:nome andRaca:b andarmaprimaria:primaria andarmasecundaria:secundaria andVida:100];
}

-(void)setjogador2:(LOL *)player
{
    char a[20];
    int b;
    int c;
    int d;
    
    printf ("digite o nome do jogador 2 \n");
    scanf("%s",a);
    NSString *nome = [NSString stringWithUTF8String:a];
    
    printf ("digite o numero correspondente a raca do jogador 1 \n");
    printf ("0 caso queira elfo \n1 caso queira humano \n2 caso queira orc \n3 caso queira anao\n");
    scanf("%d",&b );
    printf("\n");
    printf("------------------------------------------------------------------\n");
    
    printf ("digite o arma primaria das baixo para o jogador 1 \n");
    printf ("0 caso queira espada \n1 caso queira machado \n2 caso queira magia \n3 caso queira arco\n");
    scanf("%d",&c );
    
    printf("\n");
    printf("------------------------------------------------------------------\n");
    
    Arma *primaria;
    if(c == 0)
    {
        primaria = [[Espada alloc]init];
    }
    if(c == 1)
    {
        primaria = [[Machado alloc]init];
    }
    if(c == 2)
    {
        primaria = [[Magia alloc]init];
    }
    else
    {
        primaria = [[ArcoEFlecha alloc]init];
    }
    
    
    printf ("digite o arma secundaria das baixo para o jogador 1 \n");
    printf ("0 caso queira espada \n1 caso queira machado \n2 caso queira magia \n3 caso queira arco\n");
    scanf("%d",&d );
    
    printf("\n");
    printf("--------------------------------------------------------------------\n");
    
    Arma *secundaria;
    if(d == 0)
    {
        secundaria = [[Espada alloc]init];
    }
    if(d == 1)
    {
        secundaria = [[Machado alloc]init];
    }
    if(d == 2)
    {
        secundaria = [[Magia alloc]init];
    }
    if(d == 3)
    {
        secundaria = [[ArcoEFlecha alloc]init];
    }
    
    player->jogador2 = [[Jogador alloc]initWithNome:nome andRaca:b andarmaprimaria:primaria andarmasecundaria:secundaria andVida:100];
}

@end

