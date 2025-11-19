@interface RPNWFramer
+ (BOOL)writeDataOnFramer:(id)a3 data:(id)a4;
+ (const)controlCodeToString:(int)a3;
+ (void)setupDaemonFramer:(id)a3 token:(id)a4 receiveHandler:(id)a5 closeHandler:(id)a6;
+ (void)startConnection:(id)a3 token:(id)a4;
@end

@implementation RPNWFramer

+ (const)controlCodeToString:(int)a3
{
  if (a3 > 3)
  {
    return "INVALID";
  }

  else
  {
    return (&off_1001AC4D8)[a3];
  }
}

+ (BOOL)writeDataOnFramer:(id)a3 data:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    if (dword_1001D3460 <= 30 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001158F0();
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100045840;
    v11[3] = &unk_1001AB488;
    v12 = v7;
    v13 = v5;
    nw_framer_async(v13, v11);
  }

  return v9;
}

+ (void)startConnection:(id)a3 token:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (dword_1001D3460 <= 30 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
  {
    sub_1001159B4();
  }

  [RPNWFramer writeControlOnFramer:v6 type:1 error:0 token:v5];
}

+ (void)setupDaemonFramer:(id)a3 token:(id)a4 receiveHandler:(id)a5 closeHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  input_handler[0] = _NSConcreteStackBlock;
  input_handler[1] = 3221225472;
  input_handler[2] = sub_100045C40;
  input_handler[3] = &unk_1001AC328;
  v22 = v28;
  v23 = v25;
  v24 = v27;
  v13 = v11;
  v20 = v13;
  v14 = v10;
  v18 = v14;
  v15 = v12;
  v21 = v15;
  v16 = v9;
  v19 = v16;
  nw_framer_set_input_handler(v16, input_handler);
  nw_framer_set_output_handler(v16, &stru_1001AC368);
  nw_framer_set_cleanup_handler(v16, &stru_1001AC3A8);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
}

@end