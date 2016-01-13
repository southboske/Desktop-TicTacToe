//
//  ViewController.m
//  Tweeterizzer
//
//  Created by south boske on 1/13/16.
//  Copyright © 2016 south boske. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *counting;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"%@", self.textView.text);
    self.textView.text = @"";
    
    
    
//    NSString *string = self.textView.text;
//    _block NSUInteger count = 0;
//    [string enumerateSubstringsInRange:NSMakeRange(0, [string length])
//                               options:NSStringEnumerationByComposedCharacterSequences
//                            usingBlock:^(NSString *subString, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
//                                count++;
//                            }];
//    NSLog(@"%ld %ld", (long) count, (long)[string length]);
    
}

- (IBAction)twitterButton:(UIButton *)sender {
  //  NSString *enteredText = self.textView.text;
    //NSInteger length = enteredText.length;
    
    NSMutableString *stringa = [[NSMutableString alloc] initWithFormat:@"%@", self.textView.text];
    
    if ([stringa length] < 3) {
        [stringa appendString:@"x"];
    }
    
    NSMutableString *consonanti = [[NSMutableString alloc] init];
    
    NSCharacterSet *vocali = [NSCharacterSet characterSetWithCharactersInString:@"aeiouàèìòùáéíóúAEIOUÀÈÌÒÙÁÉÍÓÚ"];
    
    NSRange r;
    
    for (int i=0; i < [stringa length]; i++) {
        
        r = [stringa rangeOfCharacterFromSet:vocali];
        
        if (![vocali characterIsMember:[stringa characterAtIndex:i]]) {
            [consonanti appendFormat:@"%C",[stringa characterAtIndex:i]];
        }
        else {
        }
    }
    self.textView.text = consonanti;

    
}


@end
