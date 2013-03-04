//
//  main.m
//  Inheritance


#import "inheritSubClass.h"
#import "squareInherit.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    inheritSubClass *b = [[inheritSubClass alloc] init];
    squareInherit *c = [[squareInherit alloc] init];
    
    [b initVar:5 :8];
    [b printVar];
    [c setSide:5];
    [c printVar];
    
    
    [b release];
    [c release];
    [pool drain];
    return 0;
}

