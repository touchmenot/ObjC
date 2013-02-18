//
//  main.m
//  synthesizedAccessor
//

#import "Fraction.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    Fraction *myFraction = [[Fraction alloc] init];
    
    myFraction.num = 1; // [Equivalent myFraction num: 1]
    myFraction.den = 111;
    
    NSLog(@"The value of myFraction is:");
    [myFraction print];
    [myFraction release];
    [pool drain];
    
    return 0;
}

