@interface ExitReasonLayer
- (CGSize)preferredFrameSize;
- (ExitReasonLayer)initWithNamespaceLayer:(id)a3 codeLayer:(id)a4;
- (void)layoutSublayers;
- (void)nilifyCALayers;
@end

@implementation ExitReasonLayer

- (ExitReasonLayer)initWithNamespaceLayer:(id)a3 codeLayer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ExitReasonLayer;
  v9 = [(ExitReasonLayer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exitReasonNamespaceTextLayer, a3);
    objc_storeStrong(&v10->_exitReasonCodeTextLayer, a4);
    [(ExitReasonLayer *)v10 addSublayer:v10->_exitReasonNamespaceTextLayer];
    [(ExitReasonLayer *)v10 addSublayer:v10->_exitReasonCodeTextLayer];
    v10->_spaceBetweenTextLayers = sub_100029E34();
  }

  return v10;
}

- (void)nilifyCALayers
{
  exitReasonNamespaceTextLayer = self->_exitReasonNamespaceTextLayer;
  self->_exitReasonNamespaceTextLayer = 0;

  exitReasonCodeTextLayer = self->_exitReasonCodeTextLayer;
  self->_exitReasonCodeTextLayer = 0;
}

- (CGSize)preferredFrameSize
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = &unk_100048859;
  v3 = [(ExitReasonLayer *)self sublayers];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016630;
  v8[3] = &unk_100055528;
  v8[4] = self;
  v8[5] = &v9;
  [v3 enumerateObjectsUsingBlock:v8];

  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSublayers
{
  v17.receiver = self;
  v17.super_class = ExitReasonLayer;
  [(ExitReasonLayer *)&v17 layoutSublayers];
  [(CATextLayer *)self->_exitReasonNamespaceTextLayer preferredFrameSize];
  v4 = v3 + self->_spaceBetweenTextLayers;
  [(CATextLayer *)self->_exitReasonCodeTextLayer preferredFrameSize];
  v6 = v4 + v5;
  [(ExitReasonLayer *)self frame];
  v8 = fmax(v7 - v6, 0.0);
  [(CATextLayer *)self->_exitReasonNamespaceTextLayer preferredFrameSize];
  v10 = v9;
  [(ExitReasonLayer *)self frame];
  [(CATextLayer *)self->_exitReasonNamespaceTextLayer setFrame:v8, 0.0, v10];
  [(CATextLayer *)self->_exitReasonNamespaceTextLayer frame];
  v12 = v11;
  [(CATextLayer *)self->_exitReasonNamespaceTextLayer frame];
  v14 = self->_spaceBetweenTextLayers + v12 + v13;
  [(CATextLayer *)self->_exitReasonCodeTextLayer preferredFrameSize];
  v16 = v15;
  [(ExitReasonLayer *)self frame];
  [(CATextLayer *)self->_exitReasonCodeTextLayer setFrame:v14, 0.0, v16];
}

@end