//
//  squareInherit.m
//  Inheritance
//


#import "squareInherit.h"

@implementation squareInherit

-(void) setSide: (int)s
{
    [self initVar:s :s];
}

-(int) side
{
    return width;
}
@end
