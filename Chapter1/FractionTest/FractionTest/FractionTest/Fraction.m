//
//  Fraction.m
//  FractionTest
//


#import "Fraction.h"

@implementation Fraction
-(void) print
{
    NSLog(@"%i/%i", num, den);
}
-(void) setNum: (int) n
{
    num = n;
}
-(void) setDen: (int) d
{
    den = d;
}
-(int) num
{
    return num;
}
-(int) den
{
    return den;
}
-(double) convertToNum
{
    if (den != 0)
        return (double) num / den;
    else
        return 1.0;
}
@end
