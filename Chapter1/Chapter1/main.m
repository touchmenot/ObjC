/*
  main.m
  Chapter1
  Backward compatibility 4.x to 3.x and disabling ARC
 */

#import <Foundation/Foundation.h>
//---- @interface section ----
@interface Fraction: NSObject
{
    int numerator;
    int denominator;
}
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
@end

//---- @implementation section ----
@implementation Fraction
-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}
-(void) setNumerator: (int) n
{
    numerator = n;
}
-(void) setDenominator: (int) d
{
    denominator = d;
}
@end

//---- program section ----
/*  
 @autoreleasepool/ARC can be disabled
 by setting the compiler flag under targets -
 buildphases with this option -fno-objc-arc
*/
int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    Fraction *myFraction;
    // Create an instance of a Fraction
    myFraction = [Fraction alloc];
    myFraction = [myFraction init];
    // Set fraction to 1/3
    [myFraction setNumerator: 1];
    [myFraction setDenominator: 3];
    // Display the fraction using the print method
    NSLog(@"The value of myFraction is:");
    [myFraction print];
    [myFraction release];
    [pool drain];
    return 0;
}
	
