//
//  main.c
//  XCodeAssemblyTest
//
//  Created by Jonathan Janesjö on 2018-03-12.
//  Copyright © 2018 Jonathan Janesjö. All rights reserved.
//

#include <stdio.h>

int myOperation(int a, int b);

int main(int argc, const char * argv[]) {
    // insert code here...
    int x = myOperation(10,12);
    printf("Hello, World! %d\n", x);
    return 0;
}
