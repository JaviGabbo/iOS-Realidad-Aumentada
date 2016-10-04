//
//  Pantalla2.m
//  AplicacionPrueba
//
//  Created by Javier García Fernández on 27/9/16.
//  Copyright © 2016 Javier García Fernández. All rights reserved.
//

#import "Pantalla2.h"

@interface Pantalla2 ()

@end

@implementation Pantalla2
@synthesize videoCamera;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.videoCamera = [[CvVideoCamera alloc] initWithParentView:camara];
    self.videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionFront;
    self.videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset352x288;
    self.videoCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationPortrait;
    self.videoCamera.defaultFPS = 30;
    //self.videoCamera.grayscale = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionStart:(id)sender;
{
    [self.videoCamera start];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
