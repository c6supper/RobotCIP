//
//  MainViewController.m
//  RobotCIPGUI
//
//  Created by c6supper on 3/15/21.
//

#import "MainViewController.h"
@import PureLayout;

@interface MainViewController ()

@property (nonatomic, strong) NSView *containerView;
@property (nonatomic, strong) NSTextView *orangeView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (void)loadView
{
    self.view = [NSView new];
    
    [self resetAndSetupViews];
    
    [self setupViews];
}

- (void)resetAndSetupViews
{
    [_containerView removeFromSuperview];
    [_orangeView removeFromSuperview];
    
    _containerView = nil;
    _orangeView = nil;
    
    [self.view addSubview:self.containerView];
    [self.containerView addSubview:self.orangeView];
}

- (void)setupViews
{
    [self.containerView autoPinEdgesToSuperviewEdgesWithInsets:NSEdgeInsetsMake(30.0, 10.0, 10.0, 10.0)];

    NSArray *subviews = @[self.orangeView];
    
    [self.orangeView autoAlignAxisToSuperviewAxis:ALAxisVertical];
    [subviews autoDistributeViewsAlongAxis:ALAxisVertical alignedTo:ALAttributeVertical withFixedSize:30.0 insetSpacing:YES];

}

#pragma mark Property Accessors

- (NSView *)containerView
{
    if (!_containerView) {
        _containerView = [NSView newAutoLayoutView];
        _containerView.wantsLayer = YES;
        _containerView.layer.backgroundColor = [NSColor colorWithWhite:0.2 alpha:1].CGColor;
    }
    return _containerView;
}

- (NSTextView *)orangeView
{
    if (!_orangeView) {
        _orangeView = [[NSTextView alloc] initForAutoLayout];
        _orangeView.wantsLayer = YES;
        _orangeView.backgroundColor = [NSColor orangeColor];
        _orangeView.font = [NSFont systemFontOfSize:10.0];
        _orangeView.textColor = [NSColor whiteColor];
        _orangeView.alignment = NSTextAlignmentCenter;
        _orangeView.string = NSLocalizedString(@"Lorem ipsum", nil);
        _orangeView.verticallyResizable = NO;
    }
    return _orangeView;
}

@end
