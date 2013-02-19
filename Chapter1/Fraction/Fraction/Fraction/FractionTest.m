//
//  FractionTest.m
//  Fraction

/*  -Accessor, multiple arguments to functions,local variables,
    -Static variables have a init value of 0, set to 0 when the program started and would retain its
     value through successive invocations of that method in which the varible resides.Pg 148
    -[myDate calculate: ptval], ptval is COPIED to a local variable inside the calculate method.
     change in that local variable will not change ptval.
    -self keyword, used to refer to the object that is the receiver of the current method.
     The instace variables in this case numerator and denominator are known, but identifying the reciever of the message , use self.
    -memory leak while allocating and returning objects from methods. sub method.
    -cFraction is not alloc and init because the result is returned and cFraction is just pointing to that Fraction object(similar type) size of result and size of cFraction is the same that's why we
        need Fraction *cFraction.
    - for specification of the bool to print refer Pg 156
 
 */

#import "Fraction.h"

int main (int argc, char *argv[])
{
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
    Fraction *cFraction;
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    [aFraction set: 4 : 2];
    [bFraction set: 8 : 2];
    
//    NSLog(@"Called referencing the *aFraction = %d/%d" ,aFraction.numerator ,aFraction.denominator);
//    NSLog(@"Called referencing the *bFraction = %d/%d" ,bFraction.numerator ,bFraction.denominator);
//    
    [aFraction print: 0];
//    NSLog(@"+");
    [bFraction print: 0];
//    NSLog(@"=");
    cFraction = [aFraction add:bFraction];
    NSLog(@"The number after addition is %g",[cFraction convertToNum]);
    [cFraction print: 1];
//    NSLog(@"After addition *aFraction = %d/%d" ,aFraction.numerator ,aFraction.denominator);
//    [aFraction reduce];// or self reduce in the add method.
//    NSLog(@"After reduction *aFraction = %d/%d" ,aFraction.numerator ,aFraction.denominator);
//    [aFraction print];
//    [aFraction print];
//    NSLog(@"-");
//    [bFraction print];
//    NSLog(@"=");

    cFraction = [aFraction sub:bFraction];
    NSLog(@"The number after subtraction is %g",[cFraction convertToNum]);
    [cFraction print: 1];
    cFraction = [aFraction mul:bFraction];
    NSLog(@"The number after multiplication is %g",[cFraction convertToNum]);
    [cFraction print: 1];
    cFraction = [aFraction div:bFraction];
    NSLog(@"The number after division is %g",[cFraction convertToNum]);
    [cFraction print: 0];
    //[[aFraction sub:bFraction] print]; // memory leakage.

    [aFraction release];
    [bFraction release];
    [cFraction release];
    
    [pool drain];
    return 0;
}

