//
//  ViewController.m
//  KXmoview
//
//  Created by 李雨龙 on 2016/6/22.
//  Copyright © 2016年 李雨龙. All rights reserved.
//

#import "ViewController.h"
#import "KxMovieViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString * moviewURI = @"http://flv2.jstv.com/oldflv/renjian_gj/201001/renjian_gj_20100125_630_(59.42_2613.00)_bvs.flv";
//    moviewURI = @"rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov";
    KxMovieViewController * kxMoview = [KxMovieViewController movieViewControllerWithContentPath:moviewURI parameters:nil];
    
    [self addChildViewController:kxMoview];
    
    kxMoview.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:kxMoview.view];
    if (!kxMoview.playing) {
        [kxMoview play];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
