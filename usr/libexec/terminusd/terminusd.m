void sub_100001848(id a1)
{
  v1 = mach_thread_self();
  policy_info = 0;
  thread_policy_set(v1, 1u, &policy_info, 1u);
  if (proc_setthread_cpupercent())
  {
    policy_info = 1;
    thread_policy_set(v1, 1u, &policy_info, 1u);
  }

  mach_port_deallocate(mach_task_self_, v1);
}

void sub_1000018C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      type = xpc_get_type(v3);
      if (type == &_xpc_type_connection)
      {
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = sub_1000591C0;
        v30 = sub_1000591D0;
        v7 = v3;
        v31 = v7;
        v9 = objc_getProperty(WeakRetained, v8, 48, 1);
        LOBYTE(v7) = sub_100001CAC(v7, v9);

        if (v7)
        {
          v11 = v27[5];
          Property = *(a1 + 32);
          if (Property)
          {
            Property = objc_getProperty(Property, v10, 8, 1);
          }

          v13 = Property;
          xpc_connection_set_target_queue(v11, v13);

          objc_initWeak(&location, WeakRetained);
          v14 = v27[5];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100001EF4;
          handler[3] = &unk_1001FAB78;
          handler[5] = &v26;
          objc_copyWeak(&v24, &location);
          handler[4] = *(a1 + 32);
          xpc_connection_set_event_handler(v14, handler);
          xpc_connection_resume(v27[5]);
          v16 = *(a1 + 32);
          if (v16)
          {
            v16 = objc_getProperty(v16, v15, 24, 1);
          }

          v17 = v16;
          [v17 addObject:v27[5]];

          objc_destroyWeak(&v24);
          objc_destroyWeak(&location);
        }

        else
        {
          if (qword_100228FC0 != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          v18 = qword_100228FB8;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_100228FC0 != -1)
            {
              dispatch_once(&qword_100228FC0, &stru_1001FABC0);
            }

            v20 = qword_100228FB8;
            xpc_connection_get_pid(v27[5]);
            _NRLogWithArgs();
          }

          xpc_connection_cancel(v27[5]);
        }

        _Block_object_dispose(&v26, 8);
      }

      else if (type == &_xpc_type_error)
      {
        v6 = xpc_copy_description(v3);
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FC0 != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          _NRLogWithArgs();
        }

        if (v6)
        {
          free(v6);
        }
      }
    }
  }

  else
  {
    v21 = sub_100056D2C();
    v22 = _NRLogIsLevelEnabled();

    if (!v22)
    {
      goto LABEL_28;
    }

    WeakRetained = sub_100056D2C();
    _NRLogWithArgs();
  }

LABEL_28:
}

void sub_100001C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001CAC(void *a1, void *a2)
{
  v21 = a1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v20 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v20)
  {
    v19 = *v23;
    while (2)
    {
      v3 = 0;
      while (2)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v22 + 1) + 8 * v3);
        v5 = v21;
        v6 = v4;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (!v8)
        {
LABEL_21:

          v16 = 1;
          goto LABEL_22;
        }

        v9 = v8;
        v10 = *v27;
LABEL_10:
        v11 = 0;
        while (1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          v13 = v5;
          [v12 UTF8String];
          v14 = xpc_connection_copy_entitlement_value();

          if (!v14 || xpc_get_type(v14) != &_xpc_type_BOOL)
          {
            break;
          }

          value = xpc_BOOL_get_value(v14);

          if (!value)
          {
            goto LABEL_5;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
            if (v9)
            {
              goto LABEL_10;
            }

            goto LABEL_21;
          }
        }

LABEL_5:
        if (++v3 != v20)
        {
          continue;
        }

        break;
      }

      v20 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_22:

  return v16;
}

void sub_100001EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  object = v3;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      if (!WeakRetained)
      {
LABEL_164:

        goto LABEL_165;
      }

      type = xpc_get_type(object);
      if (type != &_xpc_type_dictionary)
      {
        if (type != &_xpc_type_error)
        {
          v7 = xpc_copy_description(object);
          if (qword_100228FC0 != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228FC0 != -1)
            {
              dispatch_once(&qword_100228FC0, &stru_1001FABC0);
            }

            _NRLogWithArgs();
          }

          if (v7)
          {
            free(v7);
          }

          goto LABEL_164;
        }

        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v6, 24, 1);
        }

        [Property removeObject:*(*(*(a1 + 40) + 8) + 40)];
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v25 = qword_1002290B8;
        v26 = *(*(*(a1 + 40) + 8) + 40);
        v143 = a1;
        v152 = v25;
        if (v25)
        {
          v27 = sub_100003490();
          dispatch_assert_queue_V2(v27);

          if (v26)
          {
            v159 = 0u;
            v160 = 0u;
            v157 = 0u;
            v158 = 0u;
            v28 = v152[28];
            v29 = [v28 countByEnumeratingWithState:&v157 objects:buffer count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v158;
              do
              {
                for (i = 0; i != v30; i = i + 1)
                {
                  if (*v158 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = [v152[28] objectForKeyedSubscript:*(*(&v157 + 1) + 8 * i)];
                  v34 = v26;
                  if (v33)
                  {
                    dispatch_assert_queue_V2(*(v33 + 136));
                    [*(v33 + 200) removeObject:v34];
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v157 objects:buffer count:16];
              }

              while (v30);
            }

            v35 = [v152[29] copy];
            v153 = 0u;
            v154 = 0u;
            v155 = 0u;
            v156 = 0u;
            v36 = v35;
            v37 = [v36 countByEnumeratingWithState:&v153 objects:&v162 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v154;
              do
              {
                for (j = 0; j != v38; j = j + 1)
                {
                  if (*v154 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v41 = *(*(&v153 + 1) + 8 * j);
                  if (v41 && v41[2] == v26)
                  {
                    [v152[29] removeObject:*(*(&v153 + 1) + 8 * j)];
                    v42 = [v41 description];
                    sub_1000059A8(0, 1017, 0, v42);
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v153 objects:&v162 count:16];
              }

              while (v38);
            }

            a1 = v143;
          }

          else
          {
            v131 = sub_1000B9544();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v133 = sub_1000B9544();
              v137 = "[NRLinkDirector removeDeviceMonitorConnection:]";
              _NRLogWithArgs();
            }
          }
        }

        v43 = *(*(*(a1 + 40) + 8) + 40);
        if (v152)
        {
          v44 = sub_100003490();
          dispatch_assert_queue_V2(v44);

          if (v43)
          {
            v142 = WeakRetained;
            v159 = 0u;
            v160 = 0u;
            v157 = 0u;
            v158 = 0u;
            obj = v152[28];
            v151 = [obj countByEnumeratingWithState:&v157 objects:buffer count:16];
            if (v151)
            {
              v149 = v43;
              v150 = *v158;
              do
              {
                for (k = 0; k != v151; k = k + 1)
                {
                  if (*v158 != v150)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v46 = [v152[28] objectForKeyedSubscript:{*(*(&v157 + 1) + 8 * k), v137}];
                  v47 = v43;
                  if (v46)
                  {
                    dispatch_assert_queue_V2(*(v46 + 136));
                    v48 = *(v46 + 216);
                    v49 = v47;
                    if (v48)
                    {
                      v50 = *(v48 + 24);
                      if (v50)
                      {
                        dispatch_assert_queue_V2(v50);
                      }

                      v51 = v49;
                      v52 = *(v48 + 24);
                      if (v52)
                      {
                        dispatch_assert_queue_V2(v52);
                      }

                      if ([*(v48 + 32) count])
                      {
                        context = xpc_connection_get_context(v51);
                        if (context)
                        {
                          v54 = context;
                          v55 = [[NSString alloc] initWithUTF8String:context];
                          v56 = [*(v48 + 32) objectForKeyedSubscript:v55];
                          if (v56)
                          {
                            v57 = v55;
                            v146 = v55;
                            v147 = v47;
                            if (v57)
                            {
                              v58 = [NSString stringWithUTF8String:"-"];
                              [v57 componentsSeparatedByString:v58];
                              v145 = v54;
                              v59 = v49;
                              v60 = v57;
                              v62 = v61 = v56;
                              v63 = [v62 firstObject];

                              v56 = v61;
                              v57 = v60;
                              v49 = v59;
                              v54 = v145;

                              if (!v63)
                              {
                                goto LABEL_67;
                              }
                            }

                            else
                            {
                              if (qword_100229388 != -1)
                              {
                                dispatch_once(&qword_100229388, &stru_1001FC6C0);
                              }

                              v83 = qword_100229380;
                              v84 = _NRLogIsLevelEnabled();

                              if (v84)
                              {
                                if (qword_100229388 != -1)
                                {
                                  dispatch_once(&qword_100229388, &stru_1001FC6C0);
                                }

                                v85 = qword_100229380;
                                v137 = "NRDPMCopyClientNameFromContextString";
                                _NRLogWithArgs();
                              }

LABEL_67:
                              pid = xpc_connection_get_pid(v51);
                              v63 = sub_10013CB6C(pid, 0);
                            }

                            sub_100149890(v48, v63);
                            free(v54);
                            xpc_connection_set_context(v51, 0);
                            v65 = *(v48 + 16);
                            v66 = _NRCopyLogObjectForNRUUID();
                            v67 = _NRLogIsLevelEnabled();

                            if (v67)
                            {
                              v68 = *(v48 + 16);
                              v69 = _NRCopyLogObjectForNRUUID();
                              v140 = v57;
                              v141 = v56;
                              v139 = 210;
                              v137 = "";
                              v138 = "[NRDevicePreferencesManager removeLinkPreferencesForConnection:]";
                              _NRLogWithArgs();
                            }

                            sub_100149A78(v48, v57);

                            v55 = v146;
                            v47 = v147;
                          }
                        }
                      }

                      v70 = v51;
                      v71 = *(v48 + 24);
                      if (v71)
                      {
                        dispatch_assert_queue_V2(v71);
                      }

                      if ([*(v48 + 40) count])
                      {
                        v72 = xpc_connection_get_context(v70);
                        if (v72)
                        {
                          v73 = v72;
                          v74 = v47;
                          v75 = [[NSString alloc] initWithUTF8String:v72];
                          v76 = [*(v48 + 40) objectForKeyedSubscript:v75];
                          if (v76)
                          {
                            free(v73);
                            xpc_connection_set_context(v70, 0);
                            v77 = *(v48 + 16);
                            v78 = _NRCopyLogObjectForNRUUID();
                            v79 = _NRLogIsLevelEnabled();

                            if (v79)
                            {
                              v80 = *(v48 + 16);
                              v81 = _NRCopyLogObjectForNRUUID();
                              v140 = v75;
                              v141 = _NRCopyPolicyTrafficClassifiersDescription();
                              v139 = 296;
                              v137 = "";
                              v138 = "[NRDevicePreferencesManager removePolicyTrafficClassifiersForConnection:]";
                              _NRLogWithArgs();
                            }

                            [*(v48 + 40) setObject:0 forKeyedSubscript:{v75, v137}];
                            sub_100149594(v48);
                          }

                          v47 = v74;
                        }
                      }

                      v43 = v149;
                    }

                    v82 = *(v46 + 216);
                    if (!v82 || (*(v82 + 8) & 1) == 0)
                    {
                      sub_1000F0D40(v46, *(v46 + 640));
                    }
                  }
                }

                v151 = [obj countByEnumeratingWithState:&v157 objects:buffer count:16];
              }

              while (v151);
            }

            v86 = [v152[30] copy];
            v153 = 0u;
            v154 = 0u;
            v155 = 0u;
            v156 = 0u;
            v87 = v86;
            v88 = [v87 countByEnumeratingWithState:&v153 objects:&v162 count:16];
            WeakRetained = v142;
            if (v88)
            {
              v89 = v88;
              v90 = *v154;
              do
              {
                for (m = 0; m != v89; m = m + 1)
                {
                  if (*v154 != v90)
                  {
                    objc_enumerationMutation(v87);
                  }

                  v92 = *(*(&v153 + 1) + 8 * m);
                  if (v92 && v92[2] == v43)
                  {
                    [v152[30] removeObject:{*(*(&v153 + 1) + 8 * m), v137}];
                    v93 = [v92 description];
                    sub_1000059A8(0, 1024, 0, v93);
                  }
                }

                v89 = [v87 countByEnumeratingWithState:&v153 objects:&v162 count:16];
              }

              while (v89);
            }

            a1 = v143;
          }

          else
          {
            v134 = sub_1000B9544();
            v135 = _NRLogIsLevelEnabled();

            if (v135)
            {
              v136 = sub_1000B9544();
              v137 = "[NRLinkDirector removeDevicePreferencesManagerConnection:]";
              _NRLogWithArgs();
            }
          }
        }

        sub_1000CA014(v152, *(*(*(a1 + 40) + 8) + 40));
        v94 = *(*(*(a1 + 40) + 8) + 40);
        if (v152)
        {
          v164 = 0u;
          v165 = 0u;
          v162 = 0u;
          v163 = 0u;
          v95 = v152[28];
          v96 = [v95 countByEnumeratingWithState:&v162 objects:buffer count:16];
          if (v96)
          {
            v97 = v96;
            v98 = *v163;
            do
            {
              for (n = 0; n != v97; n = n + 1)
              {
                if (*v163 != v98)
                {
                  objc_enumerationMutation(v95);
                }

                v100 = [v152[28] objectForKeyedSubscript:{*(*(&v162 + 1) + 8 * n), v137}];
                v101 = v100;
                if (v100)
                {
                  [*(v100 + 184) removeObject:v94];
                }
              }

              v97 = [v95 countByEnumeratingWithState:&v162 objects:buffer count:16];
            }

            while (v97);
          }
        }

        sub_1000CA9A0(v152, 0, *(*(*(v143 + 40) + 8) + 40));
        if (object == &_xpc_error_connection_interrupted)
        {
          if (qword_100228FC0 != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228FC0 != -1)
            {
              dispatch_once(&qword_100228FC0, &stru_1001FABC0);
            }

            _NRLogWithArgs();
          }
        }

        else if (object != &_xpc_error_connection_invalid)
        {
          if (object == &_xpc_error_termination_imminent)
          {
            if (qword_100228FC0 != -1)
            {
              dispatch_once(&qword_100228FC0, &stru_1001FABC0);
            }

            if (_NRLogIsLevelEnabled())
            {
              v124 = sub_100056D2C();
              _NRLogWithArgs();
            }
          }

          else
          {
            v102 = xpc_copy_description(object);
            if (qword_100228FC0 != -1)
            {
              dispatch_once(&qword_100228FC0, &stru_1001FABC0);
            }

            if (_NRLogIsLevelEnabled())
            {
              v103 = sub_100056D2C();
              _NRLogWithArgs();
            }

            if (v102)
            {
              free(v102);
            }
          }
        }

        v125 = *(*(v143 + 40) + 8);
        v126 = *(v125 + 40);
        *(v125 + 40) = 0;

        goto LABEL_164;
      }

      v8 = *(*(*(a1 + 40) + 8) + 40);
      v9 = object;
      v10 = v8;
      v12 = objc_getProperty(WeakRetained, v11, 8, 1);
      dispatch_assert_queue_V2(v12);
      v13 = sub_100056A48([TXSContext alloc], v9, v10);
      if (!v13)
      {
LABEL_158:

        goto LABEL_164;
      }

      uint64 = xpc_dictionary_get_uint64(v9, nrXPCKeyType);
      v16 = objc_getProperty(WeakRetained, v15, 32, 1);
      v17 = [NSNumber numberWithUnsignedLongLong:uint64];
      v18 = [v16 objectForKeyedSubscript:v17];

      if (v18)
      {
        v20 = objc_getProperty(v18, v19, 8, 1);
        if (sub_100001CAC(v10, v20))
        {
          v21 = WeakRetained;
          v23 = (v18)[2](v13);
          if (v23 == -2000)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        }

        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          v21 = WeakRetained;
          v23 = -2002;
          goto LABEL_156;
        }

        v21 = WeakRetained;
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v105 = qword_100228FB8;
        v115 = *(v13 + 4);
        if (!v115)
        {
          v116 = objc_getProperty(v13, v114, 8, 1);
          v117 = xpc_connection_get_pid(v116);
          v118 = [[NSString alloc] initWithFormat:@"unknown:%d", v117];
          bzero(buffer, 0x400uLL);
          if (v117 >= 1 && proc_pidpath(v117, buffer, 0x400u) >= 1 && buffer[0])
          {
            v119 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v117];

            v118 = v119;
          }

          v120 = *(v13 + 4);
          *(v13 + 4) = v118;

          v115 = *(v13 + 4);
        }

        v112 = v115;
        StringFromNRXPCType = createStringFromNRXPCType();
        _NRLogWithArgs();
        v23 = -2002;
      }

      else
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          v21 = WeakRetained;
          v23 = -2003;
          goto LABEL_156;
        }

        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v21 = WeakRetained;
        v105 = qword_100228FB8;
        v106 = *(v13 + 4);
        if (!v106)
        {
          v107 = objc_getProperty(v13, v104, 8, 1);
          v108 = xpc_connection_get_pid(v107);
          v109 = [[NSString alloc] initWithFormat:@"unknown:%d", v108];
          bzero(buffer, 0x400uLL);
          if (v108 >= 1 && proc_pidpath(v108, buffer, 0x400u) >= 1 && buffer[0])
          {
            v110 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v108];

            v109 = v110;
          }

          v111 = *(v13 + 4);
          *(v13 + 4) = v109;

          v106 = *(v13 + 4);
        }

        v112 = v106;
        StringFromNRXPCType = createStringFromNRXPCType();
        _NRLogWithArgs();
        v23 = -2003;
      }

LABEL_156:
      v121 = objc_getProperty(v13, v22, 24, 1);
      xpc_dictionary_set_int64(v121, nrXPCKeyResult, v23);
      v123 = objc_getProperty(v13, v122, 24, 1);
      xpc_connection_send_message(v10, v123);
LABEL_157:

      WeakRetained = v21;
      goto LABEL_158;
    }

    v129 = sub_100056D2C();
    v130 = _NRLogIsLevelEnabled();

    if (v130)
    {
LABEL_169:
      WeakRetained = sub_100056D2C();
      _NRLogWithArgs();
      goto LABEL_164;
    }
  }

  else
  {
    v127 = sub_100056D2C();
    v128 = _NRLogIsLevelEnabled();

    if (v128)
    {
      goto LABEL_169;
    }
  }

LABEL_165:
}

uint64_t sub_1000030E4(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs();
  }

  objc_opt_self();
  objc_opt_self();
  v11 = qword_1002291D8;
  if (!qword_1002291D8)
  {
    v12 = objc_alloc_init(NRDevicePairingDirector);
    v13 = qword_1002291D8;
    qword_1002291D8 = v12;

    v11 = qword_1002291D8;
  }

  v15 = v11;
  if (v1)
  {
    v16 = objc_getProperty(v1, v14, 8, 1);
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = 0;
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  v17 = v16;
  v18 = +[NSUUID UUID];
  v19 = sub_100130C70([NRDevicePairingManagerConnection alloc], v17);
  [v15[2] setObject:v19 forKeyedSubscript:v18];
  v20 = sub_100003490();
  dispatch_async(v20, &stru_1001FAE90);

  buffer[0] = _NSConcreteStackBlock;
  buffer[1] = 3221225472;
  buffer[2] = sub_100139650;
  buffer[3] = &unk_1001FC1F8;
  buffer[4] = v15;
  v21 = v18;
  v24 = v21;
  xpc_connection_set_event_handler(v17, buffer);

  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs();
  }

LABEL_26:
  return 0;
}

id sub_100003490()
{
  v0 = &qword_100229000;
  v1 = qword_1002294E8;
  if (!qword_1002294E8)
  {
    v1 = qword_1002294F0;
    if (!qword_1002294F0)
    {
      memset(&v11, 0, sizeof(v11));
      pthread_attr_init(&v11);
      v10 = 0;
      pthread_attr_getschedparam(&v11, &v10);
      v10.sched_priority = 37;
      pthread_attr_setschedparam(&v11, &v10);
      pthread_attr_setschedpolicy(&v11, 4);
      v2 = dispatch_pthread_root_queue_create();
      v3 = qword_1002294F0;
      qword_1002294F0 = v2;

      if (qword_1002294F0)
      {
        if (qword_1002294E0 == -1)
        {
LABEL_5:
          v1 = v0[157];
          goto LABEL_6;
        }
      }

      else
      {
        v5 = sub_100183EE0();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v7 = sub_100183EE0();
          _NRLogWithArgs();
        }

        v0 = _os_log_pack_size();
        __chkstk_darwin();
        v8 = *__error();
        v9 = _os_log_pack_fill();
        *v9 = 136446210;
        *(v9 + 4) = "NRCopyTerminusdQueue";
        sub_100183EE0();
        _NRLogAbortWithPack();
      }

      dispatch_once(&qword_1002294E0, &stru_1001FD340);
      goto LABEL_5;
    }
  }

LABEL_6:

  return v1;
}

void sub_1000036D8(id a1)
{
  objc_opt_self();
  objc_opt_self();
  if (qword_1002291D8)
  {
    v1 = *(qword_1002291D8 + 16);
  }

  else
  {
    v1 = 0;
  }

  v2 = qword_1002291D8;
  v3 = [v1 count];

  if (v3 || sub_1000B79D8() && sub_10016C59C())
  {

    sub_1000037F8();
  }

  else
  {
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    if ((byte_100229030 & 1) == 0)
    {
      byte_100229030 = 1;
      v5 = dispatch_time(0, 2000000000);
      v6 = sub_100003490();
      dispatch_after(v5, v6, &stru_1001FAEF0);
    }
  }
}

void sub_1000037F8()
{
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  if (!qword_100229018)
  {
    v1 = os_transaction_create();
    v2 = qword_100229018;
    qword_100229018 = v1;
  }

  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/var/mobile/Library/terminus/com.apple.terminusd.keepalive"];

  if ((v4 & 1) == 0)
  {
    sub_100003984(@"/var/mobile/Library/terminus/com.apple.terminusd.keepalive", 0, 0);
    if (qword_100229028 != -1)
    {
      dispatch_once(&qword_100229028, &stru_1001FAED0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229028 != -1)
      {
        dispatch_once(&qword_100229028, &stru_1001FAED0);
      }

      _NRLogWithArgs();
    }
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v5 = qword_1002294C0;
  sub_1001816DC(v5, &stru_1001FAEB0);
}

uint64_t sub_100003984(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v14 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_16;
    }

LABEL_28:
    v18 = sub_10013A310();
    _NRLogWithArgs();

    goto LABEL_16;
  }

  if (![v5 length])
  {
    v16 = sub_10013A310();
    v17 = _NRLogIsLevelEnabled();

    if (!v17)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  if (([v5 containsString:@".."] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"/") & 1) == 0)
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_16;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

LABEL_15:
    _NRLogWithArgs();
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v7 = [v5 UTF8String];
  if (a3)
  {
    v8 = 1793;
  }

  else
  {
    v8 = 2817;
  }

  v9 = open_dprotected_np(v7, v8, 4, 0, 384);
  if (v9 < 0)
  {
    v13 = __error();
    if (strerror_r(*v13, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_16;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    goto LABEL_15;
  }

  v10 = v9;
  v11 = sub_100003C44(v9, v5, v6);
  close(v10);
LABEL_17:

  return v11;
}

uint64_t sub_100003C44(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v5 length])
  {
    v14 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_10013A310();
      _NRLogWithArgs();
    }

    goto LABEL_26;
  }

  memset(&v17, 0, sizeof(v17));
  if (fstat(a1, &v17))
  {
    v7 = __error();
    if (strerror_r(*v7, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_26;
    }

    if (qword_1002292D8 == -1)
    {
LABEL_25:
      _NRLogWithArgs();
LABEL_26:
      v10 = 0;
      goto LABEL_27;
    }

LABEL_41:
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
    goto LABEL_25;
  }

  if ((v17.st_mode & 0xF000) != 0x8000)
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_26;
    }

    if (qword_1002292D8 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

  if ([v6 length])
  {
    v8 = write(a1, [v6 bytes], objc_msgSend(v6, "length"));
    if (v8 < 0)
    {
      v12 = __error();
      if (strerror_r(*v12, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_26;
      }

      if (qword_1002292D8 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_41;
    }

    if (v8 != [v6 length])
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (_NRLogIsLevelEnabled())
      {
        v13 = sub_10013A310();
        [v6 length];
        _NRLogWithArgs();
      }

      goto LABEL_26;
    }
  }

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    v9 = qword_1002292D0;
    [v6 length];
    _NRLogWithArgs();
  }

  v10 = 1;
LABEL_27:

  return v10;
}

void sub_100004074(void *a1)
{
  v1 = a1;
  v2 = open([v1 UTF8String], 0);
  if (v2 != -1)
  {
    v3 = v2;
    v4 = fcntl(v2, 63);
    if (v4 == 4)
    {
LABEL_33:
      close(v3);
      goto LABEL_34;
    }

    if (v4 == -1)
    {
      v5 = __error();
      if (strerror_r(*v5, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_33;
      }

      if (qword_1002292D8 == -1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (fcntl(v3, 64, 4) != -1)
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_33;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        goto LABEL_32;
      }

      v7 = __error();
      if (strerror_r(*v7, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_33;
      }

      if (qword_1002292D8 == -1)
      {
LABEL_32:
        _NRLogWithArgs();
        goto LABEL_33;
      }
    }

    dispatch_once(&qword_1002292D8, &stru_1001FC510);
    goto LABEL_32;
  }

  if (*__error() != 2)
  {
    v6 = __error();
    if (strerror_r(*v6, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }
  }

LABEL_34:
}

uint64_t sub_1000043C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v87 = WeakRetained;
    WeakRetained = [WeakRetained state];
    v3 = v87;
    if (WeakRetained != 255)
    {
      v86 = a1;
      v4 = *(v87 + 1527);
      v5 = *(v87 + 1879);
      *(v87 + 1879) = v4;
      v6 = *(v87 + 1519);
      v7 = *(v87 + 1903);
      *(v87 + 1903) = v6;
      v76 = *(v87 + 1887);
      v77 = *(v87 + 1559);
      *(v87 + 1887) = v77;
      v74 = *(v87 + 1911);
      v75 = *(v87 + 1551);
      *(v87 + 1911) = v75;
      v80 = *(v87 + 1895);
      v81 = *(v87 + 1543);
      *(v87 + 1895) = v81;
      v78 = *(v87 + 1919);
      v79 = *(v87 + 1535);
      *(v87 + 1919) = v79;
      v8 = *(v87 + 559);
      v9 = *(v87 + 1959);
      *(v87 + 1959) = v8;
      v10 = *(v87 + 567);
      v11 = *(v87 + 1967);
      *(v87 + 1967) = v10;
      v12 = *(v87 + 1007);
      v13 = *(v87 + 1975);
      *(v87 + 1975) = v12;
      v14 = *(v87 + 1015);
      v15 = *(v87 + 1983);
      *(v87 + 1983) = v14;
      v16 = *(v87 + 703);
      v17 = *(v87 + 1927);
      *(v87 + 1927) = v16;
      v72 = *(v87 + 711);
      v73 = *(v87 + 1935);
      *(v87 + 1935) = v72;
      v84 = *(v87 + 1943);
      v85 = *(v87 + 863);
      *(v87 + 1943) = v85;
      v82 = *(v87 + 1951);
      v83 = *(v87 + 871);
      *(v87 + 1951) = v83;
      v68 = v4 - v5;
      if (v4 != v5 || v6 != v7 || v8 != v9 || v12 != v13 || v10 != v11 || v14 != v15)
      {
        v69 = v16;
        v70 = v17;
        v18 = *(v87 + 32);
        v66 = v9;
        v67 = v7;
        v19 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        v16 = v69;
        v17 = v70;
        v3 = v87;
        if (IsLevelEnabled)
        {
          v21 = *(v87 + 32);
          v22 = _NRCopyLogObjectForNRUUID();
          v23 = *(v86 + 40);
          v64 = v6 - v67;
          v65 = (v6 - v67) / v23;
          v62 = v10 - v11;
          v63 = v14 - v15;
          v60 = v68;
          v61 = v68 / v23;
          v58 = (v8 - v66);
          v59 = (v12 - v13);
          _NRLogWithArgs();

          v16 = v69;
          v17 = v70;
          v3 = v87;
        }
      }

      v71 = (v16 - v17);
      if (v77 != v76 || v75 != v74 || v85 != v84 || v16 != v17 || v83 != v82 || v72 != v73)
      {
        v24 = *(v3 + 32);
        v25 = _NRCopyLogObjectForNRUUID();
        v26 = _NRLogIsLevelEnabled();

        if (v26)
        {
          v27 = *(v87 + 32);
          v28 = _NRCopyLogObjectForNRUUID();
          v29 = *(v86 + 40);
          v64 = v75 - v74;
          v65 = (v75 - v74) / v29;
          v62 = v72 - v73;
          v63 = v83 - v82;
          v60 = v77 - v76;
          v61 = (v77 - v76) / v29;
          v58 = v71;
          v59 = (v85 - v84);
          _NRLogWithArgs();
        }
      }

      if (v81 != v80 || v79 != v78 || v72 != v73)
      {
        v30 = *(v87 + 32);
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = *(v87 + 32);
          v34 = _NRCopyLogObjectForNRUUID();
          v35 = *(v86 + 40);
          v62 = v79 - v78;
          v63 = (v79 - v78) / v35;
          v60 = (v81 - v80) / v35;
          v61 = v72 - v73;
          v58 = v71;
          v59 = (v81 - v80);
          _NRLogWithArgs();
        }
      }

      WeakRetained = _NRIsAppleInternal();
      if (WeakRetained)
      {
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        WeakRetained = qword_1002290B8;
        if (WeakRetained)
        {
          v36 = WeakRetained[9];

          if (v36 == 1)
          {
            if (gNRPacketLoggingEnabled == 1)
            {
              v54 = sub_10007CF34();
              v55 = _NRLogIsLevelEnabled();

              if (v55)
              {
                v56 = sub_10007CF34();
                v60 = 7013;
                v58 = "";
                v59 = "[NRLinkBluetooth armLinkStatsTimer]_block_invoke";
                _NRLogWithArgs();
              }
            }

            WeakRetained = v87;
            *(v87 + 292) = 1;
          }
        }
      }

      v3 = v87;
      v37 = *(v87 + 1991);
      if ((*(v86 + 40) * v37) < 0xF)
      {
        goto LABEL_112;
      }

      v38 = objc_alloc_init(NRAnalyticsDataStall);
      v39 = v87;
      v40 = v38;
      if ((*(v87 + 255) & 1) == 0 && (v41 = *(v87 + 663)) != 0 && v41 == *(v87 + 647))
      {
        v42 = sub_100091F34(v87, "NexusVO");
        if (v40)
        {
          v40->_stalledNexusVOOutput = 1;
        }

        v43 = 1;
        v39 = v87;
      }

      else
      {
        v43 = 0;
        v42 = 0;
      }

      *(v39 + 663) = *(v39 + 647);
      if ((*(v39 + 257) & 1) == 0)
      {
        v44 = *(v39 + 823);
        if (v44)
        {
          if (v44 == *(v39 + 807))
          {
            if (v42)
            {
              v42 = 1;
            }

            else
            {
              v42 = sub_100091F34(v39, "NexusVI");
              v39 = v87;
            }

            if (v40)
            {
              v40->_stalledNexusVIOutput = 1;
            }

            v43 = 1;
          }
        }
      }

      *(v39 + 823) = *(v39 + 807);
      if ((*(v39 + 253) & 1) == 0)
      {
        v45 = *(v39 + 511);
        if (v45)
        {
          if (v45 == *(v39 + 495))
          {
            if (v42)
            {
              v42 = 1;
            }

            else
            {
              v42 = sub_100091F34(v39, "Nexus");
              v39 = v87;
            }

            if (v40)
            {
              v40->_stalledNexusOutput = 1;
            }

            v43 = 1;
          }
        }
      }

      *(v39 + 511) = *(v39 + 495);
      if ((*(v39 + 259) & 1) == 0)
      {
        v46 = *(v39 + 967);
        if (v46)
        {
          if (v46 == *(v39 + 951))
          {
            if (v42)
            {
              v42 = 1;
            }

            else
            {
              v42 = sub_100091F34(v39, "NexusBK");
              v39 = v87;
            }

            if (v40)
            {
              v40->_stalledNexusBKOutput = 1;
            }

            v43 = 1;
          }
        }
      }

      *(v39 + 967) = *(v39 + 951);
      if ((*(v39 + 262) & 1) == 0)
      {
        v47 = *(v39 + 1111);
        if (v47)
        {
          if (v47 == *(v39 + 1095))
          {
            if (v42)
            {
              v42 = 1;
            }

            else
            {
              v42 = sub_100091F34(v39, "Link");
              v39 = v87;
            }

            if (v40)
            {
              v40->_stalledLinkOutput = 1;
            }

            v43 = 1;
          }
        }
      }

      *(v39 + 1111) = *(v39 + 1095);
      if ((*(v39 + 268) & 1) == 0)
      {
        v48 = *(v39 + 1271);
        if (v48)
        {
          if (v48 == *(v39 + 1255))
          {
            if (v42)
            {
              v42 = 1;
            }

            else
            {
              v42 = sub_100091F34(v39, "UrgentLink");
              v39 = v87;
            }

            if (v40)
            {
              v40->_stalledUrgentLinkOutput = 1;
            }

            v43 = 1;
          }
        }
      }

      *(v39 + 1271) = *(v39 + 1255);
      if (*(v39 + 264) != 1 && (v49 = *(v39 + 1191)) != 0 && v49 == *(v39 + 1175))
      {
        v50 = v42 || sub_100091F34(v39, "DatagramLink");
        if (v40)
        {
          v40->_stalledDatagramLinkOutput = 1;
        }

        v39 = v87;
        *(v87 + 1191) = *(v87 + 1175);
        *(v87 + 1991) = 0;
        if (v50)
        {
          sub_10009CA80(v87);
          v39 = v87;
          v51 = 1;
        }

        else
        {
          v51 = 0;
        }
      }

      else
      {
        *(v39 + 1191) = *(v39 + 1175);
        *(v39 + 1991) = 0;
        if (v42)
        {
          sub_10009CA80(v39);
          v51 = 1;
          if ((v43 & 1) == 0)
          {
            goto LABEL_104;
          }

          v39 = v87;
        }

        else
        {
          v51 = 0;
          v52 = 0;
          if (!v43)
          {
LABEL_106:
            *(v39 + 1999) = 0;
            if (v51)
            {
              goto LABEL_110;
            }

LABEL_109:
            if (!v52)
            {
LABEL_111:

              v3 = v87;
              v37 = *(v87 + 1991);
LABEL_112:
              *(v3 + 1991) = v37 + 1;
              goto LABEL_113;
            }

LABEL_110:
            [(NRAnalyticsDataStall *)v40 submit:v58];
            goto LABEL_111;
          }
        }
      }

      v53 = *(v39 + 1999) + 1;
      *(v39 + 1999) = v53;
      if ((15 * v53) < 0xB4)
      {
        v52 = 0;
        if (v51)
        {
          goto LABEL_110;
        }

        goto LABEL_109;
      }

      if (sub_100092178(v39))
      {
        v52 = 1;
        if (v40)
        {
          v40->_remediatedDataStall = 1;
        }

        goto LABEL_105;
      }

LABEL_104:
      v52 = 0;
LABEL_105:
      v39 = v87;
      goto LABEL_106;
    }
  }

LABEL_113:

  return _objc_release_x1(WeakRetained, v3);
}

void sub_100004F08(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 6);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 264);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_10017EDB4(v6, 0, v8);

  v9 = *(a1 + 32);
  if (v9)
  {
    dispatch_assert_queue_V2(*(v9 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v10 = qword_1002290B8;
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 6);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 264);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_10017F364(v13, v15);

  v16 = *(a1 + 32);
  if (v16)
  {
    *(v16 + 34) = 0;
    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = *(v17 + 96);

      sub_1000059A8(v18, 1030, 0, 0);
    }
  }
}

void sub_1000050BC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  dispatch_assert_queue_V2(v3);

  if (qword_1002294A8 != -1)
  {
    dispatch_once(&qword_1002294A8, &stru_1001FD210);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v50 = 1810;
    v48 = "";
    v49 = "[NRLinkManagerWiFi updateWiFiState]";
    _NRLogWithArgs();
  }

  v4 = [*(a1 + 208) count];
  v5 = *(a1 + 192);
  if (v4)
  {
    if (v5)
    {
      goto LABEL_19;
    }

    v6 = [CWFActivity activityWithType:1 reason:@"Terminus Background"];
    objc_storeStrong((a1 + 192), v6);
    v7 = *(a1 + 176);
    v8 = *(a1 + 24);
    objc_initWeak(&location, a1);
    if (qword_1002294B0 != -1)
    {
      dispatch_once(&qword_1002294B0, &stru_1001FD230);
    }

    v9 = qword_1002294B8;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017EE84;
    block[3] = &unk_1001FD100;
    v10 = v7;
    v71 = v10;
    v11 = v6;
    v72 = v11;
    v12 = v8;
    v73 = v12;
    v13 = v9;
    objc_copyWeak(&v74, &location);
    dispatch_async(v13, block);

    [a1 reportEvent:11001 details:@"Background"];
    objc_destroyWeak(&v74);

    objc_destroyWeak(&location);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_19;
    }

    v14 = v5;
    v15 = *(a1 + 192);
    *(a1 + 192) = 0;

    v16 = *(a1 + 176);
    if (qword_1002294B0 != -1)
    {
      dispatch_once(&qword_1002294B0, &stru_1001FD230);
    }

    v17 = qword_1002294B8;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1000085C4;
    v67[3] = &unk_1001FD060;
    v68 = v16;
    v69 = v14;
    v11 = v14;
    v10 = v16;
    dispatch_async(v17, v67);
    [a1 reportEvent:11002 details:@"Background"];

    v12 = v68;
  }

LABEL_19:
  v18 = *(a1 + 200);
  if (*(a1 + 34) == 1)
  {
    if (v18)
    {
      goto LABEL_29;
    }

    v19 = [CWFActivity activityWithType:3 reason:@"Terminus Direct-to-Cloud"];
    objc_storeStrong((a1 + 200), v19);
    v20 = *(a1 + 176);
    v21 = *(a1 + 24);
    objc_initWeak(&location, a1);
    if (qword_1002294B0 != -1)
    {
      dispatch_once(&qword_1002294B0, &stru_1001FD230);
    }

    v22 = qword_1002294B8;
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10017EFB4;
    v62[3] = &unk_1001FD100;
    v23 = v20;
    v63 = v23;
    v24 = v19;
    v64 = v24;
    v25 = v21;
    v65 = v25;
    v26 = v22;
    objc_copyWeak(&v66, &location);
    dispatch_async(v26, v62);

    [a1 reportEvent:11001 details:@"Direct-to-Cloud"];
    objc_destroyWeak(&v66);

    objc_destroyWeak(&location);
  }

  else
  {
    if (!v18)
    {
      goto LABEL_29;
    }

    v27 = v18;
    v28 = *(a1 + 200);
    *(a1 + 200) = 0;

    v29 = *(a1 + 176);
    if (qword_1002294B0 != -1)
    {
      dispatch_once(&qword_1002294B0, &stru_1001FD230);
    }

    v30 = qword_1002294B8;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10017F0E4;
    v59[3] = &unk_1001FD060;
    v60 = v29;
    v61 = v27;
    v24 = v27;
    v23 = v29;
    dispatch_async(v30, v59);
    [a1 reportEvent:11002 details:@"Direct-to-Cloud"];

    v25 = v60;
  }

LABEL_29:
  v31 = *(a1 + 24);
  dispatch_assert_queue_V2(v31);

  if (*(a1 + 192))
  {
    if (*(a1 + 248) != 1)
    {
      v32 = 1;
      goto LABEL_38;
    }
  }

  else
  {
    v33 = *(a1 + 200);
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    if (v34 != *(a1 + 248))
    {
      if (!v33)
      {
        v43 = *(a1 + 184);
        if (!v43)
        {
          v32 = 0;
          goto LABEL_47;
        }

        v44 = v43;
        v45 = *(a1 + 184);
        *(a1 + 184) = 0;

        v46 = *(a1 + 176);
        if (qword_1002294B0 != -1)
        {
          dispatch_once(&qword_1002294B0, &stru_1001FD230);
        }

        v47 = qword_1002294B8;
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1000086B8;
        v56[3] = &unk_1001FD060;
        v57 = v46;
        v58 = v44;
        v40 = v44;
        v39 = v46;
        dispatch_async(v47, v56);
        [a1 reportEvent:11002 details:@"WoW"];

        v32 = 0;
        v41 = v57;
        goto LABEL_46;
      }

      v32 = 3;
LABEL_38:
      if (*(a1 + 184))
      {
LABEL_47:
        *(a1 + 248) = v32;
        goto LABEL_48;
      }

      v35 = [CWFActivity activityWithType:4 reason:@"Terminus WoW"];
      objc_storeStrong((a1 + 184), v35);
      v36 = *(a1 + 176);
      v37 = *(a1 + 24);
      objc_initWeak(&location, a1);
      if (qword_1002294B0 != -1)
      {
        dispatch_once(&qword_1002294B0, &stru_1001FD230);
      }

      v38 = qword_1002294B8;
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10017F0F0;
      v51[3] = &unk_1001FD100;
      v39 = v36;
      v52 = v39;
      v40 = v35;
      v53 = v40;
      v41 = v37;
      v54 = v41;
      v42 = v38;
      objc_copyWeak(&v55, &location);
      dispatch_async(v42, v51);

      [a1 reportEvent:11001 details:@"WoW"];
      objc_destroyWeak(&v55);

      objc_destroyWeak(&location);
LABEL_46:

      goto LABEL_47;
    }
  }

LABEL_48:
  sub_1000085D0(a1);
}

void sub_10000597C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000059A8(void *a1, int a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a3;
  v10 = _NRIsAppleInternal();
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v29 = sub_1001572BC;
  v30 = &unk_1001FCBD0;
  v31 = v10;
  if (qword_1002293D8 != -1)
  {
    dispatch_once(&qword_1002293D8, &buf);
  }

  v11 = [(__CFString *)v9 length];
  v12 = [(__CFString *)v8 length];
  v13 = [NSString alloc];
  v14 = &stru_1001FDE68;
  v15 = v11 == 0;
  if (v11)
  {
    v16 = v9;
  }

  else
  {
    v16 = &stru_1001FDE68;
  }

  if (v15)
  {
    v17 = "";
  }

  else
  {
    v17 = " ";
  }

  if (a2 <= 3999)
  {
    if (a2 <= 2000)
    {
      switch(a2)
      {
        case 1000:
          v18 = @"LD_Create";
          break;
        case 1001:
          v18 = @"LD_Start";
          break;
        case 1002:
          v18 = @"LD_Ready";
          break;
        case 1003:
          v18 = @"LD_Cancel";
          break;
        case 1004:
          v18 = @"LD_ReceivedLinkAvailable";
          break;
        case 1005:
          v18 = @"LD_ReceivedLinkReady";
          break;
        case 1006:
          v18 = @"LD_ReceivedLinkSuspended";
          break;
        case 1007:
          v18 = @"LD_ReceivedLinkUnavailable";
          break;
        case 1008:
          v18 = @"LD_PreferWiFiRequest";
          break;
        case 1009:
          v18 = @"LD_RejectPreferWiFiRequest";
          break;
        case 1010:
          v18 = @"LD_UpdateWiFiAddress";
          break;
        case 1011:
          v18 = @"LD_ToggleWiFi";
          break;
        case 1012:
          v18 = @"LD_PrimaryLinkChanged";
          break;
        case 1013:
          v18 = @"LD_CancelAllLinks";
          break;
        case 1014:
          v18 = @"LD_UnknownNRUUID";
          break;
        case 1015:
          v18 = @"LD_SaveOrphanedDeviceMonitorConnection";
          break;
        case 1016:
          v18 = @"LD_AdoptOrphanedDeviceMonitorConnection";
          break;
        case 1017:
          v18 = @"LD_RemoveOrphanedDeviceMonitorConnection";
          break;
        case 1018:
          v18 = @"LD_ReceivedIRATLinkRecommendation";
          break;
        case 1019:
          v18 = @"LD_RecommendedLinkReceived";
          break;
        case 1020:
          v18 = @"LD_PreferWiFiRequestAckSent";
          break;
        case 1021:
          v18 = @"LD_PreferWiFiRequestAckReceived";
          break;
        case 1022:
          v18 = @"LD_SaveOrphanedDevicePreferencesConnection";
          break;
        case 1023:
          v18 = @"LD_AdoptOrphanedDevicePreferencesConnection";
          break;
        case 1024:
          v18 = @"LD_RemoveOrphanedDevicePreferencesConnection";
          break;
        case 1025:
          v18 = @"LD_DisableRangeExtension";
          break;
        case 1026:
          v18 = @"LD_DisablePreferWiFi";
          break;
        case 1027:
          v18 = @"LD_FixedInterfaceModeEnable";
          break;
        case 1028:
          v18 = @"LD_FixedInterfaceModeDisable";
          break;
        case 1029:
          v18 = @"LD_ForcedWoWEnable";
          break;
        case 1030:
          v18 = @"LD_ForcedWoWDisable";
          break;
        case 1031:
          v18 = @"LD_AvoidCompanionNotifyPosted";
          break;
        case 1032:
          v18 = @"LD_AOVPNDetected";
          break;
        case 1033:
          v18 = @"LD_DeviceSetupInProgress";
          break;
        case 1034:
          v18 = @"LD_IgnorePreferWiFiRequest";
          break;
        case 1035:
          v18 = @"LD_SendBufferLimitSet";
          break;
        case 1036:
          v18 = @"LD_SendBufferLimitReset";
          break;
        case 1037:
          v18 = @"LD_AOVPNConfigAdded";
          break;
        case 1038:
          v18 = @"LD_AOVPNConfigRemoved";
          break;
        case 1039:
          v18 = @"LD_EnableBluetoothPacketParser";
          break;
        case 1040:
          v18 = @"LD_UpdateAWDLAddress";
          break;
        case 1041:
          v18 = @"LD_AddEphemeralDevice";
          break;
        case 1042:
          v18 = @"LD_RemoveEphemeralDevice";
          break;
        case 1043:
          v18 = @"LD_ForceStartQuickRelay";
          break;
        case 1044:
        case 1045:
        case 1046:
        case 1052:
        case 1053:
        case 1054:
        case 1055:
        case 1056:
        case 1057:
        case 1058:
        case 1059:
        case 1060:
        case 1061:
        case 1062:
        case 1063:
        case 1064:
        case 1065:
        case 1066:
        case 1067:
        case 1068:
        case 1069:
        case 1070:
        case 1071:
        case 1072:
        case 1073:
        case 1074:
        case 1075:
        case 1076:
        case 1077:
        case 1078:
        case 1079:
        case 1080:
        case 1081:
        case 1082:
        case 1083:
        case 1084:
        case 1085:
        case 1086:
        case 1087:
        case 1088:
        case 1089:
        case 1090:
        case 1091:
        case 1092:
        case 1093:
        case 1094:
        case 1095:
        case 1096:
        case 1097:
        case 1098:
        case 1099:
        case 1100:
        case 1101:
        case 1102:
        case 1103:
        case 1104:
        case 1105:
        case 1106:
        case 1107:
        case 1108:
        case 1109:
        case 1110:
        case 1111:
        case 1112:
        case 1113:
        case 1114:
        case 1115:
        case 1116:
        case 1117:
        case 1118:
        case 1119:
        case 1120:
        case 1121:
        case 1122:
        case 1123:
        case 1124:
        case 1125:
        case 1126:
        case 1127:
        case 1128:
        case 1129:
        case 1130:
        case 1131:
        case 1132:
        case 1133:
        case 1134:
        case 1135:
        case 1136:
        case 1137:
        case 1138:
        case 1139:
        case 1140:
        case 1141:
        case 1142:
        case 1143:
        case 1144:
        case 1145:
        case 1146:
        case 1147:
        case 1148:
        case 1149:
        case 1150:
        case 1151:
        case 1152:
        case 1153:
        case 1154:
        case 1155:
        case 1156:
        case 1157:
        case 1158:
        case 1159:
        case 1160:
        case 1161:
        case 1162:
        case 1163:
        case 1164:
        case 1165:
        case 1166:
        case 1167:
        case 1168:
        case 1169:
        case 1170:
        case 1171:
        case 1172:
        case 1173:
        case 1174:
        case 1175:
        case 1176:
        case 1177:
        case 1178:
        case 1179:
        case 1180:
        case 1181:
        case 1182:
        case 1183:
        case 1184:
        case 1185:
        case 1186:
        case 1187:
        case 1188:
        case 1189:
        case 1190:
        case 1191:
        case 1192:
        case 1193:
        case 1194:
        case 1195:
        case 1196:
        case 1197:
        case 1198:
        case 1199:
        case 1200:
        case 1201:
        case 1202:
        case 1203:
        case 1204:
        case 1205:
        case 1206:
        case 1207:
        case 1208:
        case 1209:
        case 1210:
        case 1211:
        case 1212:
        case 1213:
        case 1214:
        case 1215:
        case 1216:
        case 1217:
        case 1218:
        case 1219:
        case 1220:
        case 1221:
        case 1222:
        case 1223:
        case 1224:
        case 1225:
        case 1226:
        case 1227:
        case 1228:
        case 1229:
        case 1230:
        case 1231:
        case 1232:
        case 1233:
        case 1234:
        case 1235:
        case 1236:
        case 1237:
        case 1238:
        case 1239:
        case 1240:
        case 1241:
        case 1242:
        case 1243:
        case 1244:
        case 1245:
        case 1246:
        case 1247:
        case 1248:
        case 1249:
        case 1250:
        case 1251:
        case 1252:
        case 1253:
        case 1254:
        case 1255:
        case 1256:
        case 1257:
        case 1258:
        case 1259:
        case 1260:
        case 1261:
        case 1262:
        case 1263:
        case 1264:
        case 1265:
        case 1266:
        case 1267:
        case 1268:
        case 1269:
        case 1270:
        case 1271:
        case 1272:
        case 1273:
        case 1274:
        case 1275:
        case 1276:
        case 1277:
        case 1278:
        case 1279:
        case 1280:
        case 1281:
        case 1282:
        case 1283:
        case 1284:
        case 1285:
        case 1286:
        case 1287:
        case 1288:
        case 1289:
        case 1290:
        case 1291:
        case 1292:
        case 1293:
        case 1294:
        case 1295:
        case 1296:
        case 1297:
        case 1298:
        case 1299:
        case 1300:
        case 1301:
        case 1302:
        case 1303:
        case 1304:
        case 1305:
        case 1306:
        case 1307:
        case 1308:
        case 1309:
        case 1310:
        case 1311:
        case 1312:
        case 1313:
        case 1314:
        case 1315:
        case 1316:
        case 1317:
        case 1318:
        case 1319:
        case 1320:
        case 1321:
        case 1322:
        case 1323:
        case 1324:
        case 1325:
        case 1326:
        case 1327:
        case 1328:
        case 1329:
        case 1330:
        case 1331:
        case 1332:
        case 1333:
        case 1334:
        case 1335:
        case 1336:
        case 1337:
        case 1338:
        case 1339:
        case 1340:
        case 1341:
        case 1342:
        case 1343:
        case 1344:
        case 1345:
        case 1346:
        case 1347:
        case 1348:
        case 1349:
        case 1350:
        case 1351:
        case 1352:
        case 1353:
        case 1354:
        case 1355:
        case 1356:
        case 1357:
        case 1358:
        case 1359:
        case 1360:
        case 1361:
        case 1362:
        case 1363:
        case 1364:
        case 1365:
        case 1366:
        case 1367:
        case 1368:
        case 1369:
        case 1370:
        case 1371:
        case 1372:
        case 1373:
        case 1374:
        case 1375:
        case 1376:
        case 1377:
        case 1378:
        case 1379:
        case 1380:
        case 1381:
        case 1382:
        case 1383:
        case 1384:
        case 1385:
        case 1386:
        case 1387:
        case 1388:
        case 1389:
        case 1390:
        case 1391:
        case 1392:
        case 1393:
        case 1394:
        case 1395:
        case 1396:
        case 1397:
        case 1398:
        case 1399:
        case 1400:
        case 1401:
        case 1402:
        case 1403:
        case 1404:
        case 1405:
        case 1406:
        case 1407:
        case 1408:
        case 1409:
        case 1410:
        case 1411:
        case 1412:
        case 1413:
        case 1414:
        case 1415:
        case 1416:
        case 1417:
        case 1418:
        case 1419:
        case 1420:
        case 1421:
        case 1422:
        case 1423:
        case 1424:
        case 1425:
        case 1426:
        case 1427:
        case 1428:
        case 1429:
        case 1430:
        case 1431:
        case 1432:
        case 1433:
        case 1434:
        case 1435:
        case 1436:
        case 1437:
        case 1438:
        case 1439:
        case 1440:
        case 1441:
        case 1442:
        case 1443:
        case 1444:
        case 1445:
        case 1446:
        case 1447:
        case 1448:
        case 1449:
        case 1450:
        case 1451:
        case 1452:
        case 1453:
        case 1454:
        case 1455:
        case 1456:
        case 1457:
        case 1458:
        case 1459:
        case 1460:
        case 1461:
        case 1462:
        case 1463:
        case 1464:
        case 1465:
        case 1466:
        case 1467:
        case 1468:
        case 1469:
        case 1470:
        case 1471:
        case 1472:
        case 1473:
        case 1474:
        case 1475:
        case 1476:
        case 1477:
        case 1478:
        case 1479:
        case 1480:
        case 1481:
        case 1482:
        case 1483:
        case 1484:
        case 1485:
        case 1486:
        case 1487:
        case 1488:
        case 1489:
        case 1490:
        case 1491:
        case 1492:
        case 1493:
        case 1494:
        case 1495:
        case 1496:
        case 1497:
        case 1498:
        case 1499:
          goto LABEL_368;
        case 1047:
          v18 = @"LD_ManagerCreateFailed";
          break;
        case 1048:
          v18 = @"LD_PluggedInStateChanged";
          break;
        case 1049:
          v18 = @"LD_ThermalPressureChanged";
          break;
        case 1050:
          v18 = @"LD_LinkUpgradeRequest";
          break;
        case 1051:
          v18 = @"LD_UpdateCountryCode";
          break;
        case 1500:
          v18 = @"DC_Create";
          break;
        case 1501:
          v18 = @"DC_Start";
          break;
        case 1502:
          v18 = @"DC_Cancel";
          break;
        case 1503:
          v18 = @"DC_Dealloc";
          break;
        default:
          if (a2)
          {
            goto LABEL_368;
          }

          v18 = @"Invalid";
          break;
      }
    }

    else
    {
      switch(a2)
      {
        case 3000:
          v18 = @"L_Create";
          break;
        case 3001:
          v18 = @"L_Start";
          break;
        case 3002:
          v18 = @"L_Suspend";
          break;
        case 3003:
          v18 = @"L_Resume";
          break;
        case 3004:
          v18 = @"L_Ready";
          break;
        case 3005:
          v18 = @"L_Cancel";
          break;
        case 3006:
          v18 = @"L_SendData";
          break;
        case 3007:
          v18 = @"L_ReceiveData";
          break;
        case 3008:
          v18 = @"L_ChangeState";
          break;
        case 3009:
          v18 = @"L_IKEChangeState";
          break;
        case 3010:
          v18 = @"L_ReceivedPrelude";
          break;
        case 3011:
          v18 = @"L_InitiateIKEPairingFromIDS";
          break;
        case 3012:
          v18 = @"L_RespondIKEPairingFromIDS";
          break;
        case 3013:
          v18 = @"L_InitiateIKEPairingWithOOBK";
          break;
        case 3014:
          v18 = @"L_RespondIKEPairingWithOOBK";
          break;
        case 3015:
          v18 = @"L_InitiateIKE";
          break;
        case 3016:
          v18 = @"L_RespondIKE";
          break;
        case 3017:
          v18 = @"L_CreationFailed";
          break;
        case 3018:
          v18 = @"L_IKEDisconnectionError";
          break;
        case 3019:
          v18 = @"L_RejectingIKENoKeys";
          break;
        case 3020:
          v18 = @"L_RejectingIKEKeysLocked";
          break;
        case 3021:
          v18 = @"L_RejectingIKEBadAuth";
          break;
        case 3022:
          v18 = @"L_RejectingIKENoIdentity";
          break;
        case 3023:
          v18 = @"L_RejectingIKEBadIdentity";
          break;
        case 3024:
          v18 = @"L_RejectingIKENoChildConfig";
          break;
        case 3025:
          v18 = @"L_RetryInterfaceCreation";
          break;
        case 3026:
          v18 = @"L_RetryIKESessionCreation";
          break;
        case 3027:
        case 3028:
        case 3029:
        case 3030:
        case 3031:
        case 3032:
        case 3033:
        case 3034:
        case 3035:
        case 3036:
        case 3037:
        case 3038:
        case 3039:
        case 3040:
        case 3041:
        case 3042:
        case 3043:
        case 3044:
        case 3045:
        case 3046:
        case 3047:
        case 3048:
        case 3049:
        case 3050:
        case 3051:
        case 3052:
        case 3053:
        case 3054:
        case 3055:
        case 3056:
        case 3057:
        case 3058:
        case 3059:
        case 3060:
        case 3061:
        case 3062:
        case 3063:
        case 3064:
        case 3065:
        case 3066:
        case 3067:
        case 3068:
        case 3069:
        case 3070:
        case 3071:
        case 3072:
        case 3073:
        case 3074:
        case 3075:
        case 3076:
        case 3077:
        case 3078:
        case 3079:
        case 3080:
        case 3081:
        case 3082:
        case 3083:
        case 3084:
        case 3085:
        case 3086:
        case 3087:
        case 3088:
        case 3089:
        case 3090:
        case 3091:
        case 3092:
        case 3093:
        case 3094:
        case 3095:
        case 3096:
        case 3097:
        case 3098:
        case 3099:
        case 3102:
        case 3103:
        case 3104:
        case 3105:
        case 3106:
        case 3107:
        case 3108:
        case 3109:
        case 3110:
        case 3111:
        case 3112:
        case 3113:
        case 3114:
        case 3115:
        case 3116:
        case 3117:
        case 3118:
        case 3119:
        case 3120:
        case 3121:
        case 3122:
        case 3123:
        case 3124:
        case 3125:
        case 3126:
        case 3127:
        case 3128:
        case 3129:
        case 3130:
        case 3131:
        case 3132:
        case 3133:
        case 3134:
        case 3135:
        case 3136:
        case 3137:
        case 3138:
        case 3139:
        case 3140:
        case 3141:
        case 3142:
        case 3143:
        case 3144:
        case 3145:
        case 3146:
        case 3147:
        case 3148:
        case 3149:
        case 3150:
        case 3151:
        case 3152:
        case 3153:
        case 3154:
        case 3155:
        case 3156:
        case 3157:
        case 3158:
        case 3159:
        case 3160:
        case 3161:
        case 3162:
        case 3163:
        case 3164:
        case 3165:
        case 3166:
        case 3167:
        case 3168:
        case 3169:
        case 3170:
        case 3171:
        case 3172:
        case 3173:
        case 3174:
        case 3175:
        case 3176:
        case 3177:
        case 3178:
        case 3179:
        case 3180:
        case 3181:
        case 3182:
        case 3183:
        case 3184:
        case 3185:
        case 3186:
        case 3187:
        case 3188:
        case 3189:
        case 3190:
        case 3191:
        case 3192:
        case 3193:
        case 3194:
        case 3195:
        case 3196:
        case 3197:
        case 3198:
        case 3199:
        case 3202:
        case 3203:
        case 3204:
        case 3205:
        case 3206:
        case 3207:
        case 3208:
        case 3209:
        case 3211:
        case 3212:
        case 3213:
        case 3214:
        case 3215:
        case 3216:
        case 3217:
        case 3218:
        case 3219:
        case 3220:
        case 3221:
        case 3222:
        case 3223:
        case 3224:
        case 3225:
        case 3226:
        case 3227:
        case 3228:
        case 3229:
        case 3230:
        case 3231:
        case 3232:
        case 3233:
        case 3234:
        case 3235:
        case 3236:
        case 3237:
        case 3238:
        case 3239:
        case 3240:
        case 3241:
        case 3242:
        case 3243:
        case 3244:
        case 3245:
        case 3246:
        case 3247:
        case 3248:
        case 3249:
        case 3250:
        case 3251:
        case 3252:
        case 3253:
        case 3254:
        case 3255:
        case 3256:
        case 3257:
        case 3258:
        case 3259:
        case 3260:
        case 3261:
        case 3262:
        case 3263:
        case 3264:
        case 3265:
        case 3266:
        case 3267:
        case 3268:
        case 3269:
        case 3270:
        case 3271:
        case 3272:
        case 3273:
        case 3274:
        case 3275:
        case 3276:
        case 3277:
        case 3278:
        case 3279:
        case 3280:
        case 3281:
        case 3282:
        case 3283:
        case 3284:
        case 3285:
        case 3286:
        case 3287:
        case 3288:
        case 3289:
        case 3290:
        case 3291:
        case 3292:
        case 3293:
        case 3294:
        case 3295:
        case 3296:
        case 3297:
        case 3298:
        case 3299:
          goto LABEL_368;
        case 3100:
          v18 = @"L_BluetoothPipeDisconnected";
          break;
        case 3101:
          v18 = @"L_BluetoothCreationFailedWithPipe";
          break;
        case 3200:
          v18 = @"L_WiFiCreationFailed";
          break;
        case 3201:
          v18 = @"L_AWDLCreationFailed";
          break;
        case 3210:
          v18 = @"L_WiredCreationFailed";
          break;
        case 3300:
          v18 = @"L_PowerAssertionEnable";
          break;
        case 3301:
          v18 = @"L_PowerAssertionEnableFailure";
          break;
        case 3302:
          v18 = @"L_PowerAssertionDisable";
          break;
        case 3303:
          v18 = @"L_PowerAssertionDisableFailure";
          break;
        default:
          switch(a2)
          {
            case 2001:
              v18 = @"LM_Start";
              break;
            case 2002:
              v18 = @"LM_Ready";
              break;
            case 2003:
              v18 = @"LM_Cancel";
              break;
            case 2004:
              v18 = @"LM_LinkAvailable";
              break;
            case 2005:
              v18 = @"LM_LinkReady";
              break;
            case 2006:
              v18 = @"LM_LinkSuspended";
              break;
            case 2007:
              v18 = @"LM_LinkUnavailable";
              break;
            case 2008:
              v18 = @"LM_LinkReceivedData";
              break;
            case 2009:
              v18 = @"LM_CancelAllLinks";
              break;
            case 2010:
              v18 = @"LM_AlwaysOnWiFiQueryStart";
              break;
            case 2011:
              v18 = @"LM_AlwaysOnWiFiQueryInProgress";
              break;
            case 2012:
              v18 = @"LM_AlwaysOnWiFiQueryComplete";
              break;
            case 2013:
              v18 = @"LM_LinkQualityUpdate";
              break;
            case 2014:
              v18 = @"LM_AWDLSetupStart";
              break;
            case 2015:
              v18 = @"LM_AWDLSetupFailed";
              break;
            case 2016:
              v18 = @"LM_AWDLSetupComplete";
              break;
            default:
              switch(a2)
              {
                case 3400:
                  v18 = @"L_UpgradeSendLocalKeys";
                  break;
                case 3401:
                  v18 = @"L_UpgradeReceiveRemoteKeys";
                  break;
                case 3402:
                  v18 = @"L_UpgradeSendLocalKeysEncryptedWithIDS";
                  break;
                case 3403:
                  v18 = @"L_UpgradeReceiveRemoteKeysEncryptedWithIDS";
                  break;
                case 3500:
                  v18 = @"BT_PeripheralManagerStateChange";
                  break;
                case 3501:
                  v18 = @"BT_PeripheralManagerAdvertisingStart";
                  break;
                case 3502:
                  v18 = @"BT_PeripheralManagerAdvertisingStarted";
                  break;
                case 3503:
                  v18 = @"BT_PeripheralManagerAdvertisingStartFailed";
                  break;
                case 3504:
                  v18 = @"BT_PeripheralManagerAdvertisingStop";
                  break;
                case 3505:
                  v18 = @"BT_PeripheralManagerAdvertisingStopped";
                  break;
                case 3506:
                  v18 = @"BT_PeripheralManagerAdvertisingStopFailed";
                  break;
                case 3507:
                  v18 = @"BT_PeripheralManagerDidPublishL2CAPChannel";
                  break;
                case 3508:
                  v18 = @"BT_PeripheralManagerDidUnpublishL2CAPChannel";
                  break;
                default:
                  goto LABEL_368;
              }

              break;
          }

          break;
      }
    }
  }

  else
  {
    if (a2 <= 9001)
    {
      if (a2 <= 4899)
      {
        switch(a2)
        {
          case 4000:
            v18 = @"BT_PeripheralConnect";
            break;
          case 4001:
            v18 = @"BT_PeripheralConnected";
            break;
          case 4002:
            v18 = @"BT_PeripheralConnectFailed";
            break;
          case 4003:
            v18 = @"BT_PeripheralDisconnect";
            break;
          case 4004:
            v18 = @"BT_PeripheralDisconnected";
            break;
          case 4005:
            v18 = @"BT_PeripheralConnectSkipMissingPeripheral";
            break;
          case 4006:
            v18 = @"BT_PeripheralConnectSkipMissingUUID";
            break;
          case 4007:
            v18 = @"BT_PeripheralAddReference";
            break;
          case 4008:
            v18 = @"BT_PeripheralRemoveReference";
            break;
          case 4009:
            v18 = @"BT_PeripheralRetrieveAll";
            break;
          case 4010:
            v18 = @"BT_PeripheralRetrievedAll";
            break;
          case 4011:
            v18 = @"BT_PeripheralNotRetrieving";
            break;
          case 4012:
            v18 = @"BT_PeripheralScanStart";
            break;
          case 4013:
            v18 = @"BT_PeripheralDiscovered";
            break;
          case 4014:
            v18 = @"BT_PeripheralScanStop";
            break;
          case 4015:
            v18 = @"BT_PeripheralHasUnpairedBluetooth";
            break;
          case 4016:
            v18 = @"BT_PeripheralOpenL2CAPChannel";
            break;
          case 4017:
            v18 = @"BT_PeripheralDidOpenL2CAPChannel";
            break;
          case 4018:
            v18 = @"BT_PeripheralDidCloseL2CAPChannel";
            break;
          case 4100:
            v18 = @"BT_CentralManagerStateChange";
            break;
          case 4200:
            v18 = @"BT_PipeManagerStateChange";
            break;
          case 4201:
            v18 = @"BT_PipeRegister";
            break;
          case 4202:
            v18 = @"BT_PipeRegistered";
            break;
          case 4203:
            v18 = @"BT_PipeRegisteredUnknown";
            break;
          case 4204:
            v18 = @"BT_PipeRegisterFailed";
            break;
          case 4205:
            v18 = @"BT_PipeRegisterFailedUnknown";
            break;
          case 4206:
            v18 = @"BT_PipeUnregister";
            break;
          case 4207:
            v18 = @"BT_PipeUnregistered";
            break;
          case 4208:
            v18 = @"BT_PipeUnregisteredUnknown";
            break;
          case 4209:
            v18 = @"BT_PipeConnect";
            break;
          case 4210:
            v18 = @"BT_PipeConnected";
            break;
          case 4211:
            v18 = @"BT_PipeDisconnected";
            break;
          case 4212:
            v18 = @"BT_PipeDisconnectedFail";
            break;
          case 4213:
            v18 = @"BT_PipeCycleRegistrationCheck";
            break;
          case 4214:
            v18 = @"BT_PipeCycleRegistrationStart";
            break;
          case 4215:
            v18 = @"BT_PipeCycleRegistrationReenable";
            break;
          case 4216:
            v18 = @"BT_PipeCycleRegistrationSkip";
            break;
          case 4217:
            v18 = @"BT_PipeReceivedUrgentPrelude";
            break;
          case 4301:
            v18 = @"BT_DatagramPipeRegister";
            break;
          case 4302:
            v18 = @"BT_DatagramPipeRegistered";
            break;
          case 4303:
            v18 = @"BT_DatagramPipeRegisterFailed";
            break;
          case 4304:
            v18 = @"BT_DatagramPipeUnregister";
            break;
          case 4305:
            v18 = @"BT_DatagramPipeUnregistered";
            break;
          case 4306:
            v18 = @"BT_DatagramPipeConnected";
            break;
          case 4307:
            v18 = @"BT_DatagramPipeDisconnected";
            break;
          case 4401:
            v18 = @"BT_UrgentPipeRegister";
            break;
          case 4402:
            v18 = @"BT_UrgentPipeRegistered";
            break;
          case 4403:
            v18 = @"BT_UrgentPipeRegisterFailed";
            break;
          case 4404:
            v18 = @"BT_UrgentPipeUnregister";
            break;
          case 4405:
            v18 = @"BT_UrgentPipeUnregistered";
            break;
          case 4406:
            v18 = @"BT_UrgentPipeConnected";
            break;
          case 4407:
            v18 = @"BT_UrgentPipeDisconnected";
            break;
          default:
            goto LABEL_368;
        }

        goto LABEL_369;
      }

      if (a2 <= 5399)
      {
        switch(a2)
        {
          case 4900:
            v18 = @"BT_MiscNoBTCallbacksReceived";
            break;
          case 5000:
            v18 = @"Device_Create";
            break;
          case 5001:
            v18 = @"Device_Register";
            break;
          case 5002:
            v18 = @"Device_Unregister";
            break;
          case 5003:
            v18 = @"Device_Enable";
            break;
          case 5004:
            v18 = @"Device_Disable";
            break;
          case 5005:
            v18 = @"Device_GenerateLocalKeys";
            break;
          case 5006:
            v18 = @"Device_SaveRemoteKeys";
            break;
          case 5007:
            v18 = @"Device_Registered";
            break;
          case 5008:
            v18 = @"Device_RegisterFailed";
            break;
          case 5009:
            v18 = @"Device_UnknownNRUUID";
            break;
          case 5010:
            v18 = @"Device_InvalidOperationOnUnregisteredDevice";
            break;
          case 5011:
            v18 = @"Device_UpdateOperationalProperties";
            break;
          case 5012:
            v18 = @"Device_MergeOperationalProperties";
            break;
          default:
            goto LABEL_368;
        }

        goto LABEL_369;
      }

      if (a2 <= 5502)
      {
        if (a2 > 5499)
        {
          if (a2 == 5500)
          {
            v18 = @"QueryKeys";
          }

          else if (a2 == 5501)
          {
            v18 = @"QueriedKeys";
          }

          else
          {
            v18 = @"QueryKeysFailed";
          }

          goto LABEL_369;
        }

        if (a2 == 5400)
        {
          v18 = @"LockStateUpdate";
          goto LABEL_369;
        }

        if (a2 == 5401)
        {
          v18 = @"NotifyClientsFirstUnlockClassC";
          goto LABEL_369;
        }
      }

      else
      {
        if (a2 <= 5505)
        {
          if (a2 == 5503)
          {
            v18 = @"EncryptLocalSuccess";
          }

          else if (a2 == 5504)
          {
            v18 = @"EncryptLocalFailed";
          }

          else
          {
            v18 = @"DecryptRemoteSuccess";
          }

          goto LABEL_369;
        }

        switch(a2)
        {
          case 5506:
            v18 = @"DecryptRemoteFailed";
            goto LABEL_369;
          case 9000:
            v18 = @"DaemonStart";
            goto LABEL_369;
          case 9001:
            v18 = @"CompanionLinkChangeEnabledState";
            goto LABEL_369;
        }
      }

LABEL_368:
      v27 = v13;
      v19 = [[NSString alloc] initWithFormat:@"Unknown(%lld)", a2];
      v14 = &stru_1001FDE68;
      v18 = v19;
      v13 = v27;
      goto LABEL_369;
    }

    if (a2 > 14001)
    {
      if (a2 > 18001)
      {
        if (a2 <= 20002)
        {
          if (a2 <= 19002)
          {
            if (a2 > 19000)
            {
              if (a2 == 19001)
              {
                v18 = @"CmpLnkViabilityAgentCreated";
              }

              else
              {
                v18 = @"CmpLnkViabilityAgentRegistered";
              }

              goto LABEL_369;
            }

            if (a2 == 18002)
            {
              v18 = @"BTLinkPreferencesAgentRegistered";
              goto LABEL_369;
            }

            if (a2 == 18003)
            {
              v18 = @"BTLinkPreferencesAgentUnregistered";
              goto LABEL_369;
            }
          }

          else
          {
            if (a2 <= 19004)
            {
              if (a2 == 19003)
              {
                v18 = @"CmpLnkViabilityAgentUnregistered";
              }

              else
              {
                v18 = @"CmpLnkViabilityAgentSuspended";
              }

              goto LABEL_369;
            }

            switch(a2)
            {
              case 19005:
                v18 = @"CmpLnkViabilityAgentActivated";
                goto LABEL_369;
              case 20001:
                v18 = @"CompanionProxyConfigCreated";
                goto LABEL_369;
              case 20002:
                v18 = @"CompanionProxyConfigRegistered";
                goto LABEL_369;
            }
          }
        }

        else if (a2 > 30100)
        {
          if (a2 <= 40001)
          {
            if (a2 == 30101)
            {
              v18 = @"LaunchOnDemandLaunchEventReceived";
              goto LABEL_369;
            }

            if (a2 == 40001)
            {
              v18 = @"NWActivityFragmentReporterCreate";
              goto LABEL_369;
            }
          }

          else
          {
            switch(a2)
            {
              case 40002:
                v18 = @"NWActivityFragmentReporterStart";
                goto LABEL_369;
              case 40003:
                v18 = @"NWActivityFragmentReporterCancel";
                goto LABEL_369;
              case 40004:
                v18 = @"NWActivityFragmentReporterReceivedFragmentRequest";
                goto LABEL_369;
            }
          }
        }

        else if (a2 <= 30001)
        {
          if (a2 == 20003)
          {
            v18 = @"CompanionProxyConfigUnregistered";
            goto LABEL_369;
          }

          if (a2 == 30001)
          {
            v18 = @"AutoLinkUpgradeMonitorCreate";
            goto LABEL_369;
          }
        }

        else
        {
          switch(a2)
          {
            case 30002:
              v18 = @"AutoLinkUpgradeMonitorStart";
              goto LABEL_369;
            case 30003:
              v18 = @"AutoLinkUpgradeMonitorCancel";
              goto LABEL_369;
            case 30004:
              v18 = @"AutoLinkUpgradeMonitorReceivedUpdate";
              goto LABEL_369;
          }
        }
      }

      else if (a2 <= 15003)
      {
        if (a2 <= 14005)
        {
          if (a2 > 14003)
          {
            if (a2 == 14004)
            {
              v18 = @"DirectToCloudRequestAvailable";
            }

            else
            {
              v18 = @"DirectToCloudRequestUnavailable";
            }
          }

          else if (a2 == 14002)
          {
            v18 = @"DirectToCloudRegistered";
          }

          else
          {
            v18 = @"DirectToCloudUnregistered";
          }

          goto LABEL_369;
        }

        if (a2 > 15000)
        {
          if (a2 == 15001)
          {
            v18 = @"PreferWiFiAgentCreated";
          }

          else if (a2 == 15002)
          {
            v18 = @"PreferWiFiAgentRegistered";
          }

          else
          {
            v18 = @"PreferWiFiAgentUnregistered";
          }

          goto LABEL_369;
        }

        if (a2 == 14006)
        {
          v18 = @"DirectToCloudLinkRecommendationQueryStart";
          goto LABEL_369;
        }

        if (a2 == 14007)
        {
          v18 = @"DirectToCloudLinkRecommendationResponseReceived";
          goto LABEL_369;
        }
      }

      else if (a2 > 17001)
      {
        if (a2 <= 17003)
        {
          if (a2 == 17002)
          {
            v18 = @"QuickRelayAgentRegistered";
          }

          else
          {
            v18 = @"QuickRelayAgentUnregistered";
          }

          goto LABEL_369;
        }

        switch(a2)
        {
          case 17004:
            v18 = @"QuickRelayAgentSuspended";
            goto LABEL_369;
          case 17005:
            v18 = @"QuickRelayAgentActivated";
            goto LABEL_369;
          case 18001:
            v18 = @"BTLinkPreferencesAgentCreated";
            goto LABEL_369;
        }
      }

      else if (a2 <= 16001)
      {
        if (a2 == 15004)
        {
          v18 = @"PreferWiFiAgentActivated";
          goto LABEL_369;
        }

        if (a2 == 16001)
        {
          v18 = @"PhoneCallRelayAgentCreated";
          goto LABEL_369;
        }
      }

      else
      {
        switch(a2)
        {
          case 16002:
            v18 = @"PhoneCallRelayAgentRegistered";
            goto LABEL_369;
          case 16003:
            v18 = @"PhoneCallRelayAgentUnregistered";
            goto LABEL_369;
          case 17001:
            v18 = @"QuickRelayAgentCreated";
            goto LABEL_369;
        }
      }

      goto LABEL_368;
    }

    if (a2 > 11000)
    {
      if (a2 > 12000)
      {
        if (a2 <= 12002)
        {
          if (a2 == 12001)
          {
            v18 = @"CompanionProxyCreated";
          }

          else
          {
            v18 = @"CompanionProxyRegistered";
          }

          goto LABEL_369;
        }

        switch(a2)
        {
          case 12003:
            v18 = @"CompanionProxyUnregistered";
            goto LABEL_369;
          case 13001:
            v18 = @"PolicyTrafficClassUpdate";
            goto LABEL_369;
          case 14001:
            v18 = @"DirectToCloudCreated";
            goto LABEL_369;
        }
      }

      else
      {
        if (a2 <= 11002)
        {
          if (a2 == 11001)
          {
            v18 = @"BeginActivity";
          }

          else
          {
            v18 = @"EndActivity";
          }

          goto LABEL_369;
        }

        switch(a2)
        {
          case 11003:
            v18 = @"LocalEndpointUpdated";
            goto LABEL_369;
          case 11004:
            v18 = @"ReceivedLiveLinkAdvisory";
            goto LABEL_369;
          case 11005:
            v18 = @"LocalAWDLEndpointUpdated";
            goto LABEL_369;
        }
      }

      goto LABEL_368;
    }

    switch(a2)
    {
      case 10001:
        v18 = @"IDSServiceCreated";
        break;
      case 10002:
        v18 = @"IDSSessionCreated";
        break;
      case 10003:
        v18 = @"IDSSessionSentInvitation";
        break;
      case 10004:
        v18 = @"IDSSessionReceivedInvitation";
        break;
      case 10005:
        v18 = @"IDSSessionInvitationCollided";
        break;
      case 10006:
        v18 = @"IDSSessionAcceptInvitation";
        break;
      case 10007:
        v18 = @"IDSSessionCancelInvitation";
        break;
      case 10008:
        v18 = @"IDSSessionStarted";
        break;
      case 10009:
        v18 = @"IDSSessionEnded";
        break;
      case 10010:
        v18 = @"IKERestart";
        break;
      case 10011:
        v18 = @"IKESessionClassDConnecting";
        break;
      case 10012:
        v18 = @"IKESessionClassDConnected";
        break;
      case 10013:
        v18 = @"IKECancelled";
        break;
      case 10014:
        v18 = @"IDSSessionInvalidate";
        break;
      case 10015:
        v18 = @"CloudLinkEnable";
        break;
      case 10016:
        v18 = @"CloudLinkDisable";
        break;
      case 10017:
        v18 = @"LinkIdleTimeout";
        break;
      case 10018:
        v18 = @"RestartOnResume";
        break;
      case 10019:
        v18 = @"ReplaceExistingSession";
        break;
      case 10020:
        v18 = @"ConnectionStateChange";
        break;
      case 10021:
        v18 = @"ConnectionReadError";
        break;
      case 10022:
        v18 = @"ConnectionWriteError";
        break;
      case 10023:
        v18 = @"DeferIKEClassD";
        break;
      case 10024:
        v18 = @"DeferIKEClassC";
        break;
      case 10025:
        v18 = @"DeferIDSSessionInvitation";
        break;
      case 10026:
        v18 = @"IDSSessionDeclineInvitation";
        break;
      default:
        if (a2 == 9002)
        {
          v18 = @"TestServerSetup";
        }

        else
        {
          if (a2 != 9003)
          {
            goto LABEL_368;
          }

          v18 = @"SimulatedCrash";
        }

        break;
    }
  }

LABEL_369:
  if (v12)
  {
    v20 = " ";
  }

  else
  {
    v20 = "";
  }

  if (v12)
  {
    v14 = v8;
  }

  v21 = [v13 initWithFormat:@"%@%s%@%s%@", v16, v17, v18, v20, v14];

  if (qword_1002293E8 != -1)
  {
    dispatch_once(&qword_1002293E8, &stru_1001FCBF0);
  }

  v22 = qword_1002293E0;
  if (v7)
  {
    v23 = _NRCopyEventLogObjectForNRUUID();

    v22 = v23;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
  }

  if (v10)
  {
    v24 = [NSString alloc];
    v25 = _NRCopyTimeString();
    v26 = [v24 initWithFormat:@"\n    %@ : %@", v25, v21];

    os_unfair_lock_lock(&stru_1002293D0);
    [qword_1002293C8 setObject:v26 atIndexedSubscript:byte_1002293D4];
    byte_1002293D4 = (byte_1002293D4 + 1) & 0x7F;
    os_unfair_lock_unlock(&stru_1002293D0);
  }
}

void sub_1000085D0(id val)
{
  v2 = (*(val + 32) + 1);
  *(val + 32) = v2;
  objc_initWeak(&location, val);
  v3 = dispatch_time(0, 500000000);
  v4 = *(val + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000086C4;
  block[3] = &unk_1001FD0B0;
  objc_copyWeak(v6, &location);
  v6[1] = v2;
  dispatch_after(v3, v4, block);

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void sub_1000086C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 3) == 1003 && WeakRetained[32] == *(a1 + 40))
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v4 = [WeakRetained[28] allValues];
    v5 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v45;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 |= [*(*(&v44 + 1) + 8 * i) unsignedLongLongValue];
        }

        v6 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (!_NRLogIsLevelEnabled())
    {
LABEL_47:
      v19 = objc_alloc_init(NSMutableSet);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v20 = [v3[29] allValues];
      v21 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v41;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [v19 addObjectsFromArray:{*(*(&v40 + 1) + 8 * j), v35, v37, v38, v39}];
          }

          v22 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v22);
      }

      v25 = v3[31];
      if (v7)
      {
        if (!v25)
        {
LABEL_62:

          goto LABEL_63;
        }
      }

      else if (v25)
      {
        v26 = [NSString alloc];
        v36 = v3[31];
        v27 = [v26 initWithFormat:@"Reporting WiFi client type %zd with no reason"];
        sub_10013C2A8(@"NRLinkManagerWiFi", @"PowerLog", v27, 0, 0, v28, v29, v30, v36);
      }

      v31 = objc_alloc_init(NSMutableDictionary);
      v32 = [NSNumber numberWithInteger:v3[31]];
      [v31 setObject:v32 forKeyedSubscript:@"WiFiClientType"];

      v33 = [NSNumber numberWithBool:v3[23] != 0];
      [v31 setObject:v33 forKeyedSubscript:@"WiFiWoWState"];

      v34 = [NSNumber numberWithUnsignedLongLong:v7];
      [v31 setObject:v34 forKeyedSubscript:@"WiFiAssertionReason"];

      [v31 setObject:v19 forKeyedSubscript:@"WiFiAssertionClients"];
      if (([v3[30] isEqualToDictionary:v31] & 1) == 0)
      {
        sub_100008D1C(@"NetworkRelay Wi-Fi Assertion", v31);
        objc_storeStrong(v3 + 30, v31);
      }

      goto LABEL_62;
    }

    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v10 = qword_1002294A0;
    v11 = objc_alloc_init(NSMutableString);
    if ((v7 & 2) != 0)
    {
      v12 = [[NSString alloc] initWithUTF8String:"RangeExtension"];
      if ([v11 length])
      {
        [v11 appendString:{@", "}];
      }

      [v11 appendString:v12];

      if ((v7 & 4) == 0)
      {
LABEL_19:
        if ((v7 & 8) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_31;
      }
    }

    else if ((v7 & 4) == 0)
    {
      goto LABEL_19;
    }

    v13 = [[NSString alloc] initWithUTF8String:"PreferWiFi"];
    if ([v11 length])
    {
      [v11 appendString:{@", "}];
    }

    [v11 appendString:v13];

    if ((v7 & 8) == 0)
    {
LABEL_20:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }

LABEL_31:
    v14 = [[NSString alloc] initWithUTF8String:"LinkRecommendation"];
    if ([v11 length])
    {
      [v11 appendString:{@", "}];
    }

    [v11 appendString:v14];

    if ((v7 & 0x10) == 0)
    {
LABEL_21:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }

LABEL_34:
    v15 = [[NSString alloc] initWithUTF8String:"ForcedWoW"];
    if ([v11 length])
    {
      [v11 appendString:{@", "}];
    }

    [v11 appendString:v15];

    if ((v7 & 0x20) == 0)
    {
LABEL_22:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

LABEL_37:
    v16 = [[NSString alloc] initWithUTF8String:"PrimaryLink"];
    if ([v11 length])
    {
      [v11 appendString:{@", "}];
    }

    [v11 appendString:v16];

    if ((v7 & 0x40) == 0)
    {
LABEL_23:
      if ((v7 & 0x80) == 0)
      {
LABEL_46:
        v38 = 1545;
        v39 = v11;
        v35 = "";
        v37 = "[NRLinkManagerWiFi reportToPowerlog]_block_invoke";
        _NRLogWithArgs();

        goto LABEL_47;
      }

LABEL_43:
      v18 = [[NSString alloc] initWithUTF8String:"AutoLinkUpgrade"];
      if ([v11 length])
      {
        [v11 appendString:{@", "}];
      }

      [v11 appendString:v18];

      goto LABEL_46;
    }

LABEL_40:
    v17 = [[NSString alloc] initWithUTF8String:"DirectToCloud"];
    if ([v11 length])
    {
      [v11 appendString:{@", "}];
    }

    [v11 appendString:v17];

    if ((v7 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

LABEL_63:
}

void sub_100008D1C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs();
  }

  if (qword_100229268 != -1)
  {
    dispatch_once(&qword_100229268, &stru_1001FC3A0);
  }

  v5 = qword_100229260;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008E9C;
  block[3] = &unk_1001FD060;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);
}

uint64_t sub_100008E9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = PLShouldLogRegisteredEvent();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return _PLLogRegisteredEvent(90, v4, v5, 0);
  }

  return result;
}

id *sub_100009074(id *a1, char a2, char a3, void *a4)
{
  v8 = a4;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = NRToken;
    v9 = objc_msgSendSuper2(&v16, "init");
    if (!v9)
    {
      v11 = sub_1000091EC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = sub_1000091EC();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "[NRToken initWithType:action:value:]";
      sub_1000091EC();
      _NRLogAbortWithPack();
    }

    a1 = v9;
    *(v9 + 8) = a2;
    *(v9 + 9) = a3;
    objc_storeStrong(v9 + 2, a4);
  }

  return a1;
}

id sub_1000091EC()
{
  if (qword_100228E68 != -1)
  {
    dispatch_once(&qword_100228E68, &stru_1001FA038);
  }

  v1 = qword_100228E60;

  return v1;
}

void sub_100009240(id a1)
{
  qword_100228E60 = os_log_create("com.apple.networkrelay", "");

  _objc_release_x1();
}

id sub_100009284(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(NSMutableData);
  v4 = *(a1 + 8);
  NRTLVAdd();
  if (*(a1 + 16))
  {
    NRTLVAddData();
  }

  NRTLVAdd();
  return v2;
}

uint64_t sub_10000930C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009324(void *a1, unsigned __int8 *a2)
{
  v2 = *(a2 + 1);
  v3 = __rev16(v2);
  v4 = *a2;
  if (v4 != 3)
  {
    if (v4 == 2)
    {
      v8 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
      v9 = *(a1[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    else if (v4 == 1)
    {
      if (v2 == 256)
      {
        v5 = a2[3];
        v6 = a1[5];
LABEL_9:
        *(*(v6 + 8) + 24) = v5;
        return 1;
      }

      *(*(a1[4] + 8) + 24) = 1;
      if (qword_100228E68 != -1)
      {
        dispatch_once(&qword_100228E68, &stru_1001FA038);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_100228E68 == -1)
        {
LABEL_21:
          _NRLogWithArgs();
          return 0;
        }

LABEL_22:
        dispatch_once(&qword_100228E68, &stru_1001FA038);
        goto LABEL_21;
      }

      return result;
    }

    return 1;
  }

  if (v2 == 256)
  {
    v5 = a2[3];
    v6 = a1[7];
    goto LABEL_9;
  }

  *(*(a1[4] + 8) + 24) = 1;
  if (qword_100228E68 != -1)
  {
    dispatch_once(&qword_100228E68, &stru_1001FA038);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100228E68 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  return result;
}

id sub_10000A838()
{
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  v1 = qword_100228E70;

  return v1;
}

void sub_10000A88C(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v11 = a3;
    v12 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

    v13 = a1[3];
    v14 = v12;
    v15 = v13;
    v16 = [a1 description];
    sub_1000059A8(v15, a2, v16, v14);
  }
}

void sub_10000A944(uint64_t a1, id *a2)
{
  if (a1 && *a2)
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v8 = a1;
      v9 = *a2;
      v7 = 935;
      v5 = "";
      v6 = "[NRPairingClient invalidateIKESession:]";
      _NRLogWithArgs();
    }

    [*a2 setStateUpdateBlock:{0, v5, v6, v7, v8, v9}];
    [*a2 setChildStateUpdateBlock:0];
    [*a2 setConfigurationUpdateBlock:0];
    [*a2 setTrafficSelectorUpdateBlock:0];
    [*a2 setAdditionalAddressesUpdateBlock:0];
    [*a2 setShortDPDEventBlock:0];
    [*a2 setRedirectEventBlock:0];
    [*a2 setPrivateNotifyStatusEvent:0];
    [*a2 disconnect];
    [*a2 invalidate];
    v4 = *a2;
    *a2 = 0;
  }
}

void sub_10000AAB8(uint64_t a1)
{
  if (a1 && (*(a1 + 8) & 0xFE) != 6)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      v3 = [v2 description];
      [*(a1 + 80) setClientQueue:*(a1 + 32)];
      objc_initWeak(location, a1);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10000DFC8;
      v35[3] = &unk_1001FC090;
      objc_copyWeak(&v37, location);
      v4 = v3;
      v36 = v4;
      [*(a1 + 80) setStateUpdateBlock:v35];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10000E534;
      v32[3] = &unk_1001FB088;
      objc_copyWeak(&v34, location);
      v5 = v4;
      v33 = v5;
      [*(a1 + 80) setChildStateUpdateBlock:v32];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10000E710;
      v29[3] = &unk_1001FB0B0;
      objc_copyWeak(&v31, location);
      v6 = v5;
      v30 = v6;
      [*(a1 + 80) setConfigurationUpdateBlock:v29];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000E80C;
      v26[3] = &unk_1001FB0D8;
      objc_copyWeak(&v28, location);
      v7 = v6;
      v27 = v7;
      [*(a1 + 80) setTrafficSelectorUpdateBlock:v26];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000E92C;
      v23[3] = &unk_1001FC108;
      objc_copyWeak(&v25, location);
      v8 = v7;
      v24 = v8;
      [*(a1 + 80) setAdditionalAddressesUpdateBlock:v23];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000EA28;
      v20[3] = &unk_1001FD0D8;
      objc_copyWeak(&v22, location);
      v9 = v8;
      v21 = v9;
      [*(a1 + 80) setShortDPDEventBlock:v20];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000EB20;
      v17[3] = &unk_1001FC108;
      objc_copyWeak(&v19, location);
      v10 = v9;
      v18 = v10;
      [*(a1 + 80) setPrivateNotifyStatusEvent:v17];
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v11 = qword_100228E70;
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        v13 = qword_100228E70;
        _NRLogWithArgs();
      }

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v22);

      objc_destroyWeak(&v25);
      objc_destroyWeak(&v28);

      objc_destroyWeak(&v31);
      objc_destroyWeak(&v34);

      objc_destroyWeak(&v37);
      objc_destroyWeak(location);
    }

    else
    {
      v14 = sub_10000A838();
      v15 = _NRLogIsLevelEnabled();

      if (v15)
      {
        v16 = sub_10000A838();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_10000AFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak((v44 + 40));
  objc_destroyWeak((v45 + 40));
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a38);
  objc_destroyWeak(&a44);
  objc_destroyWeak((v46 - 168));
  objc_destroyWeak((v46 - 120));
  objc_destroyWeak((v46 - 112));
  _Unwind_Resume(a1);
}

void sub_10000B048(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if ((*(v9 + 8) & 0xFE) != 6)
  {
    v10 = sub_10000B384(v9, 0);
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 24);
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_10016D388(NRDLocalDevice, v12);
    if (v13)
    {
      v14 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v13];
      [v10 addObject:v14];
    }

    if (v35)
    {
      v15 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50411 notifyData:v35];
      [v10 addObject:v15];
    }

    if (v7)
    {
      v16 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50412 notifyData:v7];
      [v10 addObject:v16];
    }

    if (v8)
    {
      v17 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50413 notifyData:v8];
      [v10 addObject:v17];
    }

    [*(a1 + 40) setCustomIKEAuthPrivateNotifies:v10];
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v33 = 1737;
      v34 = *(a1 + 32);
      v31 = "";
      v32 = "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]_block_invoke";
      _NRLogWithArgs();
    }

    v18 = *(a1 + 32);
    v19 = [*(a1 + 40) sharedSecret];
    LogString = _NRKeyCreateLogString();
    sub_10000DF34(v18, 3014, LogString);

    if (*(a1 + 48))
    {
      v21 = *(a1 + 32);
      if (v21 && (v22 = *(v21 + 40)) != 0 && (v23 = v22[11], v22, v23 == 1))
      {
        v24 = sub_100146D34(1, 1);
      }

      else
      {
        v24 = sub_100146D34(1, 0);
        [v24 setMode:2];
        [v24 setReplayWindowSize:4];
      }

      v25 = *(a1 + 56);
      v26 = *(a1 + 40);
      if (v24)
      {
        v27 = *(a1 + 32);
        if (v27)
        {
          v28 = *(v27 + 40);
          v29 = v28;
          if (v28)
          {
            v30 = *(v28 + 5);
LABEL_29:
            (*(v25 + 16))(v25, v26, v24, v30);

LABEL_31:
            goto LABEL_32;
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v25 = *(a1 + 56);
      v26 = *(a1 + 40);
    }

    (*(v25 + 16))(v25, v26, 0, 0);
    goto LABEL_31;
  }

LABEL_32:
}

id sub_10000B384(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = objc_alloc_init(NSMutableArray);
  LOWORD(v52) = 6144;
  v5 = [[NSMutableData alloc] initWithBytes:&v52 length:2];
  v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48602 notifyData:v5];
  [v4 addObject:v6];

  if (qword_100229228 != -1)
  {
    dispatch_once(&qword_100229228, &stru_1001FC320);
  }

  v7 = qword_100229220;
  v8 = [v7 dataUsingEncoding:4];

  v9 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48603 notifyData:v8];
  [v4 addObject:v9];

  if (qword_100229218 != -1)
  {
    dispatch_once(&qword_100229218, &stru_1001FC300);
  }

  v10 = qword_100229210;
  v11 = [v10 dataUsingEncoding:4];

  v12 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48604 notifyData:v11];
  [v4 addObject:v12];

  if (qword_100229298 != -1)
  {
    dispatch_once(&qword_100229298, &stru_1001FC450);
  }

  LOBYTE(v52) = byte_100229290;
  v13 = [[NSData alloc] initWithBytes:&v52 length:1];
  v14 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48606 notifyData:v13];
  [v4 addObject:v14];

  v15 = sub_100147A80();
  [v4 addObject:v15];

  v16 = sub_100163A30(NRDLocalDevice, *(a1 + 24));
  if (!v16)
  {
    v44 = sub_10000A838();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v46 = sub_10000A838();
      _NRLogWithArgs();
    }

LABEL_32:
    _os_log_pack_size();
    __chkstk_darwin();
    v50 = *__error();
    v51 = _os_log_pack_fill();
    *v51 = 136446210;
    *(v51 + 4) = "[NRPairingClient copyNotifyPayloadsToSendWithProxy:]";
    sub_10000A838();
    _NRLogAbortWithPack();
    return 0;
  }

  v17 = v16;
  *&v52 = *(v16 + 152);
  v18 = [[NSData alloc] initWithBytes:&v52 length:8];
  v19 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48605 notifyData:v18];

  [v4 addObject:v19];
  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = v20[8];

    if (v21 == 1)
    {
      v22 = sub_100163A30(NRDLocalDevice, *(a1 + 24));
      if (v22)
      {
        v23 = v22;
        v52 = 0uLL;
        sub_100167D5C(v22, &v52);
        v24 = [[NSData alloc] initWithBytes:&v52 length:16];
        v25 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50801 notifyData:v24];
        [v4 addObject:v25];

        v52 = 0uLL;
        sub_100168638(v23, &v52);
        v26 = [[NSData alloc] initWithBytes:&v52 length:16];
        v27 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50802 notifyData:v26];
        [v4 addObject:v27];

        v52 = 0uLL;
        sub_1001727AC(v23, &v52);
        v28 = [[NSData alloc] initWithBytes:&v52 length:16];
        v29 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50811 notifyData:v28];
        [v4 addObject:v29];

        v52 = 0uLL;
        sub_100172608(v23, &v52);
        v30 = [[NSData alloc] initWithBytes:&v52 length:16];
        v31 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50812 notifyData:v30];
        [v4 addObject:v31];

        goto LABEL_13;
      }

      v47 = sub_10000A838();
      v48 = _NRLogIsLevelEnabled();

      if (v48)
      {
        v49 = sub_10000A838();
        _NRLogWithArgs();
      }

      goto LABEL_32;
    }
  }

LABEL_13:
  if (a2)
  {
    v32 = sub_100163A30(NRDLocalDevice, *(a1 + 24));
    v33 = v32;
    if (v32)
    {
      v34 = *(v32 + 144);
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v36 = [v35 proxyCapability];

    if (v36 == 1)
    {
      if (v33)
      {
        v37 = v33[18];
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;
      v39 = [v38 hasCompanionDatapath];

      if (v39)
      {
        v40 = 0;
      }

      else
      {
        v41 = *(a1 + 40);
        if (v41)
        {
          v41 = v41[4];
        }

        v40 = v41;
      }

      v42 = sub_100147C1C(v33, v40);
      [v4 addObject:v42];
    }
  }

  return v4;
}

uint64_t sub_10000BA30(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 1:
      v2 = 104;
      return a1 + v2;
    case 4:
      v2 = 88;
      return a1 + v2;
    case 3:
      v2 = 96;
      return a1 + v2;
  }

  v4 = sub_10000A838();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = sub_10000A838();
    String = NRDataProtectionClassCreateString();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  v7 = *__error();
  v8 = _os_log_pack_fill();
  v9 = NRDataProtectionClassCreateString();
  *v8 = 136446466;
  *(v8 + 4) = "[NRPairingClient ikeSessionPointerForDataProtectionClass:]";
  *(v8 + 12) = 2112;
  *(v8 + 14) = v9;
  sub_10000A838();
  v10 = _NRLogAbortWithPack();
  return sub_10000BBA4(v10);
}

void sub_10000BBA4(uint64_t a1, int a2)
{
  if ((*(a1 + 8) & 0xFE) != 6)
  {
    String = NRDataProtectionClassCreateString();
    switch(a2)
    {
      case 1:
        v5 = *(a1 + 104);
        if (v5)
        {
          v6 = 8;
          goto LABEL_11;
        }

        v11 = sub_10000A838();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          goto LABEL_18;
        }

        break;
      case 3:
        v5 = *(a1 + 96);
        if (v5)
        {
          v6 = 4;
          goto LABEL_11;
        }

        v9 = sub_10000A838();
        v10 = _NRLogIsLevelEnabled();

        if (!v10)
        {
          goto LABEL_18;
        }

        break;
      case 4:
        v5 = *(a1 + 88);
        if (v5)
        {
          v6 = 2;
LABEL_11:
          v7 = v5;
          [v7 setClientQueue:*(a1 + 32)];
          objc_initWeak(&location, a1);
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10000BE5C;
          v16[3] = &unk_1001FA0C8;
          objc_copyWeak(v20, &location);
          v21 = a2;
          v17 = String;
          v8 = v7;
          v20[1] = v6;
          v18 = v8;
          v19 = a1;
          [v8 setStateUpdateBlock:v16];

          objc_destroyWeak(v20);
          objc_destroyWeak(&location);

LABEL_19:
          return;
        }

        v13 = sub_10000A838();
        v14 = _NRLogIsLevelEnabled();

        if (v14)
        {
          break;
        }

LABEL_18:
        v8 = 0;
        goto LABEL_19;
      default:
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228E78 != -1)
          {
            dispatch_once(&qword_100228E78, &stru_1001FA0E8);
          }

          _NRLogWithArgs();
        }

        goto LABEL_18;
    }

    v15 = sub_10000A838();
    _NRLogWithArgs();

    goto LABEL_18;
  }
}

void sub_10000BE40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10000BE5C(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_19;
  }

  if (v41)
  {
    if (*(a1 + 72) == 1)
    {
      sub_10000C1F0(WeakRetained);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    SessionStateString = NEIKEv2CreateSessionStateString();
    sub_10000A88C(WeakRetained, 3018, @"%@ session %@ got IKE error %@ with state %@", v8, v9, v10, v11, v12, v6);

LABEL_6:
    if ((*(a1 + 64) & WeakRetained[6]) == 0)
    {
      sub_10000C49C(WeakRetained, *(a1 + 72));
    }

    goto LABEL_19;
  }

  v13 = *(a1 + 40);
  v38 = NEIKEv2CreateSessionStateString();
  sub_10000A88C(WeakRetained, 3009, @"IKE session %@ changed state to %@", v14, v15, v16, v17, v18, v13);

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (*(a1 + 72) == 1)
      {
        sub_10000C1F0(WeakRetained);
      }

      v39 = *(a1 + 40);
      sub_10000A88C(WeakRetained, 3018, @"%@ session %@ got IKE Disconnected state with no error", v19, v20, v21, v22, v23, *(a1 + 32));
      goto LABEL_6;
    }

LABEL_18:
    sub_10000CCF0(WeakRetained);
    sub_10000C668(WeakRetained, 6u, 0);
    goto LABEL_19;
  }

  if (a2 == 1)
  {
    goto LABEL_19;
  }

  if (a2 != 2)
  {
    goto LABEL_18;
  }

  WeakRetained[6] |= *(a1 + 64);
  sub_10000C668(WeakRetained, 4u, 0);
  v24 = WeakRetained[3];
  v25 = sub_100163A30(NRDLocalDevice, v24);
  v26 = WeakRetained[14];
  WeakRetained[14] = v25;

  if ((~*(WeakRetained + 12) & 6) != 0)
  {
    goto LABEL_34;
  }

  v27 = WeakRetained[14];
  if ((WeakRetained[6] & 8) != 0)
  {
    if (!v27)
    {
LABEL_32:

      goto LABEL_33;
    }
  }

  else
  {
    if (!v27 || (*(v27 + 48) & 0x10) == 0 && *(v27 + 16) < 0x13u)
    {
      goto LABEL_34;
    }

    v28 = v27;
  }

  if (*(v27 + 16) <= 0xFu)
  {
    goto LABEL_32;
  }

  v29 = WeakRetained[14];
  if (v29)
  {
    v30 = *(v29 + 48);

    if ((v30 & 0x10) == 0)
    {
      v31 = WeakRetained[5];
      if (!v31)
      {
LABEL_31:
        v32 = objc_alloc_init(NSMutableArray);
        v33 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:51601 notifyData:0];
        [v32 addObject:v33];
        objc_initWeak(&location, WeakRetained);
        v34 = WeakRetained[10];
        v35 = WeakRetained[4];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10000CDC4;
        v42[3] = &unk_1001FC018;
        objc_copyWeak(&v43, &location);
        [v34 sendPrivateNotifies:v32 maxRetries:10 retryIntervalInMilliseconds:3000 callbackQueue:v35 callback:v42];
        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);

        goto LABEL_34;
      }

      goto LABEL_30;
    }

LABEL_33:
    sub_10000CF5C(WeakRetained);
    goto LABEL_34;
  }

  v31 = WeakRetained[5];
  if (!v31)
  {
    goto LABEL_31;
  }

LABEL_30:
  if ((*(v31 + 8) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  v36 = WeakRetained[5];
  if (v36)
  {
    v37 = v36[14];

    if (v37 == 1)
    {
      sub_10000CAEC(*(a1 + 48), 4);
      sub_10000CAEC(*(a1 + 48), 3);
      sub_10000CAEC(*(a1 + 48), 1);
    }
  }

LABEL_19:
}

void sub_10000C1D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10000C1F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((!v1 || (*(v1 + 8) & 1) == 0) && (*(a1 + 48) & 8) == 0)
  {
    v2 = *(a1 + 112);
    if (!v2 || (*(v2 + 48) & 0x10) == 0 && *(v2 + 16) <= 0x12u)
    {
      if (*(a1 + 13))
      {
        *(a1 + 12) = 1;
        v4 = sub_100163A30(NRDLocalDevice, *(a1 + 24));
        if (!v4)
        {
          v7 = sub_10000A838();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v9 = sub_10000A838();
            _NRLogWithArgs();
          }

          _os_log_pack_size();
          v10 = *__error();
          v11 = _os_log_pack_fill();
          *v11 = 136446210;
          *(v11 + 4) = "[NRPairingClient scheduleIKESessionClassADueToConnectFailure]";
          sub_10000A838();
          _NRLogAbortWithPack();
          __break(1u);
        }

        v5 = v4;
        if ((*(v4 + 48) & 0x4010) == 0 && *(v4 + 16) <= 0x12u)
        {
          objc_initWeak(&location, a1);
          v6 = sub_100180AC4();
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_10000DD90;
          v12[3] = &unk_1001FD0D8;
          objc_copyWeak(&v14, &location);
          v13 = v5;
          sub_100181B44(v6, v12);

          objc_destroyWeak(&v14);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        *(a1 + 13) = 1;

        sub_10000C49C(a1, 1);
      }
    }
  }
}

void sub_10000C470(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_10000C49C(uint64_t a1, int a2)
{
  if ((*(a1 + 8) & 0xFE) == 6)
  {
    return;
  }

  String = NRDataProtectionClassCreateString();
  v5 = sub_10000BA30(a1, a2);
  sub_10000A944(a1, v5);
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    _NRLogWithArgs();
  }

  if (a2 == 1)
  {
    if (*(a1 + 12))
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        _NRLogWithArgs();
      }

      goto LABEL_19;
    }

    v6 = a1;
    v7 = 1;
  }

  else
  {
    v6 = a1;
    v7 = a2;
  }

  sub_10000D1F8(v6, v7);
LABEL_19:
}

void sub_10000C668(uint64_t a1, unsigned int a2, char a3)
{
  if (!a1)
  {
    return;
  }

  v6 = *(a1 + 48);
  if (*(a1 + 8) == a2 && v6 == *(a1 + 152))
  {
    return;
  }

  *(a1 + 8) = a2;
  *(a1 + 152) = v6;
  if (a2 == 7)
  {
    v7 = sub_100163A30(NRDLocalDevice, *(a1 + 24));
    v8 = v7;
    if (!v7)
    {
LABEL_16:
      objc_opt_self();
      if (qword_100228EA8 != -1)
      {
        dispatch_once(&qword_100228EA8, &stru_1001FA210);
      }

      v12 = qword_100228EA0;
      if (!v12 || (v13 = v12, [v12[3] objectForKeyedSubscript:*(a1 + 24)], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v13, !v15))
      {
        v16 = [NSString alloc];
        if ((a3 - 1) > 7u)
        {
          v17 = @"None";
        }

        else
        {
          v17 = *(&off_1001FA108 + (a3 - 1));
        }

        v18 = [v16 initWithFormat:@"pairing client failed %@", v17];
        sub_10016B844(NRDLocalDevice, -2017, v18, *(a1 + 24));

LABEL_30:
        goto LABEL_31;
      }

LABEL_20:
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        _NRLogWithArgs();
      }

      goto LABEL_30;
    }

    v9 = *(v7 + 48);
    if ((v9 & 0x20) != 0)
    {
      LOBYTE(v11) = 1;
      if ((v9 & 0x1000) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = (v9 & 0x10) != 0 || *(v7 + 16) > 0x12u;
      v11 = (v9 >> 14) & 1 | v10;
      if ((v9 & 0x1000) != 0)
      {
LABEL_14:
        if ((v9 & 1) != 0 || (((*(v7 + 48) & 0x2000) != 0) & v11) != 0)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

    if (v9)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_31:
  v19 = objc_retainBlock(*(a1 + 144));
  v20 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D1DC;
  block[3] = &unk_1001FA078;
  v21 = v19;
  v34 = v21;
  v35 = a2;
  v36 = a3;
  dispatch_async(v20, block);
  if (a2 >= 5 && (*(a1 + 11) & 1) == 0)
  {
    objc_opt_self();
    if (qword_100228EA8 != -1)
    {
      dispatch_once(&qword_100228EA8, &stru_1001FA210);
    }

    v22 = qword_100228EA0;
    v23 = *(a1 + 24);
    if (v22)
    {
      [v22[2] setObject:0 forKeyedSubscript:v23];
      v32 = v23;
      v24 = [v22[3] objectForKeyedSubscript:v23];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v41;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v41 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v40 + 1) + 8 * i);
            if (v30)
            {
              v31 = *(v30 + 8);
            }

            else
            {
              v31 = 0;
            }

            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_1000170EC;
            v37[3] = &unk_1001FD1F0;
            v37[4] = v30;
            v38 = a2;
            v39 = a3;
            dispatch_async(v31, v37);
          }

          v27 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v27);
      }

      v23 = v32;
      [v22[3] setObject:0 forKeyedSubscript:v32];
    }
  }
}

void sub_10000CAEC(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    if ((!v3 || (*(v3 + 8) & 1) == 0) && ((*(a1 + 14) & 1) != 0 || (v4 = *(a1 + 112)) != 0 && (*(v4 + 48) & 0x10) != 0))
    {
      v6 = sub_100163A30(NRDLocalDevice, *(a1 + 24));
      if (a2 == 4 && (*(a1 + 48) & 2) == 0)
      {
        v22 = v6;
        if (v6)
        {
          v7 = v6[9];
          v8 = v7;
          if (v7)
          {
            v9 = *(v7 + 1);
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v8 = 0;
          v9 = 0;
        }

        v10 = v9;

        v6 = v22;
        if (!v10)
        {
          goto LABEL_39;
        }

        v11 = 4;
        goto LABEL_38;
      }

      v12 = *(a1 + 40);
      if (!v12 || *(v12 + 14) != 1 || (*(a1 + 48) & 2) != 0)
      {
        if (a2 == 3 && (*(a1 + 48) & 4) == 0)
        {
          v22 = v6;
          if (v6)
          {
            v13 = v6[10];
            v14 = v13;
            if (v13)
            {
              v15 = *(v13 + 1);
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v14 = 0;
            v15 = 0;
          }

          v16 = v15;

          v6 = v22;
          if (!v16)
          {
            goto LABEL_39;
          }

          v11 = 3;
          goto LABEL_38;
        }

        if (v12 && *(v12 + 14) == 1)
        {
          if (a2 != 1)
          {
            goto LABEL_39;
          }

          v17 = *(a1 + 48);
          if ((v17 & 4) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (a2 != 1)
          {
            goto LABEL_39;
          }

          v17 = *(a1 + 48);
        }

        if ((v17 & 8) != 0)
        {
          goto LABEL_39;
        }

        v22 = v6;
        if (v6)
        {
          v18 = v6[11];
          v19 = v18;
          v20 = v18 ? *(v18 + 1) : 0;
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        v21 = v20;

        v6 = v22;
        if (!v21)
        {
          goto LABEL_39;
        }

        v11 = 1;
LABEL_38:
        sub_10000C49C(a1, v11);
        v6 = v22;
      }

LABEL_39:
    }
  }
}

void sub_10000CCF0(uint64_t a1)
{
  if (a1)
  {
    sub_10000A944(a1, (a1 + 88));
    sub_10000A944(a1, (a1 + 96));
    sub_10000A944(a1, (a1 + 104));
    sub_10000A944(a1, (a1 + 80));
    v2 = *(a1 + 72);
    if (v2)
    {
      [v2 cancel];
      v3 = *(a1 + 72);
      *(a1 + 72) = 0;
    }

    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v4 = qword_100228E80;
    sub_100016810(v4, a1);
  }
}

void sub_10000CDC4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[8] & 0xFE) != 6)
  {
    v4 = WeakRetained;
    if (a2)
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        _NRLogWithArgs();
      }

      sub_10000CF5C(v4);
    }

    else
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        _NRLogWithArgs();
      }

      sub_10000C668(v4, 7u, 7);
    }

    WeakRetained = v4;
  }
}

void sub_10000CF5C(uint64_t a1)
{
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    _NRLogWithArgs();
  }

  v2 = *(a1 + 48);
  if ((v2 & 2) != 0)
  {
    sub_10016B190(NRDLocalDevice, 4, *(a1 + 24));
    v2 = *(a1 + 48);
    if ((v2 & 4) == 0)
    {
LABEL_9:
      if ((v2 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_9;
  }

  sub_10016B190(NRDLocalDevice, 3, *(a1 + 24));
  v2 = *(a1 + 48);
  if ((v2 & 8) != 0)
  {
LABEL_10:
    sub_10016B190(NRDLocalDevice, 1, *(a1 + 24));
    v2 = *(a1 + 48);
  }

LABEL_11:
  *(a1 + 48) = v2 | 0x10;
  sub_10000C668(a1, 5u, 0);
  v3 = *(a1 + 72);
  if (v3)
  {
    [v3 cancel];
    v4 = *(a1 + 72);
    *(a1 + 72) = 0;
  }

  v5 = sub_100163A30(NRDLocalDevice, *(a1 + 24));
  v12 = v5;
  if (!v5 || *(v5 + 16) < 0x10u)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 40);
  if (!v6 || (*(v6 + 13) & 1) == 0)
  {
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v7 = qword_100228E80;
    sub_100016810(v7, a1);

LABEL_20:
    sub_10000A944(a1, (a1 + 80));
    sub_10000A944(a1, (a1 + 88));
    sub_10000A944(a1, (a1 + 96));
    sub_10000A944(a1, (a1 + 104));
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v8 = qword_1002290B8;
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 6);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  sub_10017EDB4(v11, 0, *(a1 + 64));
}

void sub_10000D1F8(uint64_t a1, int a2)
{
  if ((*(a1 + 8) & 0xFE) != 6)
  {
    v4 = *(a1 + 40);
    if (!v4 || (*(v4 + 8) & 1) == 0)
    {
      v5 = sub_10000BA30(a1, a2);
      if (!*v5)
      {
        v6 = v5;
        String = NRDataProtectionClassCreateString();
        v8 = sub_100163A30(NRDLocalDevice, *(a1 + 24));
        v9 = v8;
        if (!v8)
        {
          v52 = sub_10000A838();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v54 = sub_10000A838();
            _NRLogWithArgs();
          }

          sub_10000C668(a1, 7u, 3);
          goto LABEL_63;
        }

        if (a2 == 1)
        {
          if ((*(v8 + 48) & 0x10) != 0 || *(v8 + 16) > 0x12u)
          {
            if (qword_100228E78 != -1)
            {
              dispatch_once(&qword_100228E78, &stru_1001FA0E8);
            }

            if (_NRLogIsLevelEnabled())
            {
              v10 = sub_10000A838();
              _NRLogWithArgs();
            }

            goto LABEL_63;
          }

          v11 = *(v8 + 88);
        }

        else
        {
          v11 = sub_100164D70(v8, a2);
        }

        v12 = v11;

        if (!v12)
        {
          if (qword_100228E78 != -1)
          {
            dispatch_once(&qword_100228E78, &stru_1001FA0E8);
          }

          if (_NRLogIsLevelEnabled())
          {
            v23 = sub_10000A838();
            _NRLogWithArgs();
          }

          sub_10000C668(a1, 7u, 8);
          goto LABEL_63;
        }

        v82 = sub_100147400(1, v9, a2);
        if (a2 != 1)
        {
          v13 = *(a1 + 40);
          if (v13)
          {
            if (*(v13 + 11) == 1)
            {
              v14 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"0"];
              v15 = [NEIKEv2ConfigurationMessage alloc];
              v16 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v14];
              v90[0] = v16;
              v17 = [[NEIKEv2ResponderTransportIPv6Address alloc] initWithAddress:v14];
              v90[1] = v17;
              v18 = [NSArray arrayWithObjects:v90 count:2];
              v19 = [v15 initWithWithAttributes:v18];
              [v82 setConfigurationRequest:v19];
            }
          }
        }

        v20 = [v82 customIKEAuthPrivateNotifies];
        v21 = v20 == 0;

        if (v21)
        {
          v81 = objc_alloc_init(NSMutableArray);
        }

        else
        {
          v22 = [v82 customIKEAuthPrivateNotifies];
          v81 = [v22 mutableCopy];
        }

        if ([v81 count])
        {
          [v82 setCustomIKEAuthPrivateNotifies:v81];
        }

        v80 = [[NSString alloc] initWithFormat:@"terminusIKE-NRPairing-%@", String];
        v24 = *(a1 + 40);
        if (v24 && (v25 = v24[9], v24, (v25 & 1) != 0))
        {
          v79 = a1;
        }

        else
        {
          v79 = 0;
        }

        v26 = sub_100146654(v9, 1);
        [v26 setRequestChildlessSA:1];
        v88[0] = 0;
        v88[1] = v88;
        v89 = 0;
        v88[2] = 0x2020000000;
        v27 = *(a1 + 40);
        if (v27 && (v28 = v27[11], v27, (v28 & 1) != 0))
        {
          v29 = v9;
          v30 = sub_100146D34(0, 1);
          sub_100147008(v30, v29, 0);

          v78 = 0;
        }

        else
        {
          v31 = *(a1 + 40);
          if (v31)
          {
            v31 = v31[2];
          }

          v32 = v31;
          [v26 setOutgoingInterfaceName:v32];

          v33 = *(a1 + 40);
          if (v33)
          {
            v33 = v33[3];
          }

          v34 = v33;
          [v26 setRemoteEndpoint:v34];

          [v26 setRandomizeLocalPort:1];
          v35 = v9;
          v30 = sub_100146D34(0, 0);
          [v30 setMode:2];
          [v30 setReplayWindowSize:4];
          sub_100147008(v30, v35, 0);

          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_10000DC50;
          v87[3] = &unk_1001FAA10;
          v87[4] = v88;
          v78 = objc_retainBlock(v87);
        }

        v36 = v26;
        if (qword_100229238 != -1)
        {
          dispatch_once(&qword_100229238, &stru_1001FC340);
        }

        if (byte_100229230 == 1)
        {
          [v36 setForceUDPEncapsulation:1];
          [v36 setRandomizeLocalPort:1];
        }

        v37 = [NEIKEv2Session alloc];
        v38 = *(a1 + 40);
        if (v38)
        {
          v39 = *(v38 + 40);
        }

        else
        {
          v39 = 0;
        }

        v40 = [v37 initWithIKEConfig:v36 firstChildConfig:v30 sessionConfig:v82 queue:*(a1 + 32) ipsecInterface:v39 ikeSocketHandler:v78 kernelSASessionName:v80 packetDelegate:v79];
        v41 = *v6;
        *v6 = v40;

        v47 = *v6;
        if (*v6)
        {
          switch(a2)
          {
            case 4:
              v48 = 17;
              break;
            case 3:
              v48 = 18;
              break;
            case 1:
              v48 = 19;
              break;
            default:
LABEL_55:
              v73 = v47;
              sub_10000A88C(a1, 3015, @"%@ %@", v42, v43, v44, v45, v46, String);
              sub_10000BBA4(a1, a2);
              if (qword_100228E78 != -1)
              {
                dispatch_once(&qword_100228E78, &stru_1001FA0E8);
              }

              v49 = qword_100228E70;
              v50 = _NRLogIsLevelEnabled();

              if (v50)
              {
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v51 = qword_100228E70;
                v76 = String;
                v77 = *v6;
                v74 = 642;
                v75 = a1;
                v72 = "";
                v73 = "[NRPairingClient setupIPsecInitiatorIfNecessary:]";
                _NRLogWithArgs();
              }

              [*v6 connect];
              goto LABEL_62;
          }

          *(a1 + v48) = 0;
          v47 = *v6;
          goto LABEL_55;
        }

        switch(a2)
        {
          case 3:
            v58 = ++*(a1 + 18);
            v59 = sub_10000A838();
            if (v58 >= 4)
            {
              v60 = _NRLogIsLevelEnabled();

              if (v60)
              {
                goto LABEL_80;
              }

              goto LABEL_81;
            }

            v66 = _NRLogIsLevelEnabled();

            if (v66)
            {
LABEL_87:
              v68 = sub_10000A838();
              _NRLogWithArgs();
            }

            break;
          case 4:
            v55 = ++*(a1 + 17);
            v56 = sub_10000A838();
            if (v55 >= 4)
            {
              v57 = _NRLogIsLevelEnabled();

              if (v57)
              {
                goto LABEL_80;
              }

              goto LABEL_81;
            }

            v65 = _NRLogIsLevelEnabled();

            if (v65)
            {
              goto LABEL_87;
            }

            break;
          case 1:
            v61 = ++*(a1 + 19);
            v62 = sub_10000A838();
            if (v61 >= 4)
            {
              v63 = _NRLogIsLevelEnabled();

              if (v63)
              {
LABEL_80:
                v64 = sub_10000A838();
                _NRLogWithArgs();
              }

LABEL_81:
              sub_10000C668(a1, 7u, 6);
LABEL_62:
              _Block_object_dispose(v88, 8);

LABEL_63:
              return;
            }

            v67 = _NRLogIsLevelEnabled();

            if (v67)
            {
              goto LABEL_87;
            }

            break;
        }

        objc_initWeak(&location, a1);
        v69 = dispatch_time(0x8000000000000000, 3000000000);
        v70 = *(a1 + 32);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000DCB4;
        block[3] = &unk_1001FB900;
        v71 = v70;
        objc_copyWeak(&v84, &location);
        v85 = a2;
        dispatch_after(v69, v71, block);

        objc_destroyWeak(&v84);
        objc_destroyWeak(&location);
        goto LABEL_62;
      }
    }
  }
}

uint64_t sub_10000DC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = getpid();
  v10 = *(*(a1 + 32) + 8) + 24;

  return _NEHelperGetIKESocketWithResult(a3, a4, a5, v9, v10);
}

void sub_10000DCB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[8] & 0xFE) != 6)
  {
    v3 = *(a1 + 40);
    if (v3 == 4)
    {
      if ((WeakRetained[48] & 2) != 0 || *(WeakRetained + 11))
      {
        goto LABEL_3;
      }

      v4 = WeakRetained;
      sub_10000C49C(WeakRetained, 4);
      WeakRetained = v4;
      v3 = *(a1 + 40);
    }

    if (v3 == 3)
    {
      if ((WeakRetained[48] & 4) != 0 || *(WeakRetained + 12))
      {
        goto LABEL_3;
      }

      v5 = WeakRetained;
      sub_10000C49C(WeakRetained, 3);
      WeakRetained = v5;
      v3 = *(a1 + 40);
    }

    if (v3 == 1 && (WeakRetained[48] & 8) == 0 && !*(WeakRetained + 13))
    {
      v6 = WeakRetained;
      sub_10000C49C(WeakRetained, 1);
      WeakRetained = v6;
    }
  }

LABEL_3:
}

void sub_10000DD90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (*(WeakRetained + 8) & 0xFE) != 6)
  {
    *(WeakRetained + 12) = 0;
    v11 = WeakRetained;
    v3 = sub_100163A30(NRDLocalDevice, *(WeakRetained + 3));
    if (!v3)
    {
      v6 = sub_10000A838();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_10000A838();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v9 = *__error();
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "[NRPairingClient scheduleIKESessionClassADueToConnectFailure]_block_invoke";
      sub_10000A838();
      _NRLogAbortWithPack();
    }

    if ((v3[49] & 0x40) == 0)
    {
      v4 = *(a1 + 32);
      if (!v4 || (*(v4 + 48) & 0x10) == 0 && *(v4 + 16) <= 0x12u)
      {
        v5 = v3;
        sub_10000C49C(v11, 1);
        v3 = v5;
      }
    }

    WeakRetained = v11;
  }
}

void sub_10000DF34(id *a1, int a2, void *a3)
{
  if (a1)
  {
    v6 = a1[3];
    v7 = a3;
    v8 = [a1 description];
    sub_1000059A8(v6, a2, v8, v7);
  }
}

void sub_10000DFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        v8 = *(a1 + 32);
        v9 = qword_100228E70;
        SessionStateString = NEIKEv2CreateSessionStateString();
        _NRLogWithArgs();
      }

      if ((*(v7 + 48) & 0x10) == 0 && (*(v7 + 8) & 0xFE) != 6)
      {
        sub_10000A944(v7, (v7 + 88));
        sub_10000A944(v7, (v7 + 96));
        sub_10000A944(v7, (v7 + 104));
        v10 = ++*(v7 + 9);
        if (v10 < 3)
        {
          v21 = *(v7 + 40);
          if (!v21 || (*(v21 + 8) & 1) == 0)
          {
            sub_10000A944(v7, (v7 + 80));
            objc_initWeak(&from, v7);
            v22 = dispatch_time(0x8000000000000000, 3000000000);
            v23 = *(v7 + 32);
            location[0] = _NSConcreteStackBlock;
            location[1] = 3221225472;
            location[2] = sub_1000117E8;
            location[3] = &unk_1001FC730;
            v24 = v23;
            objc_copyWeak(&v30, &from);
            dispatch_after(v22, v24, location);

            objc_destroyWeak(&v30);
            objc_destroyWeak(&from);
          }
        }

        else
        {
          sub_10000C668(v7, 7u, 4);
        }
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          if (qword_100228E78 != -1)
          {
            dispatch_once(&qword_100228E78, &stru_1001FA0E8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228E78 != -1)
            {
              dispatch_once(&qword_100228E78, &stru_1001FA0E8);
            }

            v25 = *(a1 + 32);
            _NRLogWithArgs();
          }

          break;
        case 2:
          WeakRetained[6] |= 1uLL;
          sub_10000C668(WeakRetained, 3u, 0);
          v11 = *(v7 + 40);
          if (!v11 || (*(v11 + 8) & 1) == 0)
          {
            v12 = objc_alloc_init(NSMutableArray);
            if (*(v7 + 120))
            {
              sub_10000DF34(v7, 3400, @"ClassD");
              v13 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50411 notifyData:*(v7 + 120)];
              [v12 addObject:v13];
              sub_1000115FC(v7);
            }

            if (*(v7 + 128))
            {
              sub_10000DF34(v7, 3400, @"ClassC");
              v14 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50412 notifyData:*(v7 + 128)];
              [v12 addObject:v14];
              sub_100011608(v7);
            }

            if (*(v7 + 136))
            {
              sub_10000DF34(v7, 3400, @"ClassA");
              v15 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50413 notifyData:*(v7 + 136)];
              [v12 addObject:v15];
              sub_100011614(v7);
            }

            if ([v12 count])
            {
              v16 = sub_10016D388(NRDLocalDevice, *(v7 + 24));
              if (v16)
              {
                sub_10000DF34(v7, 3400, @"Identity");
                v17 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v16];
                [v12 addObject:v17];
              }

              v18 = sub_10000B384(v7, 0);
              [v12 addObjectsFromArray:v18];

              objc_initWeak(location, v7);
              v19 = *(v7 + 80);
              v20 = *(v7 + 32);
              v27[0] = _NSConcreteStackBlock;
              v27[1] = 3221225472;
              v27[2] = sub_100011620;
              v27[3] = &unk_1001FC018;
              objc_copyWeak(&v28, location);
              [v19 sendPrivateNotifies:v12 maxRetries:10 retryIntervalInMilliseconds:3000 callbackQueue:v20 callback:v27];
              objc_destroyWeak(&v28);
              objc_destroyWeak(location);
            }
          }

          break;
        case 1:
          sub_10000C668(WeakRetained, 2u, 0);
          break;
      }
    }
  }
}

void sub_10000E518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E534(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v9)
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 == -1)
        {
LABEL_12:
          v6 = *(a1 + 32);
          v7 = qword_100228E70;
          SessionStateString = NEIKEv2CreateSessionStateString();
          _NRLogWithArgs();

          goto LABEL_13;
        }

LABEL_16:
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        goto LABEL_12;
      }
    }
  }

LABEL_13:
}

void sub_10000E710(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v4 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10000E80C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v8 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10000E92C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v4 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

uint64_t sub_10000EA28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    WeakRetained = _NRLogIsLevelEnabled();
    v3 = v6;
    if (WeakRetained)
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v5 = *(a1 + 32);
      WeakRetained = _NRLogWithArgs();
      v3 = v6;
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

void sub_10000EB20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v113 = v3;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v111 = *(a1 + 32);
      v112 = v5;
      v109 = 1109;
      v110 = WeakRetained;
      v107 = "";
      v108 = "[NRPairingClient setupIKECallbacksPairing]_block_invoke_8";
      _NRLogWithArgs();
    }

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v122 objects:v128 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v123;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v123 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v17 = *(*(&v122 + 1) + 8 * i);
          if ([v17 notifyStatus] == 50351)
          {
            v12 = WeakRetained[3];
            v13 = [WeakRetained description];
            sub_1000059A8(v12, 3401, v13, @"Identity");

            v14 = [v17 notifyData];
            v15 = WeakRetained[3];
            v120[0] = _NSConcreteStackBlock;
            v120[1] = 3221225472;
            v120[2] = sub_10001081C;
            v120[3] = &unk_1001FC068;
            v121 = WeakRetained;
            sub_10016E894(NRDLocalDevice, v14, v15, v120);

            v16 = v121;
            goto LABEL_13;
          }

          if ([v17 notifyStatus] == 50411)
          {
            v18 = WeakRetained[3];
            v19 = [WeakRetained description];
            sub_1000059A8(v18, 3401, v19, @"ClassD");

            v20 = [v17 notifyData];
            v21 = WeakRetained[3];
            v118[0] = _NSConcreteStackBlock;
            v118[1] = 3221225472;
            v118[2] = sub_100010AD8;
            v118[3] = &unk_1001FC068;
            v119 = WeakRetained;
            sub_10016F27C(NRDLocalDevice, v20, 0, v21, v118);

            v16 = v119;
            goto LABEL_13;
          }

          if ([v17 notifyStatus] == 50412)
          {
            v22 = WeakRetained[3];
            v23 = [WeakRetained description];
            sub_1000059A8(v22, 3401, v23, @"ClassC");

            v24 = [v17 notifyData];
            v25 = WeakRetained[3];
            v116[0] = _NSConcreteStackBlock;
            v116[1] = 3221225472;
            v116[2] = sub_100010E90;
            v116[3] = &unk_1001FC068;
            v117 = WeakRetained;
            sub_10016F524(NRDLocalDevice, v24, 0, v25, v116);

            v16 = v117;
            goto LABEL_13;
          }

          if ([v17 notifyStatus] == 50413)
          {
            v26 = WeakRetained[3];
            v27 = [WeakRetained description];
            sub_1000059A8(v26, 3401, v27, @"ClassA");

            v28 = [v17 notifyData];
            v29 = WeakRetained[3];
            v114[0] = _NSConcreteStackBlock;
            v114[1] = 3221225472;
            v114[2] = sub_100011248;
            v114[3] = &unk_1001FC068;
            v115 = WeakRetained;
            sub_10016F8AC(NRDLocalDevice, v28, v29, v114);

            v16 = v115;
            goto LABEL_13;
          }

          v30 = [v17 notifyStatus];
          v16 = [v17 notifyData];
          if ((WeakRetained[1] & 0xFE) != 6)
          {
            if (p_vtable[463] != -1)
            {
              dispatch_once(&qword_100228E78, &stru_1001FA0E8);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (p_vtable[463] != -1)
              {
                dispatch_once(&qword_100228E78, &stru_1001FA0E8);
              }

              v31 = qword_100228E70;
              v111 = v30;
              v112 = [v16 length];
              v109 = 1358;
              v110 = WeakRetained;
              v107 = "";
              v108 = "[NRPairingClient handleNotifyCode:payload:]";
              _NRLogWithArgs();
            }

            if (v30 <= 50500)
            {
              if (v30 > 48606)
              {
                if ((v30 - 50351) <= 0x3E && ((1 << (v30 + 81)) & 0x701C000000000003) != 0 || v30 == 48607)
                {
LABEL_61:
                  p_vtable = NRSCDInterfaceConfig.vtable;
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v110 = WeakRetained;
                    v111 = v30;
                    v109 = 1541;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    _NRLogWithArgs();
                  }

                  goto LABEL_170;
                }

                if (v30 != 48701)
                {
                  goto LABEL_155;
                }

                LOBYTE(v126) = 0;
                if ([v16 length])
                {
                  [v16 getBytes:&v126 length:1];
                }

                goto LABEL_169;
              }

              if (v30 <= 48602)
              {
                if (!v30 || v30 == 48601)
                {
                  goto LABEL_61;
                }

                if (v30 != 48602)
                {
                  goto LABEL_155;
                }

                LOWORD(v126) = 0;
                if ([v16 length] >= 2)
                {
                  [v16 getBytes:&v126 length:2];
                  v44 = v126;
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v45 = bswap32(v44) >> 16;
                  v46 = qword_100228E70;
                  IsLevelEnabled = _NRLogIsLevelEnabled();

                  if (IsLevelEnabled)
                  {
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v48 = qword_100228E70;
                    v110 = WeakRetained;
                    v111 = v45;
                    v109 = 1371;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    _NRLogWithArgs();
                  }

                  sub_100171304(NRDLocalDevice, v45, WeakRetained[3]);
                }

                goto LABEL_169;
              }

              if (v30 > 48604)
              {
                if (v30 != 48605)
                {
                  LOBYTE(v126) = 0;
                  if ([v16 length] == 1)
                  {
                    [v16 getBytes:&v126 length:1];
                    v53 = WeakRetained[3];
                    v54 = _NRCopyLogObjectForNRUUID();
                    v55 = _NRLogIsLevelEnabled();

                    if (v55)
                    {
                      v56 = WeakRetained[3];
                      v57 = _NRCopyLogObjectForNRUUID();
                      v110 = [WeakRetained description];
                      v111 = v126;
                      v109 = 1399;
                      v107 = "";
                      v108 = "[NRPairingClient handleNotifyCode:payload:]";
                      _NRLogWithArgs();
                    }

                    sub_1001714EC(NRDLocalDevice, v126, WeakRetained[3]);
                  }

                  goto LABEL_169;
                }

                v126 = 0;
                if ([v16 length] == 8)
                {
                  [v16 getBytes:&v126 length:8];
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v63 = qword_100228E70;
                  v64 = _NRLogIsLevelEnabled();

                  if (v64)
                  {
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v65 = qword_100228E70;
                    v110 = WeakRetained;
                    v111 = v126;
                    v109 = 1410;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    _NRLogWithArgs();
                  }

                  v66 = v126;
                  v67 = WeakRetained[3];
                  v68 = objc_opt_self();
                  sub_100169658(v68, v66, v67, 1);
                  goto LABEL_154;
                }

                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v80 = qword_100228E70;
                v81 = _NRLogIsLevelEnabled();

                if (!v81)
                {
                  goto LABEL_169;
                }

                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v32 = qword_100228E70;
                v110 = WeakRetained;
                v111 = [v16 length];
                v109 = 1406;
                v107 = "";
                v108 = "[NRPairingClient handleNotifyCode:payload:]";
                _NRLogWithArgs();
                goto LABEL_168;
              }

              if (v30 == 48603)
              {
                v32 = [[NSString alloc] initWithData:v16 encoding:4];
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v60 = qword_100228E70;
                if (v32)
                {
                  v61 = _NRLogIsLevelEnabled();

                  if (v61)
                  {
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v62 = qword_100228E70;
                    v110 = WeakRetained;
                    v111 = v32;
                    v109 = 1381;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    _NRLogWithArgs();
                  }

                  sub_1001716D4(NRDLocalDevice, v32, WeakRetained[3]);
                  goto LABEL_168;
                }

                v104 = _NRLogIsLevelEnabled();

                if (v104)
                {
                  v105 = sub_10000A838();
                  v110 = WeakRetained;
                  v111 = v16;
                  v109 = 1378;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
                  goto LABEL_249;
                }
              }

              else
              {
                v32 = [[NSString alloc] initWithData:v16 encoding:4];
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v33 = qword_100228E70;
                if (v32)
                {
                  v34 = _NRLogIsLevelEnabled();

                  if (v34)
                  {
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v35 = qword_100228E70;
                    v110 = WeakRetained;
                    v111 = v32;
                    v109 = 1391;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    _NRLogWithArgs();
                  }

                  sub_1001718D8(NRDLocalDevice, v32, WeakRetained[3]);
                  goto LABEL_168;
                }

                v106 = _NRLogIsLevelEnabled();

                if (v106)
                {
                  v105 = sub_10000A838();
                  v110 = WeakRetained;
                  v111 = v16;
                  v109 = 1388;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
LABEL_249:
                  _NRLogWithArgs();
                }
              }

LABEL_168:

              goto LABEL_169;
            }

            if (v30 > 50801)
            {
              if (v30 > 51300)
              {
                if (v30 > 51500)
                {
                  if (v30 == 51501)
                  {
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v77 = qword_100228E70;
                    v78 = _NRLogIsLevelEnabled();

                    if (v78)
                    {
                      if (qword_100228E78 != -1)
                      {
                        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                      }

                      v67 = qword_100228E70;
                      v109 = 1422;
                      v110 = WeakRetained;
                      v107 = "";
                      v108 = "[NRPairingClient handleNotifyCode:payload:]";
                      _NRLogWithArgs();
LABEL_154:
                    }
                  }

                  else if (v30 == 51601)
                  {
                    v58 = WeakRetained[5];
                    p_vtable = (NRSCDInterfaceConfig + 24);
                    if (v58)
                    {
                      v59 = v58[8];

                      if (v59 == 1)
                      {
                        sub_10000CF5C(WeakRetained);
                      }
                    }

                    goto LABEL_170;
                  }
                }

                else
                {
                  if (v30 == 51301)
                  {
                    goto LABEL_61;
                  }

                  if (v30 == 51401)
                  {
                    LOBYTE(v126) = 0;
                    [v16 getBytes:&v126 length:1];
                    p_vtable = NRSCDInterfaceConfig.vtable;
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v41 = qword_100228E70;
                    v42 = _NRLogIsLevelEnabled();

                    if (v42)
                    {
                      if (qword_100228E78 != -1)
                      {
                        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                      }

                      v43 = qword_100228E70;
                      v110 = WeakRetained;
                      v111 = v126;
                      v109 = 1417;
                      v107 = "";
                      v108 = "[NRPairingClient handleNotifyCode:payload:]";
                      _NRLogWithArgs();
                    }

                    sub_100171ADC(NRDLocalDevice, v126 == 1, WeakRetained[3]);
                    goto LABEL_170;
                  }
                }

LABEL_155:
                p_vtable = NRSCDInterfaceConfig.vtable;
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v79 = qword_100228E70;
                  v110 = WeakRetained;
                  v111 = v30;
                  v109 = 1545;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
                  _NRLogWithArgs();
                }

                goto LABEL_170;
              }

              if (v30 > 50811)
              {
                if (v30 != 50812)
                {
                  if (v30 == 50901)
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_155;
                }

                v73 = WeakRetained[5];
                if (v73)
                {
                  v74 = v73[8];

                  if (v74 == 1)
                  {
                    p_vtable = NRSCDInterfaceConfig.vtable;
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v75 = qword_100228E70;
                    v76 = _NRLogIsLevelEnabled();

                    if (!v76)
                    {
                      goto LABEL_170;
                    }

                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v40 = qword_100228E70;
                    v109 = 1500;
                    v110 = WeakRetained;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    goto LABEL_199;
                  }
                }

                v126 = 0;
                v127 = 0;
                p_vtable = NRSCDInterfaceConfig.vtable;
                if ([v16 length] <= 0xF)
                {
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v84 = qword_100228E70;
                  v85 = _NRLogIsLevelEnabled();

                  if (!v85)
                  {
                    goto LABEL_170;
                  }

                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v40 = qword_100228E70;
                  v110 = WeakRetained;
                  v111 = v16;
                  v109 = 1505;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
LABEL_199:
                  _NRLogWithArgs();

                  goto LABEL_170;
                }

                [v16 getBytes:&v126 length:16];
                v95 = sub_100173FD4(NRDLocalDevice, &v126, WeakRetained[3]);
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v96 = qword_100228E70;
                v97 = _NRLogIsLevelEnabled();

                if (v95)
                {
                  if (v97)
                  {
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v93 = qword_100228E70;
                    IPv6AddrString = createIPv6AddrString();
                    v110 = WeakRetained;
                    v111 = IPv6AddrString;
                    v109 = 1510;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    goto LABEL_244;
                  }
                }

                else if (v97)
                {
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v93 = qword_100228E70;
                  IPv6AddrString = createIPv6AddrString();
                  v110 = WeakRetained;
                  v111 = IPv6AddrString;
                  v109 = 1512;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
                  goto LABEL_244;
                }
              }

              else if (v30 == 50802)
              {
                v69 = WeakRetained[5];
                if (v69)
                {
                  v70 = v69[8];

                  if (v70 == 1)
                  {
                    p_vtable = NRSCDInterfaceConfig.vtable;
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v71 = qword_100228E70;
                    v72 = _NRLogIsLevelEnabled();

                    if (!v72)
                    {
                      goto LABEL_170;
                    }

                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v40 = qword_100228E70;
                    v109 = 1482;
                    v110 = WeakRetained;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    goto LABEL_199;
                  }
                }

                v126 = 0;
                v127 = 0;
                p_vtable = NRSCDInterfaceConfig.vtable;
                if ([v16 length] <= 0xF)
                {
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v82 = qword_100228E70;
                  v83 = _NRLogIsLevelEnabled();

                  if (!v83)
                  {
                    goto LABEL_170;
                  }

                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v40 = qword_100228E70;
                  v110 = WeakRetained;
                  v111 = v16;
                  v109 = 1487;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
                  goto LABEL_199;
                }

                [v16 getBytes:&v126 length:16];
                v90 = sub_100173B9C(NRDLocalDevice, &v126, WeakRetained[3]);
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v91 = qword_100228E70;
                v92 = _NRLogIsLevelEnabled();

                if (v90)
                {
                  if (v92)
                  {
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v93 = qword_100228E70;
                    IPv6AddrString = createIPv6AddrString();
                    v110 = WeakRetained;
                    v111 = IPv6AddrString;
                    v109 = 1492;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    goto LABEL_244;
                  }
                }

                else if (v92)
                {
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v93 = qword_100228E70;
                  IPv6AddrString = createIPv6AddrString();
                  v110 = WeakRetained;
                  v111 = IPv6AddrString;
                  v109 = 1494;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
                  goto LABEL_244;
                }
              }

              else
              {
                if (v30 != 50811)
                {
                  goto LABEL_155;
                }

                v36 = WeakRetained[5];
                if (v36)
                {
                  v37 = v36[8];

                  if (v37 == 1)
                  {
                    p_vtable = NRSCDInterfaceConfig.vtable;
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v38 = qword_100228E70;
                    v39 = _NRLogIsLevelEnabled();

                    if (!v39)
                    {
                      goto LABEL_170;
                    }

                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v40 = qword_100228E70;
                    v109 = 1464;
                    v110 = WeakRetained;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    goto LABEL_199;
                  }
                }

                v126 = 0;
                v127 = 0;
                p_vtable = NRSCDInterfaceConfig.vtable;
                if ([v16 length] <= 0xF)
                {
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v86 = qword_100228E70;
                  v87 = _NRLogIsLevelEnabled();

                  if (!v87)
                  {
                    goto LABEL_170;
                  }

                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v40 = qword_100228E70;
                  v110 = WeakRetained;
                  v111 = v16;
                  v109 = 1469;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
                  goto LABEL_199;
                }

                [v16 getBytes:&v126 length:16];
                v98 = sub_100173764(NRDLocalDevice, &v126, WeakRetained[3]);
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v99 = qword_100228E70;
                v100 = _NRLogIsLevelEnabled();

                if (v98)
                {
                  if (v100)
                  {
                    if (qword_100228E78 != -1)
                    {
                      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                    }

                    v93 = qword_100228E70;
                    IPv6AddrString = createIPv6AddrString();
                    v110 = WeakRetained;
                    v111 = IPv6AddrString;
                    v109 = 1474;
                    v107 = "";
                    v108 = "[NRPairingClient handleNotifyCode:payload:]";
                    goto LABEL_244;
                  }
                }

                else if (v100)
                {
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v93 = qword_100228E70;
                  IPv6AddrString = createIPv6AddrString();
                  v110 = WeakRetained;
                  v111 = IPv6AddrString;
                  v109 = 1476;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
                  goto LABEL_244;
                }
              }
            }

            else
            {
              if (v30 <= 50700)
              {
                if ((v30 - 50501) < 5)
                {
                  goto LABEL_61;
                }

                goto LABEL_155;
              }

              if (v30 == 50701)
              {
                sub_100171CD8(NRDLocalDevice, v16, WeakRetained[3]);
LABEL_169:
                p_vtable = (NRSCDInterfaceConfig + 24);
                goto LABEL_170;
              }

              if (v30 == 50702)
              {
                goto LABEL_61;
              }

              if (v30 != 50801)
              {
                goto LABEL_155;
              }

              v49 = WeakRetained[5];
              if (v49)
              {
                v50 = v49[8];

                if (v50 == 1)
                {
                  p_vtable = NRSCDInterfaceConfig.vtable;
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v51 = qword_100228E70;
                  v52 = _NRLogIsLevelEnabled();

                  if (!v52)
                  {
                    goto LABEL_170;
                  }

                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v40 = qword_100228E70;
                  v109 = 1446;
                  v110 = WeakRetained;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
                  goto LABEL_199;
                }
              }

              v126 = 0;
              v127 = 0;
              p_vtable = NRSCDInterfaceConfig.vtable;
              if ([v16 length] <= 0xF)
              {
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v88 = qword_100228E70;
                v89 = _NRLogIsLevelEnabled();

                if (!v89)
                {
                  goto LABEL_170;
                }

                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v40 = qword_100228E70;
                v110 = WeakRetained;
                v111 = v16;
                v109 = 1451;
                v107 = "";
                v108 = "[NRPairingClient handleNotifyCode:payload:]";
                goto LABEL_199;
              }

              [v16 getBytes:&v126 length:16];
              v101 = sub_10017332C(NRDLocalDevice, &v126, WeakRetained[3]);
              if (qword_100228E78 != -1)
              {
                dispatch_once(&qword_100228E78, &stru_1001FA0E8);
              }

              v102 = qword_100228E70;
              v103 = _NRLogIsLevelEnabled();

              if (v101)
              {
                if (v103)
                {
                  if (qword_100228E78 != -1)
                  {
                    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                  }

                  v93 = qword_100228E70;
                  IPv6AddrString = createIPv6AddrString();
                  v110 = WeakRetained;
                  v111 = IPv6AddrString;
                  v109 = 1456;
                  v107 = "";
                  v108 = "[NRPairingClient handleNotifyCode:payload:]";
LABEL_244:
                  _NRLogWithArgs();
                }
              }

              else if (v103)
              {
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v93 = qword_100228E70;
                IPv6AddrString = createIPv6AddrString();
                v110 = WeakRetained;
                v111 = IPv6AddrString;
                v109 = 1458;
                v107 = "";
                v108 = "[NRPairingClient handleNotifyCode:payload:]";
                goto LABEL_244;
              }
            }
          }

LABEL_170:

LABEL_13:
        }

        v9 = [v7 countByEnumeratingWithState:&v122 objects:v128 count:16];
      }

      while (v9);
    }

    v3 = v113;
  }
}

void sub_10001081C(uint64_t a1, void *a2)
{
  v18 = a2;
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v15 = *(a1 + 32);
    _NRLogWithArgs();
  }

  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v3 = *(a1 + 32);
    v4 = qword_100228E70;
    if (v18)
    {
      v5 = v18[8];
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 1);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = v7;
    v16 = [v8 UUIDString];
    _NRLogWithArgs();
  }

  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v9 = *(a1 + 32);
    v10 = qword_100228E70;
    if (v18)
    {
      v11 = v18[8];
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 2);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v14 = v13;
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }
}

void sub_100010AD8(uint64_t a1, void *a2)
{
  v25 = a2;
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v21 = *(a1 + 32);
    _NRLogWithArgs();
  }

  if (v25)
  {
    v3 = v25[9];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v5 = *(a1 + 32);
    v6 = qword_100228E70;
    if (v4)
    {
      v7 = *(v4 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = sub_10015E4BC(v8);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v10 = *(a1 + 32);
    v11 = qword_100228E70;
    if (v4)
    {
      v12 = *(v4 + 2);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = sub_10015E4BC(v13);
    v23 = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v15 = *(a1 + 32);
    v16 = qword_100228E70;
    if (v4)
    {
      v17 = *(v4 + 3);
      v18 = v17;
      if (v17)
      {
        v19 = *(v17 + 2);
LABEL_33:
        v20 = v19;
        v24 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_34;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
    goto LABEL_33;
  }

LABEL_34:
  sub_10000CAEC(*(a1 + 32), 4);
}

void sub_100010E90(uint64_t a1, void *a2)
{
  v25 = a2;
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v21 = *(a1 + 32);
    _NRLogWithArgs();
  }

  if (v25)
  {
    v3 = v25[10];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v5 = *(a1 + 32);
    v6 = qword_100228E70;
    if (v4)
    {
      v7 = *(v4 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = sub_10015E4BC(v8);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v10 = *(a1 + 32);
    v11 = qword_100228E70;
    if (v4)
    {
      v12 = *(v4 + 2);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = sub_10015E4BC(v13);
    v23 = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v15 = *(a1 + 32);
    v16 = qword_100228E70;
    if (v4)
    {
      v17 = *(v4 + 3);
      v18 = v17;
      if (v17)
      {
        v19 = *(v17 + 2);
LABEL_33:
        v20 = v19;
        v24 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_34;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
    goto LABEL_33;
  }

LABEL_34:
  sub_10000CAEC(*(a1 + 32), 3);
}

void sub_100011248(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = v3;
  if (v3)
  {
    v4 = *(v3 + 11);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v22 = *(a1 + 32);
    _NRLogWithArgs();
  }

  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v6 = *(a1 + 32);
    v7 = qword_100228E70;
    if (v5)
    {
      v8 = *(v5 + 1);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = sub_10015E4BC(v9);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v11 = *(a1 + 32);
    v12 = qword_100228E70;
    if (v5)
    {
      v13 = *(v5 + 2);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = sub_10015E4BC(v14);
    v24 = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v16 = *(a1 + 32);
    v17 = qword_100228E70;
    if (v5)
    {
      v18 = *(v5 + 3);
      v19 = v18;
      if (v18)
      {
        v20 = *(v18 + 2);
LABEL_33:
        v21 = v20;
        v25 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_34;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = 0;
    goto LABEL_33;
  }

LABEL_34:
  sub_10000CAEC(*(a1 + 32), 1);
}

void sub_100011620(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[8] & 0xFE) != 6)
  {
    v4 = WeakRetained;
    if (a2)
    {
      WeakRetained[14] = 1;
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        _NRLogWithArgs();
      }

      sub_10000CAEC(v4, 4);
      sub_10000CAEC(v4, 3);
      sub_10000CAEC(v4, 1);
    }

    else
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        _NRLogWithArgs();
      }

      sub_10000C668(v4, 7u, 7);
    }

    WeakRetained = v4;
  }
}

void sub_1000117E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 8) & 0xFE) != 6 && (*(WeakRetained + 48) & 0x10) == 0 && !*(WeakRetained + 10))
  {
    v2 = WeakRetained;
    sub_10001184C(WeakRetained);
    WeakRetained = v2;
  }
}

void sub_10001184C(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && (*(v2 + 48) & 0x10) != 0)
  {
    sub_10000CAEC(a1, 4);

    sub_10000CAEC(a1, 3);
  }

  else
  {
    sub_10000A944(a1, (a1 + 80));
    v3 = *(a1 + 24);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100011928;
    v4[3] = &unk_1001FBFF0;
    v4[4] = a1;
    sub_10016D738(NRDLocalDevice, v3, 4, 0, v4);
  }
}

void sub_100011928(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v11 = *(a1 + 32);
    v12 = qword_100228E70;
    v87 = v8;
    LogString = _NRKeyCreateLogString();
    v84 = _NRKeyCreateLogString();
    v85 = _NRKeyCreateLogString();
    v80 = v11;
    v83 = LogString;
    v76 = "[NRPairingClient setupInitiator]_block_invoke";
    v78 = 392;
    v72 = "";
    _NRLogWithArgs();

    v8 = v87;
  }

  v14 = *(a1 + 32);
  if ((*(v14 + 8) & 0xFE) != 6)
  {
    objc_storeStrong((v14 + 120), a2);
    v15 = *(a1 + 32);
    if (v15)
    {
      objc_storeStrong((v15 + 128), a3);
      v16 = *(a1 + 32);
      if (v16)
      {
        objc_storeStrong((v16 + 136), a4);
      }
    }

    v17 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
    v86 = v10;
    if (qword_100229328 != -1)
    {
      dispatch_once(&qword_100229328, &stru_1001FC5D8);
    }

    v18 = qword_100229320;
    v19 = sub_1001472F0(1, v18, v17);

    v20 = *(*(a1 + 32) + 112);
    if (v20)
    {
      v21 = *(v20 + 176);
      if (v21)
      {
        v21 = v21[2];
      }

      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    [v19 setSharedSecret:{v22, v72, v76, v78, v80, v83, v84, v85}];

    v23 = [v19 sharedSecret];

    if (!v23)
    {
      v36 = sub_10000A838();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v38 = sub_10000A838();
        v73 = *(a1 + 32);
        _NRLogWithArgs();
      }

      sub_10000C668(*(a1 + 32), 7u, 8);
      goto LABEL_59;
    }

    v24 = *(a1 + 32);
    if (v24 && (v25 = *(v24 + 40)) != 0 && (v26 = v25[9], v25, v26 == 1))
    {
      v27 = v9;
      v88 = *(a1 + 32);
    }

    else
    {
      v27 = v9;
      v88 = 0;
    }

    v28 = sub_100146654(*(*(a1 + 32) + 112), 0);
    [v28 setRequestChildlessSA:1];
    v93[0] = 0;
    v93[1] = v93;
    v94 = 0;
    v93[2] = 0x2020000000;
    v29 = *(*(a1 + 32) + 40);
    if (v29)
    {
      v30 = v29[11];

      v31 = *(a1 + 32);
      if (v30 == 1)
      {
        v32 = a1;
        v33 = v8;
        v34 = sub_100146C84(*(v31 + 112), 1, 0);
        v35 = 0;
LABEL_36:
        v43 = *(v32 + 32);
        v44 = v28;
        if (v43)
        {
          if (qword_100229238 != -1)
          {
            dispatch_once(&qword_100229238, &stru_1001FC340);
          }

          if (byte_100229230 == 1)
          {
            [v44 setForceUDPEncapsulation:1];
            [v44 setRandomizeLocalPort:1];
          }
        }

        v45 = [NEIKEv2Session alloc];
        v46 = *(v32 + 32);
        v47 = *(v46 + 32);
        v48 = *(v46 + 40);
        if (v48)
        {
          v49 = *(v48 + 40);
        }

        else
        {
          v49 = 0;
        }

        v50 = [v45 initWithIKEConfig:v44 firstChildConfig:v34 sessionConfig:v19 queue:v47 ipsecInterface:v49 ikeSocketHandler:v35 kernelSASessionName:@"terminusIKEForPairingWithOOBKey" packetDelegate:v88];
        v51 = *(v32 + 32);
        v52 = *(v51 + 80);
        *(v51 + 80) = v50;

        v53 = v32;
        v54 = *(v32 + 32);
        if (*(v54 + 80))
        {
          *(v54 + 16) = 0;
          if (qword_100228E78 != -1)
          {
            dispatch_once(&qword_100228E78, &stru_1001FA0E8);
          }

          v55 = qword_100228E70;
          v56 = _NRLogIsLevelEnabled();

          if (v56)
          {
            if (qword_100228E78 != -1)
            {
              dispatch_once(&qword_100228E78, &stru_1001FA0E8);
            }

            v57 = qword_100228E70;
            v79 = 474;
            v81 = *(v53 + 32);
            v74 = "";
            v77 = "[NRPairingClient setupInitiator]_block_invoke";
            _NRLogWithArgs();
          }

          sub_10000AAB8(*(v53 + 32));
          if (qword_100228E78 != -1)
          {
            dispatch_once(&qword_100228E78, &stru_1001FA0E8);
          }

          v58 = qword_100228E70;
          v59 = _NRLogIsLevelEnabled();

          if (v59)
          {
            if (qword_100228E78 != -1)
            {
              dispatch_once(&qword_100228E78, &stru_1001FA0E8);
            }

            v60 = qword_100228E70;
            v79 = 476;
            v81 = *(v53 + 32);
            v74 = "";
            v77 = "[NRPairingClient setupInitiator]_block_invoke";
            _NRLogWithArgs();
          }

          [*(*(v53 + 32) + 80) connect];
          v61 = *(v53 + 32);
          if (v61)
          {
            *(v61 + 14) = 0;
          }
        }

        else
        {
          ++*(v54 + 16);
          v62 = *(v32 + 32);
          if (v62 && *(v62 + 16) >= 4u)
          {
            v63 = sub_10000A838();
            v64 = _NRLogIsLevelEnabled();

            if (v64)
            {
              v65 = sub_10000A838();
              v75 = *(v53 + 32);
              _NRLogWithArgs();
            }

            sub_10000C668(*(v53 + 32), 7u, 4);
          }

          else
          {
            v66 = sub_10000A838();
            v67 = _NRLogIsLevelEnabled();

            if (v67)
            {
              v68 = sub_10000A838();
              v82 = *(v53 + 32);
              _NRLogWithArgs();
            }

            objc_initWeak(&location, *(v53 + 32));
            v69 = dispatch_time(0x8000000000000000, 3000000000);
            v70 = *(v53 + 32);
            if (v70)
            {
              v70 = v70[4];
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10001221C;
            block[3] = &unk_1001FC730;
            v71 = v70;
            objc_copyWeak(&v90, &location);
            dispatch_after(v69, v71, block);

            objc_destroyWeak(&v90);
            objc_destroyWeak(&location);
          }
        }

        _Block_object_dispose(v93, 8);

        v8 = v33;
        v9 = v27;
LABEL_59:

        v10 = v86;
        goto LABEL_60;
      }
    }

    else
    {
      v31 = *(a1 + 32);
    }

    v32 = a1;
    v39 = *(v31 + 40);
    v33 = v8;
    if (v39)
    {
      v39 = v39[2];
    }

    v40 = v39;
    [v28 setOutgoingInterfaceName:v40];

    v41 = *(*(v32 + 32) + 40);
    if (v41)
    {
      v41 = v41[3];
    }

    v42 = v41;
    [v28 setRemoteEndpoint:v42];

    [v28 setRandomizeLocalPort:1];
    v34 = sub_1001471E8(*(*(v32 + 32) + 112), 0);
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_1000121B8;
    v92[3] = &unk_1001FAA10;
    v92[4] = v93;
    v35 = objc_retainBlock(v92);
    goto LABEL_36;
  }

LABEL_60:
}

uint64_t sub_1000121B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = getpid();
  v10 = *(*(a1 + 32) + 8) + 24;

  return _NEHelperGetIKESocketWithResult(a3, a4, a5, v9, v10);
}

void sub_10001221C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 8) & 0xFE) != 6 && (*(WeakRetained + 48) & 0x10) == 0 && !*(WeakRetained + 10))
  {
    v2 = WeakRetained;
    sub_10001184C();
    WeakRetained = v2;
  }
}

void sub_100012280(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228E70;
  qword_100228E70 = v1;

  _objc_release_x1(v1, v2);
}

id *sub_100012448(id *a1, void *a2, void *a3, void **p_vtable)
{
  v8 = a2;
  v9 = a3;
  v10 = p_vtable;
  v11 = v10;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (!v8)
  {
    v17 = sub_10000A838();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!v9)
  {
    v19 = sub_10000A838();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    v21 = sub_10000A838();
    v22 = _NRLogIsLevelEnabled();

    if (v22)
    {
LABEL_18:
      v23 = sub_10000A838();
      _NRLogWithArgs();

      v15 = 0;
      goto LABEL_12;
    }

LABEL_19:
    v15 = 0;
    goto LABEL_12;
  }

  v30.receiver = a1;
  v30.super_class = NRPairingClient;
  v12 = objc_msgSendSuper2(&v30, "init");
  if (!v12)
  {
    v24 = sub_10000A838();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = sub_10000A838();
      _NRLogWithArgs();
    }

    v8 = _os_log_pack_size();
    v9 = &v29 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *__error();
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "[NRPairingClient initWithQueue:nrUUID:parameters:]";
    sub_10000A838();
    _NRLogAbortWithPack();
    goto LABEL_23;
  }

  a1 = v12;
  v12[7] = atomic_fetch_add_explicit(&qword_100228178, 1uLL, memory_order_relaxed);
  objc_storeStrong(v12 + 4, a2);
  objc_storeStrong(a1 + 3, a3);
  objc_storeStrong(a1 + 5, p_vtable);
  v13 = +[NSUUID UUID];
  v14 = a1[8];
  a1[8] = v13;

  p_vtable = NRSCDInterfaceConfig.vtable;
  if (qword_100228E78 != -1)
  {
LABEL_23:
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (p_vtable[463] != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    _NRLogWithArgs();
  }

  a1 = a1;
  v15 = a1;
LABEL_12:

  return v15;
}

void sub_1000127C0(uint64_t a1)
{
  if (!a1 || (*(a1 + 8) & 0xFE) == 6)
  {
    return;
  }

  *(a1 + 10) = 1;
  v2 = sub_100163B2C(NRDLocalDevice, *(a1 + 24), 0);
  v3 = *(a1 + 112);
  *(a1 + 112) = v2;

  v4 = *(a1 + 112);
  if (!v4)
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v44 = *(a1 + 24);
      _NRLogWithArgs();
    }

    v7 = a1;
    v8 = 7;
    v9 = 3;
    goto LABEL_69;
  }

  v5 = *(v4 + 48);
  if ((v5 & 0x20) != 0)
  {
    LOBYTE(v10) = 1;
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v6 = (v5 & 0x10) != 0 || *(v4 + 16) > 0x12u;
    v10 = (v5 >> 14) & 1 | v6;
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_27;
    }
  }

  if ((((v5 & 0x2000) != 0) & v10) == 1)
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      _NRLogWithArgs();
    }

    v7 = a1;
    v8 = 5;
    goto LABEL_68;
  }

LABEL_27:
  *(a1 + 11) = 0;
  v11 = *(a1 + 40);
  if (v11 && (*(v11 + 8) & 1) != 0)
  {
    goto LABEL_49;
  }

  objc_opt_self();
  if (qword_100228EA8 != -1)
  {
    dispatch_once(&qword_100228EA8, &stru_1001FA210);
  }

  v12 = qword_100228EA0;
  if (v12)
  {
    v13 = v12;
    v14 = [v12[2] objectForKeyedSubscript:*(a1 + 24)];

    if (!v14)
    {
LABEL_49:
      objc_opt_self();
      if (qword_100228EA8 != -1)
      {
        dispatch_once(&qword_100228EA8, &stru_1001FA210);
      }

      v28 = qword_100228EA0;
      v29 = v28;
      if (v28)
      {
        [v28[2] setObject:&__kCFBooleanTrue forKeyedSubscript:*(a1 + 24)];
      }

      v30 = *(a1 + 40);
      if (!v30)
      {
        goto LABEL_66;
      }

      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = v31;
        [v32 UTF8String];
        v33 = nw_interface_create_with_name();
        type = nw_interface_get_type(v33);
        subtype = nw_interface_get_subtype();
        if (type == nw_interface_type_wifi || subtype == 1001)
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v36 = qword_1002290B8;
          v37 = v36;
          if (v36)
          {
            v38 = *(v36 + 6);
          }

          else
          {
            v38 = 0;
          }

          v39 = v38;
          sub_10017EDB4(v39, 1, *(a1 + 64));
        }

        v30 = *(a1 + 40);
        if (!v30)
        {
          goto LABEL_66;
        }
      }

      if (*(v30 + 8) == 1)
      {
        if ((sub_100012F8C(a1) & 1) == 0)
        {
          v7 = a1;
          v8 = 7;
          v9 = 6;
LABEL_69:

          sub_10000C668(v7, v8, v9);
          return;
        }
      }

      else
      {
LABEL_66:
        sub_10001184C(a1);
      }

      v7 = a1;
      v8 = 1;
LABEL_68:
      v9 = 0;
      goto LABEL_69;
    }
  }

  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v42 = 246;
    v43 = a1;
    v40 = "";
    v41 = "[NRPairingClient start]";
    _NRLogWithArgs();
  }

  *(a1 + 11) = 1;
  objc_initWeak(&location, a1);
  objc_opt_self();
  if (qword_100228EA8 != -1)
  {
    dispatch_once(&qword_100228EA8, &stru_1001FA210);
  }

  v15 = qword_100228EA0;
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100012E30;
  v45[3] = &unk_1001FA0A0;
  objc_copyWeak(&v46, &location);
  v18 = v16;
  v19 = v17;
  v20 = v45;
  if (v15)
  {
    v21 = [v15[2] objectForKeyedSubscript:v18];

    if (v21)
    {
      v22 = [v15[3] objectForKeyedSubscript:v18];
      v23 = objc_alloc_init(NSMutableArray);
      if ([v22 count])
      {
        v24 = [[NSMutableArray alloc] initWithArray:v22];

        v23 = v24;
      }

      v25 = objc_alloc_init(NRPendingClientForPairing);
      v26 = v25;
      if (v25)
      {
        objc_storeStrong(&v25->_queue, v17);
        objc_setProperty_nonatomic_copy(v26, v27, v20, 16);
      }

      [v23 addObject:{v26, v40, v41, v42, v43}];
      [v15[3] setObject:v23 forKeyedSubscript:v18];
    }
  }

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

void sub_100012E30(uint64_t a1, int a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[8] & 0xFE) != 6)
  {
    v7 = WeakRetained;
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      if ((a2 - 1) <= 6)
      {
        v6 = *(&off_1001FA148 + (a2 - 1));
      }

      _NRLogWithArgs();
    }

    if ((a2 & 0xFE) == 6)
    {
      sub_1000127C0(v7);
    }

    else
    {
      WeakRetained = v7;
      if (a2 != 5)
      {
        goto LABEL_16;
      }

      sub_10000C668(v7, 5u, a3);
    }

    WeakRetained = v7;
  }

LABEL_16:
}

uint64_t sub_100012F8C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    [v2 cancel];
    v3 = *(a1 + 72);
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_34;
  }

  if (*(v4 + 11) != 1)
  {
    if (*(v4 + 16))
    {
      objc_opt_self();
      if (qword_100228E88 != -1)
      {
        dispatch_once(&qword_100228E88, &stru_1001FA180);
      }

      v8 = qword_100228E80;
      v12 = *(a1 + 40);
      if (v12)
      {
        v13 = *(v12 + 16);
        v14 = *(v12 + 32);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v15 = v13;
      v16 = a1;
      v17 = v15;
      v18 = v14;
      v19 = v18;
      if (!v8)
      {
        goto LABEL_60;
      }

      if (v17)
      {
        if (v18)
        {
          if (*(v16 + 8) == 6)
          {
LABEL_60:

LABEL_61:
            return 1;
          }

          v20 = v16[3];
          v21 = sub_100014934(v8, v17, v19, v20);

          v22 = v8[4];
          if (!v22)
          {
            v23 = objc_alloc_init(NSMutableDictionary);
            v24 = v8[4];
            v8[4] = v23;

            v22 = v8[4];
          }

          v25 = [v22 objectForKeyedSubscript:v21];
          v26 = v25;
          if (!v25)
          {
            goto LABEL_42;
          }

          v57 = v13;
          v27 = *(v25 + 32);
          v28 = v27;
          v58 = v21;
          if (v27)
          {
            v29 = *(v27 + 3);
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;
          v31 = v16[3];
          if ([v30 isEqual:v31])
          {
            v56 = v14;
            v32 = v26;
            v33 = v26[1];
            if ([v33 isEqualToString:v17])
            {
              v55 = [v32[2] isEqual:v19];

              v13 = v57;
              v21 = v58;
              v26 = v32;
              v14 = v56;
              if (v55)
              {
LABEL_58:

LABEL_59:
                goto LABEL_60;
              }

LABEL_42:
              if (sub_1000159E8(v8))
              {
                if (qword_100228E98 != -1)
                {
                  dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228E98 != -1)
                  {
                    dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                  }

                  v53 = 320;
                  v54 = v16;
                  v51 = "";
                  v52 = "[NRIKEv2Listener registerPairingClient:localInterfaceName:localEndpoint:]";
                  _NRLogWithArgs();
                }

                v35 = objc_alloc_init(NRIKEv2ListenerRegistration);
                p_isa = &v35->super.isa;
                if (v35)
                {
                  objc_storeStrong(&v35->_pairingClient, a1);
                  objc_storeStrong(p_isa + 2, v14);
                  objc_storeStrong(p_isa + 1, v13);
                }

                [v8[4] setObject:p_isa forKeyedSubscript:{v21, v51, v52, v53, v54}];
                sub_100015C1C(v8);
                sub_10001651C(v8, v21);
              }

              else
              {
                if (qword_100228E98 != -1)
                {
                  dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228E98 != -1)
                  {
                    dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                  }

                  _NRLogWithArgs();
                }
              }

              goto LABEL_58;
            }

            v26 = v32;
            v14 = v56;
          }

          v13 = v57;
          v21 = v58;
          goto LABEL_42;
        }

        v47 = sub_100014820();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v45 = sub_100014820();
        v46 = _NRLogIsLevelEnabled();

        if (!v46)
        {
          goto LABEL_60;
        }
      }

      v21 = sub_100014820();
      _NRLogWithArgs();
      goto LABEL_59;
    }

LABEL_34:
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      _NRLogWithArgs();
      return 0;
    }

    return result;
  }

  v5 = [NSString alloc];
  v6 = *(a1 + 40);
  v7 = "Tunnel";
  if (v6 && *(v6 + 11))
  {
    v7 = "Transport";
  }

  v8 = [v5 initWithFormat:@"NRPairingResponder-%sMode", v7];
  v9 = sub_100146840(1);
  v10 = [[NEIKEv2Listener alloc] initWithListenerIKEConfig:v9 kernelSASessionName:v8 packetDelegate:a1 listenerQueue:*(a1 + 32) delegate:a1 delegateQueue:*(a1 + 32)];
  v11 = *(a1 + 72);
  *(a1 + 72) = v10;

  if (*(a1 + 72))
  {
    *(a1 + 15) = 0;
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      _NRLogWithArgs();
    }

    goto LABEL_61;
  }

  v37 = ++*(a1 + 15);
  v38 = sub_10000A838();
  v39 = v37 < 4;
  if (v37 >= 4)
  {
    v49 = _NRLogIsLevelEnabled();

    if (v49)
    {
      v50 = sub_10000A838();
      _NRLogWithArgs();
    }

    sub_10000C668(a1, 7u, 6);
  }

  else
  {
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
      v41 = sub_10000A838();
      _NRLogWithArgs();
    }

    objc_initWeak(&location, a1);
    v42 = dispatch_time(0x8000000000000000, 3000000000);
    v43 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000136E0;
    block[3] = &unk_1001FC730;
    v44 = v43;
    objc_copyWeak(&v60, &location);
    dispatch_after(v42, v44, block);

    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  return v39;
}