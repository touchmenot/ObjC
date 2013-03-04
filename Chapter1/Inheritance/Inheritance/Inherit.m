//
//  Inherit.m
//  Inheritance

#import "Inherit.h"

@implementation Inherit

@synthesize width, height, a, p;

-(void) initVar: (int)w :(int)h
{
    width = w;
    height = h;
    [self area];
    [self perimeter];
}
-(void) area
{
    a = width * height;
}
-(void) perimeter
{
    p = (width + height) * 2;
}


@end
