void sub_1005FD8FC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FDB20()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FDD44()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FDF68()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FE18C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FE3B0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FE5D4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FE7F8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FEA1C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FEC40()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FEE64()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FF088()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FF2AC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FF4D0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FF6F4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FF918()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FFB3C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FFD60()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FFF84()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006001A8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006003CC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006005F0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100600814()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100600A38()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100600C5C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100600E80()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006010A4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006012C8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006014EC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100601710()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100601934()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100601B58()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100601D7C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100601FA0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006021C4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006023E8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_10060260C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100602830()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100602A54()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100602C78()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100602E9C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006030C0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006032E4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100603508()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_10060372C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100603950()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100603B74()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100603D98()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100603FBC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006041E0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100604404()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100604628()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_10060484C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100604A70()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100604C94()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100604EB8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006050DC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100605300()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100605524(uint64_t a1, sqlite3_stmt *a2, int a3)
{
  v6 = sqlite3_stmt_status(a2, 1, a3);
  v7 = sqlite3_stmt_status(a2, 2, a3);
  if (qword_1025D48A0 != -1)
  {
    sub_1018E5798();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sqlite3_sql(a2);
    v10 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v10 = *v10;
    }

    *buf = 136315906;
    v13 = v9;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 2080;
    v19 = v10;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Query: %s, full table scans: %d, sorts: %d, File: %s", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1018E57AC();
    }

    sqlite3_sql(a2);
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLSqliteDatabase::logStmtStatus(sqlite3_stmt *, BOOL)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_100605758(uint64_t a1)
{
  *(a1 + 120) = 0;
  memset(&__p, 0, sizeof(__p));
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v2 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v3 = *v3;
    }

    v4 = *(a1 + 48);
    v5 = *(a1 + 52);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v3;
    v55 = 1026;
    *v56 = v4;
    *&v56[4] = 1026;
    *&v56[6] = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:open, path:%{public, location:escape_only}s, protection:%{public}d, persistence:%{public}d}", buf, 0x28u);
  }

  v6 = *(a1 + 87);
  if (v6 < 0)
  {
    v6 = *(a1 + 72);
  }

  v7 = (a1 + 96);
  if (!v6)
  {
    if ((*(a1 + 119) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 104))
      {
LABEL_14:
        v10 = sub_1001B1CF8();
        v40 = *(a1 + 48);
        v41 = *(a1 + 56);
        v9 = &v42;
        if (*(a1 + 87) < 0)
        {
          sub_100007244(&v42, *(a1 + 64), *(a1 + 72));
        }

        else
        {
          v42 = *(a1 + 64);
          v43 = *(a1 + 80);
        }

        v44 = *(a1 + 88);
        v11 = sub_100DBA9A4(v10, &v40, (a1 + 96), &v51);
        v50 = v11;
        if (SHIBYTE(v43) < 0)
        {
          goto LABEL_51;
        }

        goto LABEL_18;
      }
    }

    else if (*(a1 + 119))
    {
      goto LABEL_14;
    }

    v17 = sub_1001B1CF8();
    v35 = *(a1 + 48);
    v36 = *(a1 + 56);
    v9 = &v37;
    if (*(a1 + 87) < 0)
    {
      sub_100007244(&v37, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      v37 = *(a1 + 64);
      v38 = *(a1 + 80);
    }

    v39 = *(a1 + 88);
    v11 = sub_100DBA8AC(v17, &v35, &v51);
    v50 = v11;
    if (SHIBYTE(v38) < 0)
    {
      goto LABEL_51;
    }

LABEL_18:
    if (v11)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

  std::string::operator=((a1 + 96), (a1 + 64));
  v8 = sub_1001B1CF8();
  v45 = *(a1 + 48);
  v46 = *(a1 + 56);
  v9 = &v47;
  if (*(a1 + 87) < 0)
  {
    sub_100007244(&v47, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v47 = *(a1 + 64);
    v48 = *(a1 + 80);
  }

  v49 = *(a1 + 88);
  v11 = sub_100DBA9A4(v8, &v45, (a1 + 64), &v51);
  v50 = v11;
  if ((SHIBYTE(v48) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_51:
  operator delete(*v9);
  if (v11)
  {
LABEL_19:
    if ((*(a1 + 119) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 104))
      {
LABEL_23:
        sub_1006083DC(a1 + 48, buf);
        if (*(a1 + 119) < 0)
        {
          operator delete(*v7);
        }

        *v7 = *buf;
        *(a1 + 112) = *&buf[16];
      }
    }

    else if (!*(a1 + 119))
    {
      goto LABEL_23;
    }

    if (v11 == 23)
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v12 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 119) < 0)
        {
          v7 = *v7;
        }

        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v7;
        v55 = 1040;
        *v56 = 4;
        *&v56[4] = 2098;
        *&v56[6] = &v50;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Could not open database, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", buf, 0x2Cu);
      }
    }

    else
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v13 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
      {
        v14 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v14 = *v7;
        }

        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v14;
        v55 = 1040;
        *v56 = 4;
        *&v56[4] = 2098;
        *&v56[6] = &v50;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not open database, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", buf, 0x2Cu);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }
      }

      v15 = off_1025D4858;
      if (os_signpost_enabled(off_1025D4858))
      {
        v16 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v16 = *v7;
        }

        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v16;
        v55 = 1040;
        *v56 = 4;
        *&v56[4] = 2098;
        *&v56[6] = &v50;
        _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not open database", "{msg%{public}.0s:Could not open database, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", buf, 0x2Cu);
      }

      sub_10060AF58(*(a1 + 8), (a1 + 96), *(a1 + 56), v50);
    }

    *(a1 + 8) = 0;
    goto LABEL_105;
  }

LABEL_52:
  *(a1 + 8) = v51;
  v18 = *(a1 + 119);
  if (v18 < 0)
  {
    v19 = *(a1 + 104);
  }

  else
  {
    v19 = *(a1 + 119);
  }

  if (v19)
  {
    if (v18 >= 0)
    {
      v20 = *(a1 + 119);
    }

    else
    {
      v20 = *(a1 + 104);
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (v20 != size || (v18 >= 0 ? (v22 = (a1 + 96)) : (v22 = *v7), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v23 = &__p) : (v23 = __p.__r_.__value_.__r.__words[0]), memcmp(v22, v23, v20)))
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v24 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v26 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v26 = *v7;
        }

        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = p_p;
        v55 = 2082;
        *v56 = v26;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Requested filename, expected:%{public, location:escape_only}s, actual:%{public, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }
      }

      v27 = off_1025D4858;
      if (os_signpost_enabled(off_1025D4858))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &__p;
        }

        else
        {
          v28 = __p.__r_.__value_.__r.__words[0];
        }

        if (*(a1 + 119) < 0)
        {
          v7 = *v7;
        }

        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v28;
        v55 = 2082;
        *v56 = v7;
        _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Requested filename", "{msg%{public}.0s:Requested filename, expected:%{public, location:escape_only}s, actual:%{public, location:escape_only}s}", buf, 0x26u);
      }
    }
  }

  else
  {
    std::string::operator=((a1 + 96), &__p);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v29 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 119) < 0)
      {
        v7 = *v7;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v7;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Returned database, path:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v30 = *(a1 + 16);
    (*(*v30 + 16))(v30);
    if ((*v52 & 1) == 0)
    {
      *buf = "TableName";
      *&buf[8] = 3;
      *&buf[12] = 1;
      buf[16] = 0;
      v56[10] = 0;
      v57 = "SoftwareVersion";
      v58 = 3;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = "SerialNumber";
      v63 = 3;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 5;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      sub_10060667C(a1, "TableInfo", buf, 0, 1);
      *v52 = 1;
    }

    sub_1006079AC(a1);
    (*(*v30 + 24))(v30);
  }

  if (!sub_1006081E8(a1, 1))
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v31 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to turn ON foreign keys check}", buf, 0x12u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v32 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to turn ON foreign keys check", "{msg%{public}.0s:Unable to turn ON foreign keys check}", buf, 0x12u);
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100608370, @"com.apple.locationd.DumpDiagnostics", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, a1, sub_100608370, @"com.apple.locationd.DumpDiagnostics", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
LABEL_105:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_1006061EC(uint64_t a1, uint64_t *a2)
{
  *a1 = off_102463DE0;
  *(a1 + 8) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  v4 = *a2;
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 48) = v4;
  if (*(a2 + 39) < 0)
  {
    sub_100007244((a1 + 64), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 80) = a2[4];
    *(a1 + 64) = v5;
  }

  *(a1 + 88) = a2[5];
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  sub_100605758(a1);
  return a1;
}

int *sub_1006062DC(int *a1)
{
  *a1 = off_102463DE0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, a1);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, a1);
  for (i = *(a1 + 4); i != a1 + 6; i = v5)
  {
    v5 = *(i + 8);
    sub_1006063E4(a1, *(i + 16));
  }

  if (*(a1 + 1))
  {
    if (a1[30] >= 1)
    {
      do
      {
        sub_1000393C8(*(a1 + 2));
        v6 = a1[30];
        v7 = __OFSUB__(v6--, 1);
        a1[30] = v6;
      }

      while (!((v6 < 0) ^ v7 | (v6 == 0)));
    }

    v8 = sub_1001B1CF8();
    sub_100DBAFD0(v8, *(a1 + 1));
    *(a1 + 1) = 0;
  }

  if (*(a1 + 2))
  {
    *(a1 + 2) = 0;
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 12));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 8));
  }

  sub_1001FB750(a1 + 3);
  return a1;
}

uint64_t sub_1006063E4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 16))(v4);
  v5 = *(a1 + 32);
  if (v5 == (a1 + 24))
  {
LABEL_4:
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not find prepared statement, statement:%{public}p}", buf, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not find prepared statement", "{msg%{public}.0s:Could not find prepared statement, statement:%{public}p}", buf, 0x1Cu);
    }
  }

  else
  {
    while (1)
    {
      v6 = v5[1];
      if (v5[2] == a2)
      {
        break;
      }

      v5 = v5[1];
      if (v6 == (a1 + 24))
      {
        goto LABEL_4;
      }
    }

    v9 = *v5;
    *(v9 + 8) = v6;
    *v6 = v9;
    --*(a1 + 40);
    operator delete(v5);
    sub_1001B1DA0(*(a1 + 8), a2);
  }

  return (*(*v4 + 24))(v4);
}

void sub_100606644(int *a1)
{
  sub_1006062DC(a1);

  operator delete();
}

uint64_t sub_10060667C(uint64_t a1, char *a2, const char **a3, const char **a4, char a5)
{
  v144 = *(a1 + 16);
  (*(*v144 + 16))(v144);
  v146 = 256;
  if (!a3 || !*a3)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v12 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = a2;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need at least one column in table, table:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v13 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need at least one column in table", "{msg%{public}.0s:Need at least one column in table, table:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v14 = 0;
    goto LABEL_137;
  }

  sub_10003848C(v132);
  v8 = sub_100038730(&v133, "PRAGMA table_info(", 18);
  v9 = strlen(a2);
  v10 = sub_100038730(v8, a2, v9);
  buf[0] = 41;
  sub_100038730(v10, buf, 1);
  v121 = a5;
  if ((v143 & 0x10) != 0)
  {
    v15 = v142;
    if (v142 < v139)
    {
      v142 = v139;
      v15 = v139;
    }

    v16 = __src;
    goto LABEL_18;
  }

  if ((v143 & 8) != 0)
  {
    v16 = v136;
    v15 = v137;
LABEL_18:
    v11 = v15 - v16;
    if (v15 - v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    buf[23] = v15 - v16;
    if (v11)
    {
      memmove(buf, v16, v11);
    }

    goto LABEL_24;
  }

  v11 = 0;
  buf[23] = 0;
LABEL_24:
  buf[v11] = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  v18 = sub_100038DE8(a1, v17);
  v122 = a4;
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v19 = 0;
  v20 = 1;
  v127 = a3;
  while (sqlite3_step(v18) == 100)
  {
    v21 = &a3[6 * v19];
    v22 = *v21;
    if (!*v21)
    {
      goto LABEL_51;
    }

    v23 = sqlite3_column_text(v18, 1);
    if (strcmp(v22, v23))
    {
      goto LABEL_40;
    }

    v24 = *(v21 + 2);
    v25 = "INTEGER";
    if (v24 != 1)
    {
      v26 = &off_102463F00;
      v27 = 5;
      do
      {
        v28 = v26;
        if (!--v27)
        {
          break;
        }

        v26 += 2;
      }

      while (*(v28 - 2) != v24);
      v25 = *v28;
    }

    v29 = sqlite3_column_text(v18, 2);
    if (strcmp(v25, v29) || *(v21 + 12) != sqlite3_column_int(v18, 5) > 0)
    {
LABEL_40:
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v30 = off_1025D4858;
      v20 = 0;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(v21 + 2);
        v32 = "INTEGER";
        if (v31 != 1)
        {
          v33 = &off_102463F00;
          v34 = 5;
          do
          {
            v35 = v33;
            if (!--v34)
            {
              break;
            }

            v33 += 2;
          }

          while (*(v35 - 2) != v31);
          v32 = *v35;
        }

        v36 = *v21;
        v37 = *(v21 + 12);
        v38 = sqlite3_column_text(v18, 1);
        v39 = sqlite3_column_text(v18, 2);
        v40 = sqlite3_column_int(v18, 5);
        *buf = 68291075;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = a2;
        v148 = 1026;
        *v149 = v19;
        *&v149[4] = 2082;
        *&v149[6] = v36;
        *&v149[14] = 2082;
        *&v149[16] = v32;
        *&v149[24] = 1026;
        *&v149[26] = v37;
        *v150 = 2082;
        *&v150[2] = v38;
        *v151 = 2082;
        *&v151[2] = v39;
        LOWORD(v152) = 1026;
        *(&v152 + 2) = v40 > 0;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, warning, schema mismatch! Existing table's column does not match expected, table:%{private, location:escape_only}s, index:%{public}d, expected name:%{public, location:escape_only}s, expected type:%{public, location:escape_only}s, expected primary key:%{public}hhd, actual name:%{public, location:escape_only}s, actual type:%{public, location:escape_only}s, actual primary key:%{public}hhd}", buf, 0x56u);
        v20 = 0;
        a3 = v127;
      }
    }

    ++v19;
  }

  if (!a3[6 * v19])
  {
    goto LABEL_56;
  }

LABEL_51:
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v41 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = a2;
    _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, warning, schema mismatch! Existing table's schema does not have the same number of columns as the requested schema, table:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v20 = 0;
LABEL_56:
  sub_1001B1DA0(*(a1 + 8), v18);
  if ((v20 & 1) == 0)
  {
    goto LABEL_118;
  }

  v42 = 0;
  memset(v161, 0, sizeof(v161));
  v43 = v19;
  do
  {
    v44 = &a3[6 * v43];
    if (*(v44 + 40) == 1)
    {
      if (v42 >= v161[2])
      {
        v47 = v161[0];
        v48 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v161[0]) >> 4);
        v49 = v48 + 1;
        if (v48 + 1 > 0x555555555555555)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v161[2] - v161[0]) >> 4) > v49)
        {
          v49 = 0x5555555555555556 * ((v161[2] - v161[0]) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v161[2] - v161[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v50 = 0x555555555555555;
        }

        else
        {
          v50 = v49;
        }

        if (v50)
        {
          sub_100485BE8(v161, v50);
        }

        v51 = (16 * ((v42 - v161[0]) >> 4));
        v52 = *v44;
        v53 = *(v44 + 2);
        v51[1] = *(v44 + 1);
        v51[2] = v53;
        *v51 = v52;
        v54 = (48 * v48 + v47 - v42);
        if (v47 != v42)
        {
          v55 = v47;
          v56 = (v51 + v47 - v42);
          do
          {
            v57 = *v55;
            v58 = *(v55 + 2);
            v56[1] = *(v55 + 1);
            v56[2] = v58;
            *v56 = v57;
            v56 += 3;
            v55 += 48;
          }

          while (v55 != v42);
        }

        v42 = (v51 + 3);
        v161[0] = v54;
        v161[1] = v51 + 3;
        v161[2] = 0;
        a3 = v127;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        v45 = *v44;
        v46 = *(v44 + 2);
        *(v42 + 1) = *(v44 + 1);
        *(v42 + 2) = v46;
        *v42 = v45;
        v42 += 48;
        a3 = v127;
      }

      v161[1] = v42;
    }

    else
    {
      a3 = v127;
    }
  }

  while (v43-- > 0);
  memset(buf, 0, 24);
  sub_100619F14(&v134, buf);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v60 = sub_100038730(&v133, "PRAGMA foreign_key_list(", 24);
  v61 = strlen(a2);
  v62 = sub_100038730(v60, a2, v61);
  sub_100038730(v62, ")", 1);
  if ((v143 & 0x10) != 0)
  {
    v64 = v142;
    if (v142 < v139)
    {
      v142 = v139;
      v64 = v139;
    }

    v65 = __src;
  }

  else
  {
    if ((v143 & 8) == 0)
    {
      v63 = 0;
      buf[23] = 0;
      goto LABEL_93;
    }

    v65 = v136;
    v64 = v137;
  }

  v63 = v64 - v65;
  if (v64 - v65 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v63 >= 0x17)
  {
    operator new();
  }

  buf[23] = v64 - v65;
  if (v63)
  {
    memmove(buf, v65, v63);
  }

LABEL_93:
  buf[v63] = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v66 = buf;
  }

  else
  {
    v66 = *buf;
  }

  v67 = sub_100038DE8(a1, v66);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v68 = sqlite3_step(v67);
  v69 = v68;
  v70 = v161[0];
  v123 = v67;
  v117 = v19;
  if ((v161[1] != v161[0] || v68 != 100) && (v161[1] == v161[0] || v68 == 100))
  {
    if (v68 == 100)
    {
      v80 = 0;
      v81 = 0;
      v82 = 1;
      v73 = 1;
      do
      {
        v125 = v80;
        v83 = *&v70[v81];
        v84 = sqlite3_column_text(v67, 3);
        if (strcmp(v83, v84))
        {
          goto LABEL_159;
        }

        v85 = *(v161[0] + v81 + 16);
        v86 = sqlite3_column_text(v67, 2);
        if (strcmp(v85, v86))
        {
          goto LABEL_159;
        }

        v87 = *(v161[0] + v81 + 24);
        v88 = sqlite3_column_text(v67, 4);
        if (strcmp(v87, v88))
        {
          goto LABEL_159;
        }

        sub_10000EC00(buf, (&off_102463FB8)[*(v161[0] + v81 + 36)]);
        v89 = buf[23];
        v90 = *buf;
        v91 = sqlite3_column_text(v67, 5);
        v92 = (v89 >= 0 ? buf : v90);
        if (!strcmp(v92, v91))
        {
          sub_1006118F4(*(v161[0] + v81 + 32), v130);
          v94 = v131;
          v95 = v130[0];
          v96 = sqlite3_column_text(v67, 6);
          if (v94 >= 0)
          {
            v97 = v130;
          }

          else
          {
            v97 = v95;
          }

          v93 = strcmp(v97, v96) != 0;
          if (v131 < 0)
          {
            operator delete(v130[0]);
          }
        }

        else
        {
          v93 = 1;
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v93)
        {
LABEL_159:
          if (qword_1025D4850 != -1)
          {
            sub_1018E57E8();
          }

          v98 = off_1025D4858;
          if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
          {
            v99 = *(v161[0] + v81);
            v101 = *(v161[0] + v81 + 16);
            v100 = *(v161[0] + v81 + 24);
            v102 = sqlite3_column_text(v67, 3);
            v103 = sqlite3_column_text(v67, 2);
            v119 = sqlite3_column_text(v67, 4);
            v120 = v103;
            v104 = v102;
            sub_10000EC00(v130, (&off_102463FB8)[*(v161[0] + v81 + 32)]);
            v105 = v99;
            v118 = v82;
            if (v131 >= 0)
            {
              v106 = v130;
            }

            else
            {
              v106 = v130[0];
            }

            v107 = sqlite3_column_text(v123, 6);
            v108 = v100;
            v109 = v98;
            sub_10000EC00(v128, (&off_102463FB8)[*(v161[0] + v81 + 36)]);
            v110 = v129;
            v111 = v128[0];
            v112 = sqlite3_column_text(v123, 5);
            *buf = 68291843;
            v113 = v128;
            if (v110 < 0)
            {
              v113 = v111;
            }

            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = a2;
            v148 = 2082;
            *v149 = v105;
            *&v149[8] = 2082;
            *&v149[10] = v101;
            *&v149[18] = 2082;
            *&v149[20] = v108;
            *&v149[28] = 2082;
            *v150 = v104;
            *&v150[8] = 2082;
            *v151 = v120;
            *&v151[8] = 2082;
            v152 = v119;
            v153 = 2082;
            v154 = v106;
            v155 = 2082;
            v156 = v107;
            v157 = 2082;
            v158 = v113;
            v159 = 2082;
            v160 = v112;
            _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, warning, schema mismatch! Existing table's foreign key constraint does not match expected, table:%{private, location:escape_only}s, ExpectedFromCol:%{public, location:escape_only}s, ExpectedToTable:%{public, location:escape_only}s, ExpectedToCol:%{public, location:escape_only}s, ActualFromCol:%{public, location:escape_only}s, ActualToTable:%{public, location:escape_only}s, ActualToCol:%{public, location:escape_only}s, ExpectedOnDelete:%{public, location:escape_only}s, ActualOnDelete:%{public, location:escape_only}s, ExpectedOnUpdate:%{public, location:escape_only}s, ActualOnUpdate:%{public, location:escape_only}s}", buf, 0x80u);
            if (v129 < 0)
            {
              operator delete(v128[0]);
            }

            a3 = v127;
            v67 = v123;
            LODWORD(v19) = v117;
            v82 = v118;
            if (v131 < 0)
            {
              operator delete(v130[0]);
            }
          }

          v73 = 0;
        }

        v114 = sqlite3_step(v67);
        v69 = v114;
        v70 = v161[0];
        v80 = dword_100000000 + v125;
        if (v82 == 0xAAAAAAAAAAAAAAABLL * ((v161[1] - v161[0]) >> 4))
        {
          break;
        }

        v81 += 48;
        ++v82;
      }

      while (v114 == 100);
      v72 = v80 >> 32;
    }

    else
    {
      v72 = 0;
      v73 = 1;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v71 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "@SqliteDB, warning, schema mismatch!", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E5810(buf);
      LOWORD(v130[0]) = 0;
      v116 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLSqliteDatabase::createTableIfSchemaDiffers(const char *, const ColumnInfo *, const char **, BOOL)", "%s\n", v116);
      if (v116 != buf)
      {
        free(v116);
      }

      v72 = 0;
      v73 = 0;
      a3 = v127;
    }

    else
    {
      v72 = 0;
      v73 = 0;
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v161[1] - v161[0]) >> 4) > v72 || v69 == 100)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v74 = off_1025D4858;
    v73 = 0;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, warning, schema mismatch! Actual table has more foreign key contraints than expected}", buf, 0x12u);
      v73 = 0;
    }
  }

  sub_1001B1DA0(*(a1 + 8), v67);
  if (v161[0])
  {
    v161[1] = v161[0];
    operator delete(v161[0]);
  }

  if (v73)
  {
    v75 = 1;
    goto LABEL_125;
  }

LABEL_118:
  if (v19)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v76 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = a2;
      _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, warning, schema mismatch! Table exists but does not have matching schema, table:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_10060FDC8(a1, a2);
  }

  sub_10061061C(a1, a2, a3);
  v75 = 0;
LABEL_125:
  if ((v121 & 1) == 0)
  {
    sub_10060C424(a1, a2);
  }

  if (v122)
  {
    sub_10060E3B0(a1, a2, v122);
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v77 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = a2;
    *&buf[12] = 1026;
    *&buf[14] = v75;
    _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEBUG, "@SqliteDB, table %{public}s, schema match, %{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E5810(buf);
    LODWORD(v161[0]) = 136446466;
    *(v161 + 4) = a2;
    WORD2(v161[1]) = 1026;
    *(&v161[1] + 6) = v75;
    v115 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLSqliteDatabase::createTableIfSchemaDiffers(const char *, const ColumnInfo *, const char **, BOOL)", "%s\n", v115);
    if (v115 != buf)
    {
      free(v115);
    }
  }

  v14 = v75 ^ 1u;
  v133 = v78;
  if (v141 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v135);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if ((v146 & 0x100) != 0)
  {
LABEL_137:
    if (v146)
    {
      pthread_mutex_unlock(v145);
    }

    else
    {
      (*(*v144 + 24))(v144);
    }
  }

  return v14;
}

void sub_1006078A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = *(v70 - 128);
  if (v72)
  {
    *(v70 - 120) = v72;
    operator delete(v72);
  }

  sub_10026C504(&a35);
  sub_1017EC98C(&a70);
  _Unwind_Resume(a1);
}

void sub_1006079AC(uint64_t a1)
{
  v50 = "id";
  v51 = 1;
  v52 = 1;
  v53 = 0;
  v54 = 0;
  v55 = "uuid";
  v56 = 3;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 5;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v49[0] = "uuid";
  v49[1] = 0;
  sub_100608EC8(a1, "DatabaseIdentifier", &v50, v49, 0);
  memset(&v34, 0, sizeof(v34));
  v2 = sub_100038DE8(a1, "SELECT * FROM DatabaseIdentifier;");
  v3 = v2;
  if (v2)
  {
    if (sqlite3_step(v2) == 100)
    {
      v4 = sqlite3_column_text(v3, 1);
      sub_100006044(&v34, v4);
      v5 = [NSString alloc];
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v34;
      }

      else
      {
        v6 = v34.__r_.__value_.__r.__words[0];
      }

      *(a1 + 128) = [v5 initWithUTF8String:v6];
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v7 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 119) < 0)
        {
          sub_100007244(__p, *(a1 + 96), *(a1 + 104));
        }

        else
        {
          *__p = *(a1 + 96);
          *&__p[16] = *(a1 + 112);
        }

        v9 = __p;
        if (__p[23] < 0)
        {
          v9 = *__p;
        }

        v10 = &v34;
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = v34.__r_.__value_.__r.__words[0];
        }

        *buf = 68289539;
        *&buf[4] = 0;
        v39 = 2082;
        *v40 = "";
        *&v40[8] = 2082;
        *&v40[10] = v9;
        *&v40[18] = 2081;
        *&v40[20] = v10;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:initUUID, path:%{public, location:escape_only}s, uuid:%{private, location:escape_only}s}", buf, 0x26u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }

    sub_1001B1DA0(*(a1 + 8), v3);
    if (!*(a1 + 128))
    {
      v11 = +[NSUUID UUID];
      sub_100006044(&v34, [(NSString *)[(NSUUID *)v11 UUIDString] UTF8String]);
      sub_10003848C(buf);
      v12 = sub_100038730(&v40[6], "INSERT INTO DatabaseIdentifier (uuid) VALUES (", 47);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v34;
      }

      else
      {
        v13 = v34.__r_.__value_.__r.__words[0];
      }

      v14 = strlen(v13);
      v15 = sub_100038730(v12, v13, v14);
      sub_100038730(v15, ");", 3);
      if ((v48 & 0x10) != 0)
      {
        v17 = v47;
        if (v47 < v44)
        {
          v47 = v44;
          v17 = v44;
        }

        v18 = __src;
      }

      else
      {
        if ((v48 & 8) == 0)
        {
          v16 = 0;
          __p[23] = 0;
          goto LABEL_39;
        }

        v18 = v41;
        v17 = v42;
      }

      v16 = v17 - v18;
      if (v17 - v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      __p[23] = v17 - v18;
      if (v16)
      {
        memmove(__p, v18, v16);
      }

LABEL_39:
      __p[v16] = 0;
      if (__p[23] >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = *__p;
      }

      v20 = sub_100038DE8(a1, v19);
      v21 = v20;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if (v21)
        {
LABEL_44:
          if (sqlite3_step(v21) == 101)
          {
            *(a1 + 128) = [(NSUUID *)v11 UUIDString];
            if (qword_1025D4850 != -1)
            {
              sub_1018E57E8();
            }

            v22 = off_1025D4858;
            if (!os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_72;
            }

            if (*(a1 + 119) < 0)
            {
              sub_100007244(v32, *(a1 + 96), *(a1 + 104));
            }

            else
            {
              *v32 = *(a1 + 96);
              v33 = *(a1 + 112);
            }

            v29 = v32;
            if (v33 < 0)
            {
              v29 = v32[0];
            }

            v30 = &v34;
            if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v30 = v34.__r_.__value_.__r.__words[0];
            }

            *__p = 68289539;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 2082;
            *&__p[20] = v29;
            v36 = 2081;
            v37 = v30;
            v26 = "{msg%{public}.0s:UUID initialized, path:%{public, location:escape_only}s, uuid:%{private, location:escape_only}s}";
            v27 = v22;
            v28 = 38;
          }

          else
          {
            if (qword_1025D4850 != -1)
            {
              sub_1018E57E8();
            }

            v24 = off_1025D4858;
            if (!os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_72;
            }

            if (*(a1 + 119) < 0)
            {
              sub_100007244(v32, *(a1 + 96), *(a1 + 104));
            }

            else
            {
              *v32 = *(a1 + 96);
              v33 = *(a1 + 112);
            }

            v25 = v32;
            if (v33 < 0)
            {
              v25 = v32[0];
            }

            *__p = 68289282;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 2082;
            *&__p[20] = v25;
            v26 = "{msg%{public}.0s:Failed to initialize DB UUID, path:%{public, location:escape_only}s}";
            v27 = v24;
            v28 = 28;
          }

          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, v26, __p, v28);
          if (SHIBYTE(v33) < 0)
          {
            operator delete(v32[0]);
          }

LABEL_72:
          sub_1001B1DA0(*(a1 + 8), v21);
LABEL_73:
          *&v40[6] = v31;
          if (v46 < 0)
          {
            operator delete(v45);
          }

          std::locale::~locale(&v40[22]);
          std::iostream::~basic_iostream();
          std::ios::~ios();
          goto LABEL_76;
        }
      }

      else if (v20)
      {
        goto LABEL_44;
      }

      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v23 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 68289026;
        *&__p[8] = 2082;
        *&__p[10] = "";
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Failed to create UUID insert statement}", __p, 0x12u);
      }

      goto LABEL_73;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v8 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v39 = 2082;
      *v40 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Failed to create UUID select statement}", buf, 0x12u);
    }
  }

LABEL_76:
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_100608184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_10026C504(&a27);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1006081E8(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  v14 = v4;
  (*(*v4 + 16))(v4);
  v15 = 256;
  sub_10000EC00(&v13, "pragma foreign_keys = ");
  if (a2)
  {
    v5 = "1";
  }

  else
  {
    v5 = "0";
  }

  sub_10000EC00(__p, v5);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(&v13, v6, v7);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v13;
  }

  else
  {
    v8 = v13.__r_.__value_.__r.__words[0];
  }

  v9 = sqlite3_exec(*(a1 + 8), v8, 0, 0, 0);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  (*(*v4 + 24))(v4);
  return v9 == 0;
}

void sub_100608328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1017EC98C(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100608370(uint64_t a1, uint64_t a2)
{
  sub_10003926C(*(a2 + 16));
  for (i = *(a2 + 32); i != a2 + 24; i = *(i + 8))
  {
    sub_100605524(a2, *(i + 16), 0);
  }

  v4 = *(a2 + 16);

  return sub_1000393C8(v4);
}

void sub_1006083DC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v51 = 0;
  v48 = 0uLL;
  v49 = 0;
  memset(&__dst, 0, sizeof(__dst));
  v4 = *a1;
  if (*a1 > 1)
  {
    if (v4 == 2)
    {
      HIBYTE(v49) = 11;
      *(&v48 + 7) = 1113875828;
      v5 = "_encryptedB";
      goto LABEL_17;
    }

    if (v4 == 3)
    {
      HIBYTE(v49) = 11;
      *(&v48 + 7) = 1130653044;
      v5 = "_encryptedC";
      goto LABEL_17;
    }
  }

  else
  {
    if (!v4)
    {
      HIBYTE(v49) = 0;
      LOBYTE(v48) = 0;
      goto LABEL_18;
    }

    if (v4 == 1)
    {
      HIBYTE(v49) = 11;
      *(&v48 + 7) = 1097098612;
      v5 = "_encryptedA";
LABEL_17:
      *&v48 = *v5;
      BYTE11(v48) = 0;
      goto LABEL_18;
    }
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v6 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
  {
    v7 = *a1;
    buf.st_dev = 68289282;
    *&buf.st_mode = 0;
    LOWORD(buf.st_ino) = 2082;
    *(&buf.st_ino + 2) = "";
    HIWORD(buf.st_uid) = 1026;
    buf.st_gid = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unknown protection type, protection:%{public}d}", &buf, 0x18u);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }
  }

  v8 = off_1025D4858;
  if (os_signpost_enabled(off_1025D4858))
  {
    v9 = *a1;
    buf.st_dev = 68289282;
    *&buf.st_mode = 0;
    LOWORD(buf.st_ino) = 2082;
    *(&buf.st_ino + 2) = "";
    HIWORD(buf.st_uid) = 1026;
    buf.st_gid = v9;
    _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unknown protection type", "{msg%{public}.0s:unknown protection type, protection:%{public}d}", &buf, 0x18u);
  }

LABEL_18:
  if (*(a1 + 8) == 1)
  {
    sub_100565860(&buf);
  }

  else
  {
    v10 = sub_1000206B4();
    sub_100021668(v10, &buf);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *&buf.st_dev;
  v51 = *&buf.st_uid;
  if (*(a1 + 4) == 7)
  {
    sub_100172FA8(2, &buf);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *&buf.st_dev;
    v51 = *&buf.st_uid;
  }

  if (v51 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = getuid();
  v13 = getgid();
  if (!sub_1004E667C(v11, v12, v13))
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v14 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v15 = __p;
      if (v51 < 0)
      {
        v15 = __p[0];
      }

      buf.st_dev = 68289282;
      *&buf.st_mode = 0;
      LOWORD(buf.st_ino) = 2082;
      *(&buf.st_ino + 2) = "";
      HIWORD(buf.st_uid) = 2082;
      *&buf.st_gid = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not create path, path:%{public, location:escape_only}s}", &buf, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v16 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v17 = __p;
      if (v51 < 0)
      {
        v17 = __p[0];
      }

      buf.st_dev = 68289282;
      *&buf.st_mode = 0;
      LOWORD(buf.st_ino) = 2082;
      *(&buf.st_ino + 2) = "";
      HIWORD(buf.st_uid) = 2082;
      *&buf.st_gid = v17;
      _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "could not create path", "{msg%{public}.0s:could not create path, path:%{public, location:escape_only}s}", &buf, 0x1Cu);
    }
  }

  v18 = *(a1 + 4);
  if (v18 > 3)
  {
    if (v18 <= 5)
    {
      if (v18 == 4)
      {
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = 7;
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = 7;
          p_dst = &__dst;
        }

        strcpy(p_dst, "gyroCal");
      }

      else
      {
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = 8;
          v19 = __dst.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = 8;
          v19 = &__dst;
        }

        strcpy(v19, "timezone");
      }

      goto LABEL_113;
    }

    if (v18 == 6)
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = 14;
        v24 = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 14;
        v24 = &__dst;
      }

      strcpy(v24, "sensorRecorder");
      goto LABEL_113;
    }

    if (v18 == 7)
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = 4;
        v21 = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 4;
        v21 = &__dst;
      }

      strcpy(v21, "cold");
      goto LABEL_113;
    }

    goto LABEL_66;
  }

  if (v18 <= 1)
  {
    if (!v18)
    {
      sub_100006BE0(&__dst, "file::memory:?cache=shared", 0x1AuLL);
      goto LABEL_113;
    }

    if (v18 == 1)
    {
      if (*(a1 + 8) == 1)
      {
        *(&__dst.__r_.__value_.__s + 23) = 7;
        strcpy(&__dst, "factory");
        sub_1003CCADC(__p, &__dst.__r_.__value_.__l.__data_, &buf);
        sub_10000EC00(&v43, ".db");
        if ((v45 & 0x80u) == 0)
        {
          v30 = &v43;
        }

        else
        {
          v30 = v43;
        }

        if ((v45 & 0x80u) == 0)
        {
          v31 = v45;
        }

        else
        {
          v31 = v44;
        }

        v32 = std::string::append(&buf, v30, v31);
        v33 = *&v32->__r_.__value_.__l.__data_;
        v46.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v46.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        if (v45 < 0)
        {
          operator delete(v43);
        }

        if (SHIBYTE(buf.st_gid) < 0)
        {
          operator delete(*&buf.st_dev);
        }

        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v46;
        }

        else
        {
          v34 = v46.__r_.__value_.__r.__words[0];
        }

        if (lstat(v34, &buf))
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            __dst.__r_.__value_.__l.__size_ = 15;
            v35 = __dst.__r_.__value_.__r.__words[0];
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = 15;
            v35 = &__dst;
          }

          strcpy(v35, "factory_minimum");
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 5;
        strcpy(&__dst, "cache");
      }

      if ((*(a1 + 8) & 1) == 0 && !*a1)
      {
        if (SHIBYTE(v49) < 0)
        {
          *(&v48 + 1) = 12;
          v23 = v48;
        }

        else
        {
          HIBYTE(v49) = 12;
          v23 = &v48;
        }

        LODWORD(v23->__r_.__value_.__r.__words[1]) = 1684370544;
        v29 = "_unencrypted";
LABEL_112:
        v23->__r_.__value_.__r.__words[0] = *v29;
        v23->__r_.__value_.__s.__data_[12] = 0;
        goto LABEL_113;
      }

      goto LABEL_113;
    }

LABEL_66:
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v25 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v26 = *(a1 + 4);
      buf.st_dev = 68289282;
      *&buf.st_mode = 0;
      LOWORD(buf.st_ino) = 2082;
      *(&buf.st_ino + 2) = "";
      HIWORD(buf.st_uid) = 1026;
      buf.st_gid = v26;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unknown persistence type, persistence:%{public}d}", &buf, 0x18u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v27 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v28 = *(a1 + 4);
      buf.st_dev = 68289282;
      *&buf.st_mode = 0;
      LOWORD(buf.st_ino) = 2082;
      *(&buf.st_ino + 2) = "";
      HIWORD(buf.st_uid) = 1026;
      buf.st_gid = v28;
      _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unknown persistence type", "{msg%{public}.0s:unknown persistence type, persistence:%{public}d}", &buf, 0x18u);
    }

    goto LABEL_113;
  }

  if (v18 == 2)
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = 12;
      v23 = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = 12;
      v23 = &__dst;
    }

    LODWORD(v23->__r_.__value_.__r.__words[1]) = 1684370529;
    v29 = "consolidated";
    goto LABEL_112;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = 9;
    v20 = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    v20 = &__dst;
  }

  strcpy(v20, "lockCache");
LABEL_113:
  if (*(a1 + 4))
  {
    sub_1003CCADC(__p, &__dst.__r_.__value_.__l.__data_, &v46);
    if (v49 >= 0)
    {
      v36 = &v48;
    }

    else
    {
      v36 = v48;
    }

    if (v49 >= 0)
    {
      v37 = HIBYTE(v49);
    }

    else
    {
      v37 = *(&v48 + 1);
    }

    v38 = std::string::append(&v46, v36, v37);
    v39 = *&v38->__r_.__value_.__l.__data_;
    *&buf.st_uid = *(&v38->__r_.__value_.__l + 2);
    *&buf.st_dev = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    sub_10000EC00(&v43, ".db");
    if ((v45 & 0x80u) == 0)
    {
      v40 = &v43;
    }

    else
    {
      v40 = v43;
    }

    if ((v45 & 0x80u) == 0)
    {
      v41 = v45;
    }

    else
    {
      v41 = v44;
    }

    v42 = std::string::append(&buf, v40, v41);
    *a2 = *v42;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    if (v45 < 0)
    {
      operator delete(v43);
    }

    if (SHIBYTE(buf.st_gid) < 0)
    {
      operator delete(*&buf.st_dev);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __dst;
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100608EC8(uint64_t a1, char *a2, const char **a3, const char **a4, int a5)
{
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v10 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 68289539;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = a2;
    v17 = 1026;
    v18 = a5;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, createTableIfNecessary, table:%{private, location:escape_only}s, specificToSerialNumber:%{public}hhd}", v12, 0x22u);
  }

  return sub_10060D77C(a1, a2, a3, a4, a5);
}

char *sub_100608FE4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[119] < 0)
  {
    return sub_100007244(a2, *(result + 12), *(result + 13));
  }

  *a2 = *(result + 6);
  *(a2 + 16) = *(result + 14);
  return result;
}

BOOL sub_10060900C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v23 = v4;
  (*(*v4 + 16))(v4);
  v24 = 256;
  v5 = *(a2 + 16);
  v21 = v5;
  (*(*v5 + 16))(v5);
  v22 = 256;
  if (*(a2 + 119) < 0)
  {
    sub_100007244(__dst, *(a2 + 96), *(a2 + 104));
  }

  else
  {
    *__dst = *(a2 + 96);
    v20 = *(a2 + 112);
  }

  std::operator+<char>();
  v6 = std::string::append(&v25, "' AS OTHER;", 0xBuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v18 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = sub_100038DE8(a1, v8);
  v10 = v9;
  if (v9)
  {
    v11 = sqlite3_step(v9);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v12 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      v25.__r_.__value_.__r.__words[0] = 68289282;
      LOWORD(v25.__r_.__value_.__r.__words[1]) = 2082;
      *(&v25.__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(v25.__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(v25.__r_.__value_.__r.__words[2]) = v11;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:attachToDatabaseAsOther, ret:%{public}d}", &v25, 0x18u);
    }

    sub_1001B1DA0(*(a1 + 8), v10);
    v13 = v11 == 101;
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v14 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
    {
      v25.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(v25.__r_.__value_.__r.__words[1]) = 2082;
      *(&v25.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create ATTACH statement}", &v25, 0x12u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v15 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v25.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(v25.__r_.__value_.__r.__words[1]) = 2082;
      *(&v25.__r_.__value_.__r.__words[1] + 2) = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create ATTACH statement", "{msg%{public}.0s:Failed to create ATTACH statement}", &v25, 0x12u);
    }

    v13 = 0;
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }

  (*(*v5 + 24))(v5);
  (*(*v4 + 24))(v4);
  return v13;
}

BOOL sub_10060941C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v14 = v2;
  (*(*v2 + 16))(v2);
  v15 = 256;
  sub_10000EC00(__p, "DETACH DATABASE 'OTHER';");
  if (v13 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = sub_100038DE8(a1, v3);
  v5 = v4;
  if (v4)
  {
    v6 = sqlite3_step(v4);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 1026;
      v21 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:detachFromOther, ret:%{public}d}", buf, 0x18u);
    }

    sub_1001B1DA0(*(a1 + 8), v5);
    v8 = v6 == 101;
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v9 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create DETACH statement}", buf, 0x12u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v10 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create DETACH statement", "{msg%{public}.0s:Failed to create DETACH statement}", buf, 0x12u);
    }

    v8 = 0;
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v2 + 24))(v2);
  return v8;
}

uint64_t sub_100609714(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, char *a5, double a6)
{
  v116 = *(a1 + 16);
  (*(*v116 + 16))(v116);
  v118 = 256;
  v113 = *(a2 + 16);
  (*(*v113 + 16))(v113);
  v115 = 256;
  v111 = a1;
  v112 = a2;
  v10 = sub_10060900C(a1, a2);
  v110 = v10;
  if (!v10)
  {
    v20 = 1;
    goto LABEL_151;
  }

  v11 = a4[1];
  v12 = *a3;
  if (*a4 == v11)
  {
    v13 = a3[1];
  }

  else
  {
    v13 = a3[1];
    if (v11 - *a4 != v13 - v12)
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57D4();
      }

      v14 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
        v16 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
        *buf = 134349312;
        *&buf[4] = v15;
        *&buf[12] = 2050;
        *&buf[14] = v16;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Invalid input parameters, number of columnList (%{public}zu) and tableNames (%{public}zu) differ.", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E5810(buf);
        v17 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
        v18 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
        LODWORD(__p[0]) = 134349312;
        *(__p + 4) = v17;
        WORD2(__p[1]) = 2050;
        *(&__p[1] + 6) = v18;
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLSqliteDatabase::copyTablesFromOtherDatabase(CLSqliteDatabase &, const std::vector<std::string> &, const std::vector<std::string> &, const char *, CFAbsoluteTime)", "%s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      goto LABEL_148;
    }
  }

  if (v12 == v13)
  {
LABEL_148:
    v20 = 1;
    goto LABEL_150;
  }

  v99 = v13;
  v100 = a2;
  v21 = 0;
  v22 = 0;
  LOBYTE(v20) = 1;
  do
  {
    v23 = (v12 + v21);
    v24 = (v12 + v21);
    if (*(v12 + v21 + 23) < 0)
    {
      v24 = *v23;
    }

    v25 = sub_100610D0C(a1, v24);
    v26 = (v12 + v21);
    if (v23[23] < 0)
    {
      v26 = *v23;
    }

    v27 = sub_100610D0C(v100, v26);
    if (v25 && v27)
    {
      memset(__p, 0, 24);
      if (a5)
      {
        if (*a4 == a4[1])
        {
          std::operator+<char>();
          v74 = std::string::append(&v107, " SELECT * FROM OTHER.", 0x15uLL);
          v75 = *&v74->__r_.__value_.__l.__data_;
          v121.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
          *&v121.__r_.__value_.__l.__data_ = v75;
          v74->__r_.__value_.__l.__size_ = 0;
          v74->__r_.__value_.__r.__words[2] = 0;
          v74->__r_.__value_.__r.__words[0] = 0;
          v76 = v23[23];
          if (v76 >= 0)
          {
            v77 = (v12 + v21);
          }

          else
          {
            v77 = *(v12 + v21);
          }

          if (v76 >= 0)
          {
            v78 = *(v23 + 23);
          }

          else
          {
            v78 = *(v12 + v21 + 8);
          }

          v79 = std::string::append(&v121, v77, v78);
          v80 = *&v79->__r_.__value_.__l.__data_;
          v108.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
          *&v108.__r_.__value_.__l.__data_ = v80;
          v79->__r_.__value_.__l.__size_ = 0;
          v79->__r_.__value_.__r.__words[2] = 0;
          v79->__r_.__value_.__r.__words[0] = 0;
          v81 = std::string::append(&v108, " WHERE ", 7uLL);
          v82 = *&v81->__r_.__value_.__l.__data_;
          v109.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
          *&v109.__r_.__value_.__l.__data_ = v82;
          v81->__r_.__value_.__l.__size_ = 0;
          v81->__r_.__value_.__r.__words[2] = 0;
          v81->__r_.__value_.__r.__words[0] = 0;
          sub_10000EC00(&v106, a5);
          if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = &v106;
          }

          else
          {
            v83 = v106.__r_.__value_.__r.__words[0];
          }

          if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v106.__r_.__value_.__l.__size_;
          }

          v85 = std::string::append(&v109, v83, size);
          v86 = *&v85->__r_.__value_.__l.__data_;
          *&buf[16] = *(&v85->__r_.__value_.__l + 2);
          *buf = v86;
          v85->__r_.__value_.__l.__size_ = 0;
          v85->__r_.__value_.__r.__words[2] = 0;
          v85->__r_.__value_.__r.__words[0] = 0;
          v87 = std::string::append(buf, " > ?;", 5uLL);
          v88 = v87->__r_.__value_.__r.__words[0];
          v119.__r_.__value_.__r.__words[0] = v87->__r_.__value_.__l.__size_;
          *(v119.__r_.__value_.__r.__words + 7) = *(&v87->__r_.__value_.__r.__words[1] + 7);
          v89 = HIBYTE(v87->__r_.__value_.__r.__words[2]);
          v87->__r_.__value_.__l.__size_ = 0;
          v87->__r_.__value_.__r.__words[2] = 0;
          v87->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          __p[0] = v88;
          __p[1] = v119.__r_.__value_.__l.__data_;
          *(&__p[1] + 7) = *(v119.__r_.__value_.__r.__words + 7);
          HIBYTE(__p[2]) = v89;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v106.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v109.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v121.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_123;
          }

          v60 = v107.__r_.__value_.__r.__words[0];
        }

        else
        {
          std::operator+<char>();
          v28 = std::string::append(&v104, " (", 2uLL);
          v29 = *&v28->__r_.__value_.__l.__data_;
          v105.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v105.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v22)
          {
            sub_10046F324();
          }

          v30 = *a4 + v21;
          v31 = *(v30 + 23);
          if (v31 >= 0)
          {
            v32 = (*a4 + v21);
          }

          else
          {
            v32 = *v30;
          }

          if (v31 >= 0)
          {
            v33 = *(v30 + 23);
          }

          else
          {
            v33 = *(v30 + 8);
          }

          v34 = std::string::append(&v105, v32, v33);
          v35 = *&v34->__r_.__value_.__l.__data_;
          v119.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
          *&v119.__r_.__value_.__l.__data_ = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          v36 = std::string::append(&v119, ") SELECT ", 9uLL);
          v37 = *&v36->__r_.__value_.__l.__data_;
          v106.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
          *&v106.__r_.__value_.__l.__data_ = v37;
          v36->__r_.__value_.__l.__size_ = 0;
          v36->__r_.__value_.__r.__words[2] = 0;
          v36->__r_.__value_.__r.__words[0] = 0;
          if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v22)
          {
            sub_10046F324();
          }

          v38 = *a4 + v21;
          v39 = *(v38 + 23);
          if (v39 >= 0)
          {
            v40 = (*a4 + v21);
          }

          else
          {
            v40 = *v38;
          }

          if (v39 >= 0)
          {
            v41 = *(v38 + 23);
          }

          else
          {
            v41 = *(v38 + 8);
          }

          v42 = std::string::append(&v106, v40, v41);
          v43 = *&v42->__r_.__value_.__l.__data_;
          v107.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
          *&v107.__r_.__value_.__l.__data_ = v43;
          v42->__r_.__value_.__l.__size_ = 0;
          v42->__r_.__value_.__r.__words[2] = 0;
          v42->__r_.__value_.__r.__words[0] = 0;
          v44 = std::string::append(&v107, " FROM OTHER.", 0xCuLL);
          v45 = *&v44->__r_.__value_.__l.__data_;
          v121.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v121.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = v23[23];
          if (v46 >= 0)
          {
            v47 = (v12 + v21);
          }

          else
          {
            v47 = *(v12 + v21);
          }

          if (v46 >= 0)
          {
            v48 = *(v23 + 23);
          }

          else
          {
            v48 = *(v12 + v21 + 8);
          }

          v49 = std::string::append(&v121, v47, v48);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v108.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
          *&v108.__r_.__value_.__l.__data_ = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          v51 = std::string::append(&v108, " WHERE ", 7uLL);
          v52 = *&v51->__r_.__value_.__l.__data_;
          v109.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
          *&v109.__r_.__value_.__l.__data_ = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          sub_10000EC00(v102, a5);
          if ((v103 & 0x80u) == 0)
          {
            v53 = v102;
          }

          else
          {
            v53 = v102[0];
          }

          if ((v103 & 0x80u) == 0)
          {
            v54 = v103;
          }

          else
          {
            v54 = v102[1];
          }

          v55 = std::string::append(&v109, v53, v54);
          v56 = *&v55->__r_.__value_.__l.__data_;
          *&buf[16] = *(&v55->__r_.__value_.__l + 2);
          *buf = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          v57 = std::string::append(buf, " > ?;", 5uLL);
          v58 = v57->__r_.__value_.__r.__words[0];
          v120[0] = v57->__r_.__value_.__l.__size_;
          *(v120 + 7) = *(&v57->__r_.__value_.__r.__words[1] + 7);
          v59 = HIBYTE(v57->__r_.__value_.__r.__words[2]);
          v57->__r_.__value_.__l.__size_ = 0;
          v57->__r_.__value_.__r.__words[2] = 0;
          v57->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          __p[0] = v58;
          __p[1] = v120[0];
          *(&__p[1] + 7) = *(v120 + 7);
          HIBYTE(__p[2]) = v59;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v103 < 0)
          {
            operator delete(v102[0]);
          }

          if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v109.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v121.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v106.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v119.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v105.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_123;
          }

          v60 = v104.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        std::operator+<char>();
        v64 = std::string::append(&v108, " SELECT * FROM OTHER.", 0x15uLL);
        v65 = *&v64->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        v66 = v23[23];
        if (v66 >= 0)
        {
          v67 = (v12 + v21);
        }

        else
        {
          v67 = *(v12 + v21);
        }

        if (v66 >= 0)
        {
          v68 = *(v23 + 23);
        }

        else
        {
          v68 = *(v12 + v21 + 8);
        }

        v69 = std::string::append(&v109, v67, v68);
        v70 = *&v69->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v69->__r_.__value_.__l + 2);
        *buf = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        v71 = std::string::append(buf, ";", 1uLL);
        v72 = v71->__r_.__value_.__r.__words[0];
        v121.__r_.__value_.__r.__words[0] = v71->__r_.__value_.__l.__size_;
        *(v121.__r_.__value_.__r.__words + 7) = *(&v71->__r_.__value_.__r.__words[1] + 7);
        v73 = HIBYTE(v71->__r_.__value_.__r.__words[2]);
        v71->__r_.__value_.__l.__size_ = 0;
        v71->__r_.__value_.__r.__words[2] = 0;
        v71->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = v72;
        __p[1] = v121.__r_.__value_.__l.__data_;
        *(&__p[1] + 7) = *(v121.__r_.__value_.__r.__words + 7);
        HIBYTE(__p[2]) = v73;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v109.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_123;
        }

        v60 = v108.__r_.__value_.__r.__words[0];
      }

      operator delete(v60);
LABEL_123:
      if (SHIBYTE(__p[2]) >= 0)
      {
        v90 = __p;
      }

      else
      {
        v90 = __p[0];
      }

      v91 = sub_100038DE8(a1, v90);
      v92 = v91;
      if (v91)
      {
        if (a5)
        {
          sub_1001A3BD4(v91, 1, a6);
        }

        v93 = sqlite3_step(v92);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }

        v94 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
        {
          if (v23[23] < 0)
          {
            v23 = *v23;
          }

          *buf = 68289538;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = v23;
          v124 = 1026;
          v125 = v93;
          _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:copyTablesFromOtherDatabase, insert, tableName:%{public, location:escape_only}s, ret:%{public}d}", buf, 0x22u);
        }

        sub_1001B1DA0(*(a1 + 8), v92);
        v20 = v20 & (v93 == 101);
      }

      else
      {
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }

        v95 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create INSERT statement}", buf, 0x12u);
          if (qword_1025D4850 != -1)
          {
            sub_1018E57E8();
          }
        }

        v96 = off_1025D4858;
        if (os_signpost_enabled(off_1025D4858))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_signpost_emit_with_name_impl(dword_100000000, v96, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create INSERT statement", "{msg%{public}.0s:Failed to create INSERT statement}", buf, 0x12u);
        }

        v20 = 0;
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_146;
    }

    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v61 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
    {
      v62 = (v12 + v21);
      if (v23[23] < 0)
      {
        v62 = *v23;
      }

      *buf = 68289794;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v62;
      v124 = 1026;
      v125 = v25;
      v126 = 1026;
      v127 = v27;
      _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:table is missing, TableName:%{public, location:escape_only}s, ExistsInThisDB:%{public}hhd, ExistsInOtherDB:%{public}hhd}", buf, 0x28u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v63 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      if (v23[23] < 0)
      {
        v23 = *v23;
      }

      *buf = 68289794;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v23;
      v124 = 1026;
      v125 = v25;
      v126 = 1026;
      v127 = v27;
      _os_signpost_emit_with_name_impl(dword_100000000, v63, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "table is missing", "{msg%{public}.0s:table is missing, TableName:%{public, location:escape_only}s, ExistsInThisDB:%{public}hhd, ExistsInOtherDB:%{public}hhd}", buf, 0x28u);
      v20 = 0;
    }

    else
    {
      v20 = 0;
    }

LABEL_146:
    ++v22;
    v21 += 24;
  }

  while (v12 + v21 != v99);
  if (v110)
  {
LABEL_150:
    sub_10060941C(v111);
  }

LABEL_151:
  if (HIBYTE(v115) == 1)
  {
    if (v115)
    {
      pthread_mutex_unlock(v114);
    }

    else
    {
      (*(*v113 + 24))(v113);
    }
  }

  if (HIBYTE(v118) == 1)
  {
    if (v118)
    {
      pthread_mutex_unlock(v117);
    }

    else
    {
      (*(*v116 + 24))(v116);
    }
  }

  return v20;
}

void sub_10060A488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, char a52)
{
  sub_1003903E4(&a46);
  sub_1017EC98C(&a49);
  sub_1017EC98C(&a52);
  _Unwind_Resume(a1);
}

void sub_10060A6E4(uint64_t a1, uint64_t a2, int a3, sqlite3_stmt *a4)
{
  v15 = a3;
  if (a3 <= 0x1Au && ((1 << a3) & 0x4004C00) != 0)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v6 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v7 = *__error();
      v8 = a4 ? sqlite3_sql(a4) : 0;
      *buf = 68290307;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = a2;
      v22 = 1026;
      v23 = v7;
      v24 = 1040;
      v25 = 4;
      v26 = 2098;
      v27 = &v15;
      v28 = 2081;
      v29 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:displaySqlResult, function:%{public, location:escape_only}s, errno:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v12 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v13 = *__error();
      if (a4)
      {
        v14 = sqlite3_sql(a4);
      }

      else
      {
        v14 = 0;
      }

      *buf = 68290307;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = a2;
      v22 = 1026;
      v23 = v13;
      v24 = 1040;
      v25 = 4;
      v26 = 2098;
      v27 = &v15;
      v28 = 2081;
      v29 = v14;
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "displaySqlResult", "{msg%{public}.0s:displaySqlResult, function:%{public, location:escape_only}s, errno:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v9 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *__error();
      if (a4)
      {
        v11 = sqlite3_sql(a4);
      }

      else
      {
        v11 = 0;
      }

      *buf = 68290307;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = a2;
      v22 = 1026;
      v23 = v10;
      v24 = 1040;
      v25 = 4;
      v26 = 2098;
      v27 = &v15;
      v28 = 2081;
      v29 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning displaySqlResult, function:%{public, location:escape_only}s, errno:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
    }
  }
}

BOOL sub_10060A9FC(uint64_t a1, char *a2)
{
  sub_10060AAF0(a1, "table", a2, v13);
  v2 = v14;
  v4 = v13[0];
  v3 = v13[1];
  if (v14 >= 0)
  {
    v5 = v13;
  }

  else
  {
    v5 = v13[0];
  }

  if (v14 >= 0)
  {
    v3 = v14;
  }

  v6 = v5 + v3;
  if (v3 >= 13)
  {
    v7 = v5;
    do
    {
      v8 = memchr(v7, 65, v3 - 12);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      if (*v8 == 0x52434E494F545541 && *(v8 + 5) == 0x544E454D4552434ELL)
      {
        goto LABEL_15;
      }

      v7 = v8 + 1;
      v3 = v6 - (v9 + 1);
    }

    while (v3 > 12);
  }

  v9 = v6;
LABEL_15:
  if (v2 < 0)
  {
    operator delete(v4);
  }

  return v9 != v6 && v9 - v5 != -1;
}

uint64_t sub_10060AAF0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v35 = *(a1 + 16);
  (*(*v35 + 16))(v35);
  v37 = 256;
  sub_10003848C(v26);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = sub_100038730(&v27, "SELECT sql FROM ", 16);
  v9 = sub_100038730(v8, "sqlite_master", 13);
  v10 = sub_100038730(v9, " WHERE ", 7);
  v11 = sub_100038730(v10, "Type", 4);
  v12 = sub_100038730(v11, "=? AND ", 7);
  v13 = sub_100038730(v12, "Name", 4);
  sub_100038730(v13, "=?", 2);
  if ((v34 & 0x10) != 0)
  {
    v15 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v15 = v30;
    }

    locale = v29[4].__locale_;
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v14 = 0;
      HIBYTE(v25) = 0;
      goto LABEL_14;
    }

    locale = v29[1].__locale_;
    v15 = v29[3].__locale_;
  }

  v14 = v15 - locale;
  if ((v15 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v25) = v15 - locale;
  if (v14)
  {
    memmove(&__dst, locale, v14);
  }

LABEL_14:
  *(&__dst + v14) = 0;
  if (v25 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v18 = sub_100038DE8(a1, p_dst);
  v19 = v18;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst);
    if (!v19)
    {
      goto LABEL_31;
    }
  }

  else if (!v18)
  {
    goto LABEL_31;
  }

  if (sub_10003DDD8(v19, 1, a2) && sub_10003DDD8(v19, 2, a3) && sqlite3_step(v19) == 100)
  {
    v20 = sqlite3_column_text(v19, 0);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = "";
    }

    sub_10000EC00(&__dst, v21);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = __dst;
    *(a4 + 16) = v25;
  }

  sub_1001B1DA0(*(a1 + 8), v19);
LABEL_31:
  v27 = v22;
  if (v32 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v29);
  std::iostream::~basic_iostream();
  result = std::ios::~ios();
  if (HIBYTE(v37) == 1)
  {
    if (v37)
    {
      return pthread_mutex_unlock(v36);
    }

    else
    {
      return (*(*v35 + 24))(v35);
    }
  }

  return result;
}

void sub_10060AEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  sub_10026C504(&a16);
  sub_1017EC98C(v17 - 104);
  _Unwind_Resume(a1);
}

void sub_10060AF58(sqlite3 *a1, NSObject *a2, int a3, int a4)
{
  v17 = a4;
  if (a4 == 26 || a4 == 11)
  {
    if (!a3)
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57D4();
      }

      v11 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
      {
        v12 = SHIBYTE(a2[2].isa) >= 0 ? a2 : a2->isa;
        *buf = 68289794;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2082;
        v23 = v12;
        v24 = 1040;
        LODWORD(v25[0]) = 4;
        WORD2(v25[0]) = 2098;
        *(v25 + 6) = &v17;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:database error; deleting and exiting, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", buf, 0x2Cu);
        if (qword_1025D4850 != -1)
        {
          goto LABEL_44;
        }
      }

      while (1)
      {
        v13 = off_1025D4858;
        if (os_signpost_enabled(off_1025D4858))
        {
          if (SHIBYTE(a2[2].isa) >= 0)
          {
            isa = a2;
          }

          else
          {
            isa = a2->isa;
          }

          *buf = 68289794;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2082;
          v23 = isa;
          v24 = 1040;
          LODWORD(v25[0]) = 4;
          WORD2(v25[0]) = 2098;
          *(v25 + 6) = &v17;
          _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "database error; deleting and exiting", "{msg%{public}.0s:database error; deleting and exiting, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", buf, 0x2Cu);
        }

        sub_10060B458(a1, a2);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }

        v15 = off_1025D4858;
        a1 = "0";
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2082;
          v23 = "assert";
          v24 = 2081;
          v25[0] = "0";
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to resolve corrupted database, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D4850 != -1)
          {
            sub_1018E57E8();
          }
        }

        v16 = off_1025D4858;
        if (os_signpost_enabled(off_1025D4858))
        {
          *buf = 68289539;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2082;
          v23 = "assert";
          v24 = 2081;
          v25[0] = "0";
          _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to resolve corrupted database", "{msg%{public}.0s:Killing locationd to resolve corrupted database, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D4850 != -1)
          {
            sub_1018E57E8();
          }
        }

        a2 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2082;
          v23 = "assert";
          v24 = 2081;
          v25[0] = "0";
          _os_log_impl(dword_100000000, a2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to resolve corrupted database, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
LABEL_44:
        sub_1018E57E8();
      }
    }

    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v6 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v7 = SHIBYTE(a2[2].isa) >= 0 ? a2 : a2->isa;
      *buf = 68289794;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = v7;
      v24 = 1040;
      LODWORD(v25[0]) = 4;
      WORD2(v25[0]) = 2098;
      *(v25 + 6) = &v17;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:handleSqlError on read-only db, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", buf, 0x2Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      if (SHIBYTE(a2[2].isa) >= 0)
      {
        v9.isa = a2;
      }

      else
      {
        v9.isa = a2->isa;
      }

      *buf = 68289794;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = v9.isa;
      v24 = 1040;
      LODWORD(v25[0]) = 4;
      WORD2(v25[0]) = 2098;
      *(v25 + 6) = &v17;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleSqlError on read-only db", "{msg%{public}.0s:handleSqlError on read-only db, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", buf, 0x2Cu);
    }
  }
}

void sub_10060B458(sqlite3 *a1, uint64_t a2)
{
  if (&_CPSqliteDatabaseDelete && a1)
  {
    if (CPSqliteDatabaseDelete())
    {
      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_13;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v4 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289026;
    v74 = 0;
    v75 = 2082;
    v76 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not delete the database with CPSqliteDatabaseDelete()}", buf, 0x12u);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }
  }

  v5 = off_1025D4858;
  if (!os_signpost_enabled(off_1025D4858))
  {
    goto LABEL_15;
  }

  *buf = 68289026;
  v74 = 0;
  v75 = 2082;
  v76 = "";
  _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not delete the database with CPSqliteDatabaseDelete()", "{msg%{public}.0s:Could not delete the database with CPSqliteDatabaseDelete()}", buf, 0x12u);
LABEL_13:
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

LABEL_15:
  v6 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
  {
    v7 = *(a2 + 23) >= 0 ? a2 : *a2;
    *buf = 68289282;
    v74 = 0;
    v75 = 2082;
    v76 = "";
    v77 = 2082;
    v78 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Falling back to file deletion, path:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }
  }

  v8 = off_1025D4858;
  if (os_signpost_enabled(off_1025D4858))
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    *buf = 68289282;
    v74 = 0;
    v75 = 2082;
    v76 = "";
    v77 = 2082;
    v78 = v9;
    _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Falling back to file deletion", "{msg%{public}.0s:Falling back to file deletion, path:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sqlite3_close(a1);
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (remove(v11, v10))
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v12 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v13 = *(a2 + 23) >= 0 ? a2 : *a2;
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 68289794;
      v74 = 0;
      v75 = 2082;
      v76 = "";
      v77 = 2082;
      v78 = v13;
      v79 = 1026;
      v80 = v14;
      v81 = 2082;
      v82 = v16;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not remove file, path:%{public, location:escape_only}s, errno:%{public}d, error:%{public, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v17 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v19 = *__error();
      v20 = __error();
      v21 = strerror(*v20);
      *buf = 68289794;
      v74 = 0;
      v75 = 2082;
      v76 = "";
      v77 = 2082;
      v78 = v18;
      v79 = 1026;
      v80 = v19;
      v81 = 2082;
      v82 = v21;
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "could not remove file", "{msg%{public}.0s:could not remove file, path:%{public, location:escape_only}s, errno:%{public}d, error:%{public, location:escape_only}s}", buf, 0x2Cu);
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  v23 = v71;
  sub_100070148(v71, v22 + 8);
  if (v72 < 0)
  {
    v23 = v71[0];
  }

  if (v22)
  {
    if (*(a2 + 23) >= 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = *a2;
    }

    memmove(v23, v25, v22);
  }

  strcpy(v23 + v22, "-journal");
  if (v72 >= 0)
  {
    v26 = v71;
  }

  else
  {
    v26 = v71[0];
  }

  if (remove(v26, v24))
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v27 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v28 = v72 >= 0 ? v71 : v71[0];
      v29 = *__error();
      v30 = __error();
      v31 = strerror(*v30);
      *buf = 68289794;
      v74 = 0;
      v75 = 2082;
      v76 = "";
      v77 = 2082;
      v78 = v28;
      v79 = 1026;
      v80 = v29;
      v81 = 2082;
      v82 = v31;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not remove file, path:%{public, location:escape_only}s, errno:%{public}d, error:%{public, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v32 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      if (v72 >= 0)
      {
        v33 = v71;
      }

      else
      {
        v33 = v71[0];
      }

      v34 = *__error();
      v35 = __error();
      v36 = strerror(*v35);
      *buf = 68289794;
      v74 = 0;
      v75 = 2082;
      v76 = "";
      v77 = 2082;
      v78 = v33;
      v79 = 1026;
      v80 = v34;
      v81 = 2082;
      v82 = v36;
      _os_signpost_emit_with_name_impl(dword_100000000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "could not remove file", "{msg%{public}.0s:could not remove file, path:%{public, location:escape_only}s, errno:%{public}d, error:%{public, location:escape_only}s}", buf, 0x2Cu);
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v37 = *(a2 + 23);
  }

  else
  {
    v37 = *(a2 + 8);
  }

  v38 = v69;
  sub_100070148(v69, v37 + 4);
  if (v70 < 0)
  {
    v38 = v69[0];
  }

  if (v37)
  {
    if (*(a2 + 23) >= 0)
    {
      v40 = a2;
    }

    else
    {
      v40 = *a2;
    }

    memmove(v38, v40, v37);
  }

  strcpy(v38 + v37, "-wal");
  if (v70 >= 0)
  {
    v41 = v69;
  }

  else
  {
    v41 = v69[0];
  }

  if (remove(v41, v39))
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v42 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v43 = v70 >= 0 ? v69 : v69[0];
      v44 = *__error();
      v45 = __error();
      v46 = strerror(*v45);
      *buf = 68289794;
      v74 = 0;
      v75 = 2082;
      v76 = "";
      v77 = 2082;
      v78 = v43;
      v79 = 1026;
      v80 = v44;
      v81 = 2082;
      v82 = v46;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not remove file, path:%{public, location:escape_only}s, errno:%{public}d, error:%{public, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v47 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      if (v70 >= 0)
      {
        v48 = v69;
      }

      else
      {
        v48 = v69[0];
      }

      v49 = *__error();
      v50 = __error();
      v51 = strerror(*v50);
      *buf = 68289794;
      v74 = 0;
      v75 = 2082;
      v76 = "";
      v77 = 2082;
      v78 = v48;
      v79 = 1026;
      v80 = v49;
      v81 = 2082;
      v82 = v51;
      _os_signpost_emit_with_name_impl(dword_100000000, v47, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "could not remove file", "{msg%{public}.0s:could not remove file, path:%{public, location:escape_only}s, errno:%{public}d, error:%{public, location:escape_only}s}", buf, 0x2Cu);
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v52 = *(a2 + 23);
  }

  else
  {
    v52 = *(a2 + 8);
  }

  v53 = __p;
  sub_100070148(__p, v52 + 4);
  if (v68 < 0)
  {
    v53 = __p[0];
  }

  if (v52)
  {
    if (*(a2 + 23) >= 0)
    {
      v55 = a2;
    }

    else
    {
      v55 = *a2;
    }

    memmove(v53, v55, v52);
  }

  strcpy(v53 + v52, "-shm");
  if (v68 >= 0)
  {
    v56 = __p;
  }

  else
  {
    v56 = __p[0];
  }

  if (remove(v56, v54))
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v57 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v58 = v68 >= 0 ? __p : __p[0];
      v59 = *__error();
      v60 = __error();
      v61 = strerror(*v60);
      *buf = 68289794;
      v74 = 0;
      v75 = 2082;
      v76 = "";
      v77 = 2082;
      v78 = v58;
      v79 = 1026;
      v80 = v59;
      v81 = 2082;
      v82 = v61;
      _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not remove file, path:%{public, location:escape_only}s, errno:%{public}d, error:%{public, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v62 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      if (v68 >= 0)
      {
        v63 = __p;
      }

      else
      {
        v63 = __p[0];
      }

      v64 = *__error();
      v65 = __error();
      v66 = strerror(*v65);
      *buf = 68289794;
      v74 = 0;
      v75 = 2082;
      v76 = "";
      v77 = 2082;
      v78 = v63;
      v79 = 1026;
      v80 = v64;
      v81 = 2082;
      v82 = v66;
      _os_signpost_emit_with_name_impl(dword_100000000, v62, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "could not remove file", "{msg%{public}.0s:could not remove file, path:%{public, location:escape_only}s, errno:%{public}d, error:%{public, location:escape_only}s}", buf, 0x2Cu);
    }
  }

  if (v68 < 0)
  {
    operator delete(__p[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }
}

void sub_10060BEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

sqlite3 *sub_10060BF10(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = sqlite3_extended_errcode(result);
    if (result)
    {
      if (result > 525)
      {
        if (result > 2322)
        {
          if (result > 5129)
          {
            if (result > 6665)
            {
              if (result > 7433)
              {
                switch(result)
                {
                  case 0x1D0A:
                    sub_1006005F0();
                  case 0x1E0A:
                    sub_100600814();
                  case 0x1F0A:
                    sub_100600A38();
                }
              }

              else
              {
                switch(result)
                {
                  case 0x1A0A:
                    sub_1005FFF84();
                  case 0x1B0A:
                    sub_1006001A8();
                  case 0x1C0A:
                    sub_1006003CC();
                }
              }
            }

            else if (result > 5897)
            {
              switch(result)
              {
                case 0x170A:
                  sub_1005FF918();
                case 0x180A:
                  sub_1005FFB3C();
                case 0x190A:
                  sub_1005FFD60();
              }
            }

            else
            {
              switch(result)
              {
                case 0x140A:
                  sub_1005FF2AC();
                case 0x150A:
                  sub_1005FF4D0();
                case 0x160A:
                  sub_1005FF6F4();
              }
            }
          }

          else if (result > 3593)
          {
            if (result > 4361)
            {
              switch(result)
              {
                case 0x110A:
                  sub_1005FEC40();
                case 0x120A:
                  sub_1005FEE64();
                case 0x130A:
                  sub_1005FF088();
              }
            }

            else
            {
              switch(result)
              {
                case 0xE0A:
                  sub_1005FE5D4();
                case 0xF0A:
                  sub_1005FE7F8();
                case 0x100A:
                  sub_1005FEA1C();
              }
            }
          }

          else if (result > 2825)
          {
            switch(result)
            {
              case 0xB0A:
                sub_1005FDF68();
              case 0xC0A:
                sub_1005FE18C();
              case 0xD0A:
                sub_1005FE3B0();
            }
          }

          else
          {
            switch(result)
            {
              case 0x913:
                sub_100604404();
              case 0xA0A:
                sub_1005FDD44();
              case 0xA13:
                sub_100604628();
            }
          }
        }

        else if (result > 1287)
        {
          if (result > 1554)
          {
            if (result > 2057)
            {
              switch(result)
              {
                case 0x80A:
                  sub_1005FD8FC();
                case 0x813:
                  sub_1006041E0();
                case 0x90A:
                  sub_1005FDB20();
              }
            }

            else
            {
              switch(result)
              {
                case 0x613:
                  sub_100603D98();
                case 0x70A:
                  sub_1005FD6D8();
                case 0x713:
                  sub_100603FBC();
              }
            }
          }

          else if (result > 1298)
          {
            switch(result)
            {
              case 0x513:
                sub_100603B74();
              case 0x608:
                sub_100602E9C();
              case 0x60A:
                sub_1005FD4B4();
            }
          }

          else
          {
            switch(result)
            {
              case 0x508:
                sub_100602C78();
              case 0x50A:
                sub_1005FD290();
              case 0x50E:
                sub_100601D7C();
            }
          }
        }

        else if (result > 781)
        {
          if (result > 1033)
          {
            switch(result)
            {
              case 0x40A:
                sub_1005FD06C();
              case 0x40E:
                sub_100601B58();
              case 0x413:
                sub_100603950();
            }
          }

          else
          {
            switch(result)
            {
              case 0x30E:
                sub_100601934();
              case 0x313:
                sub_10060372C();
              case 0x408:
                sub_100602A54();
            }
          }
        }

        else if (result > 768)
        {
          switch(result)
          {
            case 0x301:
              sub_1005FC7DC();
            case 0x308:
              sub_100602830();
            case 0x30A:
              sub_1005FCE48();
          }
        }

        else
        {
          switch(result)
          {
            case 0x20E:
              sub_100601710();
            case 0x213:
              sub_100603508();
            case 0x21B:
              sub_100604A70();
          }
        }
      }

      else if (result > 99)
      {
        if (result <= 274)
        {
          if (result > 261)
          {
            if (result <= 265)
            {
              if (result == 262)
              {
                sub_100600C5C();
              }

              if (result == 264)
              {
                sub_1006023E8();
              }
            }

            else
            {
              switch(result)
              {
                case 0x10A:
                  sub_1005FCA00();
                case 0x10B:
                  sub_100601FA0();
                case 0x10E:
                  sub_1006014EC();
              }
            }
          }

          else if (result <= 255)
          {
            if (result == 100)
            {
              sub_1005FBF4C();
            }

            if (result == 101)
            {
              sub_1005FC170();
            }
          }

          else
          {
            switch(result)
            {
              case 0x100:
                sub_1006050DC();
              case 0x101:
                sub_1005FC394();
              case 0x105:
                sub_1006010A4();
            }
          }
        }

        else if (result <= 515)
        {
          if (result <= 282)
          {
            if (result == 275)
            {
              sub_1006032E4();
            }

            if (result == 279)
            {
              sub_100604EB8();
            }
          }

          else
          {
            switch(result)
            {
              case 0x11B:
                sub_10060484C();
              case 0x11C:
                sub_100604C94();
              case 0x201:
                sub_1005FC5B8();
            }
          }
        }

        else if (result > 519)
        {
          switch(result)
          {
            case 0x208:
              sub_10060260C();
            case 0x20A:
              sub_1005FCC24();
            case 0x20B:
              sub_1006021C4();
          }
        }

        else
        {
          switch(result)
          {
            case 0x204:
              sub_1006030C0();
            case 0x205:
              sub_1006012C8();
            case 0x206:
              sub_100600E80();
          }
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1005F835C();
          case 2:
            sub_1005F8580();
          case 3:
            sub_1005F87A4();
          case 4:
            sub_1005F89C8();
          case 5:
            sub_1005F8BEC();
          case 6:
            sub_1005F8E10();
          case 7:
            sub_1005F9034();
          case 8:
            sub_1005F9258();
          case 9:
            sub_1005F947C();
          case 10:
            sub_1005F96A0();
          case 11:
            sub_1005F98C4();
          case 12:
            sub_1005F9AE8();
          case 13:
            sub_1005F9D0C();
          case 14:
            sub_1005F9F30();
          case 15:
            sub_1005FA154();
          case 16:
            sub_1005FA378();
          case 17:
            sub_1005FA59C();
          case 18:
            sub_1005FA7C0();
          case 19:
            sub_1005FA9E4();
          case 20:
            sub_1005FAC08();
          case 21:
            sub_1005FAE2C();
          case 22:
            sub_1005FB050();
          case 23:
            sub_1005FB274();
          case 24:
            sub_1005FB498();
          case 25:
            sub_1005FB6BC();
          case 26:
            sub_1005FB8E0();
          case 27:
            sub_1005FBB04();
          case 28:
            sub_1005FBD28();
          default:
            break;
        }
      }

      sub_100605300();
    }
  }

  return result;
}

uint64_t sub_10060C424(uint64_t result, const char *a2)
{
  if (*(result + 57) == 1)
  {
    v4 = result;
    sub_10060C474(result, a2);

    return sub_10060CB90(v4, a2);
  }

  return result;
}

uint64_t sub_10060C474(uint64_t a1, const char *a2)
{
  v45 = *(a1 + 16);
  (*(*v45 + 16))(v45);
  v47 = 256;
  sub_10003848C(v33);
  v4 = strlen(a2);
  v5 = sub_100038730(&v34, a2, v4);
  sub_100038730(v5, "IncrementRowCount", 17);
  if ((v44 & 0x10) != 0)
  {
    v7 = v43;
    if (v43 < v40)
    {
      v43 = v40;
      v7 = v40;
    }

    v8 = __src;
  }

  else
  {
    if ((v44 & 8) == 0)
    {
      v6 = 0;
      HIBYTE(v32) = 0;
      goto LABEL_14;
    }

    v8 = v37;
    v7 = v38;
  }

  v6 = v7 - v8;
  if (v7 - v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v32) = v7 - v8;
  if (v6)
  {
    memmove(&__dst, v8, v6);
  }

LABEL_14:
  *(&__dst + v6) = 0;
  if (v32 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_10060F8C8(a1, p_dst);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

  __dst = 0uLL;
  v32 = 0;
  sub_100619F14(&v35, &__dst);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

  v10 = strlen(a2);
  v11 = sub_100038730(&v34, a2, v10);
  sub_100038730(v11, "DecrementRowCount", 17);
  if ((v44 & 0x10) != 0)
  {
    v13 = v43;
    if (v43 < v40)
    {
      v43 = v40;
      v13 = v40;
    }

    v14 = __src;
  }

  else
  {
    if ((v44 & 8) == 0)
    {
      v12 = 0;
      HIBYTE(v32) = 0;
      goto LABEL_34;
    }

    v14 = v37;
    v13 = v38;
  }

  v12 = v13 - v14;
  if (v13 - v14 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v32) = v13 - v14;
  if (v12)
  {
    memmove(&__dst, v14, v12);
  }

LABEL_34:
  *(&__dst + v12) = 0;
  if (v32 >= 0)
  {
    v15 = &__dst;
  }

  else
  {
    v15 = __dst;
  }

  sub_10060F8C8(a1, v15);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

  __dst = 0uLL;
  v32 = 0;
  sub_100619F14(&v35, &__dst);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

  v16 = strlen(a2);
  v17 = sub_100038730(&v34, a2, v16);
  sub_100038730(v17, "Counts", 6);
  if ((v44 & 0x10) != 0)
  {
    v19 = v43;
    if (v43 < v40)
    {
      v43 = v40;
      v19 = v40;
    }

    v20 = __src;
  }

  else
  {
    if ((v44 & 8) == 0)
    {
      v18 = 0;
      v30 = 0;
      goto LABEL_54;
    }

    v20 = v37;
    v19 = v38;
  }

  v18 = v19 - v20;
  if (v19 - v20 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  v30 = v19 - v20;
  if (v18)
  {
    memmove(&__p, v20, v18);
  }

LABEL_54:
  *(&__p + v18) = 0;
  if (v30 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  sub_10060AAF0(a1, "table", p_p, &__dst);
  if (SHIBYTE(v32) < 0)
  {
    v22 = *(&__dst + 1) == 0;
    operator delete(__dst);
  }

  else
  {
    v22 = SHIBYTE(v32) == 0;
  }

  if (v30 < 0)
  {
    operator delete(__p);
    if (v22)
    {
      goto LABEL_82;
    }
  }

  else if (v22)
  {
    goto LABEL_82;
  }

  if ((v44 & 0x10) != 0)
  {
    v24 = v43;
    if (v43 < v40)
    {
      v43 = v40;
      v24 = v40;
    }

    v25 = __src;
    goto LABEL_71;
  }

  if ((v44 & 8) != 0)
  {
    v25 = v37;
    v24 = v38;
LABEL_71:
    v23 = v24 - v25;
    if (v24 - v25 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v23 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v32) = v24 - v25;
    if (v23)
    {
      memmove(&__dst, v25, v23);
    }

    goto LABEL_77;
  }

  v23 = 0;
  HIBYTE(v32) = 0;
LABEL_77:
  *(&__dst + v23) = 0;
  if (v32 >= 0)
  {
    v26 = &__dst;
  }

  else
  {
    v26 = __dst;
  }

  sub_10060FDC8(a1, v26);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

LABEL_82:
  v34 = v27;
  if (v42 < 0)
  {
    operator delete(v41);
  }

  std::locale::~locale(&v36);
  std::iostream::~basic_iostream();
  result = std::ios::~ios();
  if (HIBYTE(v47) == 1)
  {
    if (v47)
    {
      return pthread_mutex_unlock(v46);
    }

    else
    {
      return (*(*v45 + 24))(v45);
    }
  }

  return result;
}

void sub_10060CB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a21);
  sub_1017EC98C(v21 - 104);
  _Unwind_Resume(a1);
}

uint64_t sub_10060CB90(uint64_t a1, const char *a2)
{
  v61 = *(a1 + 16);
  (*(*v61 + 16))(v61);
  v63 = 256;
  v66 = "Count";
  v67 = 1;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 5;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  sub_10003848C(v49);
  v4 = strlen(a2);
  v5 = sub_100038730(&v50, a2, v4);
  sub_100038730(v5, "Counts", 6);
  if ((v60 & 0x10) != 0)
  {
    v7 = v59;
    if (v59 < v56)
    {
      v59 = v56;
      v7 = v56;
    }

    v8 = __src;
  }

  else
  {
    if ((v60 & 8) == 0)
    {
      v6 = 0;
      v65[15] = 0;
      goto LABEL_14;
    }

    v8 = v53;
    v7 = v54;
  }

  v6 = v7 - v8;
  if (v7 - v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v65[15] = v7 - v8;
  if (v6)
  {
    memmove(&__dst, v8, v6);
  }

LABEL_14:
  v65[v6 - 8] = 0;
  if (v65[15] >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_10061061C(a1, p_dst, &v66);
  if ((v65[15] & 0x80000000) != 0)
  {
    operator delete(__dst);
  }

  __dst = 0;
  *v65 = 0;
  *&v65[8] = 0;
  sub_100619F14(&v51, &__dst);
  if ((v65[15] & 0x80000000) != 0)
  {
    operator delete(__dst);
  }

  v10 = sub_100038730(&v50, "SELECT COUNT(*) FROM ", 21);
  v11 = strlen(a2);
  sub_100038730(v10, a2, v11);
  if ((v60 & 0x10) != 0)
  {
    v13 = v59;
    if (v59 < v56)
    {
      v59 = v56;
      v13 = v56;
    }

    v14 = __src;
  }

  else
  {
    if ((v60 & 8) == 0)
    {
      v12 = 0;
      v65[15] = 0;
      goto LABEL_34;
    }

    v14 = v53;
    v13 = v54;
  }

  v12 = v13 - v14;
  if (v13 - v14 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  v65[15] = v13 - v14;
  if (v12)
  {
    memmove(&__dst, v14, v12);
  }

LABEL_34:
  v65[v12 - 8] = 0;
  if (v65[15] >= 0)
  {
    v15 = &__dst;
  }

  else
  {
    v15 = __dst;
  }

  v16 = sub_100038DE8(a1, v15);
  if ((v65[15] & 0x80000000) != 0)
  {
    operator delete(__dst);
  }

  if (v16)
  {
    if (sqlite3_step(v16) == 100)
    {
      sqlite3_column_int(v16, 0);
      goto LABEL_57;
    }

    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v21 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      __dst = 68289283;
      *v65 = 2082;
      *&v65[2] = "";
      *&v65[10] = 2081;
      *&v65[12] = a2;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get row count for, table:%{private, location:escape_only}s}", &__dst, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v18 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      __dst = 68289283;
      *v65 = 2082;
      *&v65[2] = "";
      *&v65[10] = 2081;
      *&v65[12] = a2;
      v19 = "Couldn't get row count for";
      v20 = "{msg%{public}.0s:Couldn't get row count for, table:%{private, location:escape_only}s}";
      goto LABEL_56;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v17 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      __dst = 68289283;
      *v65 = 2082;
      *&v65[2] = "";
      *&v65[10] = 2081;
      *&v65[12] = a2;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't create select count statement, table:%{private, location:escape_only}s}", &__dst, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v18 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      __dst = 68289283;
      *v65 = 2082;
      *&v65[2] = "";
      *&v65[10] = 2081;
      *&v65[12] = a2;
      v19 = "Couldn't create select count statement";
      v20 = "{msg%{public}.0s:Couldn't create select count statement, table:%{private, location:escape_only}s}";
LABEL_56:
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v19, v20, &__dst, 0x1Cu);
    }
  }

LABEL_57:
  sub_1001B1DA0(*(a1 + 8), v16);
  __dst = 0;
  *v65 = 0;
  *&v65[8] = 0;
  sub_100619F14(&v51, &__dst);
  if ((v65[15] & 0x80000000) != 0)
  {
    operator delete(__dst);
  }

  v22 = sub_100038730(&v50, "INSERT INTO ", 12);
  v23 = strlen(a2);
  v24 = sub_100038730(v22, a2, v23);
  v25 = sub_100038730(v24, "Counts", 6);
  sub_100038730(v25, " VALUES (", 9);
  v26 = std::ostream::operator<<();
  sub_100038730(v26, ")", 1);
  if ((v60 & 0x10) != 0)
  {
    v28 = v59;
    if (v59 < v56)
    {
      v59 = v56;
      v28 = v56;
    }

    v29 = __src;
  }

  else
  {
    if ((v60 & 8) == 0)
    {
      v27 = 0;
      v65[15] = 0;
      goto LABEL_72;
    }

    v29 = v53;
    v28 = v54;
  }

  v27 = v28 - v29;
  if (v28 - v29 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  v65[15] = v28 - v29;
  if (v27)
  {
    memmove(&__dst, v29, v27);
  }

LABEL_72:
  v65[v27 - 8] = 0;
  if (v65[15] >= 0)
  {
    v30 = &__dst;
  }

  else
  {
    v30 = __dst;
  }

  v31 = sub_100038DE8(a1, v30);
  v32 = v31;
  if ((v65[15] & 0x80000000) != 0)
  {
    operator delete(__dst);
    if (v32)
    {
LABEL_77:
      sub_1001A3DEC(a1, v32);
      sub_1001B1DA0(*(a1 + 8), v32);
      if ((v60 & 0x10) != 0)
      {
        v37 = v59;
        if (v59 < v56)
        {
          v59 = v56;
          v37 = v56;
        }

        v38 = __src;
      }

      else
      {
        if ((v60 & 8) == 0)
        {
          v34 = 0;
          v65[15] = 0;
          goto LABEL_98;
        }

        v38 = v53;
        v37 = v54;
      }

      v34 = v37 - v38;
      if (v37 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100061080();
      }

      if (v34 >= 0x17)
      {
        operator new();
      }

      v65[15] = v37 - v38;
      if (v34)
      {
        memmove(&__dst, v38, v34);
      }

LABEL_98:
      v65[v34 - 8] = 0;
      v39 = v65[15];
      v40 = __dst;
      sub_10060FFEC(a1, a2, v33, 1);
      if (v39 < 0)
      {
        operator delete(v40);
      }

      if ((v60 & 0x10) != 0)
      {
        v43 = v59;
        if (v59 < v56)
        {
          v59 = v56;
          v43 = v56;
        }

        v44 = __src;
      }

      else
      {
        if ((v60 & 8) == 0)
        {
          v42 = 0;
          v65[15] = 0;
LABEL_113:
          v65[v42 - 8] = 0;
          v45 = v65[15];
          v46 = __dst;
          sub_10060FFEC(a1, a2, v41, 0);
          if (v45 < 0)
          {
            operator delete(v46);
          }

          goto LABEL_115;
        }

        v44 = v53;
        v43 = v54;
      }

      v42 = v43 - v44;
      if (v43 - v44 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100061080();
      }

      if (v42 >= 0x17)
      {
        operator new();
      }

      v65[15] = v43 - v44;
      if (v42)
      {
        memmove(&__dst, v44, v42);
      }

      goto LABEL_113;
    }
  }

  else if (v31)
  {
    goto LABEL_77;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v35 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
  {
    __dst = 68289026;
    *v65 = 2082;
    *&v65[2] = "";
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't prepare row count insertion statement}", &__dst, 0x12u);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }
  }

  v36 = off_1025D4858;
  if (os_signpost_enabled(off_1025D4858))
  {
    __dst = 68289026;
    *v65 = 2082;
    *&v65[2] = "";
    _os_signpost_emit_with_name_impl(dword_100000000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't prepare row count insertion statement", "{msg%{public}.0s:Couldn't prepare row count insertion statement}", &__dst, 0x12u);
  }

LABEL_115:
  v50 = v47;
  if (v58 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v52);
  std::iostream::~basic_iostream();
  result = std::ios::~ios();
  if (HIBYTE(v63) == 1)
  {
    if (v63)
    {
      return pthread_mutex_unlock(v62);
    }

    else
    {
      return (*(*v61 + 24))(v61);
    }
  }

  return result;
}

uint64_t sub_10060D77C(uint64_t a1, char *a2, const char **a3, const char **a4, int a5)
{
  if (!a2)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v20 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v66 = 2082;
      *&v66[2] = "";
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@SqliteDB, Must provide a table name}", buf, 0x12u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v21 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v66 = 2082;
      *&v66[2] = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@SqliteDB, Must provide a table name", "{msg%{public}.0s:@SqliteDB, Must provide a table name}", buf, 0x12u);
    }

    return 0;
  }

  if (*(a1 + 56))
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v57 = v9;
  (*(*v9 + 16))(v9);
  v58 = 256;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v10 = sub_100613C84(a1, a2, &v54, &v51);
  v11 = sub_100610D0C(a1, a2);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v12 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    *&buf[4] = v10;
    *v66 = 1026;
    *&v66[2] = v11;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "@SqliteDB, tableExistsInTableInfo, %{public}d, tableExistsInDatabase, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E5810(buf);
    *__p = 67240448;
    *&__p[4] = v10;
    *&__p[8] = 1026;
    *&__p[10] = v11;
    v46 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLSqliteDatabase::createTableIfNecessary_internal(const char *, const ColumnInfo *, const char **, BOOL)", "%s\n", v46);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  if (!v11 && v10)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v23 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *v66 = 2082;
      *&v66[2] = "";
      v67 = 2081;
      v68 = a2;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@SqliteDB, Table does not exist but its metadata does, table:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v24 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *v66 = 2082;
      *&v66[2] = "";
      v67 = 2081;
      v68 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@SqliteDB, Table does not exist but its metadata does", "{msg%{public}.0s:@SqliteDB, Table does not exist but its metadata does, table:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_100615558(a1, a2);
    goto LABEL_51;
  }

  if (!a5)
  {
    goto LABEL_53;
  }

  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_52;
    }

    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v44 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *v66 = 2082;
      *&v66[2] = "";
      v67 = 2081;
      v68 = a2;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, Table was created by an unknown device (table info missing). Deleting, table:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_10060FDC8(a1, a2);
LABEL_51:
    v11 = 0;
LABEL_52:
    LOBYTE(v10) = 0;
    goto LABEL_53;
  }

  sub_10001A3E8();
  sub_1007186C8(__p);
  if ((v64 & 0x80u) == 0)
  {
    v13 = v64;
  }

  else
  {
    v13 = *&__p[8];
  }

  v14 = HIBYTE(v53);
  if (v53 < 0)
  {
    v14 = v52;
  }

  if (v13 == v14 && ((v64 & 0x80u) == 0 ? (v15 = __p) : (v15 = *__p), v53 >= 0 ? (v16 = &v51) : (v16 = v51), !memcmp(v15, v16, v13)))
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v45 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *v66 = 2082;
      *&v66[2] = "";
      v67 = 2081;
      v68 = a2;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, Table was created by this device (serial numbers match). Keeping, table:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    LOBYTE(v10) = 1;
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v17 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      v18 = __p;
      if ((v64 & 0x80u) != 0)
      {
        v18 = *__p;
      }

      v19 = &v51;
      if (v53 < 0)
      {
        v19 = v51;
      }

      *buf = 68289795;
      *&buf[4] = 0;
      *v66 = 2082;
      *&v66[2] = "";
      v67 = 2081;
      v68 = a2;
      v69 = 2081;
      v70 = v18;
      v71 = 2081;
      v72 = v19;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, #warning Table was created by a different device (serial numbers do not match). Deleting, table:%{private, location:escape_only}s, expected:%{private, location:escape_only}s, actual:%{private, location:escape_only}s}", buf, 0x30u);
    }

    sub_10060FDC8(a1, a2);
    v11 = 0;
    LOBYTE(v10) = 0;
  }

  if (v64 < 0)
  {
    operator delete(*__p);
  }

LABEL_53:
  sub_10001A3E8();
  sub_100241210(buf);
  if (v56 >= 0)
  {
    v25 = HIBYTE(v56);
  }

  else
  {
    v25 = v55;
  }

  v26 = BYTE3(v68);
  v27 = SBYTE3(v68);
  if (SBYTE3(v68) < 0)
  {
    v26 = *v66;
  }

  if (v25 != v26)
  {
    v30 = 0;
    if ((SBYTE3(v68) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (v56 >= 0)
  {
    v28 = &v54;
  }

  else
  {
    v28 = v54;
  }

  if (SBYTE3(v68) >= 0)
  {
    v29 = buf;
  }

  else
  {
    v29 = *buf;
  }

  v30 = memcmp(v28, v29, v25) == 0;
  if (v27 < 0)
  {
LABEL_68:
    operator delete(*buf);
  }

LABEL_69:
  sub_10001A3E8();
  sub_100241210(buf);
  if (SBYTE3(v68) < 0)
  {
    v32 = *v66 == 10 && **buf == 0x2E39392E39393939 && *(*buf + 8) == 14649;
    operator delete(*buf);
    if (v30)
    {
      goto LABEL_90;
    }

    goto LABEL_87;
  }

  if (SBYTE3(v68) == 10)
  {
    v32 = *buf == 0x2E39392E39393939 && *v66 == 14649;
    if (v30)
    {
      goto LABEL_90;
    }

LABEL_87:
    v34 = 1;
    goto LABEL_93;
  }

  v32 = 0;
  if (!v30)
  {
    goto LABEL_87;
  }

LABEL_90:
  v35 = HIBYTE(v56);
  if (v56 < 0)
  {
    v35 = v55;
  }

  v34 = v35 == 0 || v32;
LABEL_93:
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v36 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v37 = v56 >= 0 ? &v54 : v54;
    sub_10001A3E8();
    sub_100241210(buf);
    v38 = SBYTE3(v68) >= 0 ? buf : *buf;
    *__p = 136446466;
    *&__p[4] = v37;
    *&__p[12] = 2082;
    *&__p[14] = v38;
    _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "@SqliteDB, table software version, %{public}s, bundle version, %{public}s", __p, 0x16u);
    if (SBYTE3(v68) < 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E5810(buf);
    if (v56 >= 0)
    {
      v47 = &v54;
    }

    else
    {
      v47 = v54;
    }

    sub_10001A3E8();
    sub_100241210(__p);
    if ((v64 & 0x80u) == 0)
    {
      v48 = __p;
    }

    else
    {
      v48 = *__p;
    }

    v59 = 136446466;
    v60 = v47;
    v61 = 2082;
    v62 = v48;
    v49 = _os_log_send_and_compose_impl();
    if (v64 < 0)
    {
      operator delete(*__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLSqliteDatabase::createTableIfNecessary_internal(const char *, const ColumnInfo *, const char **, BOOL)", "%s\n", v49);
    if (v49 != buf)
    {
      free(v49);
    }
  }

  if (!(v34 & 1 | !v10) && v11)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v39 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      v40 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v40 = *v40;
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *v66 = 2082;
      *&v66[2] = "";
      v67 = 2082;
      v68 = v40;
      v69 = 2081;
      v70 = a2;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, The CL version has not changed since CLSqliteDatabase::createTableIfNecessary() was last invoked for this pair, so not creating table, path:%{public, location:escape_only}s, table:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_121:
    v22 = 0;
    goto LABEL_122;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v41 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v42 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v42 = *v42;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    *v66 = 2082;
    *&v66[2] = "";
    v67 = 2082;
    v68 = v42;
    v69 = 2081;
    v70 = a2;
    _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, The CL version has changed since CLSqliteDatabase::createTableIfNecessary() was last invoked for this pair. Checking schema, path:%{public, location:escape_only}s, table:%{private, location:escape_only}s}", buf, 0x26u);
  }

  sub_100614CF8(a1, a2);
  if (!sub_10060667C(a1, a2, a3, a4, 0))
  {
    goto LABEL_121;
  }

  sub_100614CF8(a1, a2);
  v22 = 1;
LABEL_122:
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v54);
  }

  (*(*v9 + 24))(v9);
  return v22;
}