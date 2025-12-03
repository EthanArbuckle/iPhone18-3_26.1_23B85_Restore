@interface CLClientManagerStateTracker
- (BOOL)dumpState:(void *)state withSize:(unint64_t)size hints:(os_state_hints_s *)hints;
- (CLClientManagerStateTracker)initWithQueue:(id)queue identifier:(void *)identifier state:(id)state;
- (id)initInSilo:(id)silo withIdentifier:(void *)identifier state:(id)state;
- (void)dealloc;
- (void)setLocationRestricted:(BOOL)restricted;
- (void)setLocationServicesEnabledStatus:(int)status;
- (void)updateState:(id)state;
@end

@implementation CLClientManagerStateTracker

- (id)initInSilo:(id)silo withIdentifier:(void *)identifier state:(id)state
{
  [silo assertInside];
  queue = [silo queue];

  return [(CLClientManagerStateTracker *)self initWithQueue:queue identifier:identifier state:state];
}

- (CLClientManagerStateTracker)initWithQueue:(id)queue identifier:(void *)identifier state:(id)state
{
  v14.receiver = self;
  v14.super_class = CLClientManagerStateTracker;
  v7 = [(CLClientManagerStateTracker *)&v14 initWithQueue:queue];
  v8 = v7;
  if (!v7)
  {
    return v8;
  }

  v7->_identifier = identifier;
  if (state)
  {
    if (v7->_inTransaction)
    {
      sub_10192D4F8();
    }

    v7->_inTransaction = 1;
    (*(state + 2))(state, v7);
    v8->_inTransaction = 0;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v9 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    identifier = [(CLClientManagerStateTracker *)v8 identifier];
    *buf = 68290562;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "state_transition";
    v21 = 2082;
    v22 = "ClientManager";
    v23 = 2050;
    v24 = identifier;
    v25 = 2082;
    v26 = "init";
    v27 = 1040;
    *v28 = 8;
    *&v28[4] = 2098;
    *&v28[6] = &v8->_state;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, new:%{public, location:_CLClientManagerStateTrackerState}.*P}", buf, 0x4Au);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

LABEL_10:
  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    identifier2 = [(CLClientManagerStateTracker *)v8 identifier];
    *buf = 68290562;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "state_transition";
    v21 = 2082;
    v22 = "ClientManager";
    v23 = 2050;
    v24 = identifier2;
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
    sub_10028840C();
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
    v12 = "ClientManager";
    v13 = 2050;
    identifier = [(CLClientManagerStateTracker *)self identifier];
    v15 = 2082;
    v16 = "lifecycle";
    v17 = 2050;
    selfCopy = self;
    v19 = 2050;
    v20 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", buf, 0x4Eu);
  }

  v4.receiver = self;
  v4.super_class = CLClientManagerStateTracker;
  [(CLClientManagerStateTracker *)&v4 dealloc];
}

- (void)setLocationServicesEnabledStatus:(int)status
{
  if (!self->_inTransaction)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLClientManagerStateTracker *)self identifier];
      locationServicesEnabledStatus = self->_state.locationServicesEnabledStatus;
      v8[0] = 68290562;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "state_transition";
      v13 = 2082;
      v14 = "ClientManager";
      v15 = 2050;
      v16 = identifier;
      v17 = 2082;
      v18 = "locationServicesEnabledStatus";
      v19 = 1026;
      v20 = locationServicesEnabledStatus;
      v21 = 1026;
      statusCopy = status;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}d, new:%{public}d}", v8, 0x46u);
    }
  }

  self->_state.locationServicesEnabledStatus = status;
}

- (void)setLocationRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  if (!self->_inTransaction)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLClientManagerStateTracker *)self identifier];
      locationRestricted = self->_state.locationRestricted;
      v8[0] = 68290562;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "state_transition";
      v13 = 2082;
      v14 = "ClientManager";
      v15 = 2050;
      v16 = identifier;
      v17 = 2082;
      v18 = "locationRestricted";
      v19 = 1026;
      v20 = locationRestricted;
      v21 = 1026;
      v22 = restrictedCopy;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v8, 0x46u);
    }
  }

  self->_state.locationRestricted = restrictedCopy;
}

- (void)updateState:(id)state
{
  p_state = &self->_state;
  state = self->_state;
  if (self->_inTransaction)
  {
    sub_10192D65C();
  }

  self->_inTransaction = 1;
  (*(state + 2))(state, self);
  self->_inTransaction = 0;
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68291074;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "state_transition";
    v13 = 2082;
    v14 = "ClientManager";
    v15 = 2050;
    identifier = [(CLClientManagerStateTracker *)self identifier];
    v17 = 2082;
    v18 = "allStates";
    v19 = 1040;
    v20 = 8;
    v21 = 2098;
    v22 = &state;
    v23 = 1040;
    v24 = 8;
    v25 = 2098;
    v26 = p_state;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:_CLClientManagerStateTrackerState}.*P, new:%{public, location:_CLClientManagerStateTrackerState}.*P}", buf, 0x5Au);
  }
}

- (BOOL)dumpState:(void *)state withSize:(unint64_t)size hints:(os_state_hints_s *)hints
{
  if (size <= 7)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = 8;
      v15 = 2050;
      sizeCopy2 = size;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:state dump failure, expected_size:%{public}lld, provided_size:%{public}lld}", &v9, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v7 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = 8;
      v15 = 2050;
      sizeCopy2 = size;
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "state dump failure", "{msg%{public}.0s:state dump failure, expected_size:%{public}lld, provided_size:%{public}lld}", &v9, 0x26u);
    }
  }

  else
  {
    *state = self->_state;
  }

  return size > 7;
}

@end