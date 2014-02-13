//
//  ViewInicial.h
//  Lol
//
//  Created by André Gimenez Faria on 13/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewInicial : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *botaoCriarPerfil;
@property (weak, nonatomic) IBOutlet UIButton *botaoCriarGuerreiro;
@property (weak, nonatomic) IBOutlet UIButton *botaoDeslogar;
- (IBAction)deslogar:(id)sender;


@end
