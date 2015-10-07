//
//  ViewController.m
//  onOffButton
//
//  Created by Hoàng Tiến on 10/3/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *offBtn;
@property (weak, nonatomic) IBOutlet UIButton *onBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.offBtn setImage:[UIImage imageNamed:@"offBot"] forState:normal];
    [self.onBtn setImage:[UIImage imageNamed:@"onTop"] forState:normal];
}
- (IBAction)clickOnBtn:(id)sender {
    if ([self.onBtn.currentImage isEqual:[UIImage imageNamed:@"onTop"]]) {
        [self.onBtn setImage:[UIImage imageNamed:@"onBot"] forState:normal   ];
        [self.offBtn setImage:[UIImage imageNamed:@"offTop"] forState:normal];
    }
}
- (IBAction)clickOffBtn:(id)sender {
    if ([self.offBtn.currentImage isEqual:[UIImage imageNamed:@"offTop"]]) {
        [self.onBtn setImage:[UIImage imageNamed:@"onTop"] forState:normal   ];
        [self.offBtn setImage:[UIImage imageNamed:@"offBot"] forState:normal];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
