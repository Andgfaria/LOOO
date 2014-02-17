//
//  ViewCriacaoGuerreiro.h
//  Lol
//
//  Created by André Gimenez Faria on 17/02/14.
//  Copyright (c) 2014 André Gimenez Faria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewCriacaoGuerreiro : UIViewController {
    BOOL flag;
}
@property (weak, nonatomic) IBOutlet UITextField *txtNomeGuerreiro;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedRaca;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedArmaPrimaria;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedArmaSecundaria;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedSlot;
@property (weak, nonatomic) IBOutlet UIButton *botaoCriarGuerreiro;

- (IBAction)criarGuerreiro:(id)sender;

@end
