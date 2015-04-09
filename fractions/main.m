//
//  main.m
//  fractions
//
//  Created by Ej Churchey on 4/8/15.
//  Copyright (c) 2015 Ej Churchey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction: NSObject

- (void) print;
- (void) setNum: (int) n;
- (void) setDen: (int) d;
- (int) divide;
- (id) init: (int) n over : (int) d;

@end

@implementation Fraction

{
    int num;
    int den;
}

- (id) init: (int) n over:(int)d; {
    
    num = n;
    den = d;
    return self;
    
}

- (int) divide {

    return num/den;

}

- (void) print {

    NSLog(@"%i/%i",num,den);
}
- (void) setNum: (int) n {num = n;}
- (void) setDen: (int) d {den = d;}

@end

int main(int argc, const char * argv[]) {

    @autoreleasepool {
    
        Fraction * f = [Fraction alloc];
        
        f = [f init:10 over:5];
        
    
        
        [f print];
        
        int result = [f divide];
        
        NSLog(@"%i",result);
        
    }
    return 0;
}
