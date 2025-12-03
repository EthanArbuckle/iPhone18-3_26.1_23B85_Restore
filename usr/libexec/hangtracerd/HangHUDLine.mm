@interface HangHUDLine
- (HangHUDLine)initWithQueue:(id)queue processName:(id)name theme:(id)theme fontSize:(double)size lineDelegate:(id)delegate;
- (int64_t)statusForHangWithDuration:(double)duration timedOut:(BOOL)out;
- (void)nilifyCALayers;
- (void)setFontSize:(double)size;
- (void)update:(id)update options:(unint64_t)options;
@end

@implementation HangHUDLine

- (HangHUDLine)initWithQueue:(id)queue processName:(id)name theme:(id)theme fontSize:(double)size lineDelegate:(id)delegate
{
  queueCopy = queue;
  nameCopy = name;
  themeCopy = theme;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = HangHUDLine;
  v16 = [(HUDLine *)&v22 init];
  if (v16)
  {
    [(HUDLine *)v16 setSpacing:sub_100029D98()];
    v17 = +[CATextLayer layer];
    processNameLayer = v16->_processNameLayer;
    v16->_processNameLayer = v17;

    [(CATextLayer *)v16->_processNameLayer setTruncationMode:kCATruncationEnd];
    if (qword_100067A20 != -1)
    {
      sub_100032284();
    }

    [(CATextLayer *)v16->_processNameLayer setFont:qword_100067A28];
    [(CATextLayer *)v16->_processNameLayer setFontSize:size];
    [(HUDLine *)v16 contentScaleForTexts];
    [(CATextLayer *)v16->_processNameLayer setContentsScale:?];
    [(CATextLayer *)v16->_processNameLayer setString:nameCopy];
    [(HUDLine *)v16 setVibrancyFilter:v16->_processNameLayer];
    v19 = +[HUDDurationLayer layer];
    durationLayer = v16->_durationLayer;
    v16->_durationLayer = v19;

    if (qword_100067A30 != -1)
    {
      sub_1000322D4();
    }

    [(HUDDurationLayer *)v16->_durationLayer setFont:qword_100067A38];
    [(HUDDurationLayer *)v16->_durationLayer setFontSize:size];
    [(HUDLine *)v16 contentScaleForTexts];
    [(HUDDurationLayer *)v16->_durationLayer setContentsScale:?];
    [(HUDDurationLayer *)v16->_durationLayer setAlignmentMode:kCAAlignmentRight];
    [(HUDDurationLayer *)v16->_durationLayer setQueue:queueCopy];
    [(HUDLine *)v16 setVibrancyFilter:v16->_durationLayer];
    [(HangHUDLine *)v16 addSublayer:v16->_processNameLayer];
    [(HangHUDLine *)v16 addSublayer:v16->_durationLayer];
    objc_storeStrong(&v16->_currentTheme, theme);
    [(HUDLine *)v16 setLineDelegate:delegateCopy];
    [(HUDLine *)v16 setKeyLayer:v16->_processNameLayer];
    [(HUDLine *)v16 setValueLayer:v16->_durationLayer];
  }

  return v16;
}

- (void)nilifyCALayers
{
  processNameLayer = self->_processNameLayer;
  self->_processNameLayer = 0;

  durationLayer = self->_durationLayer;
  self->_durationLayer = 0;
}

- (void)setFontSize:(double)size
{
  [(CATextLayer *)self->_processNameLayer setFontSize:?];
  durationLayer = self->_durationLayer;

  [(HUDDurationLayer *)durationLayer setFontSize:size];
}

- (int64_t)statusForHangWithDuration:(double)duration timedOut:(BOOL)out
{
  if (out)
  {
    return 3;
  }

  v14 = v8;
  v15 = v4;
  if (sub_10002A388())
  {
    +[HUDConfiguration sharedInstance];
  }

  else
  {
    +[HTPrefs sharedPrefs];
  }
  v12 = ;
  runloopHangTimeoutDurationMSec = [v12 runloopHangTimeoutDurationMSec];

  if (runloopHangTimeoutDurationMSec * 0.555555556 <= duration)
  {
    return 2;
  }

  else
  {
    return runloopHangTimeoutDurationMSec * 0.222222222 <= duration;
  }
}

- (void)update:(id)update options:(unint64_t)options
{
  updateCopy = update;
  if (![(HUDLine *)self updatesComplete])
  {
    v7 = updateCopy;
    v8 = [(CATextLayer *)self->_processNameLayer animationForKey:@"foreground-color-fade-animation"];
    if (v8)
    {
      v9 = sub_100003824();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to update a HUD line with an animation in progress!", v18, 2u);
      }
    }

    else
    {
      durationLayer = self->_durationLayer;
      [v7 hangDurationMS];
      v12 = v11;
      [(HUDDurationLayer *)self->_durationLayer hangDuration];
      [(HUDDurationLayer *)durationLayer setHangDuration:v13 > 0.0 animated:v12];
      [v7 hangDurationMS];
      v14 = [(HangHUDLine *)self statusForHangWithDuration:(options >> 1) & 1 timedOut:?];
      v15 = [(HUDTheme *)self->_currentTheme currentHangTextColorForStatus:v14];
      [(CATextLayer *)self->_processNameLayer setForegroundColor:v15];
      [(HUDDurationLayer *)self->_durationLayer setForegroundColor:v15];
      if (options)
      {
LABEL_12:

        goto LABEL_13;
      }

      v16 = sub_100003824();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100032378(v7);
      }

      [(HUDLine *)self setUpdatesComplete:1];
      v9 = [CABasicAnimation animationWithKeyPath:@"foregroundColor"];
      [v9 setRemovedOnCompletion:0];
      [v9 setFillMode:kCAFillModeForwards];
      [v9 setToValue:[(HUDTheme *)self->_currentTheme previousHangTextColorForStatus:v14]];
      [v9 setDuration:0.5];
      v17 = objc_alloc_init(HUDLineAnimationDelegate);
      [(HUDLineAnimationDelegate *)v17 setHudLine:self];
      [v9 setDelegate:v17];
      [(CATextLayer *)self->_processNameLayer addAnimation:v9 forKey:@"foreground-color-fade-animation"];
      [(HUDDurationLayer *)self->_durationLayer addAnimation:v9 forKey:@"foreground-color-fade-animation"];
    }

    goto LABEL_12;
  }

  v7 = sub_100003824();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000323F4(self, v7);
  }

LABEL_13:
}

@end