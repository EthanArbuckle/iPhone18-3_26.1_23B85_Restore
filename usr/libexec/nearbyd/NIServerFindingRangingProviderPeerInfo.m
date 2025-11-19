@interface NIServerFindingRangingProviderPeerInfo
- (NIServerFindingRangingProviderPeerInfo)initWithAdvertisement:(id)a3 OOBRangingParameters:(const OOBRangingParameters *)a4;
- (id).cxx_construct;
- (optional<rose::finding::FindeeData>)getAlgorithmAidingData;
- (optional<rose::finding::SignallingData>)getSignallingData;
- (void)resetAlgorithmAidingData;
- (void)resetSignallingData;
- (void)setAlgorithmAidingData:(const void *)a3;
- (void)setSignallingData:(const void *)a3;
@end

@implementation NIServerFindingRangingProviderPeerInfo

- (NIServerFindingRangingProviderPeerInfo)initWithAdvertisement:(id)a3 OOBRangingParameters:(const OOBRangingParameters *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NIServerFindingRangingProviderPeerInfo;
  v8 = [(NIServerFindingRangingProviderPeerInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_advertisement, a3);
    v9->_OOBRangingParameters = *a4;
    if (v9->_algorithmAidingData.__engaged_)
    {
      v9->_algorithmAidingData.__engaged_ = 0;
    }

    if (v9->_signallingData.__engaged_)
    {
      v9->_signallingData.__engaged_ = 0;
    }

    *(&v9->_rangingActive + 1) = 0;
  }

  return v9;
}

- (void)setAlgorithmAidingData:(const void *)a3
{
  v3 = *a3;
  v4 = *(a3 + 2);
  if (self->_algorithmAidingData.__engaged_)
  {
    *&self->_algorithmAidingData.var0.__val_.bounded_displacement.__engaged_ = *(a3 + 1);
    *&self->_algorithmAidingData.var0.__val_.measured_displacement.var0.__val_.applicabilityTimestamp = v4;
    *&self->_algorithmAidingData.var0.__null_state_ = v3;
    v5 = *(a3 + 3);
    v6 = *(a3 + 4);
    v7 = *(a3 + 6);
    *&self->_algorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ = *(a3 + 5);
    *&self->_algorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1 = v7;
    *&self->_algorithmAidingData.var0.__val_.measured_displacement.var0.__val_.displacementH1 = v5;
    *&self->_algorithmAidingData.var0.__val_.measured_displacement.var0.__val_.displacementV = v6;
    v8 = *(a3 + 7);
    v9 = *(a3 + 8);
    v10 = *(a3 + 9);
    *(&self->_algorithmAidingData.var0.__val_.location_data.var0.__val_.uncertainty + 2) = *(a3 + 154);
    *&self->_algorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_ = v9;
    *&self->_algorithmAidingData.var0.__val_.location_data.var0.__val_.easterlyOffsetM = v10;
    *&self->_algorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ = v8;
  }

  else
  {
    *&self->_algorithmAidingData.var0.__val_.bounded_displacement.__engaged_ = *(a3 + 1);
    *&self->_algorithmAidingData.var0.__val_.measured_displacement.var0.__val_.applicabilityTimestamp = v4;
    *&self->_algorithmAidingData.var0.__null_state_ = v3;
    v11 = *(a3 + 3);
    v12 = *(a3 + 4);
    v13 = *(a3 + 6);
    *&self->_algorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ = *(a3 + 5);
    *&self->_algorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1 = v13;
    *&self->_algorithmAidingData.var0.__val_.measured_displacement.var0.__val_.displacementH1 = v11;
    *&self->_algorithmAidingData.var0.__val_.measured_displacement.var0.__val_.displacementV = v12;
    v14 = *(a3 + 7);
    v15 = *(a3 + 8);
    v16 = *(a3 + 10);
    *&self->_algorithmAidingData.var0.__val_.location_data.var0.__val_.easterlyOffsetM = *(a3 + 9);
    *&self->_algorithmAidingData.var0.__val_.location_data.__engaged_ = v16;
    *&self->_algorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ = v14;
    *&self->_algorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_ = v15;
    self->_algorithmAidingData.__engaged_ = 1;
  }
}

- (void)resetAlgorithmAidingData
{
  if (self->_algorithmAidingData.__engaged_)
  {
    self->_algorithmAidingData.__engaged_ = 0;
  }
}

- (optional<rose::finding::FindeeData>)getAlgorithmAidingData
{
  v3 = *&self->var0.__val_.location_data.__engaged_;
  *&retstr->var0.__val_.mach_absolute_receipt_timestamp.__engaged_ = *&self->var0.__val_.location_data.var0.__val_.easterlyOffsetM;
  *&retstr->var0.__val_.location_data.var0.__val_.easterlyOffsetM = v3;
  *&retstr->var0.__val_.location_data.__engaged_ = *&self->__engaged_;
  *&retstr->__engaged_ = *&self[1].var0.__val_.bounded_displacement.var0.__val_.category;
  v4 = *&self->var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1;
  *&retstr->var0.__val_.measured_displacement.var0.__val_.displacementV = *&self->var0.__val_.measured_velocity_change.var0.__null_state_;
  *&retstr->var0.__val_.measured_velocity_change.var0.__null_state_ = v4;
  v5 = *&self->var0.__val_.mach_absolute_receipt_timestamp.__engaged_;
  *&retstr->var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1 = *&self->var0.__val_.measured_velocity_change.__engaged_;
  *&retstr->var0.__val_.measured_velocity_change.__engaged_ = v5;
  v6 = *&self->var0.__val_.measured_displacement.var0.__val_.applicabilityTimestamp;
  *&retstr->var0.__null_state_ = *&self->var0.__val_.bounded_displacement.__engaged_;
  *&retstr->var0.__val_.bounded_displacement.__engaged_ = v6;
  v7 = *&self->var0.__val_.measured_displacement.var0.__val_.displacementV;
  *&retstr->var0.__val_.measured_displacement.var0.__val_.applicabilityTimestamp = *&self->var0.__val_.measured_displacement.var0.__val_.displacementH1;
  *&retstr->var0.__val_.measured_displacement.var0.__val_.displacementH1 = v7;
  return self;
}

- (void)setSignallingData:(const void *)a3
{
  engaged = self->_signallingData.__engaged_;
  v4 = *(a3 + 8);
  *&self->_signallingData.var0.__null_state_ = *a3;
  self->_signallingData.var0.__val_.isPhone = v4;
  if (!engaged)
  {
    self->_signallingData.__engaged_ = 1;
  }
}

- (void)resetSignallingData
{
  if (self->_signallingData.__engaged_)
  {
    self->_signallingData.__engaged_ = 0;
  }
}

- (optional<rose::finding::SignallingData>)getSignallingData
{
  self->_rangingActive;
  v2 = *&self->_signallingData.var0.__val_.isPhone;
  v3 = *&self->_signallingData.var0.__null_state_;
  *&result.var0.__null_state_ = v3;
  *&result.var0.__val_.isPhone = v2;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 16) = 0;
  *(self + 192) = 0;
  *(self + 200) = 0;
  *(self + 209) = 0;
  return self;
}

@end