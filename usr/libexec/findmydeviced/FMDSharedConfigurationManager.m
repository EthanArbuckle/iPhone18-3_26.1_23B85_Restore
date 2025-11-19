@interface FMDSharedConfigurationManager
+ (FMDSharedConfigurationManager)sharedInstance;
- (unint64_t)theftAndLossCoverageWithSerialNumber:(id)a3 timeout:(double)a4;
- (unint64_t)theftAndLossCoverageWithUDID:(id)a3 timeout:(double)a4;
- (void)clearTheftAndLossCFUWithCompletion:(id)a3;
- (void)downloadSharedConfigurationWithLocale:(id)a3 reply:(id)a4;
- (void)getTheftAndLossCoverageWithSerialNumber:(id)a3 timeout:(double)a4 completion:(id)a5;
- (void)postTheftAndLossCFU:(id)a3 completion:(id)a4;
@end

@implementation FMDSharedConfigurationManager

+ (FMDSharedConfigurationManager)sharedInstance
{
  if (qword_100314620 != -1)
  {
    sub_10022820C();
  }

  v3 = qword_100314618;

  return v3;
}

- (void)downloadSharedConfigurationWithLocale:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FMNSXPCConnectionConfiguration sharedConfigurationConfiguration];
  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = [v8 resumeConnectionWithConfiguration:v7];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100155B00;
  v17[3] = &unk_1002CEE20;
  v10 = v5;
  v18 = v10;
  [v9 addFailureBlock:v17];
  v11 = [v9 remoteObjectProxy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100155B78;
  v14[3] = &unk_1002CEE48;
  v15 = v9;
  v16 = v10;
  v12 = v9;
  v13 = v10;
  [v11 downloadSharedConfigurationWithLocale:v6 reply:v14];
}

- (void)getTheftAndLossCoverageWithSerialNumber:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_10000AA14;
  v39[4] = sub_100002AD4;
  v40 = objc_opt_new();
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100155F8C;
  v35[3] = &unk_1002CEE70;
  v37 = v39;
  v38 = v41;
  v9 = v8;
  v36 = v9;
  v10 = objc_retainBlock(v35);
  v11 = +[FMNSXPCConnectionConfiguration sharedConfigurationConfiguration];
  v12 = +[FMNSXPCConnectionCache sharedCache];
  v13 = [v12 resumeConnectionWithConfiguration:v11];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100156018;
  v33[3] = &unk_1002CEE20;
  v14 = v10;
  v34 = v14;
  [v13 addFailureBlock:v33];
  v15 = [v13 remoteObjectProxy];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001560B8;
  v29[3] = &unk_1002CEE98;
  v16 = v13;
  v30 = v16;
  v17 = v14;
  v32 = v17;
  v18 = v7;
  v31 = v18;
  [v15 getTheftAndLossCoverageWithSerialNumber:v18 reply:v29];
  v19 = dispatch_get_global_queue(0, 0);
  v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v19);
  v21 = dispatch_time(0, (a4 * 1000000000.0));
  dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001561C8;
  v25[3] = &unk_1002CEEC0;
  v27 = v20;
  v28 = v17;
  v26 = v18;
  v22 = v20;
  v23 = v18;
  v24 = v17;
  dispatch_source_set_event_handler(v22, v25);
  dispatch_activate(v22);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
}

- (unint64_t)theftAndLossCoverageWithSerialNumber:(id)a3 timeout:(double)a4
{
  v5 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10000AA14;
  v40 = sub_100002AD4;
  v41 = 0;
  v6 = dispatch_time(0, (a4 * 1000000000.0));
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_10000AA14;
  v34[4] = sub_100002AD4;
  v7 = dispatch_group_create();
  v35 = v7;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001566D4;
  v31[3] = &unk_1002CE5F0;
  v8 = objc_opt_new();
  v32 = v8;
  v33 = v34;
  v9 = objc_retainBlock(v31);
  dispatch_group_enter(v7);
  v10 = +[FMNSXPCConnectionConfiguration sharedConfigurationConfiguration];
  v11 = +[FMNSXPCConnectionCache sharedCache];
  v12 = [v11 resumeConnectionWithConfiguration:v10];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100156738;
  v28[3] = &unk_1002CEEE8;
  v30 = &v36;
  v13 = v9;
  v29 = v13;
  [v12 addFailureBlock:v28];
  v14 = [v12 remoteObjectProxy];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001567D8;
  v23[3] = &unk_1002CEF10;
  v26 = &v42;
  v27 = &v36;
  v15 = v12;
  v24 = v15;
  v16 = v13;
  v25 = v16;
  [v14 getTheftAndLossCoverageWithSerialNumber:v5 reply:v23];
  if (dispatch_group_wait(v7, v6))
  {
    v17 = sub_100002880();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1002282F8();
    }

    v18 = 0;
  }

  else
  {
    v19 = sub_100002880();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (v43[3])
      {
        v20 = @"true";
      }

      else
      {
        v20 = @"false";
      }

      v21 = v37[5];
      *buf = 138543874;
      v47 = v20;
      v48 = 2112;
      v49 = v5;
      v50 = 2112;
      v51 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "T&L device coverage %{public}@ for serialNumber: %@, error: %@", buf, 0x20u);
    }

    v18 = v43[3];
  }

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  return v18;
}

- (unint64_t)theftAndLossCoverageWithUDID:(id)a3 timeout:(double)a4
{
  v5 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10000AA14;
  v40 = sub_100002AD4;
  v41 = 0;
  v6 = dispatch_time(0, (a4 * 1000000000.0));
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_10000AA14;
  v34[4] = sub_100002AD4;
  v7 = dispatch_group_create();
  v35 = v7;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100156CB0;
  v31[3] = &unk_1002CE5F0;
  v8 = objc_opt_new();
  v32 = v8;
  v33 = v34;
  v9 = objc_retainBlock(v31);
  dispatch_group_enter(v7);
  v10 = +[FMNSXPCConnectionConfiguration sharedConfigurationConfiguration];
  v11 = +[FMNSXPCConnectionCache sharedCache];
  v12 = [v11 resumeConnectionWithConfiguration:v10];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100156D14;
  v28[3] = &unk_1002CEEE8;
  v30 = &v36;
  v13 = v9;
  v29 = v13;
  [v12 addFailureBlock:v28];
  v14 = [v12 remoteObjectProxy];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100156D88;
  v23[3] = &unk_1002CEF10;
  v26 = &v42;
  v27 = &v36;
  v15 = v12;
  v24 = v15;
  v16 = v13;
  v25 = v16;
  [v14 getTheftAndLossCoverageWithUDID:v5 reply:v23];
  if (dispatch_group_wait(v7, v6))
  {
    v17 = sub_100002880();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100228360();
    }

    v18 = 0;
  }

  else
  {
    v19 = sub_100002880();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (v43[3])
      {
        v20 = @"true";
      }

      else
      {
        v20 = @"false";
      }

      v21 = v37[5];
      *buf = 138412802;
      v47 = v20;
      v48 = 2112;
      v49 = v5;
      v50 = 2112;
      v51 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "T&L device coverage %@ for UDID: %@, error: %@", buf, 0x20u);
    }

    v18 = v43[3];
  }

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  return v18;
}

- (void)postTheftAndLossCFU:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_10000AA14;
  v33[4] = sub_100002AD4;
  v34 = objc_opt_new();
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001571B8;
  v29[3] = &unk_1002CEF38;
  v31 = v33;
  v32 = v35;
  v7 = v6;
  v30 = v7;
  v8 = objc_retainBlock(v29);
  v9 = +[FMNSXPCConnectionConfiguration sharedConfigurationConfiguration];
  v10 = +[FMNSXPCConnectionCache sharedCache];
  v11 = [v10 resumeConnectionWithConfiguration:v9];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100157244;
  v27[3] = &unk_1002CEE20;
  v12 = v8;
  v28 = v12;
  [v11 addFailureBlock:v27];
  v13 = [v11 remoteObjectProxy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001572E4;
  v24[3] = &unk_1002CEF60;
  v14 = v11;
  v25 = v14;
  v15 = v12;
  v26 = v15;
  [v13 postTheftAndLossCFUWithEntry:v5 reply:v24];
  v16 = dispatch_get_global_queue(0, 0);
  v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);
  v18 = dispatch_time(0, (2.0 * 1000000000.0));
  dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001573E4;
  v21[3] = &unk_1002CD8B0;
  v22 = v17;
  v23 = v15;
  v19 = v17;
  v20 = v15;
  dispatch_source_set_event_handler(v19, v21);
  dispatch_activate(v19);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

- (void)clearTheftAndLossCFUWithCompletion:(id)a3
{
  v3 = a3;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_10000AA14;
  v30[4] = sub_100002AD4;
  v31 = objc_opt_new();
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100157810;
  v26[3] = &unk_1002CEF88;
  v28 = v30;
  v29 = v32;
  v4 = v3;
  v27 = v4;
  v5 = objc_retainBlock(v26);
  v6 = +[FMNSXPCConnectionConfiguration sharedConfigurationConfiguration];
  v7 = +[FMNSXPCConnectionCache sharedCache];
  v8 = [v7 resumeConnectionWithConfiguration:v6];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100157894;
  v24[3] = &unk_1002CEE20;
  v9 = v5;
  v25 = v9;
  [v8 addFailureBlock:v24];
  v10 = [v8 remoteObjectProxy];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100157930;
  v21[3] = &unk_1002CEFB0;
  v11 = v8;
  v22 = v11;
  v12 = v9;
  v23 = v12;
  [v10 clearTheftAndLossCFU:v21];
  v13 = dispatch_get_global_queue(0, 0);
  v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v13);
  v15 = dispatch_time(0, (2.0 * 1000000000.0));
  dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001579E8;
  v18[3] = &unk_1002CD8B0;
  v19 = v14;
  v20 = v12;
  v16 = v14;
  v17 = v12;
  dispatch_source_set_event_handler(v16, v18);
  dispatch_activate(v16);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
}

@end