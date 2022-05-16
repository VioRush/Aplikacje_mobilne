//
//  ViewController.m
//  Zadanie1_iOS_WR
//
//  Created by student on 12/10/2021.
//  Copyright © 2021 student. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)enter {
    NSString *yourName = self.inputField.text;
    //NSString *surname = self.surnameTextField;
    NSString *myName = @"Wioletta";
    NSString *message;
    
    if ([yourName length] == 0){
        yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]){
        message = [NSString stringWithFormat:@"Hello %@! We have the same name :)", yourName];
    }else {
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }
    
    self.messageLabel.text  = message;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"sendSurnameSegue"]) {
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        controller.delegate = self;
        controller.surname = self.surnameTextField.text;
    }
}

-(void) addItemViewController:(SecondViewController *)controller didFinishEnteringItem:(NSString *)item{
    NSLog(@"This was returned from SecondViewcController %@", item);
    self.surnameTextField.text = item;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
