//
//  Fraction.h
//  FractionTest
//
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int num;
    int den;
}

-(void) print;
-(void) setNum:(int) n;
-(void) setDen:(int) n;
-(int) num;
-(int) den;
-(double) convertToNum;

@end
