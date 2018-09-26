//
//  ControllerViewController.m
//  AccSim
//
//  Created by Jeroen Goor van on 26/09/2018.
//

#import "ControllerViewController.h"

@interface ControllerViewController ()

@end

@implementation ControllerViewController

int leftBtn;
int rightBtn;

- (void)viewDidLoad {
    [super viewDidLoad];
    leftBtn = 0;
    rightBtn = 0;
    [self.view setMultipleTouchEnabled:YES];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touches began: %@", touches);
    UITouch *touch1 = [touches anyObject];
    CGPoint touchLocation = [touch1 locationInView:self.view];
    NSLog(@"location: %f", touchLocation.x);
    if(touchLocation.x < 240){
        leftBtn = 1;
    }else{
        rightBtn = 1;
    }
}

//- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touches ended: %@", touches);
    UITouch *touch1 = [touches anyObject];
    CGPoint touchLocation = [touch1 locationInView:self.view];
    NSLog(@"location: %f", touchLocation.x);
    if(touchLocation.x < 240){
        leftBtn = 0;
    }else{
        rightBtn = 0;
    }
}

-(NSInteger*)getBtnStatus
{
    return 2*leftBtn + rightBtn;
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
