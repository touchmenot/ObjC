/*
 
 Fraction.h
 Argument names are optional while declaring a method.
 -(void) setTo: (int) n over: (int) d;
 can also be declared as
 -(void) set: (int) n : (int) d
 -Note that int numerator and int denominator declarations aren't required if the synthesizer is used.
 
*/

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    //int numerator;
    //int denominator;
}

@property int numerator, denominator;
@property bool rFlag;

-(void) print:(bool) r;
-(void) set: (int) n : (int) d;
-(double) convertToNum;
-(void) reduce;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
	
@end
