@interface ConnectedIsoStream
- (ConnectedIsoStream)initWithCISParams:(id)a3;
- (ConnectedIsoStream)initWithCISParams:(id)a3 withASE:(id)a4;
- (void)setASEForDirection:(id)a3 forDevice:(id)a4;
- (void)setASEForOppositeDirection:(id)a3;
@end

@implementation ConnectedIsoStream

- (ConnectedIsoStream)initWithCISParams:(id)a3 withASE:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ConnectedIsoStream;
  v9 = [(ConnectedIsoStream *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cisParams, a3);
    v11 = [v8 type];
    v12 = 32;
    if (!v11)
    {
      v12 = 24;
    }

    objc_storeStrong((&v10->super.isa + v12), a4);
    [v8 setAssociatedCIS:v10];
    [v8 setCisID:{-[LeCisParams cisID](v10->_cisParams, "cisID")}];
  }

  return v10;
}

- (ConnectedIsoStream)initWithCISParams:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ConnectedIsoStream;
  v6 = [(ConnectedIsoStream *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cisParams, a3);
    sinkASE = v7->_sinkASE;
    v7->_sinkASE = 0;

    sourceASE = v7->_sourceASE;
    v7->_sourceASE = 0;
  }

  return v7;
}

- (void)setASEForDirection:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v12 = a4;
  v7 = [v6 type];
  v8 = 32;
  if (!v7)
  {
    v8 = 24;
  }

  v9 = *(&self->super.isa + v8);
  *(&self->super.isa + v8) = v6;
  v10 = v6;

  [v10 setAssociatedCIS:self];
  v11 = [(ConnectedIsoStream *)self cisParams];
  [v10 setCisID:{objc_msgSend(v11, "cisID")}];

  [(ConnectedIsoStream *)self setDeviceID:v12];
}

- (void)setASEForOppositeDirection:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = 32;
  if (!v5)
  {
    v6 = 24;
  }

  v7 = *(&self->super.isa + v6);
  *(&self->super.isa + v6) = v4;
  v8 = v4;

  [v8 setAssociatedCIS:self];
  v9 = [(ConnectedIsoStream *)self cisParams];
  [v8 setCisID:{objc_msgSend(v9, "cisID")}];
}

@end