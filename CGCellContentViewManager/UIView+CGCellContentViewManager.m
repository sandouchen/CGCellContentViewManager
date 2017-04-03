//
//  UIView+CGCellContentViewManager.m
//  CGCellContentViewManager
//
//  Created by Coder Gin on 16/11/11
//
// Copyright (c) 2016 Coder Gin ( https://github.com/CoderGin/CGCellContentViewManager )
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

#import "UIView+CGCellContentViewManager.h"

@implementation UIView (CGCellContentViewManager)

/// This bool value controls whether the category will work for a view.
- (BOOL)cg_cellContentViewManagerDisabled {
    
    id value = objc_getAssociatedObject(self, _cmd);
    if (value == nil) {
        objc_setAssociatedObject(self, _cmd, @(NO), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}

- (void)setCg_cellContentViewManagerDisabled:(BOOL)cg_cellContentViewManagerDisabled {
    
    objc_setAssociatedObject(self, @selector(cg_cellContentViewManagerDisabled), @(cg_cellContentViewManagerDisabled), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
