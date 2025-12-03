@interface ProcExitHUDLine
- (ProcExitHUDLine)initWithProcExitRecord:(id)record theme:(id)theme lineDelegate:(id)delegate;
- (void)nilifyCALayers;
- (void)setFontSize:(double)size;
- (void)update:(id)update options:(unint64_t)options;
@end

@implementation ProcExitHUDLine

- (ProcExitHUDLine)initWithProcExitRecord:(id)record theme:(id)theme lineDelegate:(id)delegate
{
  recordCopy = record;
  themeCopy = theme;
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = ProcExitHUDLine;
  v11 = [(HUDLine *)&v29 init];
  if (v11)
  {
    [(HUDLine *)v11 setSpacing:sub_100029D98()];
    currentProcessExitTextColor = [themeCopy currentProcessExitTextColor];
    v13 = +[CATextLayer layer];
    exitedProcNameLayer = v11->_exitedProcNameLayer;
    v11->_exitedProcNameLayer = v13;

    [(CATextLayer *)v11->_exitedProcNameLayer setTruncationMode:kCATruncationEnd];
    if (qword_100067A20 != -1)
    {
      sub_100032284();
    }

    [(CATextLayer *)v11->_exitedProcNameLayer setFont:qword_100067A28];
    sub_100029930();
    [(CATextLayer *)v11->_exitedProcNameLayer setFontSize:?];
    [(HUDLine *)v11 contentScaleForTexts];
    [(CATextLayer *)v11->_exitedProcNameLayer setContentsScale:?];
    processName = [recordCopy processName];
    [(CATextLayer *)v11->_exitedProcNameLayer setString:processName];

    [(CATextLayer *)v11->_exitedProcNameLayer setForegroundColor:currentProcessExitTextColor];
    [(HUDLine *)v11 setVibrancyFilter:v11->_exitedProcNameLayer];
    context = objc_autoreleasePoolPush();
    v16 = +[CATextLayer layer];
    v28 = currentProcessExitTextColor;
    if (qword_100067A40 != -1)
    {
      sub_1000322AC();
    }

    [v16 setFont:qword_100067A48];
    sub_100029930();
    [v16 setFontSize:?];
    [(HUDLine *)v11 contentScaleForTexts];
    [v16 setContentsScale:?];
    [v16 setAlignmentMode:kCAAlignmentRight];
    v17 = objc_alloc_init(NSString);
    v18 = [NSSet setWithObject:&off_10005CBE8];
    v19 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [recordCopy exitReasonNamespace]);
    v20 = [v18 containsObject:v19];

    if ((v20 & 1) == 0)
    {
      v21 = sub_100027CB4([recordCopy exitReasonNamespace]);

      v17 = v21;
    }

    [v16 setString:v17];
    [v16 setForegroundColor:{objc_msgSend(themeCopy, "processExitReasonNamespaceTextColor")}];
    v22 = +[CATextLayer layer];
    if (qword_100067A30 != -1)
    {
      sub_1000322D4();
    }

    [v22 setFont:qword_100067A38];
    sub_100029930();
    [v22 setFontSize:?];
    [(HUDLine *)v11 contentScaleForTexts];
    [v22 setContentsScale:?];
    [v22 setAlignmentMode:kCAAlignmentRight];
    v23 = sub_100029304([recordCopy exitReasonNamespace], objc_msgSend(recordCopy, "exitReasonCode"));
    [v22 setString:v23];

    [v22 setForegroundColor:v28];
    v24 = [[ExitReasonLayer alloc] initWithNamespaceLayer:v16 codeLayer:v22];
    exitReasonLayer = v11->_exitReasonLayer;
    v11->_exitReasonLayer = v24;

    [(HUDLine *)v11 setVibrancyFilter:v11->_exitReasonLayer];
    objc_autoreleasePoolPop(context);
    [(ProcExitHUDLine *)v11 addSublayer:v11->_exitReasonLayer];
    [(ProcExitHUDLine *)v11 addSublayer:v11->_exitedProcNameLayer];
    [(HUDLine *)v11 setKeyLayer:v11->_exitedProcNameLayer];
    [(HUDLine *)v11 setValueLayer:v11->_exitReasonLayer];
    [(HUDLine *)v11 setLineDelegate:delegateCopy];
  }

  return v11;
}

- (void)nilifyCALayers
{
  exitedProcNameLayer = self->_exitedProcNameLayer;
  if (exitedProcNameLayer)
  {
    self->_exitedProcNameLayer = 0;
  }

  exitReasonLayer = self->_exitReasonLayer;
  if (exitReasonLayer)
  {
    [(ExitReasonLayer *)exitReasonLayer nilifyCALayers];
    v5 = self->_exitReasonLayer;
    self->_exitReasonLayer = 0;
  }
}

- (void)setFontSize:(double)size
{
  [(CATextLayer *)self->_exitedProcNameLayer setFontSize:?];
  exitReasonNamespaceTextLayer = [(ExitReasonLayer *)self->_exitReasonLayer exitReasonNamespaceTextLayer];
  [exitReasonNamespaceTextLayer setFontSize:size];

  exitReasonCodeTextLayer = [(ExitReasonLayer *)self->_exitReasonLayer exitReasonCodeTextLayer];
  [exitReasonCodeTextLayer setFontSize:size];
}

- (void)update:(id)update options:(unint64_t)options
{
  optionsCopy = options;
  updateCopy = update;
  updatesComplete = [(HUDLine *)self updatesComplete];
  if ((optionsCopy & 1) == 0 && (updatesComplete & 1) == 0)
  {
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000322FC(updateCopy);
    }

    [(HUDLine *)self setUpdatesComplete:1];
  }
}

@end