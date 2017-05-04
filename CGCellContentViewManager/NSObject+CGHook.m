//
//  NSObject+CGHook.m
//  CGCellContentViewManagerDemo
//
//  Created by Gin on 2017/5/4.
//
// Copyright (c) 2017 Coder Gin ( https://github.com/CoderGin/CGCellContentViewManager )
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#import "NSObject+CGHook.h"
#import <objc/runtime.h>

@implementation NSObject (CGHook)

+ (void)instanceMethodSwizzlingFromSelector:(SEL)oriSelector toSelector:(SEL)swSelector {
    
    Class class = [self class];
    Method originalMethod = class_getInstanceMethod(class, oriSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swSelector);
    BOOL didAddMethod = class_addMethod(class, oriSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(class, swSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

@end
