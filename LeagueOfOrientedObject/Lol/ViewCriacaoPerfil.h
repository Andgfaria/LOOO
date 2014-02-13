//
//  ViewCriacaoPerfil.h
//  Lol
//
//  Created by André Gimenez Faria on 13/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewCriacaoPerfil : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtNomePerfil;
@property (weak, nonatomic) IBOutlet UITextField *txtSenhaPerfil;
@property (weak, nonatomic) IBOutlet UITextField *txtConfirmacaoSenhaPerfil;
@property (weak, nonatomic) IBOutlet UIButton *botaoCriarPerfil;
- (IBAction)criarPerfil:(id)sender;

@end
