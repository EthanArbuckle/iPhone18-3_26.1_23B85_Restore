@interface CLDaemonStatusStateTracker
- (BOOL)dumpState:(void *)a3 withSize:(unint64_t)a4 hints:(os_state_hints_s *)a5;
- (CLDaemonStatusStateTracker)initWithQueue:(id)a3 identifier:(void *)a4 state:(id)a5;
- (id).cxx_construct;
- (id)initInSilo:(id)a3 withIdentifier:(void *)a4 state:(id)a5;
- (void)dealloc;
- (void)setAirplaneMode:(BOOL)a3;
- (void)setBatteryData:(Battery *)a3;
- (void)setBatterySaverModeEnabled:(BOOL)a3;
- (void)setReachability:(int)a3;
- (void)setRestrictedMode:(BOOL)a3;
- (void)setThermalLevel:(int)a3;
- (void)setThermalPressure:(int)a3;
- (void)updateState:(id)a3;
@end

@implementation CLDaemonStatusStateTracker

- (id)initInSilo:(id)a3 withIdentifier:(void *)a4 state:(id)a5
{
  [a3 assertInside];
  v9 = [a3 queue];

  return [(CLDaemonStatusStateTracker *)self initWithQueue:v9 identifier:a4 state:a5];
}

- (CLDaemonStatusStateTracker)initWithQueue:(id)a3 identifier:(void *)a4 state:(id)a5
{
  v14.receiver = self;
  v14.super_class = CLDaemonStatusStateTracker;
  v7 = [(CLDaemonStatusStateTracker *)&v14 initWithQueue:a3];
  v8 = v7;
  if (!v7)
  {
    return v8;
  }

  v7->_identifier = a4;
  if (a5)
  {
    if (v7->_inTransaction)
    {
      sub_1018E6208();
    }

    v7->_inTransaction = 1;
    (*(a5 + 2))(a5, v7);
    v8->_inTransaction = 0;
    if (qword_1025D47A0 != -1)
    {
      sub_1018E61E0();
    }

    v9 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    v10 = [(CLDaemonStatusStateTracker *)v8 identifier];
    *buf = 68290562;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "state_transition";
    v21 = 2082;
    v22 = "DaemonStatus";
    v23 = 2050;
    v24 = v10;
    v25 = 2082;
    v26 = "init";
    v27 = 1040;
    *v28 = 40;
    *&v28[4] = 2098;
    *&v28[6] = &v8->_state;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, new:%{public, location:_CLDaemonStatusStateTrackerState}.*P}", buf, 0x4Au);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_1018E61E0();
  }

LABEL_10:
  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(CLDaemonStatusStateTracker *)v8 identifier];
    *buf = 68290562;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "state_transition";
    v21 = 2082;
    v22 = "DaemonStatus";
    v23 = 2050;
    v24 = v12;
    v25 = 2082;
    v26 = "lifecycle";
    v27 = 2050;
    *v28 = 0;
    *&v28[8] = 2050;
    *&v28[10] = v8;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", buf, 0x4Eu);
  }

  return v8;
}

- (void)dealloc
{
  if (qword_1025D47A0 != -1)
  {
    sub_1018E637C();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68290562;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "state_transition";
    v11 = 2082;
    v12 = "DaemonStatus";
    v13 = 2050;
    v14 = [(CLDaemonStatusStateTracker *)self identifier];
    v15 = 2082;
    v16 = "lifecycle";
    v17 = 2050;
    v18 = self;
    v19 = 2050;
    v20 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", buf, 0x4Eu);
  }

  v4.receiver = self;
  v4.super_class = CLDaemonStatusStateTracker;
  [(CLDaemonStatusStateTracker *)&v4 dealloc];
}

- (void)setBatteryData:(Battery *)a3
{
  if (!self->_inTransaction)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 68291074;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "state_transition";
      v12 = 2082;
      v13 = "DaemonStatus";
      v14 = 2050;
      v15 = [(CLDaemonStatusStateTracker *)self identifier];
      v16 = 2082;
      v17 = "batteryData";
      v18 = 1040;
      v19 = 24;
      v20 = 2098;
      p_state = &self->_state;
      v22 = 1040;
      v23 = 24;
      v24 = 2098;
      v25 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:CLDaemonStatus_Type::Battery}.*P, new:%{public, location:CLDaemonStatus_Type::Battery}.*P}", v7, 0x5Au);
    }
  }

  v6 = *&a3->wasConnected;
  *&self->_state.batteryData.level = *&a3->level;
  *&self->_state.batteryData.wasConnected = v6;
}

- (void)setReachability:(int)a3
{
  if (!self->_inTransaction)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CLDaemonStatusStateTracker *)self identifier];
      reachability = self->_state.reachability;
      v8[0] = 68290562;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "state_transition";
      v13 = 2082;
      v14 = "DaemonStatus";
      v15 = 2050;
      v16 = v6;
      v17 = 2082;
      v18 = "reachability";
      v19 = 2050;
      v20 = reachability;
      v21 = 2050;
      v22 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:CLDaemonStatus_Type::Reachability}lld, new:%{public, location:CLDaemonStatus_Type::Reachability}lld}", v8, 0x4Eu);
    }
  }

  self->_state.reachability = a3;
}

- (void)setThermalLevel:(int)a3
{
  if (!self->_inTransaction)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CLDaemonStatusStateTracker *)self identifier];
      thermalLevel = self->_state.thermalLevel;
      v8[0] = 68290562;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "state_transition";
      v13 = 2082;
      v14 = "DaemonStatus";
      v15 = 2050;
      v16 = v6;
      v17 = 2082;
      v18 = "thermalLevel";
      v19 = 1026;
      v20 = thermalLevel;
      v21 = 1026;
      v22 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}d, new:%{public}d}", v8, 0x46u);
    }
  }

  self->_state.thermalLevel = a3;
}

- (void)setThermalPressure:(int)a3
{
  if (!self->_inTransaction)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CLDaemonStatusStateTracker *)self identifier];
      thermalPressure = self->_state.thermalPressure;
      v8[0] = 68290562;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "state_transition";
      v13 = 2082;
      v14 = "DaemonStatus";
      v15 = 2050;
      v16 = v6;
      v17 = 2082;
      v18 = "thermalPressure";
      v19 = 1026;
      v20 = thermalPressure;
      v21 = 1026;
      v22 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}d, new:%{public}d}", v8, 0x46u);
    }
  }

  self->_state.thermalPressure = a3;
}

- (void)setAirplaneMode:(BOOL)a3
{
  v3 = a3;
  if (!self->_inTransaction)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CLDaemonStatusStateTracker *)self identifier];
      airplaneMode = self->_state.airplaneMode;
      v8[0] = 68290562;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "state_transition";
      v13 = 2082;
      v14 = "DaemonStatus";
      v15 = 2050;
      v16 = v6;
      v17 = 2082;
      v18 = "airplaneMode";
      v19 = 1026;
      v20 = airplaneMode;
      v21 = 1026;
      v22 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v8, 0x46u);
    }
  }

  self->_state.airplaneMode = v3;
}

- (void)setBatterySaverModeEnabled:(BOOL)a3
{
  v3 = a3;
  if (!self->_inTransaction)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CLDaemonStatusStateTracker *)self identifier];
      batterySaverModeEnabled = self->_state.batterySaverModeEnabled;
      v8[0] = 68290562;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "state_transition";
      v13 = 2082;
      v14 = "DaemonStatus";
      v15 = 2050;
      v16 = v6;
      v17 = 2082;
      v18 = "batterySaverModeEnabled";
      v19 = 1026;
      v20 = batterySaverModeEnabled;
      v21 = 1026;
      v22 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v8, 0x46u);
    }
  }

  self->_state.batterySaverModeEnabled = v3;
}

- (void)setRestrictedMode:(BOOL)a3
{
  v3 = a3;
  if (!self->_inTransaction)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CLDaemonStatusStateTracker *)self identifier];
      restrictedMode = self->_state.restrictedMode;
      v8[0] = 68290562;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "state_transition";
      v13 = 2082;
      v14 = "DaemonStatus";
      v15 = 2050;
      v16 = v6;
      v17 = 2082;
      v18 = "restrictedMode";
      v19 = 1026;
      v20 = restrictedMode;
      v21 = 1026;
      v22 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v8, 0x46u);
    }
  }

  self->_state.restrictedMode = v3;
}

- (void)updateState:(id)a3
{
  p_state = &self->_state;
  v4 = *&self->_state.batteryData.wasConnected;
  v7 = *&self->_state.batteryData.level;
  v8 = v4;
  v9 = *&self->_state.thermalPressure;
  if (self->_inTransaction)
  {
    (sub_1018E6390)(self, a2, a3);
  }

  self->_inTransaction = 1;
  (*(a3 + 2))(a3, self);
  self->_inTransaction = 0;
  if (qword_1025D47A0 != -1)
  {
    sub_1018E637C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68291074;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "state_transition";
    v16 = 2082;
    v17 = "DaemonStatus";
    v18 = 2050;
    v19 = [(CLDaemonStatusStateTracker *)self identifier:v7];
    v20 = 2082;
    v21 = "allStates";
    v22 = 1040;
    v23 = 40;
    v24 = 2098;
    v25 = &v7;
    v26 = 1040;
    v27 = 40;
    v28 = 2098;
    v29 = p_state;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:_CLDaemonStatusStateTrackerState}.*P, new:%{public, location:_CLDaemonStatusStateTrackerState}.*P}", buf, 0x5Au);
  }
}

- (BOOL)dumpState:(void *)a3 withSize:(unint64_t)a4 hints:(os_state_hints_s *)a5
{
  if (a4 <= 0x27)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v11 = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = 40;
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:state dump failure, expected_size:%{public}lld, provided_size:%{public}lld}", &v11, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_1018E61E0();
      }
    }

    v9 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v11 = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = 40;
      v17 = 2050;
      v18 = a4;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "state dump failure", "{msg%{public}.0s:state dump failure, expected_size:%{public}lld, provided_size:%{public}lld}", &v11, 0x26u);
    }
  }

  else
  {
    v6 = *&self->_state.thermalPressure;
    v7 = *&self->_state.batteryData.wasConnected;
    *a3 = *&self->_state.batteryData.level;
    *(a3 + 1) = v7;
    *(a3 + 4) = v6;
  }

  return a4 > 0x27;
}

- (id).cxx_construct
{
  *(self + 2) = 0xBFF0000000000000;
  *(self + 12) = 0;
  *(self + 7) = 0;
  *(self + 32) = 0;
  *(self + 9) = 0;
  return self;
}

@end