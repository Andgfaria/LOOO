//
//  ViewInicial.h
//  Lol
//
//  Created by André Gimenez Faria on 13/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewInicial : UIViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
-(IBAction)retornarView:(UIStoryboardSegue *)sender;

@end
