//
//  main.m
//  Calculator_Chapter6
//
	

#import <Foundation/Foundation.h>

@interface Calculator: NSObject
{
    double acc;
}

-(void) setAcc:(double) value;
-(void) clear;
-(double) acc;
-(void) add:(double) value;
-(void) sub:(double) value;
-(void) mul:(double) value;
-(void) div:(double) value;

@end

@implementation Calculator

-(void) setAcc:(double) value{
    acc = value;
}
-(void) clear{
    acc = 0;
}

-(double) acc{
    return acc;
}

-(void) add:(double) value{
    acc += value;
}

-(void) sub:(double) value{
    acc = acc - (value);
}

-(void) mul:(double) value{
    acc *= value;
}

-(void) div:(double) value{
    acc /= value;
}

@end

int main(int argc, const char * argv[])
{
    char operator;
    double a,b;
    int flag;
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Calculator *myCalc = [[Calculator alloc] init];
    
    NSLog(@"What do you want to do,Enter your choice(+,-,* or /)?\n");
    NSLog(@"##################");
    NSLog(@"+.Addition\n");
    NSLog(@"-.Subtraction\n");
    NSLog(@"*.Multiplication\n");
    NSLog(@"/.Division\n");
    NSLog(@"E.End of Calculations\n");
    NSLog(@"##################");
    scanf("%c", &operator);
    if(operator == 'E'){
        NSLog(@"End of Calculations");
        exit(1);
    }
    NSLog(@"Enter the numbers");
    scanf("%lf %lf",&a,&b);
    if(b == 0)
        flag = 1;
    [myCalc setAcc:a];
    switch (operator) {
        case '+':
            [myCalc add:b];
            break;
        case '-':
            [myCalc sub:b];
            break;
        case '/':
            if(flag){
                NSLog(@"Divide by zero error");
                exit(1);
            }
            [myCalc div:b];
            break;
        case '*':
            [myCalc mul:b];
            break;
        default:
            NSLog(@"Chose a valid operation to be performed");
            exit(1);
    }
    NSLog(@"The result is %.2f",[myCalc acc]);
    [myCalc release];
    [pool drain];
    return 0;
}

