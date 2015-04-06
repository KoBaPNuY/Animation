//
//  ViewController.m
//  AnimationHomework
//
//  Created by Zhuravlev Aleksandr on 02.04.15.
//  Copyright (c) 2015 AlexHome. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) UIView* moveView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view1];
    
    UIView* view2= [[UIView alloc] initWithFrame:CGRectMake(100, 250, 100, 100)];
    view2.backgroundColor = [UIColor redColor];
    [self.view addSubview:view2];
    
    UIView* view3 = [[UIView alloc] initWithFrame:CGRectMake(100, 400, 100, 100)];
    view3.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view3];
    
    UIView* view4 = [[UIView alloc] initWithFrame:CGRectMake(100, 550, 100, 100)];
    view4.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view4];
    
//    self.moveView = view1;
//    self.moveView = view2;
//    self.moveView = view3;
//    self.moveView = view4;

    NSArray* allViews = [NSArray arrayWithObjects:view1, view2, view3, view4, nil];

    
    

}
-(UIColor*) randomColor
    {
        CGFloat r = (CGFloat) (arc4random() %256) /255.f;
        CGFloat g = (CGFloat) (arc4random() %256) /255.f;
        CGFloat b = (CGFloat) (arc4random() %256) /255.f;
        
        return [UIColor colorWithRed:r green:g blue:b alpha:1.f];

}


-(void) moveView: (UIView*) view
      {
          [UIView animateKeyframesWithDuration:4
                                   delay:0
                                 options:UIViewAnimationCurveEaseInOut /*| UIViewAnimationCurveEaseIn | UIViewAnimationCurveEaseOut | UIViewAnimationCurveLinear*/
                              animations:^{
                                  //self.view.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.moveView.frame) / 2, 150);
                                  self.view.center = CGPointMake(500, 500);
                              }
                              completion:^(BOOL finished) {
                                  NSLog(@"animated finished! %d", finished);
                              }];
                      }

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    

    [self moveView:self.moveView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
   }


@end
