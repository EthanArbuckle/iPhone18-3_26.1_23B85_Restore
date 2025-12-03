@interface KTRepairCKVOperation
- (KTRepairCKVOperation)initWithDependencies:(id)dependencies repair:(id)repair reset:(id)reset intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation KTRepairCKVOperation

- (KTRepairCKVOperation)initWithDependencies:(id)dependencies repair:(id)repair reset:(id)reset intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  repairCopy = repair;
  resetCopy = reset;
  stateCopy = state;
  errorStateCopy = errorState;
  v22.receiver = self;
  v22.super_class = KTRepairCKVOperation;
  v17 = [(KTGroupOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, dependencies);
    objc_storeStrong(&v18->_repair, repair);
    objc_storeStrong(&v18->_reset, reset);
    objc_storeStrong(&v18->_nextState, errorState);
    objc_storeStrong(&v18->_intendedState, state);
    v19 = v18;
  }

  return v18;
}

- (void)groupStart
{
  if (_os_feature_enabled_impl())
  {
    if (qword_10038BD90 != -1)
    {
      sub_10024AC18();
    }

    v3 = qword_10038BD98;
    if (os_log_type_enabled(qword_10038BD98, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      repair = [(KTRepairCKVOperation *)self repair];
      v16 = 138412290;
      v17 = repair;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "KTRepairCKVOperation: will do repair: %@", &v16, 0xCu);
    }

    v6 = [_TtC13transparencyd11KTRepairCKV alloc];
    deps = [(KTRepairCKVOperation *)self deps];
    repair2 = [(KTRepairCKVOperation *)self repair];
    reset = [(KTRepairCKVOperation *)self reset];
    v10 = [(KTRepairCKV *)v6 initWithDeps:deps repair:repair2 reset:reset];

    [(KTRepairCKV *)v10 doRepair];
    if (qword_10038BD90 != -1)
    {
      sub_10024AC2C();
    }

    v11 = qword_10038BD98;
    if (os_log_type_enabled(qword_10038BD98, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "KTRepairCKVOperation: done", &v16, 2u);
    }
  }

  else
  {
    intendedState = [(KTRepairCKVOperation *)self intendedState];
    [(KTRepairCKVOperation *)self setNextState:intendedState];

    if (qword_10038BD90 != -1)
    {
      sub_10024AC04();
    }

    v13 = qword_10038BD98;
    if (os_log_type_enabled(qword_10038BD98, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      repair3 = [(KTRepairCKVOperation *)self repair];
      v16 = 138412290;
      v17 = repair3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "KTRepairCKVOperation: ff off: %@", &v16, 0xCu);
    }
  }
}

@end