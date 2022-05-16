//
//  ViewController.m
//  Zadanie2_iOS_WR
//
//  Created by student on 23/11/2021.
//  Copyright © 2021 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction) enter{
    UIAlertController *alertDialog = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"Information",nil) message:[NSString stringWithFormat:NSLocalizedString(@"The faculty.",nil),4] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){}];
    [alertDialog addAction:defaultAction];
    [self presentViewController:alertDialog animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_InformationButton setTitle:NSLocalizedString(@"Information", nil) forState:UIControlStateNormal];
    [_Image setImage:[UIImage imageNamed:NSLocalizedString(@"image", nil)]];
}


@end
