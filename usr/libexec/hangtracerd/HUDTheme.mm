@interface HUDTheme
+ (id)darkModeTheme;
+ (id)lightModeTheme;
- (CGColor)currentHangTextColorForStatus:(int64_t)a3;
- (CGColor)previousHangTextColorForStatus:(int64_t)a3;
- (HUDTheme)initWithPreviousHangTextColor:(CGColor *)a3 currentHangTextColor:(CGColor *)a4 currentHangSevereTextColor:(CGColor *)a5 previousHangSevereTextColor:(CGColor *)a6 currentHangCriticalTextColor:(CGColor *)a7 previousHangCriticalTextColor:(CGColor *)a8 backgroundColor:(CGColor *)a9 currentProcessExitTextColor:(CGColor *)a10 processExitReasonNamespaceTextColor:(CGColor *)a11;
- (void)dealloc;
@end

@implementation HUDTheme

- (HUDTheme)initWithPreviousHangTextColor:(CGColor *)a3 currentHangTextColor:(CGColor *)a4 currentHangSevereTextColor:(CGColor *)a5 previousHangSevereTextColor:(CGColor *)a6 currentHangCriticalTextColor:(CGColor *)a7 previousHangCriticalTextColor:(CGColor *)a8 backgroundColor:(CGColor *)a9 currentProcessExitTextColor:(CGColor *)a10 processExitReasonNamespaceTextColor:(CGColor *)a11
{
  v19.receiver = self;
  v19.super_class = HUDTheme;
  v17 = [(HUDTheme *)&v19 init];
  if (v17)
  {
    v17->_previousHangTextColor = CGColorRetain(a3);
    v17->_currentHangTextColor = CGColorRetain(a4);
    v17->_currentHangSevereTextColor = CGColorRetain(a5);
    v17->_previousHangSevereTextColor = CGColorRetain(a6);
    v17->_currentHangCriticalTextColor = CGColorRetain(a7);
    v17->_previousHangCriticalTextColor = CGColorRetain(a8);
    v17->_backgroundColor = CGColorRetain(a9);
    v17->_currentProcessExitTextColor = CGColorRetain(a10);
    v17->_processExitReasonNamespaceTextColor = CGColorRetain(a11);
  }

  return v17;
}

- (void)dealloc
{
  CFRelease(self->_previousHangTextColor);
  CFRelease(self->_currentHangTextColor);
  CFRelease(self->_currentHangSevereTextColor);
  CFRelease(self->_previousHangSevereTextColor);
  CFRelease(self->_currentHangCriticalTextColor);
  CFRelease(self->_previousHangCriticalTextColor);
  CFRelease(self->_backgroundColor);
  CFRelease(self->_currentProcessExitTextColor);
  CFRelease(self->_processExitReasonNamespaceTextColor);
  v3.receiver = self;
  v3.super_class = HUDTheme;
  [(HUDTheme *)&v3 dealloc];
}

+ (id)lightModeTheme
{
  if (qword_1000679E0 != -1)
  {
    sub_100031D90();
  }

  v3 = qword_1000679E8;

  return v3;
}

+ (id)darkModeTheme
{
  if (qword_1000679F0 != -1)
  {
    sub_100031DA4();
  }

  v3 = qword_1000679F8;

  return v3;
}

- (CGColor)currentHangTextColorForStatus:(int64_t)a3
{
  if (a3 <= 3)
  {
    return *(&self->super.isa + qword_10003DAB0[a3]);
  }

  return v3;
}

- (CGColor)previousHangTextColorForStatus:(int64_t)a3
{
  if (a3 <= 3)
  {
    return *(&self->super.isa + qword_10003DAD0[a3]);
  }

  return v3;
}

@end