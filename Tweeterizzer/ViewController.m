//
//  ViewController.m
//  Tweeterizzer
//
//  Created by south boske on 1/13/16.
//  Copyright © 2016 south boske. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"%@", self.textView.text);
    self.textView.text = @"";
    
}

- (IBAction)twitterButton:(UIButton *)sender {
    NSString *enteredText = self.textView.text;
    NSInteger length = enteredText.length;
//    NSMutableString *vowels = [NSMutableString new];
//    
//    NSLog(@"entered text = %lu", length);

//    for (int i = enteredText.length; i >= 0; i++) {
//        <#statements#>
 //   }
    
}





@end
