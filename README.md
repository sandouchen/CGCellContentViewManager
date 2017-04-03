# CGCellContentViewManager

## Doc

English Doc **·** [中文文档](https://github.com/CoderGin/CGCellContentViewManager/blob/master/README-Zh.md) **·** [相关博客](http://www.jianshu.com/p/053065656fd2)

---

## Overview

![Overview.gif](https://raw.githubusercontent.com/CoderGin/CGCellContentViewManager/master/Overview.gif)

### Introduction

An elegant way to solve the problem while we're clicking a UITableViewCell, the subview's backgroundColor in the cell's contentView's changed unexpected.

**A Common Solution**

Disable the native cell's selection style:

```

cell.selectionStyle = UITableViewCellSelectionStyleNone;

```

And then add a button to cover the cell's contentView, to imitate the native selection style.

But it seems to be a little complex.

**Try CGCellContentViewManager! It can keep you away from these unnecessary troubles**

## Usage

Just add the files in `CGCellContentViewManager` to your project, and needn't for any setups，CGCellContentViewManager will work automatically.

All the subviews in the cell's contentView will never change backgroundColor while we're clicking the cell.

To disable the CGCellContentViewManager's auto-work for a cell:

```

cell.cg_cellContentViewManagerDisabled = YES;

```

To disable the CGCellContentViewManager's auto-work for a subview in cell's contentView:

```

customSubview.cg_cellContentViewManagerDisabled = YES;

```

### Compatibility

Both supports Objective - C and Swift

In a Swift project, the Objective - C Bridging Header may not be required.

### CocoaPods

Use with CocoaPods

```

pod 'CGCellContentViewManager', '1.0'

```

## License

MIT


