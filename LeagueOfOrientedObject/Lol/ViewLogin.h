//
//  ViewLogin.h
//  Lol
//
//  Created by André Gimenez Faria on 14/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewLogin : UIViewController

@property BOOL loginOK;
@property (weak, nonatomic) IBOutlet UITextField *txtNomePerfil;

@property (weak, nonatomic) IBOutlet UITextField *txtSenha;

@end
