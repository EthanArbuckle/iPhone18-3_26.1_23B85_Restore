@interface XBViewMatchingImageView
- (void)layoutSubviews;
@end

@implementation XBViewMatchingImageView

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = XBViewMatchingImageView;
  [(XBViewMatchingImageView *)&v13 layoutSubviews];
  [(UIView *)self->_matchingView sizeToFit];
  [(UIView *)self->_matchingView frame];
  bottom = self->_bottom;
  [(XBViewMatchingImageView *)self safeAreaInsets];
  UIRectInset();
  v8 = v7;
  if (bottom)
  {
    v9 = v5;
    v10 = v6;
    [(XBViewMatchingImageView *)self frame];
    v12 = v11 - v10;
  }

  else
  {
    v12 = v4;
    v9 = v5;
    v10 = v6;
  }

  [(UIView *)self->_matchingView setFrame:v8, v12, v9, v10];
  [(UIImageView *)self->_imageView setFrame:v8, v12, v9, v10];
}

@end