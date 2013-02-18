//
//  Fraction.h
//  synthesizedAccessor
//


#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int num;
    int den;
}

@property int num, den;

-(void) print;
-(double) convertToNum;

@end
