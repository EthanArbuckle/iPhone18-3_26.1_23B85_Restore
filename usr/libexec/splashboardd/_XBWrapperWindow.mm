@interface _XBWrapperWindow
- (UIEdgeInsets)safeAreaInsets;
@end

@implementation _XBWrapperWindow

- (UIEdgeInsets)safeAreaInsets
{
  if (self->_customSafeAreaInsets)
  {
    customSafeAreaInsets = self->_customSafeAreaInsets;

    [(XBDisplayEdgeInsetsWrapper *)customSafeAreaInsets edgeInsets];
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v9.receiver = self;
    v9.super_class = _XBWrapperWindow;
    [(_XBWrapperWindow *)&v9 safeAreaInsets];
  }

  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

@end