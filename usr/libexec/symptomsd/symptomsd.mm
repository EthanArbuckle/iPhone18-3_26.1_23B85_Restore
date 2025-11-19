void start(int a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000008EC;
  v2[3] = &unk_1000040F0;
  v3 = a1;
  v2[4] = a2;
  dispatch_async(&_dispatch_main_q, v2);
  dispatch_main();
}

void sub_1000008EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 40) >= 1)
  {
    v3 = strncmp(**(a1 + 32), "/usr/libexec/symptomsd-helper", 0x1DuLL) == 0;
  }

  configure_symptom_logging();
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000009A8(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    configure_analytics_launchpad_for_helper();
  }

  else
  {
    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100004130);
    xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, &stru_100004150);

    configure_symptom_evaluator_handling();
    activate_symptom_evaluator_handling();
    init_managed_event_listening();
    init_symptom_evaluator_listening();
    init_analytics_portal_listening();
  }

  signal(15, 1);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v2 = qword_100008000;
  qword_100008000 = v1;

  if (qword_100008000)
  {
    dispatch_source_set_event_handler(qword_100008000, &stru_100004190);
    dispatch_resume(qword_100008000);
  }

  return atexit_b(&stru_1000041B0);
}

void sub_100000AAC(id a1)
{
  v1 = client_transactions_release();

  _xpc_transaction_exit_clean(v1);
}