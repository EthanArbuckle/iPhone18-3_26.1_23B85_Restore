@interface ProcExitHUDLine
- (ProcExitHUDLine)initWithProcExitRecord:(id)a3 theme:(id)a4 lineDelegate:(id)a5;
- (void)nilifyCALayers;
- (void)setFontSize:(double)a3;
- (void)update:(id)a3 options:(unint64_t)a4;
@end

@implementation ProcExitHUDLine

- (ProcExitHUDLine)initWithProcExitRecord:(id)a3 theme:(id)a4 lineDelegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = ProcExitHUDLine;
  v11 = [(HUDLine *)&v29 init];
  if (v11)
  {
    [(HUDLine *)v11 setSpacing:sub_100029D98()];
    v12 = [v9 currentProcessExitTextColor];
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
    v15 = [v8 processName];
    [(CATextLayer *)v11->_exitedProcNameLayer setString:v15];

    [(CATextLayer *)v11->_exitedProcNameLayer setForegroundColor:v12];
    [(HUDLine *)v11 setVibrancyFilter:v11->_exitedProcNameLayer];
    context = objc_autoreleasePoolPush();
    v16 = +[CATextLayer layer];
    v28 = v12;
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
    v19 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v8 exitReasonNamespace]);
    v20 = [v18 containsObject:v19];

    if ((v20 & 1) == 0)
    {
      v21 = sub_100027CB4([v8 exitReasonNamespace]);

      v17 = v21;
    }

    [v16 setString:v17];
    [v16 setForegroundColor:{objc_msgSend(v9, "processExitReasonNamespaceTextColor")}];
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
    v23 = sub_100029304([v8 exitReasonNamespace], objc_msgSend(v8, "exitReasonCode"));
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
    [(HUDLine *)v11 setLineDelegate:v10];
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

- (void)setFontSize:(double)a3
{
  [(CATextLayer *)self->_exitedProcNameLayer setFontSize:?];
  v5 = [(ExitReasonLayer *)self->_exitReasonLayer exitReasonNamespaceTextLayer];
  [v5 setFontSize:a3];

  v6 = [(ExitReasonLayer *)self->_exitReasonLayer exitReasonCodeTextLayer];
  [v6 setFontSize:a3];
}

- (void)update:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUDLine *)self updatesComplete];
  if ((v4 & 1) == 0 && (v7 & 1) == 0)
  {
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000322FC(v6);
    }

    [(HUDLine *)self setUpdatesComplete:1];
  }
}

@end