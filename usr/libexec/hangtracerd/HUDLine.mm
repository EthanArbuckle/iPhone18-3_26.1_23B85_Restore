@interface HUDLine
- (HUDLine)init;
- (HUDLineDelegate)lineDelegate;
- (double)contentScaleForTexts;
- (void)layoutSublayers;
- (void)nilifyCALayers;
- (void)setFontSize:(double)size;
- (void)setPreferredKeyLayerWidth:(double)width;
- (void)setPreferredValueLayerWidth:(double)width;
@end

@implementation HUDLine

- (HUDLine)init
{
  v7.receiver = self;
  v7.super_class = HUDLine;
  v2 = [(HUDLine *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_updatesComplete = 0;
    keyLayer = v2->_keyLayer;
    v2->_keyLayer = 0;

    valueLayer = v3->_valueLayer;
    v3->_valueLayer = 0;

    v3->_preferredKeyLayerWidth = 0.0;
    v3->_preferredValueLayerWidth = 0.0;
  }

  return v3;
}

- (void)nilifyCALayers
{
  keyLayer = self->_keyLayer;
  self->_keyLayer = 0;

  valueLayer = self->_valueLayer;
  self->_valueLayer = 0;
}

- (void)setPreferredKeyLayerWidth:(double)width
{
  [(HUDLine *)self preferredKeyLayerWidth];
  if (v5 != width)
  {
    self->_preferredKeyLayerWidth = width;

    [(HUDLine *)self setNeedsLayout];
  }
}

- (void)setPreferredValueLayerWidth:(double)width
{
  [(HUDLine *)self preferredValueLayerWidth];
  if (v5 != width)
  {
    self->_preferredValueLayerWidth = width;

    [(HUDLine *)self setNeedsLayout];
  }
}

- (void)layoutSublayers
{
  v15.receiver = self;
  v15.super_class = HUDLine;
  [(HUDLine *)&v15 layoutSublayers];
  preferredKeyLayerWidth = self->_preferredKeyLayerWidth;
  [(HUDLine *)self bounds];
  v4 = CGRectGetWidth(v16) - self->_preferredValueLayerWidth - self->_spacing;
  if (preferredKeyLayerWidth >= v4)
  {
    preferredKeyLayerWidth = v4;
  }

  [(CALayer *)self->_keyLayer preferredFrameSize];
  v6 = v5;
  keyLayer = [(HUDLine *)self keyLayer];
  [keyLayer setFrame:{0.0, 0.0, preferredKeyLayerWidth, v6}];

  valueLayer = [(HUDLine *)self valueLayer];

  if (valueLayer)
  {
    [(CALayer *)self->_keyLayer frame];
    v10 = self->_spacing + v9;
    preferredValueLayerWidth = self->_preferredValueLayerWidth;
    [(CALayer *)self->_valueLayer preferredFrameSize];
    v13 = v12;
    valueLayer2 = [(HUDLine *)self valueLayer];
    [valueLayer2 setFrame:{v10, 0.0, preferredValueLayerWidth, v13}];
  }
}

- (void)setFontSize:(double)size
{
  v3 = sub_100003824();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[HUDLine setFontSize:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s from HUDLine called. The derived classes's method should be called instead.", &v4, 0xCu);
  }
}

- (HUDLineDelegate)lineDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lineDelegate);

  return WeakRetained;
}

- (double)contentScaleForTexts
{
  result = *&qword_100067C80;
  if (*&qword_100067C80 <= 0.0)
  {
    if (qword_100067C30 != -1)
    {
      sub_100034404();
    }

    if (byte_100067C38 == 1)
    {
      v1 = +[CADisplay mainDisplay];
      [v1 bounds];
      v2 = 1.0;
      if (v3 > 1920.0)
      {
        v2 = 2.0;
      }

      qword_100067C80 = *&v2;

      return *&qword_100067C80;
    }

    else
    {
      MGGetFloat32Answer();
      result = v4;
      qword_100067C80 = *&result;
    }
  }

  return result;
}

@end