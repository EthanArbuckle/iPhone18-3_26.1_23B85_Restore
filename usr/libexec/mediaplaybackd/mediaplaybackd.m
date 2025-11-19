void start()
{
  _set_user_dir_suffix();
  FigEnableCustomAllocatorsOnDaemonStartup();
  FigCommonMediaProcessInitialization();
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  FigInitializePlayerProcess();
  if (&_CoreMediaTestFoundationStartServer && FigTestSupportIsAllowed())
  {
    CoreMediaTestFoundationStartServer();
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  dispatch_main();
}