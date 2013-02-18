//
//  Fraction.m
//  synthesizedAccessor
//


#import "Fraction.h"

@implementation Fraction

@synthesize num, den;

-(void) print
{
    NSLog(@"%i/%i", num, den);
}

-(double) convertToNum
{
    if (den != 0)
        return (double) num / den;
    else
        return 1.0;
}

@end
