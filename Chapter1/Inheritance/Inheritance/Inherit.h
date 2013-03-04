//
//  Inherit.h
//  Inheritance
//  Parent class of inheritSubClass.
//  root class NSObject


#import <Foundation/Foundation.h>

@interface Inherit : NSObject
{
    int width;
    int height;
    int a,p;

}

@property int width,height,a,p;

-(void) initVar: (int)w :(int)h;
-(void) area;
-(void) perimeter;


@end
