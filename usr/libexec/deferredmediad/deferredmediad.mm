uint64_t start()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000009F8;
  v4[3] = &unk_100004090;
  v4[4] = &v5;
  v4[5] = CFRunLoopGetCurrent();
  _set_user_dir_suffix();
  for (i = 0; i != 3; ++i)
  {
    v1 = dword_100000AF8[i];
    signal(v1, 1);
    v2 = dispatch_source_create(&_dispatch_source_type_signal, v1, 0, &_dispatch_main_q);
    qword_100008000[i] = v2;
    dispatch_source_set_event_handler(v2, v4);
    dispatch_activate(qword_100008000[i]);
  }

  FigCommonMediaProcessInitialization();
  FigCaptureDeferredPhotoProcessorServerStart();
  while ((v6[3] & 1) == 0)
  {
    CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0e10, 0);
  }

  _Block_object_dispose(&v5, 8);
  return 0;
}

void sub_1000009D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000009F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    CFRunLoopStop(v2);
  }
}