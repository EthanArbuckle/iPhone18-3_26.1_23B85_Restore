@interface KTRepairCKVOperation
- (KTRepairCKVOperation)initWithDependencies:(id)a3 repair:(id)a4 reset:(id)a5 intendedState:(id)a6 errorState:(id)a7;
- (void)groupStart;
@end

@implementation KTRepairCKVOperation

- (KTRepairCKVOperation)initWithDependencies:(id)a3 repair:(id)a4 reset:(id)a5 intendedState:(id)a6 errorState:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = KTRepairCKVOperation;
  v17 = [(KTGroupOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, a3);
    objc_storeStrong(&v18->_repair, a4);
    objc_storeStrong(&v18->_reset, a5);
    objc_storeStrong(&v18->_nextState, a7);
    objc_storeStrong(&v18->_intendedState, a6);
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
      v5 = [(KTRepairCKVOperation *)self repair];
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "KTRepairCKVOperation: will do repair: %@", &v16, 0xCu);
    }

    v6 = [_TtC13transparencyd11KTRepairCKV alloc];
    v7 = [(KTRepairCKVOperation *)self deps];
    v8 = [(KTRepairCKVOperation *)self repair];
    v9 = [(KTRepairCKVOperation *)self reset];
    v10 = [(KTRepairCKV *)v6 initWithDeps:v7 repair:v8 reset:v9];

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
    v12 = [(KTRepairCKVOperation *)self intendedState];
    [(KTRepairCKVOperation *)self setNextState:v12];

    if (qword_10038BD90 != -1)
    {
      sub_10024AC04();
    }

    v13 = qword_10038BD98;
    if (os_log_type_enabled(qword_10038BD98, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(KTRepairCKVOperation *)self repair];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "KTRepairCKVOperation: ff off: %@", &v16, 0xCu);
    }
  }
}

@end