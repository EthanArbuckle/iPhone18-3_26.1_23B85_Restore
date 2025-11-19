@interface mountTable
- (id)list:(BOOL)a3;
- (id)lookupByPath:(id)a3;
- (id)lookupName:(id)a3 provider:(id)a4;
- (id)preflightMountWithName:(id)a3 displayName:(id)a4 storageName:(id)a5 provider:(id)a6 path:(id)a7 error:(id *)a8;
- (mountTable)init;
- (void)add:(id)a3;
- (void)performExclusive:(id)a3;
- (void)performShared:(id)a3;
- (void)remove:(id)a3;
- (void)resetIndex;
- (void)tearDownDaemon:(BOOL)a3 withPath:(id)a4;
@end

@implementation mountTable

- (mountTable)init
{
  v9.receiver = self;
  v9.super_class = mountTable;
  v2 = [(mountTable *)&v9 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = pthread_rwlock_init(&v2->opLock, 0);
  *__error() = v4;
  if (!v4)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    mntTable = v3->mntTable;
    v3->mntTable = v6;

    if (v3->mntTable)
    {
      atomic_store(0, &v3->mountSelector);
LABEL_6:
      v5 = v3;
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)tearDownDaemon:(BOOL)a3 withPath:(id)a4
{
  v4 = a4;
  if (unmount([v4 fileSystemRepresentation], 0x80000))
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100042790();
    }
  }
}

- (void)performExclusive:(id)a3
{
  v4 = a3;
  pthread_rwlock_wrlock(&self->opLock);
  v4[2](v4);

  pthread_rwlock_unlock(&self->opLock);
}

- (void)performShared:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->opLock);
  v4[2](v4);

  pthread_rwlock_unlock(&self->opLock);
}

- (id)lookupByPath:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10003A7E8;
  v14 = sub_10003A7F8;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003FF2C;
  v6[3] = &unk_100061FD0;
  v7 = self;
  v9 = &v10;
  v3 = a3;
  v8 = v3;
  [(mountTable *)v7 performShared:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)lookupName:(id)a3 provider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10003A7E8;
  v20 = sub_10003A7F8;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100040130;
  v12[3] = &unk_100061FF8;
  v12[4] = self;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [(mountTable *)self performShared:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)preflightMountWithName:(id)a3 displayName:(id)a4 storageName:(id)a5 provider:(id)a6 path:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10003A7E8;
  v44 = sub_10003A7F8;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10004051C;
  v29[3] = &unk_100062070;
  v29[4] = self;
  v19 = v17;
  v30 = v19;
  v20 = v14;
  v31 = v20;
  v34 = &v40;
  v21 = v16;
  v32 = v21;
  v22 = v18;
  v33 = v22;
  v35 = &v36;
  [(mountTable *)self performShared:v29];
  if (*(v37 + 24) == 1)
  {
    if (a8)
    {
      *a8 = [NSError errorWithDomain:NSCocoaErrorDomain code:516 userInfo:0];
    }

    v23 = v41[5];
    v41[5] = 0;
  }

  v24 = livefs_std_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v27 = v41[5];
    if (a8)
    {
      v28 = *a8;
    }

    else
    {
      v28 = 0;
    }

    *buf = 138412802;
    v47 = v20;
    v48 = 2112;
    v49 = v27;
    v50 = 2112;
    v51 = v28;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "preflightMountWithName:volume:%@:rv:%@:error:%@", buf, 0x20u);
  }

  v25 = v41[5];
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v25;
}

- (void)add:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 midx]);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100040970;
    v8[3] = &unk_1000612C0;
    v8[4] = self;
    v9 = v5;
    v10 = v6;
    v7 = v6;
    [(mountTable *)self performExclusive:v8];
  }

  else
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100042820();
    }
  }
}

- (void)remove:(id)a3
{
  +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a3 midx]);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100040A34;
  v5[3] = &unk_100060B20;
  v6 = v5[4] = self;
  v4 = v6;
  [(mountTable *)self performExclusive:v5];
}

- (id)list:(BOOL)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003A7E8;
  v11 = sub_10003A7F8;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100040B44;
  v5[3] = &unk_100062098;
  v6 = a3;
  v5[4] = self;
  v5[5] = &v7;
  [(mountTable *)self performShared:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (void)resetIndex
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100040F8C;
  v2[3] = &unk_100060978;
  v2[4] = self;
  [(mountTable *)self performExclusive:v2];
}

@end