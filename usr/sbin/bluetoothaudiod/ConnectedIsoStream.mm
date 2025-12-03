@interface ConnectedIsoStream
- (ConnectedIsoStream)initWithCISParams:(id)params;
- (ConnectedIsoStream)initWithCISParams:(id)params withASE:(id)e;
- (void)setASEForDirection:(id)direction forDevice:(id)device;
- (void)setASEForOppositeDirection:(id)direction;
@end

@implementation ConnectedIsoStream

- (ConnectedIsoStream)initWithCISParams:(id)params withASE:(id)e
{
  paramsCopy = params;
  eCopy = e;
  v14.receiver = self;
  v14.super_class = ConnectedIsoStream;
  v9 = [(ConnectedIsoStream *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cisParams, params);
    type = [eCopy type];
    v12 = 32;
    if (!type)
    {
      v12 = 24;
    }

    objc_storeStrong((&v10->super.isa + v12), e);
    [eCopy setAssociatedCIS:v10];
    [eCopy setCisID:{-[LeCisParams cisID](v10->_cisParams, "cisID")}];
  }

  return v10;
}

- (ConnectedIsoStream)initWithCISParams:(id)params
{
  paramsCopy = params;
  v11.receiver = self;
  v11.super_class = ConnectedIsoStream;
  v6 = [(ConnectedIsoStream *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cisParams, params);
    sinkASE = v7->_sinkASE;
    v7->_sinkASE = 0;

    sourceASE = v7->_sourceASE;
    v7->_sourceASE = 0;
  }

  return v7;
}

- (void)setASEForDirection:(id)direction forDevice:(id)device
{
  directionCopy = direction;
  deviceCopy = device;
  type = [directionCopy type];
  v8 = 32;
  if (!type)
  {
    v8 = 24;
  }

  v9 = *(&self->super.isa + v8);
  *(&self->super.isa + v8) = directionCopy;
  v10 = directionCopy;

  [v10 setAssociatedCIS:self];
  cisParams = [(ConnectedIsoStream *)self cisParams];
  [v10 setCisID:{objc_msgSend(cisParams, "cisID")}];

  [(ConnectedIsoStream *)self setDeviceID:deviceCopy];
}

- (void)setASEForOppositeDirection:(id)direction
{
  directionCopy = direction;
  type = [directionCopy type];
  v6 = 32;
  if (!type)
  {
    v6 = 24;
  }

  v7 = *(&self->super.isa + v6);
  *(&self->super.isa + v6) = directionCopy;
  v8 = directionCopy;

  [v8 setAssociatedCIS:self];
  cisParams = [(ConnectedIsoStream *)self cisParams];
  [v8 setCisID:{objc_msgSend(cisParams, "cisID")}];
}

@end