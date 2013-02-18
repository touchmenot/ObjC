//
//  FractionTest.m
//

#import "Fraction.h"

int main (int argc, char *argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    Fraction *myFraction = [[Fraction alloc] init];
    
    [myFraction setNum: 1];
    [myFraction setDen: 0];
    
    NSLog(@"The value of myFraction is:");
    [myFraction print];
    [myFraction release];
    [pool drain];
    return 0;
}
