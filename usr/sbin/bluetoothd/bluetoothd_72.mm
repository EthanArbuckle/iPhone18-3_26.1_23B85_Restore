uint64_t sub_10051FA20(unint64_t a1, unint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    return 7;
  }

  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v9 = sub_1000E41C0(off_100B508E8, a2);
  if (!v9)
  {
    return 7;
  }

  v10 = v9;
  if (sub_1000DFB74(v9, 0x80000u) != 4)
  {
    return 108;
  }

  if (qword_100B50950 != -1)
  {
    sub_10083E774();
  }

  v11 = off_100B50948;

  return sub_10033FFAC(v11, v10, a3, a4);
}

uint64_t sub_10051FB30(unint64_t a1, unint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v10 = sub_10000E92C();
  if (!(*(*v10 + 8))(v10))
  {
    return 2;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    return 7;
  }

  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v12 = sub_1000E41C0(off_100B508E8, a2);
  if (!v12)
  {
    return 7;
  }

  if (sub_1000DFB74(v12, 0x80000u) != 4)
  {
    return 108;
  }

  LOBYTE(__n) = 0;
  memset(v14, 0, sizeof(v14));
  if (qword_100B51308 != -1)
  {
    sub_10083E788();
  }

  sub_1004B3CEC(qword_100B51300, v14);
  v13 = __n;
  if (__n > a5)
  {
    return 5;
  }

  memcpy(a3, v14, __n);
  result = 0;
  *a4 = v13;
  return result;
}

uint64_t sub_10051FCE4(unint64_t a1, unint64_t a2, unsigned __int8 a3, unsigned __int16 a4)
{
  v8 = sub_10000E92C();
  if (!(*(*v8 + 8))(v8))
  {
    return 2;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    return 7;
  }

  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v10 = sub_1000E41C0(off_100B508E8, a2);
  if (!v10)
  {
    return 7;
  }

  v11 = v10;
  if (sub_1000DFB74(v10, 0x80000u) != 4)
  {
    return 108;
  }

  if (qword_100B51308 != -1)
  {
    sub_10083E788();
  }

  v12 = qword_100B51300;

  return sub_1004B400C(v12, v11, a3, a4);
}

uint64_t sub_10051FE28(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = sub_10000E92C();
  if (!(*(*v6 + 8))(v6))
  {
    return 2;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    return 7;
  }

  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  if (sub_1000DFB74(v8, 0x80000u) != 4)
  {
    return 108;
  }

  if (qword_100B51308 != -1)
  {
    sub_10083E788();
  }

  v10 = qword_100B51300;

  return sub_1004B4224(v10, v9, a3);
}

uint64_t sub_10051FF64(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    return 7;
  }

  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v9 = sub_1000E41C0(off_100B508E8, a2);
  if (!v9)
  {
    return 7;
  }

  v10 = v9;
  if (sub_1000DFB74(v9, 0x80000u) != 4)
  {
    return 108;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10083E4E0();
  }

  v11 = sub_1000117DC(qword_100B50B80, a1);
  if (v11)
  {
    v12 = v11;
    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v14 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v12, v21);
          v15 = v22;
          v16 = v21[0];
          sub_1000E5A58(v10, __p);
          v17 = v21;
          if (v15 < 0)
          {
            v17 = v16;
          }

          if (v20 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136446466;
          v24 = v17;
          v25 = 2082;
          v26 = v18;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Session %{public}s is asking to send control command to device %{public}s", buf, 0x16u);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          if (v22 < 0)
          {
            operator delete(v21[0]);
          }
        }
      }
    }
  }

  if (qword_100B50950 != -1)
  {
    sub_10083E74C();
  }

  return sub_100331844(off_100B50948, v10, a3, a4, 2u);
}

void sub_1005201A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005201C4(unint64_t a1, unint64_t a2, int a3, int a4, int *a5)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    return 7;
  }

  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v11 = sub_1000E41C0(off_100B508E8, a2);
  if (!v11)
  {
    return 7;
  }

  v12 = v11;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (sub_1000DFB74(v12, 0x80000u) == 4)
    {
      result = 0;
      switch(a3)
      {
        case 13:
          v13 = sub_1000E3284(v12);
          *a5 = v13;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v13;
            v15 = "Get ListeningMode device setting : setting type %d, controlValue %d";
            goto LABEL_136;
          }

          break;
        case 20:
          v48 = sub_1005492A4(v12);
          *a5 = v48;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v48;
            v15 = "Get SingleClickMode device setting : setting type %d, controlValue %d";
            goto LABEL_136;
          }

          break;
        case 21:
          v49 = sub_1005492EC(v12);
          *a5 = v49;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v49;
            v15 = "Get DoubleClickMode device setting : setting type %d, controlValue %d";
            goto LABEL_136;
          }

          break;
        case 22:
          v54 = sub_1000E06EC(v12);
          *a5 = v54;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v54;
            v15 = "Get ClickHoldMode device setting : setting type %d, controlValue %d";
            goto LABEL_136;
          }

          break;
        case 23:
          v50 = sub_100549334(v12);
          *a5 = v50;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v50;
            v15 = "Get DoubleClickInterval device setting : setting type %d, controlValue %d";
            goto LABEL_136;
          }

          break;
        case 24:
          v53 = sub_10054937C(v12);
          *a5 = v53;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v53;
            v15 = "Get ClickHoldInterval device setting : setting type %d, controlValue %d";
            goto LABEL_136;
          }

          break;
        case 26:
          v61 = sub_1000E32CC(v12);
          *a5 = v61;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v61;
            v15 = "Get ListeningModeConfigs device setting : setting type %d, controlValue %d";
            goto LABEL_136;
          }

          break;
        case 27:
          v62 = sub_1005493C4(v12);
          *a5 = v62;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v62;
            v15 = "Get OneBudANCMode device setting : setting type %d, controlValue %d";
            goto LABEL_136;
          }

          break;
        case 28:
          v32 = sub_1000E20F8(v12);
          *a5 = v32;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v32;
            v15 = "Get CrownRotationDirection device setting : setting type %d, controlValue %d";
            goto LABEL_136;
          }

          break;
        case 30:
          v66 = sub_1000E2BC0(v12);
          *a5 = v66;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v66;
            v15 = "Get Auto Answer device setting : setting type %d, controlValue %d";
            goto LABEL_136;
          }

          break;
        case 31:
          v35 = sub_10054940C(v12);
          *a5 = v35;
          v14 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *buf = 67109376;
            *v84 = a4;
            *&v84[4] = 1024;
            *&v84[6] = v35;
            v15 = "Get ChimeVolume device setting : setting type %d, controlValue %d";
LABEL_136:
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xEu);
            goto LABEL_174;
          }

          break;
        case 35:
          *a5 = sub_10054949C(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v51 = __p;
            }

            else
            {
              v51 = __p[0];
            }

            v52 = *a5;
            *buf = 136446722;
            *v84 = v51;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v52;
            v19 = "Get VolumeSwipeInterval setting for device %{public}s : setting type %d, controlValue %d";
            goto LABEL_172;
          }

          break;
        case 36:
          *a5 = sub_1000E0734(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v40 = __p;
            }

            else
            {
              v40 = __p[0];
            }

            v41 = *a5;
            *buf = 136446722;
            *v84 = v40;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v41;
            v19 = "Get CallManagementConfiguration setting for device %{public}s : setting type %d, controlValue 0x%08X";
            goto LABEL_172;
          }

          break;
        case 37:
          *a5 = sub_100549454(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v26 = __p;
            }

            else
            {
              v26 = __p[0];
            }

            v27 = *a5;
            *buf = 136446722;
            *v84 = v26;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v27;
            v19 = "Get VolumeSwipeMode setting for device %{public}s : setting type %d, controlValue %d";
            goto LABEL_172;
          }

          break;
        case 38:
          *a5 = sub_1000E00E4(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v57 = __p;
            }

            else
            {
              v57 = __p[0];
            }

            v58 = *a5;
            *buf = 136446722;
            *v84 = v57;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v58;
            v19 = "Get AdaptiveVolumeMode setting for device %{public}s : setting type %d, controlValue 0x%08X";
            goto LABEL_172;
          }

          break;
        case 39:
          *a5 = sub_1005494E4(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v59 = __p;
            }

            else
            {
              v59 = __p[0];
            }

            v60 = *a5;
            *buf = 136446722;
            *v84 = v59;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v60;
            v19 = "Get Software Mute device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 40:
          *a5 = sub_1000E20B0(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v71 = __p;
            }

            else
            {
              v71 = __p[0];
            }

            v72 = *a5;
            *buf = 136446722;
            *v84 = v71;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v72;
            v19 = "Get Conversation Detect device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 41:
          *a5 = sub_1000E35B4(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v67 = __p;
            }

            else
            {
              v67 = __p[0];
            }

            v68 = *a5;
            *buf = 136446722;
            *v84 = v67;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v68;
            v19 = "Get SSL device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 44:
          v22 = sub_10054FC88(v12);
          v23 = sub_10054FBB0(v12);
          result = 0;
          *a5 = v23 | (v22 << 8);
          break;
        case 46:
          *a5 = sub_100549574(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v42 = __p;
            }

            else
            {
              v42 = __p[0];
            }

            v43 = *a5;
            *buf = 136446722;
            *v84 = v42;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v43;
            v19 = "Get Auto ANC strength device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 47:
          *a5 = sub_1005495BC(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v73 = __p;
            }

            else
            {
              v73 = __p[0];
            }

            v74 = *a5;
            *buf = 136446722;
            *v84 = v73;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v74;
            v19 = "Get HPS Gain Swipe device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 48:
          *a5 = sub_100549694(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v24 = __p;
            }

            else
            {
              v24 = __p[0];
            }

            v25 = *a5;
            *buf = 136446722;
            *v84 = v24;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v25;
            v19 = "Get Heart Rate Monitor enabled device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 49:
          *a5 = sub_10054988C(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v38 = __p;
            }

            else
            {
              v38 = __p[0];
            }

            v39 = *a5;
            *buf = 136446722;
            *v84 = v38;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v39;
            v19 = "Get In Case Tone device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 50:
          *a5 = sub_1005498D4(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v33 = __p;
            }

            else
            {
              v33 = __p[0];
            }

            v34 = *a5;
            *buf = 136446722;
            *v84 = v33;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v34;
            v19 = "Get Siri Multitone device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 51:
          *a5 = sub_100549604(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v55 = __p;
            }

            else
            {
              v55 = __p[0];
            }

            v56 = *a5;
            *buf = 136446722;
            *v84 = v55;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v56;
            v19 = "Get Hearing Assist device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 52:
          *a5 = sub_10054964C(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v28 = __p;
            }

            else
            {
              v28 = __p[0];
            }

            v29 = *a5;
            *buf = 136446722;
            *v84 = v28;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v29;
            v19 = "Allow Off Option for Listening Mode device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 53:
          *a5 = sub_10054991C(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v77 = __p;
            }

            else
            {
              v77 = __p[0];
            }

            v78 = *a5;
            *buf = 136446722;
            *v84 = v77;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v78;
            v19 = "Sleep Detection Mode device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 55:
          *a5 = sub_100549724(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v75 = __p;
            }

            else
            {
              v75 = __p[0];
            }

            v76 = *a5;
            *buf = 136446722;
            *v84 = v75;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v76;
            v19 = "PPE Toggle device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 56:
          *a5 = sub_1005496DC(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v36 = __p;
            }

            else
            {
              v36 = __p[0];
            }

            v37 = *a5;
            *buf = 136446722;
            *v84 = v36;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v37;
            v19 = "Personal Protective Equipment Cap Level device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 57:
          *a5 = sub_100549964(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v44 = __p;
            }

            else
            {
              v44 = __p[0];
            }

            v45 = *a5;
            *buf = 136446722;
            *v84 = v44;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v45;
            v19 = "Raw Gestures enablement configuration device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 58:
          if (*(v12 + 1045))
          {
            v63 = 1;
          }

          else
          {
            v63 = 2;
          }

          *a5 = v63;
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v64 = __p;
            }

            else
            {
              v64 = __p[0];
            }

            v65 = *a5;
            *buf = 136446722;
            *v84 = v64;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v65;
            v19 = "Temporary Pairing device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 59:
          *a5 = sub_10054976C(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v46 = __p;
            }

            else
            {
              v46 = __p[0];
            }

            v47 = *a5;
            *buf = 136446722;
            *v84 = v46;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v47;
            v19 = "Dynamic End of Charge setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 61:
          *a5 = sub_1005497B4(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            v18 = *a5;
            *buf = 136446722;
            *v84 = v17;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v18;
            v19 = "Hearing Aid Generic device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 62:
          *a5 = sub_1005499AC(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v30 = __p;
            }

            else
            {
              v30 = __p[0];
            }

            v31 = *a5;
            *buf = 136446722;
            *v84 = v30;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v31;
            v19 = "Uplink EQ Bud setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 63:
          *a5 = sub_1005499F4(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v69 = __p;
            }

            else
            {
              v69 = __p[0];
            }

            v70 = *a5;
            *buf = 136446722;
            *v84 = v69;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v70;
            v19 = "Uplink EQ Source setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 64:
          *a5 = sub_100549844(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v79 = __p;
            }

            else
            {
              v79 = __p[0];
            }

            v80 = *a5;
            *buf = 136446722;
            *v84 = v79;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v80;
            v19 = "In case tone volume device setting for device %{public}s : setting type %u, controlValue %u";
            goto LABEL_172;
          }

          break;
        case 65:
          *a5 = sub_1005497FC(v12);
          v16 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            sub_1000E5A58(v12, __p);
            if (v82 >= 0)
            {
              v20 = __p;
            }

            else
            {
              v20 = __p[0];
            }

            v21 = *a5;
            *buf = 136446722;
            *v84 = v20;
            *&v84[8] = 1024;
            v85 = a4;
            v86 = 1024;
            v87 = v21;
            v19 = "Disable Button Input device setting for device %{public}s : setting type %u, controlValue %u";
LABEL_172:
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v19, buf, 0x18u);
            if (v82 < 0)
            {
              operator delete(__p[0]);
            }

LABEL_174:
            result = 0;
          }

          break;
        default:
          return result;
      }
    }

    else
    {
      return 108;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_100521494(unint64_t a1, unint64_t a2, int *a3)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    *a3 = 0;
    if (sub_1000E2140(v8, 12))
    {
      *a3 |= 1u;
    }

    if (sub_1000E2140(v8, 1))
    {
      *a3 |= 8u;
    }

    if (sub_1000E2140(v8, 3))
    {
      *a3 |= 0x10u;
    }

    if (sub_1000E2140(v8, 14))
    {
      *a3 |= 6u;
    }

    if (sub_1000E2140(v8, 16))
    {
      *a3 |= 0x200u;
    }

    if (sub_1000E2140(v8, 17))
    {
      *a3 |= 0x100u;
    }

    if (sub_1000E2140(v8, 15))
    {
      *a3 |= 0x20u;
    }

    if (sub_1000E2140(v8, 3))
    {
      *a3 |= 0x400u;
    }

    v9 = qword_100BCE8C8;
    v10 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v10)
    {
      v11 = *a3;
      v12[0] = 67109120;
      v12[1] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting Feature BitMask : settingFeatureBitMask %8x", v12, 8u);
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_100521730(uint64_t a1, unint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v9 = objc_opt_new();
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083E4CC();
    }

    v10 = sub_1000E41C0(off_100B508E8, a2);
    v11 = v10;
    if (v10)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      if (sub_1000DFC04(v10, &v39))
      {
        v12 = objc_opt_new();
        for (i = v39; i != v40; ++i)
        {
          v14 = i;
          if (SHIBYTE(i->__r_.__value_.__r.__words[2]) < 0)
          {
            v14 = i->__r_.__value_.__r.__words[0];
          }

          v15 = [NSString stringWithUTF8String:v14];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = &stru_100B0F9E0;
          }

          [v12 addObject:v17];
        }

        [v9 setObject:v12 forKey:@"AACPVersionInfo"];
      }

      memset(&v38, 0, sizeof(v38));
      if (sub_100541DD8(v11, &v38))
      {
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v38;
        }

        else
        {
          v18 = v38.__r_.__value_.__r.__words[0];
        }

        v19 = [NSString stringWithUTF8String:v18];
        [v9 setObject:v19 forKey:@"ANCAssetVersion"];
      }

      v37 = 0;
      v35 = 0u;
      *__p = 0u;
      v34 = 0u;
      sub_100007E30(__p, "");
      if (sub_1000E0610(v11, &v34))
      {
        v20 = objc_opt_new();
        if (v37 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        v22 = [NSString stringWithUTF8String:v21];
        v23 = v35;
        if ([v22 length] >= 2)
        {
          [v20 setObject:v22 forKey:@"CaseInfoName"];
        }

        if (v23)
        {
          v24 = v23 >> 4;
          if (v34 < 2u)
          {
            v25 = v23 & 0xF;
          }

          else
          {
            v25 = (v23 >> 20) & 0xFFF0 | v23 & 0xF;
            v24 |= WORD2(v23) & 0xFFF0;
          }

          v27 = +[NSMutableString string];
          v28 = v27;
          if (v34 < 3u)
          {
            [v27 appendFormat:@"%u.%u.%u", (v23 >> 8), v24, v25];
          }

          else
          {
            if (v24 >= 0x1Au)
            {
              v29 = 65;
            }

            else
            {
              v29 = (v24 + 65);
            }

            [v27 appendFormat:@"%u%c%u", (v23 >> 8) / 0xAu, v29, v25];
            if (BYTE6(v23) - 1 <= 0x19)
            {
              [v28 appendFormat:@"%c", BYTE6(v23) | 0x60u];
            }
          }

          [v20 setObject:v28 forKey:@"CaseInfoVersion"];
        }

        if ([v20 count])
        {
          [v9 setObject:v20 forKey:@"CaseInfo"];
        }
      }

      if ([v9 count])
      {
        v33 = 0;
        v30 = [NSJSONSerialization dataWithJSONObject:v9 options:0 error:&v33];
        v31 = v33;
        if (v31)
        {
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            sub_10083E79C();
          }

          v26 = 1;
        }

        else if ([v30 length] <= a5)
        {
          memcpy(a3, [v30 bytes], objc_msgSend(v30, "length"));
          v26 = 0;
          *a4 = [v30 length];
        }

        else
        {
          v26 = 5;
        }
      }

      else
      {
        v31 = 0;
        v26 = 1;
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      *&v34 = &v39;
      sub_1000161FC(&v34);
    }

    else
    {
      v26 = 3;
    }
  }

  else
  {
    v26 = 7;
  }

  return v26;
}

void sub_100521BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  a15 = v34 - 112;
  sub_1000161FC(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_100521C70(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4, unint64_t a5)
{
  if (!a2)
  {
    return 19;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v9 = sub_1000E41C0(off_100B508E8, a2);
  if (!v9)
  {
    return 3;
  }

  v10 = v9;
  if (sub_1000DFB74(v9, 0x80000u) != 4)
  {
    return 108;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_100549A84(v10, &v15);
  v11 = v15;
  v12 = v16 - v15;
  if (v16 != v15)
  {
    if (v12 <= a5)
    {
      memcpy(a3, v15, v16 - v15);
      v13 = 0;
      *a4 = v12;
      if (!v11)
      {
        return v13;
      }
    }

    else
    {
      v13 = 5;
      if (!v15)
      {
        return v13;
      }
    }

    goto LABEL_14;
  }

  v13 = 1;
  if (v15)
  {
LABEL_14:
    v16 = v11;
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_100521D7C(uint64_t a1, unint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (!a2)
  {
    return 19;
  }

  if (a3 > 0xFF)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 3;
  }

  v8 = v7;
  if (sub_1000DFB74(v7, 0x80000u) != 4)
  {
    return 108;
  }

  v9 = sub_1000E3218(v8, a3);
  result = 0;
  *a4 = v9;
  return result;
}

uint64_t sub_100521E2C(uint64_t a1, char *a2, size_t a3, char *a4, size_t a5, char *a6, size_t a7, char *a8, size_t a9, char *a10, size_t a11, char *a12, size_t a13, char *a14, size_t a15)
{
  v18 = a4;
  if (qword_100B50950 != -1)
  {
    v26 = a6;
    v27 = a7;
    v25 = a5;
    v23 = a8;
    sub_10083E774();
    a8 = v23;
    v18 = a4;
    a5 = v25;
    a6 = v26;
    a7 = v27;
  }

  return sub_100350D18(off_100B50948, a1, a2, a3, v18, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_100521EF8(unint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  if (!a3)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    result = 3;
    if (a2 - 4294901761u >= 2 && a2)
    {
      if (qword_100B508F0 != -1)
      {
        sub_10083E4CC();
      }

      v7 = sub_1000E41C0(off_100B508E8, a2);
      if (v7)
      {
        v8 = sub_1000C2398(v7);
        result = 0;
        *a3 = v8;
        return result;
      }

      return 7;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_100522034(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = 3;
  if (a2 && a3)
  {
    if (qword_100B508E0 != -1)
    {
      sub_10083E244();
    }

    v9 = sub_100518000(off_100B508D8, a1);
    if (v9)
    {
      __p = 0;
      v16 = 0;
      v17 = 0;
      v4 = sub_10051A100(v9, &__p);
      if (!v4)
      {
        v10 = 0;
        if (a4)
        {
          v11 = __p;
          while (v11 != v16)
          {
            v12 = *v11;
            if (qword_100B508F0 != -1)
            {
              sub_10083E280();
            }

            v13 = sub_10056A4C4(off_100B508E8, a1, v12);
            if (!v13)
            {
              v4 = 7;
              goto LABEL_20;
            }

            *(a2 + 8 * v10++) = v13;
            ++v11;
            if (a4 == v10)
            {
              v10 = a4;
              break;
            }
          }
        }

        v4 = 0;
        *a3 = v10;
      }

LABEL_20:
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_10083E464();
      }

      return 7;
    }
  }

  return v4;
}

void sub_100522194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005221B4(unint64_t a1, unint64_t a2, int *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (!sub_1000E012C(v9, 64))
    {
      return 108;
    }

    v10 = sub_10000C798();
    if (!(*(*v10 + 840))(v10, 1))
    {
      return 108;
    }

    v11 = sub_10000C798();
    if (!(*(*v11 + 416))(v11))
    {
      return 108;
    }

    if (qword_100B508E0 != -1)
    {
      sub_10083E244();
    }

    if (sub_100518000(off_100B508D8, a1))
    {
      if (qword_100B50940 != -1)
      {
        sub_10083E590();
      }

      v12 = sub_100639958(off_100B50938, v9);
      if (qword_100B50B88 != -1)
      {
        sub_10083E4E0();
      }

      v13 = sub_1000117DC(qword_100B50B80, a1);
      v14 = qword_100BCE8C8;
      v15 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (!v15)
        {
          goto LABEL_49;
        }

        sub_100018384(v13, v24);
        v16 = v27;
        v17 = *v24;
        sub_1000E5A58(v9, __p);
        v18 = v24;
        if (v16 < 0)
        {
          v18 = v17;
        }

        v19 = v23 >= 0 ? __p : __p[0];
        *buf = 136446722;
        *&buf[4] = v18;
        v29 = 2082;
        v30 = v19;
        v31 = 1024;
        v32 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Session %{public}s reading in Spatial Audio Active device %{public}s to %d", buf, 0x1Cu);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v27 & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        v20 = *v24;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_49;
        }

        sub_1000E5A58(v9, buf);
        v21 = v31 >= 0 ? buf : *buf;
        *v24 = 136446466;
        *&v24[4] = v21;
        v25 = 1024;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Spatial Audio Active for device %{public}s to %d", v24, 0x12u);
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        v20 = *buf;
      }

      operator delete(v20);
LABEL_49:
      result = 0;
      *a3 = v12 << 31 >> 31;
      return result;
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E55C();
  }

  return 212;
}

void sub_100522544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100522568(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  v10 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v9, __p);
    v11 = v32 >= 0 ? __p : *__p;
    *buf = 136446466;
    *&buf[4] = v11;
    v26 = 1024;
    v27 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerSpatialAudioAllowed:  %{public}s Allowed %d", buf, 0x12u);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*__p);
    }
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E280();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (!sub_1000E012C(v9, 64))
    {
      return 108;
    }

    v12 = sub_10000C798();
    if (!(*(*v12 + 840))(v12, 1))
    {
      return 108;
    }

    if (qword_100B508E0 != -1)
    {
      sub_10083E258();
    }

    v13 = sub_100518000(off_100B508D8, a1);
    if (v13)
    {
      if (qword_100B50B88 != -1)
      {
        sub_10083E6BC();
      }

      v14 = sub_1000117DC(qword_100B50B80, a1);
      v15 = qword_100BCE8C8;
      v16 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (!v16)
        {
          return sub_100519550(v13, v9, a3);
        }

        sub_100018384(v14, buf);
        v17 = v28;
        v18 = *buf;
        sub_1000E5A58(v9, v23);
        v19 = buf;
        if (v17 < 0)
        {
          v19 = v18;
        }

        v20 = v24 >= 0 ? v23 : v23[0];
        *__p = 136446722;
        *&__p[4] = v19;
        v30 = 2082;
        v31 = v20;
        v32 = 1024;
        v33 = a3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to Spatial Audio for device %{public}s to %d", __p, 0x1Cu);
        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        if ((v28 & 0x80000000) == 0)
        {
          return sub_100519550(v13, v9, a3);
        }

        v21 = *buf;
      }

      else
      {
        if (!v16)
        {
          return sub_100519550(v13, v9, a3);
        }

        sub_1000E5A58(v9, __p);
        v22 = v32 >= 0 ? __p : *__p;
        *buf = 136446466;
        *&buf[4] = v22;
        v26 = 1024;
        v27 = a3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting Spatial Audio for device %{public}s to %d", buf, 0x12u);
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          return sub_100519550(v13, v9, a3);
        }

        v21 = *__p;
      }

      operator delete(v21);
      return sub_100519550(v13, v9, a3);
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E55C();
  }

  return 212;
}

void sub_100522910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100522934(unint64_t a1, unint64_t a2, int *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  if ((sub_1000BE6E8(off_100B508E8) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  if (!sub_1000E012C(v9, 64))
  {
    return 108;
  }

  v10 = sub_10000C798();
  if (!(*(*v10 + 840))(v10, 1))
  {
    return 108;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v11 = sub_100518000(off_100B508D8, a1);
  if (!v11)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  sub_100519430(v11, v9, a3);
  if (qword_100B50B88 != -1)
  {
    sub_10083E4E0();
  }

  v12 = sub_1000117DC(qword_100B50B80, a1);
  v13 = qword_100BCE8C8;
  result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (result)
    {
      sub_100018384(v12, v24);
      v14 = v27;
      v15 = *v24;
      sub_1000E5A58(v9, __p);
      v16 = v24;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v23 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = *a3;
      *buf = 136446722;
      *&buf[4] = v16;
      v29 = 2082;
      v30 = v17;
      v31 = 1024;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Session %{public}s reading in Spatial Audio Allowed device %{public}s to %d", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v27 & 0x80000000) == 0)
      {
        return 0;
      }

      v19 = *v24;
      goto LABEL_46;
    }
  }

  else if (result)
  {
    sub_1000E5A58(v9, buf);
    if (v31 >= 0)
    {
      v20 = buf;
    }

    else
    {
      v20 = *buf;
    }

    v21 = *a3;
    *v24 = 136446466;
    *&v24[4] = v20;
    v25 = 1024;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Spatial Audio Allowed for device %{public}s to %d", v24, 0x12u);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      return 0;
    }

    v19 = *buf;
LABEL_46:
    operator delete(v19);
    return 0;
  }

  return result;
}

void sub_100522C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100522C8C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v13 = sub_1000E41C0(off_100B508E8, a2);
  if (!v13)
  {
    return 7;
  }

  if (a4 >= 4)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E810();
    }

    return 3;
  }

  v14 = v13;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v15 = sub_1000BE6E8(off_100B508E8);
  v16 = qword_100BCE8C8;
  if (v15)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v14, __p);
      v17 = v40[9] >= 0 ? __p : *__p;
      *buf = 136446466;
      *&buf[4] = v17;
      v35 = 1024;
      v36 = a4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerSpatialAudioConfig:  %{public}s Allowed %d", buf, 0x12u);
      if ((v40[9] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (!sub_1000E012C(v14, 64))
    {
      return 108;
    }

    v18 = sub_10000C798();
    if (!(*(*v18 + 840))(v18, 1))
    {
      return 108;
    }

    if (qword_100B508E0 != -1)
    {
      sub_10083E258();
    }

    v19 = sub_100518000(off_100B508D8, a1);
    if (v19)
    {
      if (qword_100B50B88 != -1)
      {
        sub_10083E6BC();
      }

      v20 = sub_1000117DC(qword_100B50B80, a1);
      v21 = qword_100BCE8C8;
      v22 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v22)
        {
          sub_100018384(v20, buf);
          v23 = v37;
          v24 = *buf;
          sub_1000E5A58(v14, v32);
          v25 = buf;
          if (v23 < 0)
          {
            v25 = v24;
          }

          if (v33 >= 0)
          {
            v26 = v32;
          }

          else
          {
            v26 = v32[0];
          }

          *__p = 136446978;
          *&__p[4] = v25;
          v27 = "YES";
          v39 = 2082;
          if (a5 != -1)
          {
            v27 = "NO";
          }

          *v40 = v26;
          *&v40[8] = 1024;
          *&v40[10] = a4;
          v41 = 2082;
          v42 = v27;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to Spatial Audio config for device %{public}s to %d Head Tracking %{public}s", __p, 0x26u);
          if (v33 < 0)
          {
            operator delete(v32[0]);
          }

LABEL_55:
          if (v37 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else if (v22)
      {
        sub_1000E5A58(v14, buf);
        if (v37 >= 0)
        {
          v28 = buf;
        }

        else
        {
          v28 = *buf;
        }

        v29 = "YES";
        *__p = 136446722;
        if (!a5)
        {
          v29 = "NO";
        }

        *&__p[4] = v28;
        v39 = 1024;
        *v40 = a4;
        *&v40[4] = 2082;
        *&v40[6] = v29;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Setting Spatial Audio config for device %{public}s to %d Head Tracking %{public}s", __p, 0x1Cu);
        goto LABEL_55;
      }

      v30 = [NSString stringWithUTF8String:a3];
      if ([v30 compare:@"global"])
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v6 = sub_100519AF8(v19, v14, v31, a4, a5);

      return v6;
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E55C();
  }

  return 212;
}

void sub_1005230E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100523118(unint64_t a1, unint64_t a2, uint64_t a3, int *a4, int *a5)
{
  if (!a4)
  {
    return 3;
  }

  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v12 = sub_1000E41C0(off_100B508E8, a2);
  if (!v12)
  {
    return 7;
  }

  v13 = v12;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  if ((sub_1000BE6E8(off_100B508E8) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  if (!sub_1000E012C(v13, 64))
  {
    return 108;
  }

  v14 = sub_10000C798();
  if (!(*(*v14 + 840))(v14, 1))
  {
    return 108;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v15 = sub_100518000(off_100B508D8, a1);
  if (!v15)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  sub_10051982C(v15, v13, a3, a4, a5);
  if (qword_100B50B88 != -1)
  {
    sub_10083E4E0();
  }

  v16 = sub_1000117DC(qword_100B50B80, a1);
  v17 = qword_100BCE8C8;
  result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (!result)
    {
      return result;
    }

    sub_100018384(v16, v30);
    v18 = v31;
    v19 = v30[0];
    sub_1000E5A58(v13, __p);
    v20 = v30;
    if (v18 < 0)
    {
      v20 = v19;
    }

    if (v29 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    v22 = *a4;
    v23 = *a5;
    *buf = 136446978;
    if (v23)
    {
      v24 = "YES";
    }

    else
    {
      v24 = "NO";
    }

    v33 = v20;
    v34 = 2082;
    *v35 = v21;
    *&v35[8] = 1024;
    *&v35[10] = v22;
    v36 = 2082;
    v37 = v24;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Session %{public}s reading in Spatial Audio config for device %{public}s to %dHead Tracking %{public}s", buf, 0x26u);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_1000E5A58(v13, v30);
    if (v31 >= 0)
    {
      v25 = v30;
    }

    else
    {
      v25 = v30[0];
    }

    v26 = *a4;
    if (*a5)
    {
      v27 = "YES";
    }

    else
    {
      v27 = "NO";
    }

    *buf = 136446722;
    v33 = v25;
    v34 = 1024;
    *v35 = v26;
    *&v35[4] = 2082;
    *&v35[6] = v27;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Spatial Audio config for device %{public}s to %d %{public}s", buf, 0x1Cu);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  return 0;
}

void sub_1005234A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005234C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (!sub_1000E2140(v7, 32) || sub_1000DFB74(v8, 0x80000u) != 4)
  {
    return 108;
  }

  if (sub_1000E5DB8(v8) != a3)
  {
    sub_100546280(v8, a3);
  }

  return 0;
}

uint64_t sub_10052358C(unint64_t a1, unint64_t a2, int *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  if ((sub_1000BE6E8(off_100B508E8) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  if (!sub_1000E2140(v9, 32) || sub_1000DFB74(v9, 0x80000u) != 4)
  {
    return 108;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  *a3 = sub_1000E5DB8(v9);
  if (qword_100B50B88 != -1)
  {
    sub_10083E4E0();
  }

  v10 = sub_1000117DC(qword_100B50B80, a1);
  v11 = qword_100BCE8C8;
  result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (result)
    {
      sub_100018384(v10, v23);
      v12 = v26;
      v13 = *v23;
      sub_1000E5A58(v9, __p);
      v14 = v23;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if (v22 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      v16 = *a3;
      *buf = 136446722;
      *&buf[4] = v14;
      if (v16 == 1)
      {
        v17 = "Auto";
      }

      else
      {
        v17 = "Manual";
      }

      v28 = 2082;
      v29 = v15;
      v30 = 2080;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session %{public}s reading in smart routing mode for device %{public}s to %s", buf, 0x20u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v26 & 0x80000000) == 0)
      {
        return 0;
      }

      v18 = *v23;
LABEL_51:
      operator delete(v18);
      return 0;
    }
  }

  else if (result)
  {
    sub_1000E5A58(v9, buf);
    if (v30 >= 0)
    {
      v19 = buf;
    }

    else
    {
      v19 = *buf;
    }

    v20 = "Manual";
    if (*a3 == 1)
    {
      v20 = "Auto";
    }

    *v23 = 136446466;
    *&v23[4] = v19;
    v24 = 2080;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "smart routing mode mode for device %{public}s to %s", v23, 0x16u);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      return 0;
    }

    v18 = *buf;
    goto LABEL_51;
  }

  return result;
}

void sub_1005238CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005238F0(unint64_t a1, unint64_t a2, int *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  if ((sub_1000BE6E8(off_100B508E8) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  if (!sub_1000E2140(v9, 32) || sub_1000DFB74(v9, 0x80000u) != 4)
  {
    return 108;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  if (sub_1000E2E8C(v9))
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *a3 = v10;
  if (qword_100B50B88 != -1)
  {
    sub_10083E4E0();
  }

  v11 = sub_1000117DC(qword_100B50B80, a1);
  v12 = qword_100BCE8C8;
  result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (result)
    {
      sub_100018384(v11, v24);
      v13 = v27;
      v14 = *v24;
      sub_1000E5A58(v9, __p);
      v15 = v24;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v23 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      v17 = *a3;
      *buf = 136446722;
      *&buf[4] = v15;
      if (v17 == 1)
      {
        v18 = "Supported";
      }

      else
      {
        v18 = "NOT Supported";
      }

      v29 = 2082;
      v30 = v16;
      v31 = 2080;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Session %{public}s reading in smart routing support for device %{public}s to %s", buf, 0x20u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v27 & 0x80000000) == 0)
      {
        return 0;
      }

      v19 = *v24;
LABEL_54:
      operator delete(v19);
      return 0;
    }
  }

  else if (result)
  {
    sub_1000E5A58(v9, buf);
    if (v31 >= 0)
    {
      v20 = buf;
    }

    else
    {
      v20 = *buf;
    }

    v21 = "NOT Supported";
    if (*a3 == 1)
    {
      v21 = "Supported";
    }

    *v24 = 136446466;
    *&v24[4] = v20;
    v25 = 2080;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "smart routing support for device %{public}s to %s", v24, 0x16u);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      return 0;
    }

    v19 = *buf;
    goto LABEL_54;
  }

  return result;
}

void sub_100523C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100523C60(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  if (!sub_100518000(off_100B508D8, a1))
  {
    return 7;
  }

  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v9 = sub_1000E41C0(off_100B508E8, a2);
  if (!v9)
  {
    return 7;
  }

  v10 = v9;
  if (sub_1000DFB74(v9, 0x80000u) != 4)
  {
    return 108;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10083E4E0();
  }

  v11 = sub_1000117DC(qword_100B50B80, a1);
  if (v11)
  {
    v12 = v11;
    v13 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v12, v20);
      v14 = v21;
      v15 = v20[0];
      sub_1000E5A58(v10, __p);
      v16 = v20;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v19 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 136446466;
      v23 = v16;
      v24 = 2082;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to set device state on peer source for device %{public}s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }
    }
  }

  if (qword_100B50950 != -1)
  {
    sub_10083E74C();
  }

  return sub_100337B04(off_100B50948, v10, a3, a4, 0);
}

void sub_100523E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100523EB0(uint64_t a1, unint64_t a2, int *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (sub_1000DFB74(v7, 0x80000u) != 4)
  {
    return 108;
  }

  if (!sub_1000E012C(v8, 64))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E884(v8);
    }

    return 108;
  }

  v9 = sub_10000C798();
  v10 = (*(*v9 + 840))(v9, 1);
  result = 0;
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_100523FD8(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (sub_1000DFB74(v7, 0x80000u) != 4)
  {
    return 108;
  }

  if (sub_1000E2140(v8, 41))
  {
    v9 = sub_10000C798();
    if ((*(*v9 + 840))(v9, 11))
    {
      result = 0;
      *a3 = 2;
      return result;
    }
  }

  if (!sub_100549A3C(v8) || (v10 = sub_10000C798(), !(*(*v10 + 840))(v10, 8)))
  {
    *a3 = 0;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E90C(v8);
    }

    return 108;
  }

  *a3 = 1;
  result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10083E994(v8);
    return 0;
  }

  return result;
}

uint64_t sub_100524178(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (sub_1000DFB74(v7, 0x80000u) != 4)
  {
    return 108;
  }

  v9 = sub_1000E0734(v8);
  v10 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Get Call Management: 0x%x", v13, 8u);
  }

  if ((v9 & 0xF) == 1)
  {
    *a3 = 1;
    a3[3] = v9 >> 4;
    a3[4] = BYTE1(v9) & 0xF;
    a3[5] = v9 >> 12;
    v11 = HIWORD(v9) & 0xF;
    v12 = 6;
    goto LABEL_20;
  }

  if ((v9 & 0xF) == 0)
  {
    *a3 = 0;
    a3[1] = v9 >> 4;
    v11 = (v9 >> 8) & 0xF;
    a3[2] = BYTE1(v9) & 0xF;
    a3[3] = v9 >> 4;
    v12 = 4;
LABEL_20:
    result = 0;
    a3[v12] = v11;
    return result;
  }

  return 0;
}

uint64_t sub_100524308(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  *a3 = sub_100539460(v7);
  if (sub_1000DFB74(v8, 0x80000u) != 4)
  {
    return 108;
  }

  if (*a3 == 0xFFFFFFFFLL)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083EA1C();
    }

    return 105;
  }

  else
  {
    v9 = sub_100548DB8(v8);
    v10 = qword_100BCE8C8;
    if ((v9 & 1) == 0 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      v13 = *a3;
      v14 = 134217984;
      v15 = v13;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Prox Card Status: Capabilities not received yet, returning local value: %llx", &v14, 0xCu);
      v10 = qword_100BCE8C8;
    }

    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v11)
    {
      v12 = *a3;
      v14 = 134217984;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Get Features: 0x%llx", &v14, 0xCu);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005244DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (sub_1000DFB74(v7, 0x80000u) != 4)
  {
    return 108;
  }

  if (qword_100B50950 != -1)
  {
    sub_10083E774();
  }

  v9 = off_100B50948;

  return sub_10033F9CC(v9, v8, a3);
}

uint64_t sub_1005245AC(uint64_t a1, unint64_t a2, int *a3)
{
  *a3 = 0;
  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (sub_1000DFB74(v7, 0x80000u) == 4)
  {
    if (sub_1000E012C(v8, 64))
    {
      v9 = sub_10000C798();
      v10 = (*(*v9 + 840))(v9, 3);
      result = 0;
      *a3 = v10 << 31 >> 31;
      return result;
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083EA50(v8);
    }
  }

  return 108;
}

uint64_t sub_1005246C4(uint64_t a1, unint64_t a2, int *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (sub_1000DFB74(v7, 0x80000u) != 4)
  {
    return 108;
  }

  if (!sub_1000E012C(v8, 64))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083EAD8(v8);
    }

    return 108;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10083E640();
  }

  if (sub_10059A098(off_100B50A98))
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10083E640();
    }

    v9 = sub_10059A098(off_100B50A98) == 1;
  }

  else
  {
    v10 = sub_10000C798();
    v9 = (*(*v10 + 840))(v10, 3);
  }

  v11 = v9 << 31 >> 31;
  *a3 = v11;
  v12 = qword_100BCE8C8;
  v13 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v13)
  {
    v14[0] = 67109120;
    v14[1] = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Get Spatial Spatial Profile BTAccessoryManagerGetDeviceSoundProfileAllowed:  %d", v14, 8u);
    return 0;
  }

  return result;
}

uint64_t sub_1005248B8(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (sub_1000DFB74(v7, 0x80000u) != 4)
  {
    return 108;
  }

  if (!sub_1000E012C(v8, 64))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083EB60(v8);
    }

    return 108;
  }

  if (qword_100B50940 != -1)
  {
    sub_10083E590();
  }

  (*(*off_100B50938 + 368))();
  v9 = qword_100BCE8C8;
  v10 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v10)
  {
    v11[0] = 67109120;
    v11[1] = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set Spatial Spatial Profile BTAccessoryManagerGetDeviceSoundProfileAllowed:  %d", v11, 8u);
    return 0;
  }

  return result;
}

uint64_t sub_100524A68(uint64_t a1, unint64_t a2, int *a3)
{
  if (a2 - 4294901761u < 2 || a2 == 0)
  {
    return 3;
  }

  v14[5] = v3;
  v14[6] = v4;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v9 = sub_1000E41C0(off_100B508E8, a2);
  if (!v9)
  {
    return 7;
  }

  v10 = v9;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v13 = 0;
    v14[0] = 0;
    sub_1000C2364(v10, v14 + 1, v14, &v13 + 1, &v13);
    v11 = 0;
    if ((HIDWORD(v13) - 8194) <= 0x2D && ((1 << (BYTE4(v13) - 2)) & 0x20647A877F9BLL) != 0)
    {
      if ((HIDWORD(v13) - 8194) > 0xE)
      {
        v11 = 1;
      }

      else
      {
        v11 = dword_1008A9D74[HIDWORD(v13) - 8194];
      }
    }

    v12 = v11 | (HIDWORD(v13) == 8214);
    if (v12)
    {
      if (sub_1000E2140(v10, 15))
      {
        v12 = -1;
      }

      else
      {
        v12 = sub_1000E2140(v10, 1) << 31 >> 31;
      }
    }

    result = 0;
    *a3 = v12;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_100524BFC(unint64_t a1, unint64_t *a2, _WORD *a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v6 = sub_10000C798();
    if ((*(*v6 + 840))(v6, 2))
    {
      if (qword_100B50B88 != -1)
      {
        sub_10083E4E0();
      }

      result = sub_1000117DC(qword_100B50B80, a1);
      if (result)
      {
        v8 = result;
        if (qword_100B50940 != -1)
        {
          sub_10083E590();
        }

        v9 = sub_10062D338(off_100B50938, a3);
        if (v9)
        {
          v10 = v9;
          if (qword_100B508F0 != -1)
          {
            sub_10083E4CC();
          }

          *a2 = sub_10056A4C4(off_100B508E8, a1, v10);
          v11 = qword_100BCE8C8;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR);
          if (result)
          {
            sub_100018384(v8, v19);
            v12 = v20;
            v13 = v19[0];
            sub_1000E5A58(v10, __p);
            v14 = v19;
            if (v12 < 0)
            {
              v14 = v13;
            }

            if (v18 >= 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = __p[0];
            }

            v16 = *a3;
            *buf = 136446722;
            v22 = v14;
            v23 = 2082;
            v24 = v15;
            v25 = 1024;
            v26 = v16;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "BTAccessoryManagerGetAdaptiveLatencyJitterBufferLevel Session %{public}s for device %{public}s is returning jitterBufferLevel %u", buf, 0x1Cu);
            if (v18 < 0)
            {
              operator delete(__p[0]);
            }

            if (v20 < 0)
            {
              operator delete(v19[0]);
            }

            return 0;
          }
        }

        else
        {
          *a2 = 4294901761;
          result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR);
          if (result)
          {
            sub_10083EC1C();
            return 0;
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_10083EBE8();
      }

      return 2;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

void sub_100524EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100524ED4(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083EC84();
    }

    return 7;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v5 = sub_1000E41C0(off_100B508E8, a2);
  if (!v5)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083EC50();
    }

    return 7;
  }

  v6 = v5;
  if (qword_100B50940 != -1)
  {
    sub_10083E590();
  }

  v7 = sub_10062D1F0(off_100B50938, v6);
  *a3 = v7;
  v8 = qword_100BCE8C8;
  v9 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v9)
  {
    v11[0] = 67109120;
    v11[1] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetSensorStreamingFrequency - %u", v11, 8u);
    return 0;
  }

  return result;
}

uint64_t sub_100525044(uint64_t a1, unint64_t a2, void *a3, _WORD *a4)
{
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083ECEC();
    }

    return 7;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083ECB8();
    }

    return 7;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_10053932C(v7, &v14);
  v8 = v14;
  if (v14 == v15)
  {
    v10 = v14;
  }

  else
  {
    v9 = malloc_type_malloc(v15 - v14, 0x100004077774924uLL);
    *a3 = v9;
    memcpy(v9, v14, v15 - v14);
    v8 = v14;
    v10 = v15;
  }

  v12 = v10 - v8;
  *a4 = v10 - v8;
  v13 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetGyroInformation - Retrieved gyro information of size %zu", buf, 0xCu);
    v8 = v14;
  }

  if (v8)
  {
    v15 = v8;
    operator delete(v8);
  }

  return 0;
}

void sub_1005251EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100525210(uint64_t a1, unint64_t a2, int *a3)
{
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083ED54();
    }

    return 7;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v5 = sub_1000E41C0(off_100B508E8, a2);
  if (!v5)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083ED20();
    }

    return 7;
  }

  v6 = v5;
  if (qword_100B50940 != -1)
  {
    sub_10083E590();
  }

  v7 = sub_1006374C8(off_100B50938, v6);
  *a3 = v7 << 31 >> 31;
  v8 = qword_100BCE8C8;
  v9 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v9)
  {
    v11[0] = 67109120;
    v11[1] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetWirelessSharingSpatial - %d", v11, 8u);
    return 0;
  }

  return result;
}

uint64_t sub_100525384(uint64_t a1, int a2, void *a3, void *a4, unint64_t a5)
{
  v8 = objc_opt_new();
  v9 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEBUG))
  {
    sub_10083ED88(a2, v9);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (qword_100B50950 != -1)
  {
    sub_10083E74C();
  }

  sub_100338644(a2, &v25);
  for (i = v25; i != v26; i = (i + 24))
  {
    __p[1] = 0;
    v24 = 0;
    __p[0] = 0;
    if (*(i + 23) < 0)
    {
      sub_100008904(__p, *i, *(i + 1));
    }

    else
    {
      v11 = *i;
      v24 = *(i + 2);
      *__p = v11;
    }

    v12 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEBUG))
    {
      if (v24 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136446210;
      v29 = v15;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "BTAccessoryManagerGetCaseSerialNumbersForAppleProductId retrieved serial number %{public}s", buf, 0xCu);
    }

    if (v24 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [NSString stringWithUTF8String:v13];
    if ([v14 length] >= 2)
    {
      [v8 addObject:v14];
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v22 = 0;
  v16 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:&v22];
  v17 = v22;
  if (v17)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083EE04();
    }

    v18 = 1;
  }

  else if ([v16 length] <= a5)
  {
    v19 = v16;
    memcpy(a3, [v16 bytes], objc_msgSend(v16, "length"));
    v18 = 0;
    *a4 = [v16 length];
  }

  else
  {
    v18 = 5;
  }

  __p[0] = &v25;
  sub_1000161FC(__p);

  return v18;
}

void sub_100525654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  __p = &a21;
  sub_1000161FC(&__p);

  _Unwind_Resume(a1);
}

uint64_t sub_1005256B8(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void *a5, unint64_t a6)
{
  v8 = objc_opt_new();
  v9 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEBUG))
  {
    sub_10083EE78(a3, v9);
  }

  if (a3)
  {
    v10 = 0;
    v11 = a3;
    do
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      if (qword_100B50950 != -1)
      {
        sub_10083E74C();
      }

      sub_100338644(*(a2 + 4 * v10), &v30);
      for (i = v30; i != v31; i = (i + 24))
      {
        __p[1] = 0;
        v29 = 0;
        __p[0] = 0;
        if (*(i + 23) < 0)
        {
          sub_100008904(__p, *i, *(i + 1));
        }

        else
        {
          v13 = *i;
          v29 = *(i + 2);
          *__p = v13;
        }

        v14 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEBUG))
        {
          if (v29 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          v18 = *(a2 + 4 * v10);
          *buf = 136446467;
          v34 = v17;
          v35 = 1025;
          v36 = v18;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds retrieved serial number %{public}s for productID %{private}u", buf, 0x12u);
        }

        if (v29 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        v16 = [NSString stringWithUTF8String:v15];
        if ([v16 length] >= 2)
        {
          [v8 addObject:v16];
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = &v30;
      sub_1000161FC(__p);
      ++v10;
    }

    while (v10 != v11);
  }

  v27 = 0;
  v19 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:&v27];
  v20 = v27;
  if (v20)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083EEF4();
    }

    v21 = 1;
  }

  else if ([v19 length] <= a6)
  {
    v22 = v19;
    memcpy(a4, [v19 bytes], objc_msgSend(v19, "length"));
    v21 = 0;
    *a5 = [v19 length];
  }

  else
  {
    v21 = 5;
  }

  return v21;
}

uint64_t sub_100525A14(unint64_t a1, unint64_t a2, int *a3)
{
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083EF9C();
    }

    return 7;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v6 = sub_100518000(off_100B508D8, a1);
  if (!v6)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  v7 = v6;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083EF68();
    }

    return 7;
  }

  v9 = sub_100519EA0(v7, v8, a3);
  v10 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    if (qword_100B50950 != -1)
    {
      sub_10083E774();
    }

    v11 = sub_10033C694(off_100B50948, *a3);
    v13 = 136315138;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetPrimaryBudSide - Primary Bud Side: %s", &v13, 0xCu);
  }

  return v9;
}

uint64_t sub_100525BE8(uint64_t a1, unint64_t a2, int a3, int *a4)
{
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083F078();
    }

    return 7;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083F044();
    }

    return 7;
  }

  v8 = v7;
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        v25 = sub_1000E00E4(v7);
        goto LABEL_38;
      }

      if (a3 != 1)
      {
        goto LABEL_50;
      }

      v21 = sub_1000E012C(v7, 144);
      if (v21)
      {
        v22 = sub_10000C7D0();
        v21 = sub_1000E01B4(v22, 0);
      }

      *a4 = v21;
      v15 = qword_100BCE8C8;
      if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      v23 = sub_1000E012C(v8, 144);
      v24 = sub_10000C7D0();
      v41 = 67109376;
      v42 = v23;
      v43 = 1024;
      v44 = sub_1000E01B4(v24, 0);
      v18 = "Adaptive Volume: BT_ACCESSORY_HEADPHONE_FEATURE_ADAPTIVE_VOLUME_SUPPORT: accessorySupport %d sourceSupport %d";
    }

    else if (a3 == 2)
    {
      v28 = sub_1000E012C(v7, 176);
      if (v28)
      {
        v29 = sub_10000C7D0();
        v28 = sub_1000E01B4(v29, 3u);
      }

      *a4 = v28;
      v15 = qword_100BCE8C8;
      if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      v30 = sub_1000E012C(v8, 176);
      v31 = sub_10000C7D0();
      v41 = 67109376;
      v42 = v30;
      v43 = 1024;
      v44 = sub_1000E01B4(v31, 3u);
      v18 = "AutoANC: BT_ACCESSORY_HEADPHONE_FEATURE_AUTO_ANC_SUPPORT: accessorySupport %d sourceSupport %d";
    }

    else
    {
      if (a3 == 3)
      {
        v25 = sub_1000E20B0(v7);
        goto LABEL_38;
      }

      v13 = sub_1000E012C(v7, 160);
      if (v13)
      {
        v14 = sub_10000C7D0();
        v13 = sub_1000E01B4(v14, 2u);
      }

      *a4 = v13;
      v15 = qword_100BCE8C8;
      if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      v16 = sub_1000E012C(v8, 160);
      v17 = sub_10000C7D0();
      v41 = 67109376;
      v42 = v16;
      v43 = 1024;
      v44 = sub_1000E01B4(v17, 2u);
      v18 = "Conversation Detect: BT_ACCESSORY_HEADPHONE_FEATURE_CONVERSATION_DETECT_SUPPORT: accessorySupport %d sourceSupport %d";
    }

    v32 = v15;
LABEL_55:
    v35 = 14;
    goto LABEL_56;
  }

  if (a3 > 8)
  {
    switch(a3)
    {
      case 9:
        v34 = sub_10054FBB0(v7);
        *a4 = v34;
        v27 = qword_100BCE8C8;
        if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v41 = 67109120;
        v42 = v34;
        v18 = "Hearing Aid: BT_ACCESSORY_HEADPHONE_FEATURE_HEARING_AID_ENROLLED Get: %d";
        break;
      case 10:
        v26 = sub_10054FC88(v7);
        *a4 = v26;
        v27 = qword_100BCE8C8;
        if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v41 = 67109120;
        v42 = v26;
        v18 = "Hearing Aid: BT_ACCESSORY_HEADPHONE_FEATURE_HEARING_AID_ENABLED Get: %d";
        break;
      case 11:
        if (sub_1000E012C(v7, 64))
        {
          v19 = sub_10000C798();
          v20 = (*(*v19 + 840))(v19, 1);
        }

        else
        {
          v20 = 0;
        }

        v33 = sub_10054952C(v8) & v20;
        goto LABEL_59;
      default:
        goto LABEL_50;
    }

    v32 = v27;
    v35 = 8;
LABEL_56:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v18, &v41, v35);
    goto LABEL_60;
  }

  if (a3 != 5)
  {
    if (a3 != 7)
    {
      if (a3 == 8)
      {
        v9 = sub_1000E3218(v7, 6u);
        if (v9 < 3)
        {
          v11 = 0;
        }

        else
        {
          v10 = sub_10000C7D0();
          v11 = sub_1000E01B4(v10, 4u);
        }

        *a4 = v11;
        v36 = qword_100BCE8C8;
        if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v37 = sub_10000C7D0();
        v41 = 67109376;
        v42 = v9 > 2;
        v43 = 1024;
        v44 = sub_1000E01B4(v37, 4u);
        v18 = "SSL: BT_ACCESSORY_HEADPHONE_FEATURE_SSL_SUPPORT: accessorySupport %d sourceSupport %d";
        v32 = v36;
        goto LABEL_55;
      }

LABEL_50:
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_10083EFD0();
      }

      goto LABEL_60;
    }

    v25 = sub_1000E35B4(v7);
LABEL_38:
    *a4 = v25;
    goto LABEL_60;
  }

  v33 = *(v7 + 1046);
LABEL_59:
  *a4 = v33;
LABEL_60:
  v38 = qword_100BCE8C8;
  v39 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v39)
  {
    v40 = *a4;
    v41 = 67109376;
    v42 = a3;
    v43 = 1024;
    v44 = v40;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetHeadphoneFeatureValue - Type: %d, Value: %d", &v41, 0xEu);
    return 0;
  }

  return result;
}

uint64_t sub_100526120(unint64_t a1, unint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083F154();
    }

    return 7;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083F120();
    }

    return 7;
  }

  v9 = v8;
  if (a3 == 10)
  {
    v13 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      v17 = a4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Hearing Aid: BT_ACCESSORY_HEADPHONE_FEATURE_HEARING_AID_ENROLLED Set: %d", &v16, 8u);
    }

    v12 = sub_10054FBB0(v9) | (a4 << 8);
  }

  else
  {
    if (a3 != 9)
    {
      if (a3 == 5)
      {
        sub_100548870(v8, a4 != 0);
      }

      else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_10083F0AC();
      }

      goto LABEL_23;
    }

    v11 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      v17 = a4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Hearing Aid: BT_ACCESSORY_HEADPHONE_FEATURE_HEARING_AID_ENROLLED Set: %d", &v16, 8u);
    }

    v12 = a4 | (sub_10054FC88(v9) << 8);
  }

  sub_10051FF64(a1, a2, 44, v12);
LABEL_23:
  v14 = qword_100BCE8C8;
  v15 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v15)
  {
    v16 = 67109120;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerSetHeadphoneFeatureValue - %d", &v16, 8u);
    return 0;
  }

  return result;
}

void sub_1005266C8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t sub_100526778(uint64_t a1)
{
  sub_1003FCA4C(a1 + 256);

  return sub_10032F580(a1);
}

uint64_t sub_1005267B4(uint64_t a1)
{
  v1 = a1 - 256;
  sub_1003FCA4C(a1);

  return sub_10032F580(v1);
}

void sub_1005267EC(uint64_t a1)
{
  sub_1003FCA4C(a1 + 256);
  sub_10032F580(a1);

  operator delete();
}

uint64_t sub_100526844(uint64_t a1)
{
  v2 = sub_10000C798();
  result = (*(*v2 + 368))(v2);
  if (result)
  {
    v8 = 0;
    sub_1000216B4(&v8);
    v5 = 0;
    v6 = 0;
    v7 = 0;
    if (sub_1002EF24C(sub_1005269C8, off_100AFB9D0, 0x3EFu, 0x3B01u, (a1 + 500), &unk_1008A9DB0))
    {
      if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
      {
        sub_10083F188();
      }
    }

    else
    {
      v4 = &unk_100AFB9F8;
      LOWORD(v5) = 3;
      v6 = &unk_100AFB9B8;
      LOWORD(v7) = 1;
      byte_100B6EFB8 = 1;
      word_100B6EFBA = 1;
      dword_100B6EFC0 = *(a1 + 500);
      if (!sub_1002F7E1C(&v4, (a1 + 496)))
      {
        sub_10002249C(&v8);
        return 0;
      }

      if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
      {
        sub_10083F1F8();
      }
    }

    sub_10002249C(&v8);
    return 1;
  }

  return result;
}

void sub_1005269C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (qword_100B54780 != -1)
  {
    sub_10083F268();
  }

  v6 = off_100B54778;

  sub_100526FD0(v6, a1, a4);
}

uint64_t sub_100526A24(uint64_t a1)
{
  v2 = sub_10000C798();
  result = (*(*v2 + 368))(v2);
  if (result)
  {
    v4 = 0;
    sub_1000216B4(&v4);
    sub_1002F8018(*(a1 + 496));
    if (sub_1002EF558(*(a1 + 500)) == 101)
    {
      if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
      {
        sub_10083F27C();
      }

      sub_10002249C(&v4);
      return 1;
    }

    else
    {
      sub_10002249C(&v4);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100526B20(uint64_t a1, unint64_t a2)
{
  v20 = xmmword_1008A9E20;
  if (a2)
  {
    if (sub_10053A020(a2, &v20, 4u))
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      if (!sub_10053BFB4(a2, &v20, 4u, &v17))
      {
        goto LABEL_49;
      }

      v5 = v17;
      v4 = v18;
      if (v17 == v18)
      {
        goto LABEL_49;
      }

      v6 = v17;
      while (1)
      {
        if (*v6 == 6 && *(v6 + 1) == 2)
        {
          v8 = v6[1];
          v9 = *v8 == 3 && *(v8 + 8) == 3;
          if (v9 && *(v8 + 16) == 1)
          {
            break;
          }
        }

        v6 += 2;
        if (v6 == v18)
        {
          v10 = -1;
          goto LABEL_27;
        }
      }

      v10 = *(v8 + 24);
LABEL_27:
      while (v5 != v4)
      {
        *__p = *v5;
        sub_10037D4F4(__p);
        ++v5;
        v4 = v18;
      }

      if (v10 == -1)
      {
LABEL_49:
        if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
        {
          sub_10083F404();
        }

        v11 = 305;
      }

      else
      {
        v12 = qword_100BCEAB0;
        if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_INFO))
        {
          sub_1000E5A58(a2, __p);
          v13 = v16 >= 0 ? __p : __p[0];
          *buf = 136446466;
          v22 = v13;
          v23 = 1024;
          v24 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Initiating outgoing Braille connection request to device %{public}s on rfcomm channel %d", buf, 0x12u);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        LOWORD(__p[0]) = 0;
        if (sub_1002EF8BC(sub_100526E58, off_100AFBA40, a2 + 128, v10, 0x3EFu, 0x3B01u, __p, &unk_1008A9DB0))
        {
          if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
          {
            sub_10083F394();
          }

          v11 = 305;
        }

        else
        {
          sub_10057E218(a1, a2, __p[0]);
          v11 = 0;
        }

        sub_10002249C(buf);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
      {
        sub_10083F2F8(a2);
      }

      return 305;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
    {
      sub_10083F440();
    }

    return 1;
  }

  return v11;
}

void sub_100526E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100526E58(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v7 = 0;
  if (sub_1002F0070(a1, &v7))
  {
    if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
    {
      sub_10083F47C();
    }
  }

  else
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083F4EC();
    }

    v5 = v7;
    v6 = v8;
    v4 = sub_1000E6554(off_100B508E8, &v5, 1);
    if (qword_100B54780 != -1)
    {
      sub_10083F514();
    }

    sub_1005271E8(off_100B54778, v4, 0, a3);
  }
}

uint64_t sub_100526F34(void *a1, unint64_t a2)
{
  v2 = sub_10057E30C(a1, a2);
  v5 = 0;
  sub_1000216B4(&v5);
  v3 = sub_1002EFF1C(v2, 1818);
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
    {
      sub_10083F53C();
    }

    v3 = 1;
  }

  sub_10002249C(&v5);
  return v3;
}

void sub_100526FD0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083F5AC();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, __p, 1);
  v7 = qword_100BCEAB0;
  if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v8 = v16 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received incoming connection attempt from device %{public}s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_10057DFAC(a1, v6);
  if (v9)
  {
    v10 = sub_1002EFBAC(sub_100526E58, a3, v9);
    v11 = v9 ^ 1;
    if (v10)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      sub_10057E218(a1, v6, a3);
      sub_10057D9B0(a1, v6);
    }
  }

  else
  {
    v12 = qword_100BCEAB0;
    if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Denying connection attempt", __p, 2u);
    }

    v10 = sub_1002EFBAC(sub_100526E58, a3, v9);
  }

  v13 = v10;
  if (v10)
  {
    v14 = qword_100BCEAB0;
    if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
    {
      sub_10083F5C0(v9, v13, v14);
    }
  }
}

void sub_1005271E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10083F660();
    }

    v7 = sub_1000DD584(off_100B50A98, a4, 20000);
    v8 = a1;
    v9 = a2;
LABEL_7:

    sub_10057DA84(v8, v9, v7);
  }

  if (sub_1003FCBC8(a1 + 256, a2))
  {
    v8 = a1;
    v9 = a2;
    v7 = 0;
    goto LABEL_7;
  }

  if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
  {
    sub_10083F674(a2);
  }
}

void sub_1005272C0(void *a1, int a2)
{
  v3 = sub_10057E420(a1, a2);
  sub_10057E710(a1, v3, 0);

  sub_1003FD414((a1 + 32), v3);
}

void sub_100527320(void *a1, int a2, uint64_t a3, int a4)
{
  v7 = sub_10057E420(a1, a2);
  if (v7)
  {

    sub_1003FD79C((a1 + 32), v7, a3, a4, 0);
  }

  else if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
  {
    sub_10083F70C();
  }
}

void sub_1005273B4(void *a1, int a2)
{
  v3 = sub_10057E420(a1, a2);
  if (v3)
  {

    sub_1003FD9B4((a1 + 32), v3);
  }

  else if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
  {
    sub_10083F748();
  }
}

BOOL sub_100527428(void *a1, unint64_t a2, char *a3, unsigned __int16 a4)
{
  v6 = sub_10057E30C(a1, a2);
  v9 = 0;
  sub_1000216B4(&v9);
  v7 = sub_1002EF8B0(sub_1005274F4, v6, a3, a4);
  sub_100022214(&v9);
  if (v7 && os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
  {
    sub_10083F784();
  }

  sub_10002249C(&v9);
  return v7 == 0;
}

void sub_1005274F4(int a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 && os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_ERROR))
  {
    sub_10083F7F4();
  }

  if (qword_100B54780 != -1)
  {
    sub_10083F514();
  }

  sub_1005273B4(off_100B54778, a1);
}

void sub_100527588(int a1, int a2)
{
  v4 = qword_100BCEAB0;
  if (os_log_type_enabled(qword_100BCEAB0, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BrailleProfile RFCOMM Release Reason: %{bluetooth:OI_STATUS}u", v5, 8u);
  }

  if (qword_100B54780 != -1)
  {
    sub_10083F514();
  }

  sub_1005272C0(off_100B54778, a1);
}

void sub_100527664(int a1, uint64_t a2, int a3)
{
  if (qword_100B54780 != -1)
  {
    sub_10083F268();
  }

  v6 = off_100B54778;

  sub_100527320(v6, a1, a2, a3);
}

uint64_t sub_100527808(uint64_t a1)
{
  *sub_100589578(a1, "BrailleService", 0x2000) = &off_100AFBB28;
  if (qword_100B54780 != -1)
  {
    sub_10083F864();
  }

  sub_100589880(a1, off_100B54778);
  return a1;
}

void sub_10052789C(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1005278DC()
{
  if (qword_100B54780 != -1)
  {
    sub_10083F864();
  }

  v0 = *(*(off_100B54778 + 32) + 16);

  return v0();
}

uint64_t sub_100527954(uint64_t a1, uint64_t a2)
{
  v8 = xmmword_1008A9E20;
  if (sub_10053C3E8(a2))
  {
    if (sub_10053A020(a2, &v8, 4u))
    {
      v4 = 4;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 32);
  v9 = 0;
  sub_100016250(&v9);
  *&v7 = v9;
  *(&v7 + 1) = SWORD2(v9);
  return sub_100539554(a2, v5, v4, &v7, 0);
}

uint64_t sub_100527A6C(unint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_10083F878();
  }

  if (!sub_1000117DC(qword_100B50B80, a1))
  {
    return 7;
  }

  v2 = sub_10000E92C();
  (**v2)(v2);
  return 0;
}

uint64_t sub_100527AEC(unint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_10083F878();
  }

  if (!sub_1000117DC(qword_100B50B80, a1))
  {
    return 7;
  }

  v2 = sub_10000E92C();
  sub_100693520(v2, 0xE74u, 1);
  return 0;
}

void sub_100527BBC(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100528BF4;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100527C38(uint64_t a1, int a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100528C48;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_100527CBC(uint64_t a1, int a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100528CA0;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void *sub_100527D40(uint64_t a1)
{
  result = sub_10032F49C(a1, 25);
  *result = &off_100AFBC80;
  result[32] = &off_100AFBCF0;
  return result;
}

_BYTE *sub_100527DA0(uint64_t a1, unint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083F88C();
  }

  v4 = sub_1000504C8(off_100B508E8, a2, 1);
  if (!sub_10053C3E8(v4))
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v4, __p);
      v7 = v14 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Delaying incoming ATT connection attempt for device %{public}s as SDP is missing", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B54670 != -1)
    {
      sub_10083F8A0();
    }

    sub_100587D6C(qword_100B54668, v4);
  }

  if (sub_10057DFAC(a1, v4))
  {
    v5 = sub_1005399A0(v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5 ? "Accepting" : "Rejecting";
    sub_1000E5A58(v4, __p);
    v10 = v14 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v16 = v9;
    v17 = 2082;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ATT %{public}s incoming connection attempt from device %{public}s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v11 = sub_1001BC414(a2, v5);
  sub_100022214(__p);
  if (v11)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083F8C8();
    }
  }

  else if (v5)
  {
    sub_10057D9B0(a1, v4);
  }

  return sub_10002249C(__p);
}

void sub_100528034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100528050(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_10057DFAC(a1, a2))
  {
    v4 = sub_1005399A0(a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v4 ? "Accepting" : "Rejecting";
    sub_1000E5A58(a2, __p);
    v7 = v11 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v13 = v6;
    v14 = 2082;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "QueryComplete, %{public}s ATT incoming connection attempt from  device %{public}s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v8 = sub_1001BC414((a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133], v4);
  sub_100022214(__p);
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083F8C8();
    }
  }

  else if (v4)
  {
    sub_10057D9B0(a1, a2);
  }

  return sub_10002249C(__p);
}

void sub_10052823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083F88C();
  }

  v6 = sub_1000504C8(off_100B508E8, a2, 0);
  v7 = qword_100BCE910;
  if (v6)
  {
    v8 = v6;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT) && ((sub_1000E5A58(v8, __p), v14 >= 0) ? (v9 = __p) : (v9 = __p[0]), *buf = 136446466, v16 = v9, v17 = 1024, v18 = a3, _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Att connection to device confirmed %{public}s with result %{bluetooth:OI_STATUS}u", buf, 0x12u), v14 < 0))
    {
      operator delete(__p[0]);
      if (a3)
      {
        goto LABEL_10;
      }
    }

    else if (a3)
    {
LABEL_10:
      if (qword_100B50AA0 != -1)
      {
        sub_10083F93C();
      }

      v10 = sub_1000DD584(off_100B50A98, a3, 20000);
      v11 = a1;
      v12 = v8;
LABEL_17:
      sub_10057DA84(v11, v12, v10);
    }

    v11 = a1;
    v12 = v8;
    v10 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083F964();
  }
}

void sub_1005283D8(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083F88C();
  }

  v6 = sub_1000504C8(off_100B508E8, a2, 1);
  v7 = qword_100BCE910;
  if (v6)
  {
    v8 = v6;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, __p);
      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136446466;
      v13 = v9;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Att disconnection to devices %{public}s with reason %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10057E710(a1, v8, 0);
  }

  else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083F964();
  }
}

void sub_100528538(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fast Connect GATT Report Connection attempt for %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10057D9B0(a1, a2);
}

void sub_100528634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fast Connect GATT Setup Complete result %d", v8, 8u);
  }

  if (a3)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10083F93C();
    }

    v7 = sub_1000DD584(off_100B50A98, a3, 20000);
  }

  else
  {
    v7 = 0;
  }

  sub_10057DA84(a1, a2, v7);
}

uint64_t sub_100528730()
{
  v0 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Register GATT Profile", buf, 2u);
  }

  v2 = 0;
  sub_1000216B4(&v2);
  sub_1001BD000(off_100AFBC58);
  sub_10002249C(&v2);
  return 0;
}

uint64_t sub_1005287D0()
{
  v0 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Deregister GATT profile", buf, 2u);
  }

  v2 = 0;
  sub_1000216B4(&v2);
  sub_1001BD060();
  sub_10002249C(&v2);
  return 0;
}

uint64_t sub_100528868(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000DEEA4(a2, __p);
    v5 = v11 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GATT disconnecting device %s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = 0;
  sub_1000216B4(&v9);
  v6 = sub_1001BCD64((a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133]);
  sub_100022214(&v9);
  if (v6)
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, __p);
      sub_10083F9A4(__p, buf, v6, v7);
    }

    v6 = 1;
    sub_10057E710(a1, a2, 1);
  }

  sub_10002249C(&v9);
  return v6;
}

uint64_t sub_100528A18(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 264) = 1;
  if (!sub_1005399A0(a2))
  {
    goto LABEL_22;
  }

  if (qword_100B50F78 != -1)
  {
    sub_10083FA28();
  }

  if (!sub_100580844(qword_100B50F70, a2))
  {
    v4 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000DEEA4(a2, __p);
      v5 = v8 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Making classic GATT outgoing connection to device %s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v3 = sub_1001BCB4C((a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133]);
    if (v3)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083FA3C();
      }

      v3 = 1;
    }

    sub_10002249C(__p);
  }

  else
  {
LABEL_22:
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083FAB0();
    }

    return 305;
  }

  return v3;
}

void sub_100528BD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100528BF4(uint64_t a1)
{
  if (qword_100B54790 != -1)
  {
    sub_10083FAF0();
  }

  v2 = qword_100B54788;
  v3 = *(a1 + 32);

  return sub_100527DA0(v2, v3);
}

void sub_100528C48(uint64_t a1)
{
  if (qword_100B54790 != -1)
  {
    sub_10083FAF0();
  }

  v2 = qword_100B54788;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10052823C(v2, v3, v4);
}

void sub_100528CA0(uint64_t a1)
{
  if (qword_100B54790 != -1)
  {
    sub_10083FAF0();
  }

  v2 = qword_100B54788;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_1005283D8(v2, v3, v4);
}

void sub_100528CFC(uint64_t a1)
{
  sub_10032F580(a1);

  operator delete();
}

void sub_100528D4C(uint64_t a1)
{
  sub_10032F580(a1 - 256);

  operator delete();
}

uint64_t sub_100528FD0(int *a1, char *a2, size_t a3)
{
  v11 = *a1;
  v12 = *(a1 + 2);
  __source = 0;
  v9 = 0;
  v10 = 0;
  sub_1000BE6F8(&v11, &__source);
  if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    if (HIBYTE(v10) + 1 > a3)
    {
      return 5;
    }

    p_source = &__source;
LABEL_8:
    strlcpy(a2, p_source, a3);
    v6 = 0;
    result = 0;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v9 + 1 <= a3)
  {
    p_source = __source;
    goto LABEL_8;
  }

  v6 = 5;
LABEL_9:
  operator delete(__source);
  return v6;
}

void sub_10052908C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005290A8(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (sub_1005379CC(v5, a2))
    {
      return 0;
    }

    else
    {
      return 408;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }
}

uint64_t sub_100529174(unint64_t a1, char *a2, size_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083FB04();
    }

    v6 = sub_1000E41C0(off_100B508E8, a1);
    if (v6)
    {
      sub_1005378A0(v6, &v10);
    }

    else
    {
      *uu = 0;
      v15 = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10083FB40();
      }

      sub_1000E61D4(off_100B508C8, a1, uu);
      if (uuid_is_null(uu))
      {
        return 7;
      }

      sub_100007E30(&v10, "Peripheral");
    }

    *__source = v10;
    v13 = v11;
    if (SHIBYTE(v11) < 0)
    {
      if (__source[1] + 1 > a3)
      {
        v7 = 5;
        goto LABEL_29;
      }

      if (!__source[1])
      {
        v7 = 408;
        goto LABEL_29;
      }

      v8 = __source[0];
    }

    else
    {
      if (HIBYTE(v11) + 1 > a3)
      {
        return 5;
      }

      if (!HIBYTE(v11))
      {
        return 408;
      }

      v8 = __source;
    }

    strlcpy(a2, v8, a3);
    v7 = 0;
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      return v7;
    }

LABEL_29:
    operator delete(__source[0]);
    return v7;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E55C();
  }

  return 212;
}

uint64_t sub_100529378(unint64_t a1, char *a2, size_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    __source[0] = 0;
    __source[1] = 0;
    v16 = 0;
    if (qword_100B508F0 != -1)
    {
      sub_10083FB04();
    }

    v6 = sub_1000E41C0(off_100B508E8, a1);
    if (v6)
    {
      sub_1000C23E0(v6, &v13);
      *__source = v13;
      v16 = v14;
    }

    else
    {
      *uu = 0;
      v18 = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10083FB40();
      }

      sub_1000E61D4(off_100B508C8, a1, uu);
      if (uuid_is_null(uu))
      {
        return 7;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10083FB54();
      }

      v11 = off_100B508C8;
      v12 = sub_10004DF60(uu);
      sub_10004FFDC(v11, v12, &v13);
      *__source = v13;
      v16 = v14;
      HIBYTE(v14) = 0;
      LOBYTE(v13) = 0;
    }

    v7 = HIBYTE(v16);
    if (SHIBYTE(v16) < 0)
    {
      if (__source[1] + 1 > a3)
      {
        v8 = 5;
        goto LABEL_25;
      }

      if (__source[1])
      {
        v9 = __source[0];
LABEL_24:
        strlcpy(a2, v9, a3);
        v8 = 0;
        if ((v16 & 0x8000000000000000) == 0)
        {
          return v8;
        }

LABEL_25:
        operator delete(__source[0]);
        return v8;
      }
    }

    else
    {
      if (HIBYTE(v16) + 1 > a3)
      {
        return 5;
      }

      if (HIBYTE(v16))
      {
        v9 = __source;
        goto LABEL_24;
      }
    }

    *a2 = 0;
    v8 = 408;
    if ((v7 & 0x80) == 0)
    {
      return v8;
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E55C();
  }

  return 212;
}

uint64_t sub_1005295D4(unint64_t a1, char *a2, size_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    __source[0] = 0;
    __source[1] = 0;
    v16 = 0;
    if (qword_100B508F0 != -1)
    {
      sub_10083FB04();
    }

    v6 = sub_1000E41C0(off_100B508E8, a1);
    if (v6)
    {
      sub_1000DEEA4(v6, &v13);
      *__source = v13;
      v16 = v14;
    }

    else
    {
      *uu = 0;
      v18 = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10083FB40();
      }

      sub_1000E61D4(off_100B508C8, a1, uu);
      if (uuid_is_null(uu))
      {
        return 7;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10083FB54();
      }

      v11 = off_100B508C8;
      v12 = sub_10004DF60(uu);
      sub_10004FFDC(v11, v12, &v13);
      *__source = v13;
      v16 = v14;
      HIBYTE(v14) = 0;
      LOBYTE(v13) = 0;
    }

    v7 = HIBYTE(v16);
    if (SHIBYTE(v16) < 0)
    {
      if (__source[1] + 1 > a3)
      {
        v8 = 5;
        goto LABEL_25;
      }

      if (__source[1])
      {
        v9 = __source[0];
LABEL_24:
        strlcpy(a2, v9, a3);
        v8 = 0;
        if ((v16 & 0x8000000000000000) == 0)
        {
          return v8;
        }

LABEL_25:
        operator delete(__source[0]);
        return v8;
      }
    }

    else
    {
      if (HIBYTE(v16) + 1 > a3)
      {
        return 5;
      }

      if (HIBYTE(v16))
      {
        v9 = __source;
        goto LABEL_24;
      }
    }

    *a2 = 0;
    v8 = 408;
    if ((v7 & 0x80) == 0)
    {
      return v8;
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E55C();
  }

  return 212;
}

uint64_t sub_100529830(unint64_t a1, char *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 408;
  }

  v5 = v4;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v5, __p);
    v7 = v10 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v12 = v7;
    v13 = 2080;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set user-defined name for %s to %s", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100007E30(__p, a2);
  sub_100538D30(v5, __p, 1);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_100529984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005299A8(unint64_t a1, int *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  v6 = sub_10053F074(v4);
  if (sub_100540A94(v5))
  {
    v6 |= 2u;
  }

  if (sub_100540C18(v5))
  {
    v6 |= 4u;
  }

  if (sub_100540CA8(v5))
  {
    v6 |= 8u;
  }

  v7 = sub_100540D38(v5);
  result = 0;
  if (v7)
  {
    v9 = v6 | 0x10;
  }

  else
  {
    v9 = v6;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_100529A70(unint64_t a1, unsigned int a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v6 = off_100B508E8;

  return sub_10056CAC0(v6, v5, 0, (a2 >> 1) & 1, (a2 & 4) != 0, (a2 & 8) != 0, (a2 >> 4) & 1);
}

uint64_t sub_100529B20(unint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v6 = sub_1000E41C0(off_100B508E8, a1);
  if (!v6)
  {
    return 7;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_100541260(v6, &v13);
  v7 = v13;
  v8 = v14;
  if (v13 == v14)
  {
    v9 = 0;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = v13;
    do
    {
      v11 = *v10++;
      *(a2 + 4 * v9) = v11;
      v9 = (v9 + 1);
    }

    while (v10 != v8);
  }

  *a3 = v9;
  if (v7)
  {
    v14 = v7;
    operator delete(v7);
  }

  return 0;
}

uint64_t sub_100529BE0(unint64_t a1, int a2, int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v6 = sub_1000E41C0(off_100B508E8, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100541260(v6, &__p);
  v8 = __p;
  v16 = __p;
  if (a3)
  {
    if (__p >= v17)
    {
      v11 = (v17 - __p) >> 1;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      if (v17 - __p >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v12 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      sub_10036F560(&__p, v12);
    }

    *__p = a2;
    v9 = v8 + 4;
  }

  else
  {
    if (__p >= v17)
    {
      v13 = (v17 - __p) >> 1;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      if (v17 - __p >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      sub_10036F560(&__p, v14);
    }

    *__p = -2;
    v9 = v8 + 4;
  }

  v16 = v9;
  sub_10054106C(v7, &__p);
  sub_10053E630(v7);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_100529D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100529D80(unint64_t a1, int *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  *uu = 0;
  v10 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10083FB40();
  }

  sub_1000E61D4(off_100B508C8, a1, uu);
  if (v4)
  {
    v5 = sub_1000295DC(v4);
    result = 0;
    *a2 = v5 << 31 >> 31;
  }

  else if (uuid_is_null(uu))
  {
    return 7;
  }

  else
  {
    if (qword_100B508C0 != -1)
    {
      sub_10083FB7C();
    }

    v7 = off_100B508B8;
    v8 = sub_10004DF60(uu);
    *a2 = sub_10004EE74(v7, v8) << 31 >> 31;

    return 0;
  }

  return result;
}

uint64_t sub_100529ED4(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (!sub_1000E41C0(off_100B508E8, a1))
  {
    return 7;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_100529F34(unint64_t a1, int *a2)
{
  *a2 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  if (qword_100B50AB0 != -1)
  {
    sub_10083FBA4();
  }

  v6 = sub_1000E2570(off_100B50AA8, v5);
  result = 0;
  *a2 = v6 << 31 >> 31;
  return result;
}

uint64_t sub_100529FCC(unint64_t a1, int *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_1000C0348(v4);
  result = 0;
  *a2 = v5 << 31 >> 31;
  return result;
}

uint64_t sub_10052A038(unint64_t a1, int *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v6 = sub_1000E2140(v5, 12);
    result = 0;
    *a2 = v6 << 31 >> 31;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_10052A108(unint64_t a1, int *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v6 = sub_1000E2140(v5, 22);
    result = 0;
    *a2 = v6 << 31 >> 31;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_10052A1D8(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_10053C9C8(v4);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_10052A240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (qword_100B50AC0 != -1)
  {
    sub_10083FBB8();
  }

  v8 = off_100B50AB8;

  return sub_100590678(v8, a1, a2, a3, a4);
}

uint64_t sub_10052A2B4(uint64_t a1, uint64_t a2)
{
  if (qword_100B50AC0 != -1)
  {
    sub_10083FBB8();
  }

  v4 = off_100B50AB8;

  return sub_10059074C(v4, a1, a2);
}

uint64_t sub_10052A310(unint64_t a1, int a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  memset(&v29, 0, sizeof(v29));
  if (qword_100B50B88 != -1)
  {
    sub_10083FBCC();
  }

  v6 = sub_1000117DC(qword_100B50B80, a1);
  if (v6)
  {
    v7 = v6;
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v7, &v28);
      v9 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      v10 = v28.__r_.__value_.__r.__words[0];
      sub_1000DEEA4(v5, __p);
      v11 = &v28;
      if (v9 < 0)
      {
        v11 = v10;
      }

      if (v27 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136446466;
      v31 = v11;
      v32 = 2082;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to connect device %{public}s", buf, 0x16u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v8 = qword_100BCE8D8;
    }

    if (os_signpost_enabled(v8))
    {
      sub_100018384(v7, &v28);
      v13 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      v14 = v28.__r_.__value_.__r.__words[0];
      sub_1000DEEA4(v5, __p);
      v15 = &v28;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v27 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136446466;
      v31 = v15;
      v32 = 2082;
      v33 = v16;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "Session %{public}s is asking to connect device %{public}s", buf, 0x16u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }

    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      v18 = CTGreenTeaOsLogHandle;
      if (CTGreenTeaOsLogHandle)
      {
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v7, &v28);
          v19 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
          v20 = v28.__r_.__value_.__r.__words[0];
          sub_1000DEEA4(v5, __p);
          v21 = &v28;
          if (v19 < 0)
          {
            v21 = v20;
          }

          if (v27 >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          *buf = 136446466;
          v31 = v21;
          v32 = 2082;
          v33 = v22;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Session %{public}s is asking to connect device %{public}s", buf, 0x16u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v28.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    sub_100018384(v7, &v28);
    v29 = v28;
  }

  if (qword_100B508A0 != -1)
  {
    sub_10083FBE0();
  }

  sub_100574640(off_100B50898, 0, 0);
  if (_os_feature_enabled_impl())
  {
    if (sub_1000E2140(v5, 12) && (sub_1000295DC(v5) & 1) == 0)
    {
      v23 = sub_100017E6C();
      if ((*(*v23 + 240))(v23))
      {
        sub_10054865C(v5, 1);
      }
    }
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10083FC08();
  }

  v24 = sub_10059234C(off_100B50AB8, v5, a2, &v29, 2);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return v24;
}

void sub_10052A740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052A78C(unint64_t a1, int a2, int a3, _OWORD *a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v8 = sub_1000E41C0(off_100B508E8, a1);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  if (qword_100B50B88 != -1)
  {
    sub_10083FBCC();
  }

  v10 = sub_1000117DC(qword_100B50B80, a1);
  if (v10)
  {
    v11 = v10;
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v11, &v31);
      v13 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v14 = v31.__r_.__value_.__r.__words[0];
      sub_1000C23E0(v9, __p);
      v15 = &v31;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v30 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136446466;
      v33 = v15;
      v34 = 2082;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BTDeviceConnectServicesWithParameters %{public}s is asking to connect device %{public}s with params", buf, 0x16u);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      v18 = CTGreenTeaOsLogHandle;
      if (CTGreenTeaOsLogHandle)
      {
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v11, &v31);
          v19 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
          v20 = v31.__r_.__value_.__r.__words[0];
          sub_1000C23E0(v9, __p);
          v21 = &v31;
          if (v19 < 0)
          {
            v21 = v20;
          }

          if (v30 >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          *buf = 136446466;
          v33 = v21;
          v34 = 2082;
          v35 = v22;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Session %{public}s is asking to connect device %{public}s with params", buf, 0x16u);
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  v23 = qword_100BCE8D8;
  if (a3 > 7)
  {
    if (a3 > 31)
    {
      switch(a3)
      {
        case 32:
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v31.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BTDeviceConnectServicesWithParameters, BTDeviceConnectTiPiMode", &v31, 2u);
          }

          if (qword_100B50950 != -1)
          {
            sub_10083FC64();
          }

          sub_100338418(off_100B50948, v9, 1);
          goto LABEL_95;
        case 64:
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v31.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BTDeviceConnectServicesWithParameters, BTDeviceConnectGuestPairingMode", &v31, 2u);
          }

          if (_os_feature_enabled_impl())
          {
            sub_100548870(v9, 1);
          }

          else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10083FC30();
          }

          goto LABEL_95;
        case 128:
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v31.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BTDeviceConnectServicesWithParameters, BTDeviceConnectUnderManagedTemporaryMode", &v31, 2u);
          }

          sub_10054865C(v9, 1);
LABEL_95:
          if (qword_100B508A0 != -1)
          {
            sub_10083FBE0();
          }

          sub_100574640(off_100B50898, 0, 0);
          if (qword_100B50AC0 != -1)
          {
            sub_10083FC08();
          }

          memset(&v31, 0, sizeof(v31));
          v24 = sub_10059234C(off_100B50AB8, v9, a2, &v31, 2);
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          return v24;
      }

      goto LABEL_90;
    }

    if (a3 == 8)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BTDeviceConnectServicesWithParameters BTDeviceConnectNormalModeNoOwnership", &v31, 2u);
      }

      sub_100548A1C(v9, 0);
      goto LABEL_95;
    }

    if (a3 == 16)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BTDeviceConnectServicesWithParameters, BTDeviceConnectOwnerNoMagicPairing", &v31, 2u);
      }

      sub_10053E56C(v9, 1);
      __p[0] = 0;
      __p[1] = 0;
      if (*a4 == 0)
      {
        goto LABEL_95;
      }

      v25 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "BTDeviceConnectServicesWithParameters, connectwithLinkey", &v31, 2u);
      }

      memset(&v31, 0, 20);
      sub_1006D1BAC(&v31, a4, 5u);
      if (qword_100B512E8 != -1)
      {
        sub_10083FC8C();
      }

      v24 = sub_1006E7F2C(off_100B512E0, v9, &v31, 0);
LABEL_76:
      nullsub_21(&v31);
      if (v24)
      {
        return v24;
      }

      goto LABEL_95;
    }

    goto LABEL_90;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10083FCE8();
      }

      sub_1005484E8(v9, 1);
      if (sub_1000C0348(v9))
      {
        v26 = sub_1000DAB84();
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10052B020;
        v28[3] = &unk_100ADF8F8;
        v28[4] = v9;
        sub_10000CA94(v26, v28);
      }

      goto LABEL_95;
    }

    if (a3 == 1)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BTDeviceConnectServicesWithParameters BTDeviceConnectGuestMode", &v31, 2u);
      }

      sub_1005483C0(v9, 1);
      v9[64].n128_u32[1] = 1;
      goto LABEL_95;
    }

    goto LABEL_90;
  }

  if (a3 == 2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BTDeviceConnectServicesWithParameters BTDeviceConnectGuestModeWithLinkey", &v31, 2u);
    }

    memset(&v31, 0, 20);
    sub_1006D1BAC(&v31, a4, 5u);
    if (qword_100B512E8 != -1)
    {
      sub_10083FC8C();
    }

    v24 = sub_1006E7F2C(off_100B512E0, v9, &v31, 0);
    sub_1005483C0(v9, 1);
    v9[64].n128_u32[1] = 2;
    if (v24 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FCB4();
    }

    goto LABEL_76;
  }

  if (a3 != 4)
  {
LABEL_90:
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FD1C();
    }

    return 2;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v31.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BTDeviceConnectServicesWithParameters BTDeviceConnectGuestModeNotInContactsWithLinkkey", &v31, 2u);
  }

  memset(&v31, 0, 20);
  sub_1006D1BAC(&v31, a4, 5u);
  if (qword_100B512E8 != -1)
  {
    sub_10083FC8C();
  }

  v24 = sub_1006E7F2C(off_100B512E0, v9, &v31, 0);
  sub_1005483C0(v9, 1);
  sub_100548454(v9, 1);
  v9[64].n128_u32[1] = 2;
  if (v24 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10083FCB4();
  }

  nullsub_21(&v31);
  a2 = 524312;
  if (!v24)
  {
    goto LABEL_95;
  }

  return v24;
}

void sub_10052B020(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10083FD50();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  sub_1004D79A8(v2, v3);
}

uint64_t sub_10052B074(unint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v2 = sub_1000E41C0(off_100B508E8, a1);
  if (!v2)
  {
    return 7;
  }

  v3 = v2;
  if (qword_100B50B88 != -1)
  {
    sub_10083FBCC();
  }

  v4 = sub_1000117DC(qword_100B50B80, a1);
  if (v4)
  {
    v5 = v4;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v5, v24);
      v7 = v25;
      v8 = v24[0];
      sub_1000DEEA4(v3, __p);
      v9 = v24;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if (v23 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446466;
      v27 = v9;
      v28 = 2082;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to disconnect physical link for device %{public}s", buf, 0x16u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      v6 = qword_100BCE8D8;
    }

    if (os_signpost_enabled(v6))
    {
      sub_100018384(v5, v24);
      v11 = v25;
      v12 = v24[0];
      sub_1000DEEA4(v3, __p);
      v13 = v24;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v23 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136446466;
      v27 = v13;
      v28 = 2082;
      v29 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "Session %{public}s is asking to disconnect physical link for device %{public}s", buf, 0x16u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      v16 = CTGreenTeaOsLogHandle;
      if (CTGreenTeaOsLogHandle)
      {
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v5, v24);
          v17 = v25;
          v18 = v24[0];
          sub_1000DEEA4(v3, __p);
          v19 = v24;
          if (v17 < 0)
          {
            v19 = v18;
          }

          if (v23 >= 0)
          {
            v20 = __p;
          }

          else
          {
            v20 = __p[0];
          }

          *buf = 136446466;
          v27 = v19;
          v28 = 2082;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Session %{public}s is asking to disconnect physical link for device %{public}s", buf, 0x16u);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }

          if (v25 < 0)
          {
            operator delete(v24[0]);
          }
        }
      }
    }
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10083FC08();
  }

  sub_1005922D4(off_100B50AB8, v3, 1);
  return 0;
}

void sub_10052B3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052B3F4(unint64_t a1, int a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  if (qword_100B50B88 != -1)
  {
    sub_10083FBCC();
  }

  v6 = sub_1000117DC(qword_100B50B80, a1);
  if (v6)
  {
    v7 = v6;
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v7, v22);
      v9 = v23;
      v10 = v22[0];
      sub_1000DEEA4(v5, __p);
      v11 = v22;
      if (v9 < 0)
      {
        v11 = v10;
      }

      if (v21 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136446466;
      v25 = v11;
      v26 = 2082;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to disconnect device %{public}s", buf, 0x16u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      v14 = CTGreenTeaOsLogHandle;
      if (CTGreenTeaOsLogHandle)
      {
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v7, v22);
          v15 = v23;
          v16 = v22[0];
          sub_1000DEEA4(v5, __p);
          v17 = v22;
          if (v15 < 0)
          {
            v17 = v16;
          }

          if (v21 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136446466;
          v25 = v17;
          v26 = 2082;
          v27 = v18;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Session %{public}s is asking to disconnect device %{public}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }
        }
      }
    }
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10083FC08();
  }

  return sub_100593A4C(off_100B50AB8, v5, a2);
}

void sub_10052B684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052B6AC(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  *uu = 0;
  v7 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10083FB40();
  }

  sub_1000E61D4(off_100B508C8, a1, uu);
  *a2 = 0;
  if (v4)
  {
    *a2 |= sub_100542124(v4);
  }

  if (!uuid_is_null(uu))
  {
    if (qword_100B508B0 != -1)
    {
      sub_10083FD64();
    }

    if (sub_100050290(off_100B508A8, uu))
    {
      *a2 |= 0x8000u;
    }
  }

  if (v4 || !uuid_is_null(uu))
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_10052B7E4(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  *uu = 0;
  v7 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10083FB40();
  }

  sub_1000E61D4(off_100B508C8, a1, uu);
  *a2 = 0;
  if (v4)
  {
    if (qword_100B50AC0 != -1)
    {
      sub_10083FC08();
    }

    *a2 |= sub_1000DFA00(off_100B50AB8, v4);
  }

  if (uuid_is_null(uu))
  {
    if (v4)
    {
      return 0;
    }
  }

  else
  {
    *a2 |= 0x8000u;
    if (v4)
    {
      return 0;
    }
  }

  if (uuid_is_null(uu))
  {
    return 7;
  }

  return 0;
}

uint64_t sub_10052B918(unint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v8 = sub_1000E41C0(off_100B508E8, a1);
  v9 = v8;
  if (a1 - 4294901761u >= 2 && !v8)
  {
    return 7;
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10083FBB8();
  }

  v11 = off_100B50AB8;

  return sub_10059724C(v11, v9, a2, a3, a4);
}

uint64_t sub_10052B9EC(unint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v8 = sub_1000E41C0(off_100B508E8, a1);
  v9 = v8;
  if (a1 - 4294901761u >= 2 && !v8)
  {
    return 7;
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10083FBB8();
  }

  v11 = off_100B50AB8;

  return sub_100597354(v11, v9, a2, a3, a4);
}

uint64_t sub_10052BAC0(unint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v2 = sub_1000E41C0(off_100B508E8, a1);
  if (!v2)
  {
    return 7;
  }

  sub_1005394A8(v2, 0);
  return 0;
}

uint64_t sub_10052BB20(unint64_t a1, int a2, char *a3, size_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v8 = sub_1000E41C0(off_100B508E8, a1);
  v9 = v8;
  if (a1 - 4294901761u >= 2 && !v8)
  {
    return 7;
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10083FBB8();
  }

  v11 = off_100B50AB8;

  return sub_100597468(v11, v9, a2, a3, a4);
}

uint64_t sub_10052BBF4(unint64_t a1, void *a2, size_t a3, int *a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v8 = sub_1000E41C0(off_100B508E8, a1);
  if (!v8)
  {
    return 7;
  }

  v9 = sub_10054D4D0(v8, a2, a3);
  result = 0;
  *a4 = v9 << 31 >> 31;
  return result;
}

uint64_t sub_10052BC78(unint64_t a1, void *a2, size_t a3, uint64_t a4, void *a5, unsigned int a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v12 = sub_1000E41C0(off_100B508E8, a1);
  if (!v12)
  {
    return 7;
  }

  if (sub_10054C3DC(v12, a2, a3, a4, a5, a6))
  {
    return *a5 == 0;
  }

  return 1;
}

uint64_t sub_10052BD20(unint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v10 = sub_1000E41C0(off_100B508E8, a1);
  if (!v10)
  {
    return 7;
  }

  v11 = v10;
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    result = 1;
    if (a2 && a3 && a4)
    {
      if (a5)
      {
        return sub_1000C2364(v11, a2, a3, a4, a5) ^ 1;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_10052BE20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v6 = sub_1000E41C0(off_100B508E8, a1);
  if (qword_100B547A0 != -1)
  {
    sub_10083FD8C();
  }

  (*(*off_100B54798 + 240))(off_100B54798, v6, a2, a3);
  return 0;
}

uint64_t sub_10052BED0(unint64_t a1, int *a2, uint64_t a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v8 = sub_1000E41C0(off_100B508E8, a1);
  v9 = qword_100BCE8D8;
  if (a4 && (v10 = v8) != 0)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v10, __p);
      v11 = v14 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending linkkey to device %{public}s ", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B50950 != -1)
    {
      sub_10083FC64();
    }

    return sub_10035B804(off_100B50948, v10, a2, a3);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FDA0(a4 != 0, v9);
    }

    return 7;
  }
}

uint64_t sub_10052C050(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *a2 = -*(v5 + 1016);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FE30();
    }

    return 7;
  }

  return result;
}

uint64_t sub_10052C0E4(unint64_t a1, int *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v6 = sub_1000E2140(v5, 27);
    result = 0;
    *a2 = v6 << 31 >> 31;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_10052C1B4(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *a2 = -*(v5 + 1032);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FE64();
    }

    return 7;
  }

  return result;
}

uint64_t sub_10052C248(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_10053D064(v4);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_10052C2B0(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_10053D11C(v4);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_10052C318(unint64_t a1, int a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (v4)
  {
    v5 = v4;
    if (qword_100B50950 != -1)
    {
      sub_10083FE98();
    }

    v6 = off_100B50948;

    return sub_100349058(v6, v5, a2 != 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FEAC();
    }

    return 7;
  }
}

uint64_t sub_10052C3E0(unint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_10000C7D0();
  if (!(*(*v6 + 3240))(v6))
  {
    return 2;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v7 = sub_1000E41C0(off_100B508E8, a1);
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 128) | (*(v7 + 132) << 32);
    v10 = sub_10000C7D0();
    v11 = sub_1000DEB14(v8);
    v12 = *(*v10 + 56);

    return v12(v10, v9, v11, a2, a3 != 0, a3 != 0, 1, 1);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FEE0();
    }

    return 7;
  }
}

uint64_t sub_10052C538(unint64_t a1, int *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_10054F768(v4);
  result = 0;
  *a2 = v5 << 31 >> 31;
  return result;
}

uint64_t sub_10052C5A4(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083FB04();
    }

    v4 = sub_1000E41C0(off_100B508E8, a1);
    if (v4)
    {
      v5 = sub_1000E45E8(v4);
      result = 0;
      *a2 = v5;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_10052C664(unint64_t a1, int a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083FB04();
    }

    v4 = sub_1000E41C0(off_100B508E8, a1);
    if (v4)
    {
      v5 = v4;
      sub_100537AF8(v4, a2);
      v6 = sub_1000DAB84();
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10052C7D4;
      v11[3] = &unk_100ADF940;
      v11[4] = v5;
      v12 = a2;
      sub_10000CA94(v6, v11);
      v7 = sub_1000D999C();
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10052C82C;
      v9[3] = &unk_100ADF940;
      v9[4] = v5;
      v10 = a2;
      sub_10000CA94(v7, v9);
      return 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }
}

void sub_10052C7D4(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10083FD50();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_1004DD40C(v2, v3, v4);
}

void sub_10052C82C(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10083FF14();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_1005E78B0(v2, v3, v4);
}

uint64_t sub_10052C884(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_1000E31D0(v4);
  result = 0;
  *a2 = ((v5 >> 1) & 1) - 1;
  return result;
}

uint64_t sub_10052CE54(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  v9 = a6;
  v10 = a7;
  return a2(a3, a4, a5, &v9, a8);
}

uint64_t sub_10052CEC4(unint64_t a1, unint64_t *a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v4 = sub_1000117DC(qword_100B50B80, a1);
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v5 = sub_100571C4C(off_100B50898, a1);
  *a2 = v5;
  if (v5)
  {
    return 0;
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    if (v4)
    {
      sub_10083FF3C(v4, v8, v7);
    }

    else
    {
      sub_10083FFD0(v8, v7);
    }
  }

  return 7;
}

uint64_t sub_10052CFD0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (!v6)
  {
    return 7;
  }

  return sub_100572DEC(v6, a1, a2, a3);
}

uint64_t sub_10052D05C(uint64_t a1, __int128 *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  return sub_100572EE4(v4, a1, a2);
}

uint64_t sub_10052D0D4(unint64_t a1, int a2, int a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v8 = sub_1000117DC(qword_100B50B80, a1);
  if (v8)
  {
    v9 = v8;
    if (qword_100B50B88 != -1)
    {
      sub_10083FF28();
    }

    v10 = qword_100B50B80;
    v11 = sub_100011794(v9);
    v12 = sub_100618F20(v10, v11);
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v9, __p);
      v14 = __p[0];
      v15 = "off";
      if (v27 >= 0)
      {
        v14 = __p;
      }

      if (a3 == -1)
      {
        v15 = "on";
      }

      *buf = 136446722;
      v29 = v14;
      v30 = 2082;
      v31 = v15;
      if (a2 == 1)
      {
        v16 = "Bluetooth";
      }

      else
      {
        v16 = "Unknown";
      }

      v32 = 2082;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Session %{public}s is turning power %{public}s for module %{public}s", buf, 0x20u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v18 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v9, __p);
          v19 = __p[0];
          v20 = "off";
          if (v27 >= 0)
          {
            v19 = __p;
          }

          if (a3 == -1)
          {
            v20 = "on";
          }

          *buf = 136446722;
          v29 = v19;
          v30 = 2082;
          v31 = v20;
          if (a2 == 1)
          {
            v21 = "Bluetooth";
          }

          else
          {
            v21 = "Unknown";
          }

          v32 = 2082;
          v33 = v21;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Session %{public}s is turning power %{public}s for module %{public}s", buf, 0x20u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v23 = sub_10000E92C();
  v24 = (*(*v23 + 8))(v23);
  if (a3 || (v24 & 1) != 0)
  {
    if (a3)
    {
      return sub_1005745E0(v7, v12);
    }
  }

  else
  {
    v25 = sub_10000F034();
    (*(*v25 + 160))(v25, 3);
  }

  return sub_100572D98(v7, v12);
}

uint64_t sub_10052D400(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v3 = sub_10000C798();
  if ((*(*v3 + 840))(v3, 1))
  {
    *a2 = -1;
  }

  return 0;
}

uint64_t sub_10052D468(unint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v2 = sub_1000117DC(qword_100B50B80, a1);
  if (v2)
  {
    v3 = v2;
    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v5 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v3, __p);
          if (v9 >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = __p[0];
          }

          *buf = 136446210;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Session %{public}s is asking to power down local device ", buf, 0xCu);
          if (v9 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  return sub_1005747C8();
}

uint64_t sub_10052D5C4(unint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v2 = sub_1000117DC(qword_100B50B80, a1);
  if (v2)
  {
    v3 = v2;
    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v5 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v3, __p);
          if (v9 >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = __p[0];
          }

          *buf = 136446210;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Session %{public}s is asking to reset local device", buf, 0xCu);
          if (v9 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  return sub_10057480C();
}

uint64_t sub_10052D720(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_10057499C(v4, &v6);
  if (result)
  {
    return 1;
  }

  *a2 = -v6;
  return result;
}

uint64_t sub_10052D7A4(uint64_t a1, char *a2, size_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (!v6)
  {
    return 7;
  }

  v14 = 0;
  v13 = 0;
  result = sub_100574B84(v6, &v13);
  if (!result)
  {
    __source = 0;
    v11 = 0;
    v12 = 0;
    sub_1000BE6F8(&v13, &__source);
    if (SHIBYTE(v12) < 0)
    {
      if (v11 + 1 > a3)
      {
        v8 = 5;
LABEL_15:
        operator delete(__source);
        return v8;
      }

      p_source = __source;
    }

    else
    {
      if (HIBYTE(v12) + 1 > a3)
      {
        return 5;
      }

      p_source = &__source;
    }

    strlcpy(a2, p_source, a3);
    v8 = 0;
    result = 0;
    if (SHIBYTE(v12) < 0)
    {
      goto LABEL_15;
    }
  }

  return result;
}

void sub_10052D8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052D8C0(unint64_t a1, int a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v6 = sub_1000117DC(qword_100B50B80, a1);
  if (v6)
  {
    v7 = v6;
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v7, __p);
      v9 = __p[0];
      v10 = "discoverable";
      if (v13 >= 0)
      {
        v9 = __p;
      }

      if (!a2)
      {
        v10 = "not discoverable";
      }

      *buf = 136446466;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to set local device %s", buf, 0x16u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return sub_100572080(v5, a1, a2 != 0);
}

uint64_t sub_10052DA48(unint64_t a1, int a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  return sub_100571E5C(v4, a1, a2 != 0);
}

uint64_t sub_10052DAC4(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_1005755A4(v4, &v6);
  if (!result)
  {
    *a2 = -v6;
  }

  return result;
}

uint64_t sub_10052DB40(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v8 = sub_100059CB8(off_100B50898, a1);
  if (!v8)
  {
    return 7;
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v9 = sub_10009E064(v8, &__p);
  if (!v9)
  {
    v10 = 0;
    if (a4)
    {
      v11 = __p;
      while (v11 != v16)
      {
        v12 = *v11;
        if (qword_100B508F0 != -1)
        {
          sub_10084001C();
        }

        v13 = sub_10056A4C4(off_100B508E8, a1, v12);
        if (!v13)
        {
          v9 = 7;
          goto LABEL_16;
        }

        *(a2 + 8 * v10++) = v13;
        ++v11;
        if (a4 == v10)
        {
          v10 = a4;
          break;
        }
      }
    }

    v9 = 0;
    *a3 = v10;
  }

LABEL_16:
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_10052DC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052DC8C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v8 = sub_100059CB8(off_100B50898, a1);
  if (!v8)
  {
    return 7;
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v9 = sub_100575620(v8, &__p);
  if (!v9)
  {
    v10 = 0;
    if (a4)
    {
      v11 = __p;
      while (v11 != v16)
      {
        v12 = *v11;
        if (qword_100B508F0 != -1)
        {
          sub_10084001C();
        }

        v13 = sub_10056A4C4(off_100B508E8, a1, v12);
        if (!v13)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100840044();
          }

          v9 = 7;
          goto LABEL_18;
        }

        *(a2 + 8 * v10++) = v13;
        ++v11;
        if (a4 == v10)
        {
          v10 = a4;
          break;
        }
      }
    }

    v9 = 0;
    *a3 = v10;
  }

LABEL_18:
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_10052DDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052DE00(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_10057566C(v4, &v6);
  if (!result)
  {
    *a2 = -v6;
  }

  return result;
}

uint64_t sub_10052DE7C(uint64_t a1, int *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  v4 = sub_100575E24();
  result = 0;
  *a2 = v4 << 31 >> 31;
  return result;
}

void sub_10052DEE8(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (sub_100059CB8(off_100B50898, a1))
  {

    sub_1005749E8();
  }
}

uint64_t sub_10052DF54(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_100574B30(v4, &v6);
  if (!result)
  {
    *a2 = -v6;
  }

  return result;
}

uint64_t sub_10052DFD0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v8 = sub_100059CB8(off_100B50898, a1);
  if (!v8)
  {
    return 7;
  }

  return sub_100574A2C(v8, a2, a3, a4);
}

uint64_t sub_10052E060(uint64_t a1, int a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  return sub_100574A98(v4, a2);
}

uint64_t sub_10052E0D4(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  return sub_100574AEC();
}

uint64_t sub_10052E140(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (qword_100B508A0 != -1)
    {
      sub_1000AD694();
    }

    if (!sub_100059CB8(off_100B50898, a1))
    {
      return 7;
    }
  }

  v6 = sub_10000C798();
  v7 = (*(*v6 + 56))(v6, a2);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t sub_10052E1E0(uint64_t a1, const void *a2, size_t a3, const void *a4, unint64_t a5)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v10 = sub_100059CB8(off_100B50898, a1);
  if (!v10)
  {
    return 7;
  }

  return sub_100573A14(v10, a1, a2, a3, a4, a5);
}

uint64_t sub_10052E288(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v10 = sub_100059CB8(off_100B50898, a1);
  if (!v10)
  {
    return 7;
  }

  return sub_100573CD8(v10, a1, a2, a3, a4, a5);
}

uint64_t sub_10052E330(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (v2)
  {

    return sub_100572FC0(v2);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840078();
    }

    return 7;
  }
}

uint64_t sub_10052E3E4(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (v2)
  {

    return sub_1005722A4(v2, a1);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008400AC();
    }

    return 7;
  }
}

uint64_t sub_10052E47C(uint64_t a1, uint64_t a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (v4)
  {

    return sub_1005730A0(v4, a1, a2);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008400E0();
    }

    return 7;
  }
}

uint64_t sub_10052E51C(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (v2)
  {

    return sub_100573154(v2);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840114();
    }

    return 7;
  }
}

uint64_t sub_10052E5D0(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (v2)
  {

    return sub_1005722A4(v2, a1);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840148();
    }

    return 7;
  }
}

uint64_t sub_10052E668(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v12 = sub_100059CB8(off_100B50898, a1);
  if (v12)
  {

    return sub_100573204(v12, a1, a2 != 0, a3, a4, a5, a6);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084017C();
    }

    return 7;
  }
}

uint64_t sub_10052E744(uint64_t a1, int a2, uint64_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (v6)
  {

    return sub_100573328(v6, a1, a2 != 0, a3);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008401E4();
    }

    return 7;
  }
}

uint64_t sub_10052E7FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v12 = sub_100059CB8(off_100B50898, a1);
  if (v12)
  {

    return sub_1005734E8(v12, a1, a2, a3, a4, a5, a6);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840218();
    }

    return 7;
  }
}

uint64_t sub_10052E8D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v24 = sub_100059CB8(off_100B50898, a1);
  if (v24)
  {
    return sub_100573608(v24, a1, a2 != 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10084024C();
  }

  return 7;
}

uint64_t sub_10052E9D4(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (sub_100059CB8(off_100B50898, a1))
  {

    return sub_1005756B8();
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840280();
    }

    return 7;
  }
}

uint64_t sub_10052EA68(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, unint64_t a5)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v10 = sub_100059CB8(off_100B50898, a1);
  if (v10)
  {
    if (a5 >= 0xFE)
    {
      v11 = 254;
    }

    else
    {
      v11 = a5;
    }

    return sub_1005757DC(v10, a2, a3, a4, v11);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008402B4();
    }

    return 7;
  }
}

uint64_t sub_10052EB3C(unint64_t a1, char *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008402E8();
    }

    return 7;
  }

  v5 = v4;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v6 = sub_1000117DC(qword_100B50B80, a1);
  if (!v6)
  {
    return 7;
  }

  return sub_100574850(v5, v6, a2);
}

uint64_t sub_10052EC1C(unint64_t a1, uint64_t a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084031C();
    }

    return 7;
  }

  v5 = v4;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v6 = sub_1000117DC(qword_100B50B80, a1);
  if (!v6)
  {
    return 7;
  }

  return sub_100574348(v5, v6, a2);
}

uint64_t sub_10052ECFC(unint64_t a1, unint64_t a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840364();
    }

    return 7;
  }

  v5 = v4;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v6 = sub_1000117DC(qword_100B50B80, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  if (qword_100B508F0 != -1)
  {
    sub_100840350();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    return 7;
  }

  return sub_100574424(v5, v7, v8);
}

uint64_t sub_10052EE0C()
{
  v0 = sub_10000C7D0();
  v1 = sub_100413630(v0);
  v2 = *sub_10000C7D0();
  if (v1)
  {
    return (*(v2 + 1920))();
  }

  else
  {
    return (*(v2 + 1192))();
  }
}

uint64_t sub_10052EEBC(unint64_t a1, int a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  return sub_100574640(v4, a1, a2 != 0);
}

uint64_t sub_10052EF38(uint64_t a1, int *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  v4 = sub_100574ECC();
  result = 0;
  *a2 = v4 << 31 >> 31;
  return result;
}

uint64_t sub_10052EFA4(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v8 = sub_100059CB8(off_100B50898, a1);
  if (v8)
  {
    return sub_100574F10(v8, a2, a3, a4);
  }

  else
  {
    return 7;
  }
}

uint64_t sub_10052F01C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  if (qword_100B50940 != -1)
  {
    sub_100840398();
  }

  if (sub_100637810(off_100B50938, a2, a3))
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t sub_10052F0B8(uint64_t a1, int *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  if (qword_100B50940 != -1)
  {
    sub_100840398();
  }

  v4 = sub_100630E30(off_100B50938);
  result = 0;
  *a2 = v4 << 31 >> 31;
  return result;
}

uint64_t sub_10052F144(uint64_t a1, char *a2, size_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  memset(&__source, 0, sizeof(__source));
  if (qword_100B547B0 != -1)
  {
    sub_1008403AC();
  }

  if ((sub_1006127E8(off_100B547A8, &__source) & 1) == 0)
  {
    v7 = 1;
    goto LABEL_16;
  }

  if (SHIBYTE(__source.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__source.__r_.__value_.__l.__size_ + 1 <= a3)
    {
      p_source = __source.__r_.__value_.__r.__words[0];
      goto LABEL_15;
    }

LABEL_13:
    v7 = 5;
    goto LABEL_16;
  }

  if (HIBYTE(__source.__r_.__value_.__r.__words[2]) + 1 > a3)
  {
    goto LABEL_13;
  }

  p_source = &__source;
LABEL_15:
  strlcpy(a2, p_source, a3);
  v7 = 0;
LABEL_16:
  if (SHIBYTE(__source.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__source.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_10052F24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052F268(uint64_t a1, _WORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  if (a2)
  {
    if (qword_100B512B8 != -1)
    {
      sub_1008403C0();
    }

    v4 = qword_100B512B0;
    if (qword_100B512B0)
    {

      return sub_10031A318(v4, a2);
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008403D4();
    }

    return 7;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100840408();
  }

  return 3;
}

uint64_t sub_10052F35C(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  if (!a2)
  {
    return 3;
  }

  v6 = [[NSUUID alloc] initWithUUIDBytes:a2];
  v7 = sub_1000D999C();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10052F484;
  v10[3] = &unk_100ADF920;
  v8 = v6;
  v11 = v8;
  v12 = a3;
  sub_10000CA94(v7, v10);

  return 0;
}

uint64_t sub_10052F484()
{
  if (qword_100B54080 != -1)
  {
    sub_10084043C();
  }

  v0 = off_100B54078;

  return sub_1006FCE54(v0);
}

uint64_t sub_10052F7CC(unsigned int *a1)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  sub_100007AD0(&v20);
  v2 = __p;
  sub_1000E5A58(*(a1 + 1), __p);
  if (v19 < 0)
  {
    v2 = __p[0];
  }

  strlen(v2);
  v3 = sub_100007774(&v21);
  v4 = sub_100007774(v3);
  v5 = *a1;
  if (v5 > 3)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_100AFC310[v5];
  }

  strlen(v6);
  v7 = sub_100007774(v4);
  v8 = sub_100007774(v7);
  v9 = sub_100007774(v8);
  sub_100007774(v9);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = __p;
  sub_1005977A0(a1 + 6);
  if (v19 < 0)
  {
    v10 = __p[0];
  }

  strlen(v10);
  v11 = sub_100007774(&v21);
  sub_100007774(v11);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = __p;
  sub_1005977A0(a1 + 5);
  if (v19 < 0)
  {
    v12 = __p[0];
  }

  strlen(v12);
  v13 = sub_100007774(&v21);
  v14 = sub_100007774(v13);
  v36 = *(a1 + 17);
  v15 = sub_100007774(v14);
  sub_100007774(v15);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  *&v21 = v16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[1]);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}