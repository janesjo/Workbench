//
//  Assembly.s
//  XCodeAssemblyTest
//
//  Created by Jonathan Janesjö on 2018-03-12.
//  Copyright © 2018 Jonathan Janesjö. All rights reserved.
//
.text
.globl _myOperation
_myOperation:
add %esi, %edi
mov %edi, %eax
ret
