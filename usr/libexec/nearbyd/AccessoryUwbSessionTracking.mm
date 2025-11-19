@interface AccessoryUwbSessionTracking
- (AccessoryUwbSessionTracking)initWithServiceRequest:(const void *)a3 startOptions:(const void *)a4 shareableConfigData:(id)a5 processName:(id)a6 accessoryConfigData:(const void *)a7 persistWhileDetached:(BOOL)a8;
- (id).cxx_construct;
- (void)serviceRequest;
- (void)setRangingSession:(void *)a3;
- (void)startOptions;
- (void)stopRanging;
@end

@implementation AccessoryUwbSessionTracking

- (AccessoryUwbSessionTracking)initWithServiceRequest:(const void *)a3 startOptions:(const void *)a4 shareableConfigData:(id)a5 processName:(id)a6 accessoryConfigData:(const void *)a7 persistWhileDetached:(BOOL)a8
{
  v15 = a5;
  v16 = a6;
  v33.receiver = self;
  v33.super_class = AccessoryUwbSessionTracking;
  v17 = [(AccessoryUwbSessionTracking *)&v33 init];
  v18 = v17;
  v19 = v17;
  if (v17)
  {
    v32 = a8;
    v20 = v16;
    v21 = v15;
    engaged = v17->_serviceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_;
    memcpy(&v17->_serviceRequest, a3, 0x240uLL);
    if (!engaged)
    {
      v19->_serviceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 1;
    }

    scheduling_interval_usec = v19->_startOptions.var0.__val_.scheduling_interval_usec;
    v25 = *(a4 + 1);
    v24 = *(a4 + 2);
    *&v19->_serviceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = *a4;
    *v19->_serviceRequest.var0.__val_.range_enable_params.nbamms.irk = v25;
    *&v19->_serviceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_ = v24;
    v26 = *(a4 + 6);
    v28 = *(a4 + 3);
    v27 = *(a4 + 4);
    *&v19->_startOptions.var0.__val_.peer.var0.__val_.bt_adv_address.var0.__val_.__elems_[2] = *(a4 + 5);
    *&v19->_startOptions.var0.__val_.start_time_or_offset_usec = v26;
    *&v19->_startOptions.var0.__null_state_ = v28;
    *(&v19->_startOptions.var0.__val_.peer.var0.__val_.uuid.var0 + 12) = v27;
    if ((scheduling_interval_usec & 1) == 0)
    {
      LOBYTE(v19->_startOptions.var0.__val_.scheduling_interval_usec) = 1;
    }

    objc_storeStrong(&v18->_startOptions.var0.__val_.secondary_scheduling_interval_usec, a5);
    objc_storeStrong(&v18->_startOptions.var0.__val_.secondary_duty_cycle, a6);
    v15 = v21;
    v16 = v20;
    sub_1002FC9E0(&v18->_shareableConfigData, a7);
    v19->_startOptions.var0.__val_.secondary_scheduling_delay_usec.var0.__null_state_ = v32;
    v29 = objc_opt_new();
    ptr = v19->_rangingSession.__ptr_;
    v19->_rangingSession.__ptr_ = v29;

    *&v19->_rangingSession.__cntrl_ = sub_100005288();
    *&v19->_persistWhileDetached = sub_100005288();
  }

  return v19;
}

- (void)stopRanging
{
  conn_evt_trigger_desc = self->_startOptions.var0.__val_.conn_evt_trigger_desc;
  if (conn_evt_trigger_desc)
  {
    sub_10033B864(conn_evt_trigger_desc);
    v4 = *&self->_startOptions.var0.__val_.dither_constant_msec.var0.__null_state_;
    self->_startOptions.var0.__val_.conn_evt_trigger_desc = 0;
    *&self->_startOptions.var0.__val_.dither_constant_msec.var0.__null_state_ = 0;
    if (v4)
    {
      sub_10000AD84(v4);
    }

    *&self->_persistWhileDetached = sub_100005288();
  }

  *(&self->_startOptions.var0.__val_.secondary_scheduling_delay_usec.var0.__null_state_ + 1) = 0;
  v5 = *&self->_startOptions.__engaged_;
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *&self->_startOptions.__engaged_;
    *&self->_startOptions.__engaged_ = 0;
  }
}

- (void)setRangingSession:(void *)a3
{
  v5 = *a3;
  v4 = *(a3 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  self->_startOptions.var0.__val_.conn_evt_trigger_desc = v5;
  v6 = *&self->_startOptions.var0.__val_.dither_constant_msec.var0.__null_state_;
  *&self->_startOptions.var0.__val_.dither_constant_msec.var0.__null_state_ = v4;
  if (v6)
  {
    sub_10000AD84(v6);
  }

  *&self->_persistWhileDetached = sub_100005288();
}

- (void)serviceRequest
{
  if (!self->_serviceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
  {
    sub_1000195BC();
  }

  return &self->_serviceRequest;
}

- (void)startOptions
{
  if ((self->_startOptions.var0.__val_.scheduling_interval_usec & 1) == 0)
  {
    sub_1000195BC();
  }

  return &self->_serviceRequest.var0.__val_.range_enable_params.nbamms.mms_bch;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 584) = 0;
  *(self + 592) = 0;
  *(self + 704) = 0;
  *(self + 712) = 0u;
  *(self + 784) = 0;
  *(self + 832) = 0;
  return self;
}

@end