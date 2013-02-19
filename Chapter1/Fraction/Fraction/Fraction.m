//
//  Fraction.m
//  


#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator,rFlag;

-(void) print:(bool) r
{
    int actualNum,actualDen;
    rFlag = r;
    actualNum = numerator;
    actualDen = denominator;
    if(rFlag)
    {
        [self reduce];
         NSLog (@"%i/%i", numerator, denominator);
    }
    else
        NSLog (@"%i/%i", actualNum, actualDen);
    numerator = actualNum;
    denominator = actualDen;
}

-(double) convertToNum
{
    if (denominator !=0)
        return (double)numerator/denominator;
    else
        return NAN;
}

-(void) set: (int) n : (int) d
{
    numerator = n;
    denominator = d;
}
-(Fraction *) add: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    [result set: numerator * f.denominator + denominator * f.numerator :denominator * f.denominator];

    return result;
    //[self reduce]; only if the operation is performed wrt num and den instance variable
}
-(Fraction *) sub: (Fraction *) f
{
    // To sub two fractions:
    // a/b - c/d = ((a*d) - (b*c)) / (b * d)
    Fraction *result = [[Fraction alloc] init];
    int resultNum,resultDen;
    resultNum = numerator * f.denominator - (denominator * f.numerator);
    resultDen = denominator * f.denominator;
    [result set:resultNum :resultDen];

    return result;
}

-(Fraction *) mul: (Fraction *) f
{
    // To sub two fractions:
    // a/b - c/d = ((a*d) - (b*c)) / (b * d)
    Fraction *result = [[Fraction alloc] init];
    [result set:numerator * f.numerator :denominator * f.denominator];

    return result;
}
-(Fraction *) div: (Fraction *) f
{
    // To sub two fractions:
    // a/b - c/d = ((a*d) - (b*c)) / (b * d)
    Fraction *result = [[Fraction alloc] init];
    [result set:numerator * f.denominator :denominator * f.numerator];

    return result;
}


-(void) reduce
{
    int u = numerator; //As a note init local variables to some value before using them
    int v = denominator;
    int temp;

    
    while (v!=0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    //NSLog(@"GCD of the two numbers is %d",u);
    numerator /= u;
    denominator /= u;

}
@end
