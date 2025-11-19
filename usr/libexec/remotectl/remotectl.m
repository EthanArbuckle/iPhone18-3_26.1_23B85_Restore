uint64_t start(int a1, uint64_t a2)
{
  v2 = a1 - 1;
  if (a1 <= 1)
  {
    goto LABEL_156;
  }

  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  if (!strcmp(v6, "list"))
  {
    remote_device_browse_present();
    dispatch_main();
  }

  if (!strcmp(v6, "browse"))
  {
    v8 = 0;
    v108 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v119[0] = 0;
    v119[1] = v119;
    v119[2] = 0x2020000000;
    v120 = 0;
    v117[0] = 0;
    v117[1] = v117;
    v117[2] = 0x2020000000;
    v118 = 0;
    v111 = 0;
    v112 = &v111;
    v113 = 0x3032000000;
    v114 = sub_1000046C4;
    v115 = sub_1000046D4;
    v116 = 0;
    memset(uu, 170, sizeof(uu));
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v13 = getopt(v2, v5, "d:t:s");
          if (v13 == 100)
          {
            break;
          }

          switch(v13)
          {
            case 115:
              v8 = 1;
              break;
            case 116:
              v108 = strtoull(optarg, 0, 10);
              break;
            case -1:
              *v123 = _NSConcreteStackBlock;
              *&v123[8] = 3221225472;
              *&v123[16] = sub_1000046DC;
              v124 = &unk_100025278;
              v128 = v10;
              v129 = v9;
              v125 = v119;
              v126 = v117;
              v131 = v12 & 1;
              v132 = v8 & 1;
              v130 = v11;
              v127 = &v111;
              objc_retainBlock(v123);
              v30 = &_dispatch_main_q;
              started = remote_device_start_browsing();
              v32 = v112[5];
              v112[5] = started;

              if (signal(2, 1) == -1)
              {
                block[0] = 0;
                v136 = 0u;
                v137 = 0u;
                memset(v135, 0, sizeof(v135));
                handler = 0u;
                v88 = &_os_log_default;
                os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                v89 = *__error();
                v121 = 67109120;
                v122 = v89;
                _os_log_send_and_compose_impl();

                v90 = _os_crash_msg();
                sub_10001AA18(v90);
              }

              v33 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, &_dispatch_main_q);
              v34 = qword_100028F50;
              qword_100028F50 = v33;

              *&handler = _NSConcreteStackBlock;
              *(&handler + 1) = 3221225472;
              *&v135[0] = sub_100004B6C;
              *(&v135[0] + 1) = &unk_1000252A0;
              *&v135[1] = v119;
              *(&v135[1] + 1) = &v111;
              dispatch_source_set_event_handler(qword_100028F50, &handler);
              dispatch_activate(qword_100028F50);
              if (v108)
              {
                v35 = dispatch_time(0, 1000000000 * v108);
              }

              else
              {
                v35 = -1;
              }

              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100004B8C;
              block[3] = &unk_1000252A0;
              block[4] = v119;
              block[5] = &v111;
              dispatch_after(v35, &_dispatch_main_q, block);

LABEL_134:
              dispatch_main();
            default:
              sub_10000275C();
          }
        }

        if (uuid_parse(optarg, uu))
        {
          break;
        }

        v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
        v10 = v15;
        if (!v15)
        {
          block[0] = 0;
          v136 = 0u;
          v137 = 0u;
          memset(v135, 0, sizeof(v135));
          handler = 0u;
          v68 = &_os_log_default;
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          v69 = __error();
          v70 = strerror(*v69);
          *v123 = 136315650;
          *&v123[4] = "known-constant allocation";
          *&v123[12] = 2048;
          *&v123[14] = 16;
          *&v123[22] = 2080;
          v124 = v70;
          _os_log_send_and_compose_impl();

          v71 = _os_crash_msg();
          sub_10001AA18(v71);
        }

        uuid_copy(v15, uu);
        printf("Browse for uuid: %s\n");
LABEL_19:
        v12 = 1;
      }

      v11 = remote_device_type_parse();
      v14 = optarg;
      if (v11)
      {
        printf("Browse for type: %s\n");
        goto LABEL_19;
      }

      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v16 = strdup(v14);
          if (v16)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v9 = v16;
      }

      else
      {
        v9 = strdup(v14);
        v17 = strlen(v14);
        if (!v9)
        {
          v74 = v17;
          block[0] = 0;
          v136 = 0u;
          v137 = 0u;
          memset(v135, 0, sizeof(v135));
          handler = 0u;
          v75 = &_os_log_default;
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          v76 = __error();
          v77 = strerror(*v76);
          *v123 = 136315650;
          *&v123[4] = "known-constant allocation";
          *&v123[12] = 2048;
          *&v123[14] = v74;
          *&v123[22] = 2080;
          v124 = v77;
          _os_log_send_and_compose_impl();

          v78 = _os_crash_msg();
          sub_10001AA18(v78);
        }
      }

      printf("Browse for device: %s\n", optarg);
      v11 = 0;
      v12 = 1;
    }
  }

  if (strcmp(v6, "show"))
  {
    if (strcmp(v6, "get-property"))
    {
      if (!strcmp(v6, "dumpstate"))
      {
        v91 = local_device_copy_description();
        v92 = local_device_copy_service_names();
        v93 = local_device_copy_identity();
        if (v91 && v92)
        {
          v94 = v91;
          v95 = v92;
          puts("Local device");
          v96 = xpc_dictionary_get_dictionary(v94, "properties");
          uuid = xpc_dictionary_get_uuid(v94, "UUID");
          if (uuid)
          {
            *(v135 + 13) = 0xAAAAAAAAAAAAAAAALL;
            *&v98 = 0xAAAAAAAAAAAAAAAALL;
            *(&v98 + 1) = 0xAAAAAAAAAAAAAAAALL;
            handler = v98;
            v135[0] = v98;
            uuid_unparse(uuid, &handler);
            printf("\tUUID: %s\n", &handler);
          }

          uint64 = xpc_dictionary_get_uint64(v94, "device_messaging_protocol_version");
          printf("\tMessaging Protocol Version: %llu\n", uint64);
          string = xpc_dictionary_get_string(v96, "ProductType");
          if (string)
          {
            printf("\tProduct Type: %s\n", string);
          }

          v101 = xpc_dictionary_get_string(v96, "BuildVersion");
          v102 = xpc_dictionary_get_string(v96, "OSVersion");
          v103 = xpc_dictionary_get_BOOL(v96, "AppleInternal");
          if (v101 && v102)
          {
            v104 = "";
            if (v103)
            {
              v104 = " AppleInternal";
            }

            printf("\tOS Build: %s (%s)%s\n", v102, v101, v104);
          }

          v105 = xpc_copy_clean_description();
          printf("\tProperties: ");
          sub_1000053FC(v105, "\t");
          free(v105);
          putchar(10);
          puts("\tServices:");
          xpc_array_apply(v95, &stru_100025368);

          sub_1000055B4(v93);
          putchar(10);
        }

        v106 = &_dispatch_main_q;
        remote_device_browse_present();

        goto LABEL_134;
      }

      if (!strcmp(v6, "dump-local-ports"))
      {
        *&handler = _NSConcreteStackBlock;
        *(&handler + 1) = 3221225472;
        *&v135[0] = sub_1000059A0;
        *(&v135[0] + 1) = &unk_100025390;
        *&v135[1] = objc_alloc_init(NSMutableDictionary);
        objc_retainBlock(&handler);
        remote_device_browse_present();
        goto LABEL_134;
      }

      if (strcmp(v6, "echo"))
      {
        if (!strcmp(v6, "echo-file"))
        {
          sub_100002A8C(v2, v5);
        }

        if (!strcmp(v6, "netcat"))
        {
          sub_100002C08(v2, v5);
          return 0;
        }

        v7 = strcmp(v6, "relay");
        if (a1 >= 4 && !v7)
        {
          sub_100002DD4(v2, v5);
          return 0;
        }

        if (!strcmp(v6, "relay-child"))
        {
          sub_1000032A4(v2, v5);
          return 0;
        }

        v61 = strcmp(v6, "convert-bridge-version");
        if (a1 == 4 && !v61)
        {
          sub_100003510(*(a2 + 16), *(a2 + 24));
          return 0;
        }

        v62 = strcmp(v6, "heartbeat");
        if (a1 == 3 && !v62)
        {
          sub_1000035C4(*(a2 + 16));
        }

        if (!strcmp(v6, "trampoline"))
        {
          sub_1000035FC(v2, v5);
        }

        v63 = strcmp(v6, "reset");
        if (a1 == 3 && !v63)
        {
          sub_100003A50(*(a2 + 16));
          return 0;
        }

        v64 = strcmp(v6, "alias");
        if (a1 == 4 && !v64)
        {
          v65 = *(a2 + 24);
          sub_100003AA4(*(a2 + 16));
          return 0;
        }

        v66 = strcmp(v6, "synctime");
        v67 = a1 - 3;
        if (a1 == 3 && !v66)
        {
          sub_100003B08(*(a2 + 16));
          return 0;
        }

        if (os_variant_has_internal_content())
        {
          v72 = *v5;
          v73 = strcmp(*v5, "loopback");
          if (v67 <= 1 && !v73)
          {
            sub_100003B5C(*(a2 + 16));
            return 0;
          }

          v79 = strcmp(v72, "bonjour");
          if (v67 <= 1 && !v79)
          {
            if (a1 == 4)
            {
              v80 = *(a2 + 24);
            }

            else
            {
              v80 = 0;
            }

            sub_100003C1C(*(a2 + 16), v80);
            return 0;
          }

          v81 = strcmp(v72, "network");
          if (v67 <= 1 && !v81)
          {
            if (a1 == 4)
            {
              v82 = *(a2 + 24);
            }

            else
            {
              v82 = 0;
            }

            sub_100003CB4(*(a2 + 16), v82);
            return 0;
          }

          v83 = strcmp(v72, "compute");
          if (v67 <= 1 && !v83)
          {
            if (a1 == 4)
            {
              v84 = *(a2 + 24);
            }

            else
            {
              v84 = 0;
            }

            sub_100003DB0(*(a2 + 16), v84);
            return 0;
          }

          v85 = strcmp(v72, "identity");
          if (a1 == 3 && !v85)
          {
            sub_100003F00(*(a2 + 16));
            return 0;
          }

          v87 = strcmp(v72, "setup-ssh");
          if (a1 <= 3 && !v87)
          {
            sub_100003FC4(v2, v5);
            return 0;
          }

          if (!strcmp(v72, "ssh-tunnel"))
          {
            sub_10000DCA4(v2, v5);
            return 0;
          }

          if (!strcmp(v72, "ssh-tunnel-callback"))
          {
            sub_10000F02C(v2, v5);
            return 0;
          }

          if (!strcmp(v72, "ssh-tunnel-privileged"))
          {
            sub_10000FB70(v2, v5);
            return 0;
          }
        }

LABEL_156:
        sub_10000275C();
      }

      v40 = 0;
      v41 = 0;
      while (1)
      {
        while (1)
        {
          v42 = getopt(v2, v5, "v:d:");
          if (v42 != 118)
          {
            break;
          }

          v41 = strtoll(optarg, 0, 10);
        }

        if (v42 == -1)
        {
          break;
        }

        if (v42 != 100)
        {
          goto LABEL_156;
        }

        v43 = sub_100004BAC(0, optarg, "com.apple.internal.xpc.remote.echo");

        v40 = v43;
      }

      v107 = dispatch_queue_create("echo", 0);
      if (!v40)
      {
        v44 = remote_device_copy_unique_of_type();
        if (!v44)
        {
          fwrite("No coproc device found, falling back to external.\n", 0x32uLL, 1uLL, __stderrp);
          v44 = remote_device_copy_unique_of_type();
          if (!v44)
          {
            fwrite("No external device found, falling back to loopback.\n", 0x34uLL, 1uLL, __stderrp);
            v44 = remote_device_copy_unique_of_type();
            if (!v44)
            {
              v24 = __stderrp;
              v25 = "No loopback device found.\n";
              v26 = 26;
              goto LABEL_45;
            }
          }
        }

        v40 = v44;
      }

      if (remote_device_get_state() == 2)
      {
        v109 = sub_1000052D8(v40);
        if (v109)
        {
          v45 = xpc_remote_connection_create_with_remote_service();
          xpc_remote_connection_set_event_handler();
          if (v41)
          {
            xpc_remote_connection_set_local_service_version();
          }

          xpc_remote_connection_activate();
          remote_service_version = xpc_remote_connection_get_remote_service_version();
          if (remote_service_version)
          {
            fprintf(__stderrp, "Remote Service Version: %lld\n", remote_service_version);
          }

          *&handler = 0;
          v47 = fgetln(__stdinp, &handler);
          if (v47 && handler >= 2)
          {
            do
            {
              v48 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:v47 freeWhenDone:?];
              v49 = [NSJSONSerialization JSONObjectWithData:v48 options:4 error:0];
              if (v49)
              {
                v50 = _CFXPCCreateXPCObjectFromCFObject();
                if (!v50)
                {
                  fwrite("Unable to render as XPC message\n", 0x20uLL, 1uLL, __stderrp);
                }

                xpc_remote_connection_send_message();
              }

              else
              {
                fwrite("Rejecting invalid input message\n", 0x20uLL, 1uLL, __stderrp);
              }

              v47 = fgetln(__stdinp, &handler);
              if (v47)
              {
                v51 = handler > 1;
              }

              else
              {
                v51 = 0;
              }
            }

            while (v51);
          }

          xpc_remote_connection_send_barrier();
          xpc_remote_connection_cancel();
          fwrite("Connection cancelled, waiting for invalid error...\n", 0x33uLL, 1uLL, __stderrp);

          return 0;
        }

        fprintf(__stderrp, "Service %s not found.\n", "com.apple.internal.xpc.remote.echo");
LABEL_46:
        exit(1);
      }

      v24 = __stderrp;
      v25 = "Device not in state CONNECTED\n";
      v26 = 30;
LABEL_45:
      fwrite(v25, v26, 1uLL, v24);
      goto LABEL_46;
    }

    v22 = 0;
    while (1)
    {
      v23 = getopt(v2, v5, "t:");
      if (v23 != 116)
      {
        break;
      }

      v22 = remote_device_type_parse();
      if (!v22)
      {
        goto LABEL_44;
      }
    }

    if (v23 != -1)
    {
      goto LABEL_156;
    }

    v27 = &v5[optind];
    if (v2 - optind == 2)
    {
      v28 = 0;
      v29 = 1;
    }

    else
    {
      if (v2 - optind != 3)
      {
        goto LABEL_156;
      }

      v28 = v27[1];
      v29 = 2;
    }

    v52 = v27[v29];
    v53 = sub_100004BAC(v22, *v27, v28);
    v54 = v53;
    if (v28)
    {
      v55 = sub_1000052D8(v53);
      if (!v55)
      {
        errx(65, "Unable to find service %s", v28);
      }

      v56 = remote_service_copy_property();

      if (v56)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v56 = remote_device_copy_property();
      if (v56)
      {
LABEL_94:
        v57 = xpc_copy_clean_description();
        puts(v57);
        free(v57);

        return 0;
      }
    }

    name = remote_device_get_name();
    v59 = "/";
    v60 = "";
    if (v28)
    {
      v60 = v28;
    }

    else
    {
      v59 = "";
    }

    errx(66, "No such property %s on %s%s%s", v52, name, v59, v60);
  }

  v18 = 0;
  while (1)
  {
    v19 = getopt(v2, v5, "t:");
    if (v19 != 116)
    {
      break;
    }

    v18 = remote_device_type_parse();
    if (!v18)
    {
LABEL_44:
      v24 = __stderrp;
      v25 = "Invalid device type\n";
      v26 = 20;
      goto LABEL_45;
    }
  }

  if (v19 != -1)
  {
    goto LABEL_156;
  }

  v20 = &v5[optind];
  if (v2 - optind == 1)
  {
    v21 = 0;
  }

  else
  {
    if (v2 - optind != 2)
    {
      goto LABEL_156;
    }

    v21 = v20[1];
  }

  v36 = sub_100004BAC(v18, *v20, v21);
  v37 = v36;
  if (v21)
  {
    v38 = sub_1000052D8(v36);
    v39 = v38;
    if (!v38)
    {
      errx(65, "Unable to find service %s", v21);
    }

    sub_10000533C(v38, 0);
  }

  else
  {
    sub_100004E00(v36, 0);
  }

  return 0;
}

void sub_1000026DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (v31)
  {
    CFRelease(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000275C()
{
  fwrite("usage: remotectl list\n", 0x16uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl show [-t type] (name|uuid|trait)\n", 0x32uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl get-property [-t type] (name|uuid|trait) [service] property\n", 0x4DuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl dumpstate\n", 0x1BuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl dump-local-ports\n", 0x22uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl browse [-d (type|name|uuid)] [-t timeout]\n", 0x3BuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl echo [-v service_version] [-d (type|name|uuid|trait)]\n", 0x47uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl echo-file (type|name|uuid|trait) path\n", 0x37uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl eos-echo\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl netcat (type|name|uuid|trait) service\n", 0x37uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl relay [-b address] [-p port] [-s] (type|name|uuid|trait) service\n", 0x52uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl convert-bridge-version plist-in-path bin-out-path\n", 0x43uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl heartbeat (type|name|uuid|trait)\n", 0x32uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl trampoline [-2 fd] service_name command args ... [ -- [-2 fd] service_name command args ... ]\n", 0x6FuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl reset (type|name|uuid|trait)\n", 0x2EuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl alias (type|name|uuid|trait) alias\n", 0x34uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl synctime (type|name|uuid|trait)\n", 0x31uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl identity (show|create|delete)\n", 0x2FuLL, 1uLL, __stderrp);
  if (os_variant_has_internal_content())
  {
    fwrite("\nAppleInternal commands:\n\n", 0x1AuLL, 1uLL, __stderrp);
    fwrite("usage: remotectl loopback (attach [--tls]|connect|detach|suspend|resume)\n", 0x49uLL, 1uLL, __stderrp);
    fwrite("usage: remotectl bonjour ((enable|enable-loopback interface_name)|(disable))\n", 0x4DuLL, 1uLL, __stderrp);
    fwrite("usage: remotectl network ((enable interface_name)|disable|(connect address)|(disconnect name|uuid|trait))\n", 0x6AuLL, 1uLL, __stderrp);
    fwrite("usage: remotectl compute ((listen interface_name)|(browse interface_name)|(disconnect name|uuid|trait)|(tls [required|optional])\n", 0x81uLL, 1uLL, __stderrp);
    fwrite("usage: remotectl setup-ssh [-f]\n", 0x20uLL, 1uLL, __stderrp);
    fwrite("usage: remotectl ssh-tunnel [ssh_host]\n", 0x27uLL, 1uLL, __stderrp);
  }

  v0 = 1;
  fwrite("\nDevice Types:\n", 0xFuLL, 1uLL, __stderrp);
  while (1)
  {
    HIDWORD(v1) = 1431655765 - 1431655765 * v0;
    LODWORD(v1) = HIDWORD(v1);
    if ((v1 >> 1) <= 0x2AAAAAAA)
    {
      fputc(10, __stderrp);
    }

    v2 = __stderrp;
    description = remote_device_type_get_description();
    fputs(description, v2);
    if (v0 == 18)
    {
      fputc(10, __stderrp);
      exit(64);
    }

    fwrite(", ", 2uLL, 1uLL, __stderrp);
    ++v0;
  }
}

void sub_100002A8C(int a1, uint64_t a2)
{
  if (a1 == 3)
  {
    v2 = *(a2 + 8);
    fprintf(__stderrp, "Sending %s to %s.\n", *(a2 + 16), v2);
    dispatch_queue_create("echo", 0);
    v3 = sub_100004BAC(0, v2, "com.apple.internal.xpc.remote.echo");
    if (remote_device_get_state() == 2)
    {
      sub_1000052D8(v3);
      if (!objc_claimAutoreleasedReturnValue())
      {
        errx(69, "Service %s not found.");
      }

      xpc_remote_connection_create_with_remote_service();
      xpc_remote_connection_set_event_handler();
      xpc_remote_connection_activate();
      v4 = xpc_dictionary_create(0, 0, 0);
      v5 = xpc_file_transfer_create_with_path();
      if (!v5)
      {
        err(66, "Unable to create file transfer object");
      }

      xpc_dictionary_set_value(v4, "file", v5);
      xpc_dictionary_set_BOOL(v4, "DisableFileReflection", 1);
      v6 = xpc_copy_clean_description();
      fprintf(__stderrp, "Sending Message: %s\n", v6);
      free(v6);
      xpc_remote_connection_send_message();
      dispatch_main();
    }

    errx(69, "Device not in state CONNECTED");
  }

  sub_10000275C();
}

void sub_100002C08(int a1, char **a2)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = getopt(a1, a2, "F");
    v4 = 1;
  }

  while (v6 == 70);
  if (v6 != -1 || a1 - optind != 2)
  {
    sub_10000275C();
  }

  v7 = &a2[optind];
  v8 = *v7;
  v9 = v7[1];
  v10 = sub_100004BAC(0, *v7, v9);
  v11 = sub_1000052D8(v10);
  if (!v11)
  {
    errx(65, "Unable to find service %s/%s", v8, v9);
  }

  v12 = v11;
  v13 = sub_100005F78();
  if (v13 == -1)
  {
    errx(69, "Unable to connect to %s/%s", v8, v9);
  }

  v14 = v13;
  if (v5)
  {
    if (remote_service_should_encrypt_socket_data())
    {
      sub_10001AA38();
    }

    v15 = malloc_type_malloc(0x10uLL, 0x10000403E1C8BA9uLL);
    v17[0] = "";
    v17[1] = 1;
    *(&v16.msg_iovlen + 1) = -1431655766;
    v16.msg_name = 0;
    *(&v16.msg_namelen + 1) = -1431655766;
    v16.msg_namelen = 0;
    v16.msg_iov = v17;
    v16.msg_iovlen = 1;
    v16.msg_control = v15;
    *&v16.msg_controllen = 16;
    *v15 = 0xFFFF00000010;
    v15[2] = 1;
    v15[3] = v14;
    if (sendmsg(1, &v16, 0) < 0)
    {
      sub_10001AA1C();
    }
  }

  else
  {
    sub_100005FD4(0, 1, v13);
  }
}

void sub_100002DD4(int a1, char **a2)
{
  LODWORD(v4) = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    while (1)
    {
      v7 = getopt(a1, a2, "b:p:s");
      if (v7 != 98)
      {
        break;
      }

      v6 = optarg;
    }

    if (v7 == -1)
    {
      break;
    }

    if (v7 == 112)
    {
      v8 = optarg;
      *__error() = 0;
      v4 = strtoul(v8, 0, 0);
      if (*__error())
      {
        sub_10001AA54(v8);
      }

      if (v4 >= 0x10000)
      {
        sub_10001AA88();
      }
    }

    else
    {
      if (v7 != 115)
      {
        goto LABEL_30;
      }

      v5 = 1;
    }
  }

  if (a1 - optind != 2)
  {
LABEL_30:
    sub_10000275C();
  }

  v9 = &a2[optind];
  v10 = *v9;
  v11 = v9[1];
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = "::";
  }

  v32 = 0;
  v33 = 0;
  v13 = inet_pton(30, v12, &v32);
  if (v13 != 1)
  {
    if (v13)
    {
      sub_10001AAA4();
    }

    v31 = 0;
    if (asprintf(&v31, "::ffff:%s", v12) < 0)
    {
      sub_10001AB18(&v41, &v34);
    }

    v14 = inet_pton(30, v31, &v32);
    if (v14 != 1)
    {
      if (v14 != -1)
      {
        if (!v14)
        {
          sub_10001AAD0();
        }

        sub_10001AC30(&v41, &v34);
      }

      sub_10001AAA4();
    }
  }

  v15 = v32;
  v16 = v33;
  v17 = sub_100004BAC(0, v10, v11);
  v18 = sub_1000052D8(v17);
  if (!v18)
  {
    errx(65, "Unable to find service %s/%s", v10, v11);
  }

  v19 = v18;
  v20 = socket(30, 1, 0);
  if (v20 == -1)
  {
    sub_10001AC14();
  }

  v21 = v20;
  LODWORD(v32) = 0;
  if (setsockopt(v20, 41, 27, &v32, 4u))
  {
    sub_10001AAEC();
  }

  *&v34.sa_len = 7680;
  *v34.sa_data = bswap32(v4) >> 16;
  *&v34.sa_data[2] = 0;
  *&v34.sa_data[6] = v15;
  v35 = v16;
  LODWORD(v36) = 0;
  if (bind(v21, &v34, 0x1Cu) == -1)
  {
    sub_10001ABE8();
  }

  if (listen(v21, 128) == -1)
  {
    sub_10001ABCC();
  }

  LODWORD(v41) = 28;
  if (getsockname(v21, &v34, &v41) == -1)
  {
    sub_10001ABB0();
  }

  v22 = *v34.sa_data;
  v23 = sub_100005F78();
  if (v23 == -1)
  {
LABEL_49:
    errx(69, "Unable to connect to %s/%s", v10, v11);
  }

  v24 = v23;
  v25 = __rev16(v22);
  if (v5)
  {
    printf("Listening on %s port %d...\n", v12, v25);
    close(v24);
    while (1)
    {
      while (1)
      {
        v26 = accept(v21, 0, 0);
        if (v26 != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          sub_10001AB94();
        }
      }

      v27 = v26;
      v28 = sub_100005F78();
      if (v28 == -1)
      {
        break;
      }

      v29 = v28;
      v41 = __PAIR64__(v28, v27);
      v30 = 0;
      v31 = 0;
      if (asprintf(&v31, "%d", v27) < 0)
      {
        sub_10001AB18(&v32, &v34);
      }

      if (asprintf(&v30, "%d", v29) < 0)
      {
        sub_10001AB18(&v32, &v34);
      }

      *&v34.sa_len = "remotectl";
      *&v34.sa_data[6] = "relay-child";
      v35 = "-i";
      v36 = v31;
      v37 = "-o";
      v38 = v30;
      v39 = "-s";
      v40 = 0;
      sub_10000618C(&v34, &v41);
      close(v27);
      close(v29);
    }

    goto LABEL_49;
  }

  printf("%d\n", v25);
  fflush(__stdoutp);
  v41 = __PAIR64__(v24, v21);
  v30 = 0;
  v31 = 0;
  if (asprintf(&v31, "%d", v21) < 0)
  {
    sub_10001AB18(&v32, &v34);
  }

  if (asprintf(&v30, "%d", v24) < 0)
  {
    sub_10001AB18(&v32, &v34);
  }

  *&v34.sa_len = "remotectl";
  *&v34.sa_data[6] = "relay-child";
  v35 = "-l";
  v36 = v31;
  v37 = "-o";
  v38 = v30;
  v39 = 0;
  sub_10000618C(&v34, &v41);
  close(v21);
  close(v24);
}

void sub_1000032A4(int a1, char *const *a2)
{
  v4 = os_log_create("com.apple.RemoteServiceDiscovery", "relay-child");
  v5 = 0;
  v6 = -1;
  v7 = -1;
  v8 = -1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v9 = getopt(a1, a2, "l:i:o:s");
        if (v9 != 108)
        {
          break;
        }

        v8 = strtol(optarg, 0, 0);
      }

      if (v9 <= 110)
      {
        break;
      }

      if (v9 == 111)
      {
        v6 = strtol(optarg, 0, 0);
      }

      else
      {
        if (v9 != 115)
        {
LABEL_22:
          sub_10000275C();
        }

        v5 = 1;
      }
    }

    if (v9 == -1)
    {
      break;
    }

    if (v9 != 105)
    {
      goto LABEL_22;
    }

    v7 = strtol(optarg, 0, 0);
  }

  if (v5)
  {
    v10 = getppid();
    if (v10 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "parent exited, exiting", buf, 2u);
      }

      exit(1);
    }

    v11 = v10;
    v12 = dispatch_queue_create("relay-child", 0);
    v13 = dispatch_source_create(&_dispatch_source_type_proc, v11, 0x80000000uLL, v12);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000063A8;
    handler[3] = &unk_1000254C0;
    v16 = v4;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_activate(v13);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v8 != -1)
  {
    while (1)
    {
      v14 = accept(v8, 0, 0);
      if (v14 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        sub_10001AB94();
      }
    }

    v7 = v14;
    close(v8);
  }

  sub_100005FD4(v7, v7, v6);
}

uint64_t sub_100003510(uint64_t a1, const char *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  if ((bridge_version_read_plist() & 1) == 0)
  {
    sub_10001ACBC();
  }

  memset(v6, 0, sizeof(v6));
  if ((bridge_version_serialize() & 1) == 0)
  {
    sub_10001ACD8();
  }

  v3 = fopen(a2, "wx");
  if (!v3)
  {
    sub_10001AD10();
  }

  v4 = v3;
  if (fwrite(v6, 0x20uLL, 1uLL, v3) <= 0x1F)
  {
    sub_10001ACF4();
  }

  result = fclose(v4);
  if (result)
  {
    sub_10001ACF4();
  }

  return result;
}

void sub_1000035C4(char *__s1)
{
  sub_100004BAC(0, __s1, 0);
  objc_claimAutoreleasedReturnValue();
  remote_device_heartbeat();
  dispatch_main();
}

void sub_1000035FC(int a1, char *const *a2)
{
  v21 = os_log_create("com.apple.RemoteServiceDiscovery", "rsdtrampoline");
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_1000046C4;
  v31[4] = sub_1000046D4;
  v31[5] = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  if (optind != 1 || a1 < 1)
  {
LABEL_6:
    v5 = dispatch_source_create(&_dispatch_source_type_signal, 0x14uLL, 0, &_dispatch_main_q);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100006748;
    handler[3] = &unk_100025550;
    handler[4] = v21;
    handler[5] = v30;
    handler[6] = v31;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_activate(v5);
    dispatch_main();
  }

  while (1)
  {
    for (i = -1; ; i = atoi(optarg))
    {
      v7 = getopt(a1, a2, "2:");
      if (v7 != 50)
      {
        break;
      }
    }

    if (v7 != -1)
    {
      goto LABEL_32;
    }

    v8 = (a1 - optind);
    if (v8 < 1)
    {
      goto LABEL_33;
    }

    v9 = 0;
    v10 = &a2[optind];
    while (1)
    {
      v11 = v10[v9];
      if (*v11 == 45 && v11[1] == 45 && !v11[2])
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = v8;
        goto LABEL_19;
      }
    }

    optind = 1;
LABEL_19:
    if (v9 <= 1)
    {
LABEL_33:
      sub_10000275C();
    }

    v12 = v9;
    v13 = *v10;
    v14 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
    v15 = v14;
    if (!v14)
    {
      break;
    }

    v16 = 0;
    a2 = &v10[v9];
    a1 = v8 - v9;
    do
    {
      v14[v16 / 8] = v10[v16 / 8 + 1];
      v16 += 8;
    }

    while (8 * v12 - 8 != v16);
    v17 = &_dispatch_main_q;
    handler[7] = _NSConcreteStackBlock;
    handler[8] = 3221225472;
    handler[9] = sub_100006454;
    handler[10] = &unk_100025528;
    v28 = i;
    v26 = v15;
    v18 = v21;
    v23 = v18;
    v24 = v30;
    v27 = v13;
    v25 = v31;
    remote_service_listen();

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *v15;
      *buf = 136446466;
      *&buf[4] = v13;
      *&buf[12] = 2082;
      *&buf[14] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Trampoline started for %{public}s -> %{public}s", buf, 0x16u);
    }

    if (optind != 1 || a1 <= 0)
    {
      goto LABEL_6;
    }
  }

  v29 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v32 = 134217984;
  v33 = 0;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_32:
  sub_10000275C();
}

void sub_100003A50(char *__s1)
{
  v1 = sub_100004BAC(0, __s1, 0);
  if ((remote_device_reset() & 1) == 0)
  {
    sub_10001AD2C();
  }
}

void sub_100003AA4(char *__s1)
{
  v1 = sub_100004BAC(0, __s1, 0);
  if ((remote_device_set_alias() & 1) == 0)
  {
    sub_10001AD4C();
  }
}

void sub_100003B08(char *__s1)
{
  v1 = sub_100004BAC(0, __s1, 0);
  if ((remote_device_timesync() & 1) == 0)
  {
    sub_10001AD6C();
  }
}

uint64_t sub_100003B5C(const char *a1)
{
  if (!strcmp(a1, "attach"))
  {
    result = remote_control_attach_loopback();
    if ((result & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!strcmp(a1, "connect"))
  {
    result = remote_control_connect_loopback();
    if ((result & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!strcmp(a1, "detach"))
  {
    result = remote_control_detach_loopback();
    if ((result & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!strcmp(a1, "suspend"))
  {
    result = remote_control_suspend_loopback();
    if ((result & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (strcmp(a1, "resume"))
    {
      sub_10000275C();
    }

    result = remote_control_resume_loopback();
    if ((result & 1) == 0)
    {
LABEL_11:
      exit(1);
    }
  }

  return result;
}

uint64_t sub_100003C1C(const char *a1, uint64_t a2)
{
  v4 = strcmp(a1, "enable");
  if (a2 && !v4)
  {
    result = remote_control_enable_bonjour();
    if (result)
    {
      return result;
    }

LABEL_8:
    exit(1);
  }

  v6 = strcmp(a1, "enable-loopback");
  if (!a2 || v6)
  {
    v7 = strcmp(a1, "disable");
    if (a2 || v7)
    {
      sub_10000275C();
    }

    result = remote_control_disable_bonjour();
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = remote_control_enable_bonjour_loopback();
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100003CB4(const char *a1, char *a2)
{
  v4 = strcmp(a1, "enable");
  if (!a2 || v4)
  {
    v5 = strcmp(a1, "disable");
    if (a2 || v5)
    {
      v6 = strcmp(a1, "connect");
      if (a2 && !v6)
      {
        if ((remote_control_connect_network_peer() & 1) == 0)
        {
          goto LABEL_19;
        }

        return;
      }

      v7 = strcmp(a1, "disconnect");
      if (!a2 || v7)
      {
        sub_10000275C();
      }

      v8 = sub_100004BAC(0, a2, 0);
      if (remote_device_disconnect())
      {

        return;
      }
    }

    else if (remote_control_disable_network_peer())
    {
      return;
    }

LABEL_19:
    exit(1);
  }

  if ((remote_control_enable_network_peer() & 1) == 0)
  {
    goto LABEL_19;
  }
}

void sub_100003DB0(const char *a1, char *a2)
{
  v4 = strcmp(a1, "browse");
  if (!a2 || v4)
  {
    v5 = strcmp(a1, "listen");
    if (!a2 || v5)
    {
      v6 = strcmp(a1, "disconnect");
      if (!a2 || v6)
      {
        if (strcmp(a1, "tls"))
        {
          goto LABEL_25;
        }

        if (!a2)
        {

          sub_1000068F0();
          return;
        }

        if (strcmp(a2, "required") && strcmp(a2, "optional"))
        {
LABEL_25:
          sub_10000275C();
        }

        if (local_device_compute_platform_require_tls())
        {
          goto LABEL_24;
        }
      }

      else
      {
        v7 = sub_100004BAC(0, a2, 0);
        if ((remote_device_disconnect() & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else if (!remote_compute_node_listen())
    {
LABEL_24:
      exit(1);
    }
  }

  else if (!remote_compute_controller_browse())
  {
    goto LABEL_24;
  }
}

void sub_100003F00(const char *a1)
{
  if (!strcmp(a1, "show"))
  {
    v2 = local_device_copy_identity();
    sub_1000055B4(v2);
    if (v2)
    {

      CFRelease(v2);
    }
  }

  else if (!strcmp(a1, "delete"))
  {
    if ((local_device_delete_identity() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (strcmp(a1, "create"))
    {
      sub_10000275C();
    }

    if ((local_device_create_identity() & 1) == 0)
    {
LABEL_12:
      exit(1);
    }
  }
}

void sub_100003FA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100003FC4(int a1, char *const *a2)
{
  strcpy(__dst, "\nHost *.rsd\n\t# This host entry is generated by remotectl setup-ssh\n\tProxyCommand /usr/local/bin/remotectl netcat -F %h com.apple.internal.ssh\n\tProxyUseFdpass yes\n\tServerAliveInterval 1\n\tServerAliveCountMax 3\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile /dev/null\n\tUser root\n\tControlPersist no\n");
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = getopt(a1, a2, "f");
    v4 = 1;
  }

  while (v6 == 102);
  if (v6 != -1)
  {
    sub_10000275C();
  }

  v7 = NSHomeDirectory();
  v8 = [v7 stringByAppendingPathComponent:@".ssh"];
  v9 = [v8 UTF8String];

  v10 = open(v9, 0x100000);
  if ((v10 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v11 = *__error();
  if (v11)
  {
    if (v11 != 2)
    {
      v25 = __error();
      err(*v25, "failed to open directory %s");
    }

    if (mkdir(v9, 0x1C0u) == -1)
    {
      v26 = __error();
      err(*v26, "failed to mkdir %s");
    }

    v10 = open(v9, 0x100000);
    if (v10 == -1)
    {
      v27 = __error();
      err(*v27, "failed to open created directory %s");
    }
  }

  v12 = openat(v10, ".RSDSetupDone", 1);
  if ((v12 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v13 = *__error();
  if (v13)
  {
    if (v13 != 2)
    {
      v14 = __error();
      warnc(*v14, "failed to open cookie file");
    }
  }

  else if ((v5 & 1) == 0)
  {
    puts("RSD ssh has been setup before. Pass -f to force redo the setup");
    exit(0);
  }

  v15 = openat(v10, "config", 521, 420);
  v16 = v15;
  if (v15 == -1)
  {
    v23 = __error();
    err(*v23, "failed to open or create %s/config file", v9);
  }

  if (write(v15, __dst, 0x126uLL) == -1)
  {
    v24 = __error();
    err(*v24, "failed to write RSD ssh config to %s/config file", v9);
  }

  if (v12 == -1)
  {
    v12 = openat(v10, ".RSDSetupDone", 513, 420);
    if (v12 == -1)
    {
      v17 = __error();
      warnc(*v17, "failed to create the cookie file");
      v12 = -1;
    }
  }

  result = close(v16);
  if (result == -1)
  {
    v28 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v19 = *__error();
    v30 = 67109120;
    v31 = v19;
    _os_log_send_and_compose_impl();
    v20 = _os_crash_msg();
    sub_10001AA18(v20);
  }

  if (v12 != -1)
  {
    result = close(v12);
    if (result == -1)
    {
      v28 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v21 = *__error();
      v30 = 67109120;
      v31 = v21;
      _os_log_send_and_compose_impl();
      v22 = _os_crash_msg();
      sub_10001AA18(v22);
    }
  }

  if (v10 != -1)
  {
    result = close(v10);
    if (result == -1)
    {
      sub_10001AD8C(&v28, &v32);
    }
  }

  return result;
}

void sub_10000441C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, unsigned int a13, unsigned int a14)
{
  sub_100006950(&a12);
  sub_100006950(&a13);
  sub_100006950(&a14);
  _Unwind_Resume(a1);
}

void sub_10000446C(id a1, OS_remote_device *a2, BOOL a3)
{
  v3 = a3;
  v4 = a2;
  if (v3)
  {
    exit(0);
  }

  v5 = v4;
  memset(uu, 170, sizeof(uu));
  remote_device_copy_uuid();
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v6;
  *&out[16] = v6;
  uuid_unparse(uu, out);
  name = remote_device_get_name();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *__str = 0u;
  v25 = 0u;
  if (remote_device_get_state() == 1)
  {
    printf("%s %-16s\n", out, name);
  }

  else if (remote_device_get_state() == 2)
  {
    v8 = remote_device_copy_product_type();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = "-";
    }

    v10 = remote_device_copy_property();
    v11 = v10;
    if (v10 && (string_ptr = xpc_string_get_string_ptr(v10)) != 0)
    {
      v13 = strdup(string_ptr);
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = "-";
    }

    v15 = remote_device_copy_os_version();
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = "-";
    }

    v17 = remote_device_copy_os_build();
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = "-";
    }

    v19 = remote_device_copy_bridge_version_string();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = "-";
    }

    alias = remote_device_get_alias();
    if (alias)
    {
      snprintf(__str, 0x80uLL, "%s(%s)", name, alias);
    }

    else
    {
      __strlcpy_chk();
    }

    v22 = remote_device_copy_internal_build();
    v23 = "AppleInternal";
    if (!v22)
    {
      v23 = "-";
    }

    printf("%s %-16s %-12s %-8s %s (%s/%s) %s\n", out, __str, v9, v14, v16, v18, v20, v23);
    if (v9 != "-")
    {
      free(v9);
    }

    if (v13)
    {
      free(v13);
    }

    if (v18 != "-")
    {
      free(v18);
    }

    if (v16 != "-")
    {
      free(v16);
    }

    if (v20 != "-")
    {
      free(v20);
    }
  }
}

uint64_t sub_1000046C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000046DC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    free(*(a1 + 56));
    free(*(a1 + 64));
    printf("Browse Complete: ");
    v8 = *(*(*(a1 + 32) + 8) + 24) - 1;
    if (v8 < 3)
    {
      puts(off_100025570[v8]);
      if (*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && (*(a1 + 76))
      {
        exit(-1);
      }

      exit(0);
    }

    sub_10001AE58();
  }

  v6 = v5;
  if (remote_device_get_state() == 1)
  {
    sub_1000048A4("ATTACH", v6, *(a1 + 77));
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v15 = *(a1 + 77);
  v16 = *(a1 + 76);
  v10 = v6;
  v14 = *(a1 + 72);
  v13 = *(a1 + 64);
  v7 = v6;
  remote_device_set_connected_callback();
  v9 = *(a1 + 77);
  remote_device_set_disconnected_callback();
}

uint64_t sub_1000048A4(const char *a1, void *a2, int a3)
{
  v5 = a2;
  name = remote_device_get_name();
  memset(uu, 170, sizeof(uu));
  remote_device_copy_uuid();

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&out[16] = v7;
  *out = v7;
  uuid_unparse(uu, out);
  if (a3)
  {
    *__str = 0u;
    v18 = 0u;
    v16 = time(0);
    v8 = localtime(&v16);
    v10 = *&v8->tm_mon;
    v9 = *&v8->tm_isdst;
    v11 = *&v8->tm_sec;
    v15.tm_zone = v8->tm_zone;
    *&v15.tm_mon = v10;
    *&v15.tm_isdst = v9;
    *&v15.tm_sec = v11;
    v14.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v14.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v14, 0);
    memset(v21, 170, 20);
    strftime(v21, 0x14uLL, "%Y-%m-%d %H:%M:%S", &v15);
    memset(v13, 170, 6);
    strftime(v13, 6uLL, "%z", &v15);
    snprintf(__str, 0x20uLL, "%s.%06d%s", v21, v14.tv_usec, v13);
    printf("%s ", __str);
  }

  return printf("%-16s %s (%s)\n", a1, name, out);
}

void sub_100004A3C(uint64_t a1, void *a2)
{
  sub_1000048A4("CONNECT", a2, *(a1 + 84));
  if (*(a1 + 85) == 1)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = *(a1 + 32);
    if (remote_device_get_type() == v3)
    {
LABEL_3:

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v7 = *(*(*(a1 + 56) + 8) + 40);
      remote_device_browser_cancel();
      return;
    }

    if (v4)
    {
      memset(uu2, 170, sizeof(uu2));
      remote_device_copy_uuid();
      if (!uuid_compare(v4, uu2))
      {
        goto LABEL_3;
      }
    }

    else if (v5)
    {
      name = remote_device_get_name();
      if (!strcmp(v5, name))
      {
        goto LABEL_3;
      }
    }
  }
}

uint64_t sub_100004B6C(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 2;
  v1 = *(*(*(a1 + 40) + 8) + 40);
  return remote_device_browser_cancel();
}

uint64_t sub_100004B8C(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 3;
  v1 = *(*(*(a1 + 40) + 8) + 40);
  return remote_device_browser_cancel();
}

id sub_100004BAC(int a1, char *__s1, const char *a3)
{
  v4 = __s1;
  v6 = strstr(__s1, ".rsd");
  if (v6)
  {
    *v6 = 0;
  }

  if (!a1)
  {
    a1 = remote_device_type_parse();
    if (a1)
    {
      v4 = 0;
    }
  }

  memset(uu, 0, sizeof(uu));
  empty = xpc_dictionary_create_empty();
  if (a1)
  {
    description = remote_device_type_get_description();
    xpc_dictionary_set_string(empty, "DeviceType", description);
  }

  if (v4)
  {
    if (uuid_parse(v4, uu))
    {
      v9 = "DeviceName";
    }

    else
    {
      v9 = "DeviceUUID";
    }

    xpc_dictionary_set_string(empty, v9, v4);
  }

  if (a3)
  {
    xpc_dictionary_set_string(empty, "AvailableService", a3);
  }

  v10 = remote_device_copy_device_matching();
  if (!v10)
  {
    v13 = objc_alloc_init(NSMutableArray);
    if (a1)
    {
      v17 = [NSString stringWithFormat:@"type '%s'", remote_device_type_get_description(), *uu, *&uu[8]];
      [v13 addObject:v17];

      if (!v4)
      {
LABEL_21:
        if (!a3)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (!v4)
    {
      goto LABEL_21;
    }

    v18 = [NSString stringWithFormat:@"name '%s'", v4];
    [v13 addObject:v18];

    if (!a3)
    {
LABEL_23:
      v15 = [v13 componentsJoinedByString:@" and "];
      v16 = [NSString stringWithFormat:@"Unable to find device with %@", v15];

      errx(65, "%s\n", [v16 UTF8String]);
    }

LABEL_22:
    v14 = [NSString stringWithFormat:@"service '%s'", a3];
    [v13 addObject:v14];

    goto LABEL_23;
  }

  v11 = v10;

  return v11;
}

void sub_100004E00(void *a1, char a2)
{
  v3 = a1;
  remote_device_get_type();
  description = remote_device_type_get_description();
  name = remote_device_get_name();
  printf("Found %s (%s)\n", name, description);
  alias = remote_device_get_alias();
  if (alias)
  {
    printf("\tAlias Name: %s\n", alias);
  }

  state = remote_device_get_state();
  v8 = remote_device_state_get_description();
  v9 = v8;
  if (state == 2)
  {
    connectable = remote_device_get_connectable();
    v11 = "not-connectable";
    if (connectable)
    {
      v11 = "connectable";
    }

    printf("\tState: %s (%s)\n", v9, v11);
    memset(uu, 170, sizeof(uu));
    remote_device_copy_uuid();
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v12;
    *&out[16] = v12;
    uuid_unparse(uu, out);
    printf("\tUUID: %s\n", out);
    v13 = remote_device_copy_product_type();
    if (v13)
    {
      v14 = v13;
      printf("\tProduct Type: %s\n", v13);
      free(v14);
    }

    v15 = remote_device_copy_os_build();
    v16 = remote_device_copy_os_version();
    v17 = v16;
    if (v15 && v16)
    {
      v18 = remote_device_copy_internal_build();
      v19 = "";
      if (v18)
      {
        v19 = " AppleInternal";
      }

      printf("\tOS Build: %s (%s)%s\n", v17, v15, v19);
    }

    free(v15);
    free(v17);
    messaging_protocol_version = remote_device_get_messaging_protocol_version();
    printf("\tMessaging Protocol Version: %llu\n", messaging_protocol_version);
    v21 = remote_device_xpc_remote_connection_tls_enabled();
    v22 = "disabled";
    if (v21)
    {
      v22 = "enabled";
    }

    printf("\tEncrypted RemoteXPC: %s\n", v22);
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v23;
    v41 = v23;
    v39 = v23;
    if (remote_device_get_heartbeat_stats())
    {
      v24 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
      puts("\tHeartbeat:");
      if (*(&v39 + 1))
      {
        printf("\t\tLast successful heartbeat sent %.3fs ago, received %.3fs ago (took %.3fs)\n", (v24 - v39) / 1000000000.0, (v24 - *(&v39 + 1)) / 1000000000.0, (*(&v39 + 1) - v39) / 1000000000.0);
      }

      if (v40)
      {
        printf("\t\tOutstanding heartbeat sent %.3fs ago\n", (v24 - v40) / 1000000000.0);
      }

      if (*(&v40 + 1))
      {
        printf("\t\tLast incoming heartbeat received %.3fs ago\n", (v24 - *(&v40 + 1)) / 1000000000.0);
      }

      printf("\t\t%llu heartbeats sent, %llu received\n", v41, *(&v41 + 1));
    }

    v25 = remote_device_copy_properties();
    v26 = xpc_copy_clean_description();

    printf("\tProperties: ");
    sub_1000053FC(v26, "\t");
    free(v26);
    putchar(10);
    puts("\tServices:");
    v27 = remote_device_copy_service_names();
    if (!v27 || (v28 = v27, xpc_get_type(v27) != &_xpc_type_array))
    {
      sub_10001AEE0(out, &v39);
    }

    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100005468;
    applier[3] = &unk_1000252C8;
    v38 = a2;
    v37 = v3;
    xpc_array_apply(v28, applier);
    puts("\tLocal Services:");
    v29 = remote_device_copy_local_services();
    if (!v29 || (v30 = v29, xpc_get_type(v29) != &_xpc_type_dictionary))
    {
      sub_10001AE74(out, &v39);
    }

    xpc_dictionary_apply(v30, &stru_100025308);
  }

  else
  {
    printf("\tState: %s\n", v8);
    latest_connect_result = remote_device_get_latest_connect_result();
    if (latest_connect_result < 0)
    {
      puts("\t No connect() results");
    }

    else
    {
      v32 = latest_connect_result;
      if (latest_connect_result)
      {
        v33 = strerror(latest_connect_result);
      }

      else
      {
        v33 = "No error";
      }

      printf("\tconnect() result: %d (%s)\n", v32, v33);
    }

    v34 = remote_device_copy_properties();
    v35 = xpc_copy_clean_description();

    printf("\tProperties: ");
    sub_1000053FC(v35, "\t");
    free(v35);
    putchar(10);
  }

  putchar(10);
}

id sub_1000052D8(void *a1)
{
  v1 = a1;
  if (remote_device_get_state() != 2)
  {
    sub_10001AF4C();
  }

  v2 = remote_device_copy_service();

  return v2;
}

void sub_10000533C(void *a1, const char *a2)
{
  v3 = a1;
  if (!a2)
  {
    a2 = "";
  }

  v7 = v3;
  version = remote_service_get_version();
  if (version)
  {
    printf("%sVersion: %lld\n", a2, version);
  }

  v5 = remote_service_copy_properties();
  if (xpc_dictionary_get_count(v5))
  {
    printf("%sProperties: ", a2);
    v6 = xpc_copy_clean_description();
    sub_1000053FC(v6, a2);
    free(v6);
    putchar(10);
  }
}

unsigned __int8 *sub_1000053FC(unsigned __int8 *result, const char *a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result + 1;
    do
    {
      v5 = v2;
      result = putc(v2, __stdoutp);
      if (v5 == 10)
      {
        result = fputs(a2, __stdoutp);
      }

      v6 = *v4++;
      v2 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_100005468(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  string_ptr = xpc_string_get_string_ptr(v4);
  printf("\t\t%s\n", string_ptr);
  if (*(a1 + 40) == 1)
  {
    v6 = *(a1 + 32);
    xpc_string_get_string_ptr(v4);
    v7 = remote_device_copy_service();
    v8 = v7;
    if (v7)
    {
      sub_10000533C(v7, "\t\t\t");
    }
  }

  return 1;
}

void sub_100005524(id a1, OS_remote_device *a2, BOOL a3)
{
  v3 = a3;
  v4 = a2;
  if (v3)
  {
    exit(0);
  }

  v5 = v4;
  sub_100004E00(v4, 1);
}

BOOL sub_10000557C(id a1, unint64_t a2, OS_xpc_object *a3)
{
  string_ptr = xpc_string_get_string_ptr(a3);
  printf("\t\t%s\n", string_ptr);
  return 1;
}

void sub_1000055B4(__SecIdentity *a1)
{
  certificateRef = 0;
  privateKeyRef = 0;
  puts("\tIdentity:");
  if (a1)
  {
    if (SecIdentityCopyPrivateKey(a1, &privateKeyRef))
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v15 = 134217984;
      v16 = 0;
      _os_log_send_and_compose_impl();
      v9 = _os_crash_msg();
      sub_10001AA18(v9);
    }

    v2 = SecKeyCopyPublicKey(privateKeyRef);
    v3 = v2;
    if (!v2)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v15 = 134217984;
      v16 = 0;
      _os_log_send_and_compose_impl();
      v10 = _os_crash_msg();
      sub_10001AA18(v10);
    }

    v4 = SecKeyCopyExternalRepresentation(v2, 0);
    if (!v4)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v15 = 134217984;
      v16 = 0;
      _os_log_send_and_compose_impl();
      v11 = _os_crash_msg();
      sub_10001AA18(v11);
    }

    v5 = v4;

    if (SecIdentityCopyCertificate(a1, &certificateRef))
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v15 = 134217984;
      v16 = 0;
      _os_log_send_and_compose_impl();
      v12 = _os_crash_msg();
      sub_10001AA18(v12);
    }

    v6 = [(__CFData *)v5 sha256];
    v7 = [v6 base64EncodedStringWithOptions:0];
    v8 = v7;
    printf("\t\tPublic key SHA256: %s\n", [v7 UTF8String]);

    if (certificateRef)
    {
      CFRelease(certificateRef);
    }

    CFRelease(v3);
  }

  else
  {
    puts("\t\tnone");
  }

  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
  }
}

void sub_100005928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef a13, CFTypeRef cf)
{
  CFRelease(v14);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void sub_1000059A0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v23 = *(a1 + 32);
    v29 = 0;
    v24 = [NSJSONSerialization dataWithJSONObject:v23 options:1 error:&v29];
    v25 = v29;
    if (!v24)
    {
      v26 = __stderrp;
      v27 = [v25 localizedDescription];
      fprintf(v26, "%s\n", [v27 UTF8String]);

      exit(1);
    }

    v28 = [[NSString alloc] initWithData:v24 encoding:4];
    puts([v28 UTF8String]);

    exit(0);
  }

  v6 = v5;
  v7 = [NSString stringWithUTF8String:remote_device_get_name()];
  v8 = objc_alloc_init(NSMutableDictionary);
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];

  v9 = v6;
  v10 = objc_alloc_init(NSMutableDictionary);
  if (remote_device_get_state() == 2)
  {
    v11 = remote_device_copy_local_services();
    if (!v11 || (v12 = v11, xpc_get_type(v11) != &_xpc_type_dictionary))
    {
      sub_10001AE74(&v30, &applier);
    }

    *&applier = _NSConcreteStackBlock;
    *(&applier + 1) = 3221225472;
    v32 = sub_100005CFC;
    v33 = &unk_1000253B8;
    v34 = v10;
    xpc_dictionary_apply(v12, &applier);
  }

  v13 = [v10 copy];

  v14 = [*(a1 + 32) objectForKeyedSubscript:v7];
  [v14 setObject:v13 forKeyedSubscript:@"local-services"];

  v15 = remote_device_copy_property();
  v16 = v15;
  if (v15 && xpc_get_type(v15) == &_xpc_type_string)
  {
    v17 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v16)];
    v18 = [*(a1 + 32) objectForKeyedSubscript:v7];
    [v18 setObject:v17 forKeyedSubscript:@"interface-name"];
  }

  v19 = remote_device_copy_property();
  v20 = v19;
  if (v19 && xpc_get_type(v19) == &_xpc_type_string)
  {
    v21 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v20)];
    v22 = [*(a1 + 32) objectForKeyedSubscript:v7];
    [v22 setObject:v21 forKeyedSubscript:@"udid"];
  }
}

uint64_t sub_100005CFC(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  v10 = @"port";
  v5 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, "port")];
  v11 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = *(a1 + 32);
  v8 = [NSString stringWithUTF8String:a2];
  [v7 setObject:v6 forKeyedSubscript:v8];

  return 1;
}

void sub_100005DF8(id a1, OS_xpc_object *a2)
{
  object = a2;
  v2 = xpc_copy_clean_description();
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    fprintf(__stderrp, "Error: %s\n", v2);
    exit(1);
  }

  puts(v2);
  free(v2);
}

void sub_100005EA0(id a1, OS_xpc_object *a2)
{
  object = a2;
  v2 = xpc_copy_clean_description();
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    errx(70, "Connection got error: %s", v2);
  }

  fprintf(__stderrp, "Reply: %s\n", v2);
}

void sub_100005F30(id a1, int a2)
{
  if (!a2)
  {
    fwrite("File Transfer Complete!\n", 0x18uLL, 1uLL, __stderrp);
    exit(0);
  }

  errc(70, a2, "File Transfer Failed");
}

uint64_t sub_100005F78()
{
  connected_socket = remote_service_create_connected_socket();
  v1 = connected_socket;
  if (connected_socket != -1)
  {
    v2 = fcntl(connected_socket, 3, 0);
    fcntl(v1, 4, v2 & 0xFFFFFFFB);
  }

  return v1;
}

void sub_100005FD4(int a1, int a2, int a3)
{
  v6 = malloc_type_valloc(0x20000uLL, 0x3DD42F38uLL);
  v7 = kqueue();
  if (v7 < 0)
  {
    sub_10001AFE4();
  }

  v8 = v7;
  changelist.ident = a1;
  *&changelist.filter = 0x1FFFF;
  memset(&changelist.fflags, 0, 20);
  v16 = a3;
  v17 = 0x1FFFF;
  v19 = 0;
  v18 = 0;
  v20 = 0;
  if (kevent(v7, &changelist, 2, 0, 0, 0))
  {
    sub_10001AF74();
  }

  while (1)
  {
    do
    {
      while (1)
      {
        timeout = xmmword_10001D5A0;
        v9 = kevent(v8, 0, 0, &changelist, 1, &timeout);
        if ((v9 & 0x80000000) == 0)
        {
          break;
        }

        if (*__error() != 4)
        {
          sub_10001AFC8();
        }
      }
    }

    while (!v9);
    if (!changelist.data && changelist.flags < 0)
    {
      break;
    }

    if (changelist.data >= 0x20000uLL)
    {
      data = 0x20000;
    }

    else
    {
      data = changelist.data;
    }

    v11 = read(changelist.ident, v6, data);
    if (v11 < 0)
    {
      sub_10001AFAC();
    }

    v12 = v11;
    if (v11)
    {
      if (LODWORD(changelist.ident) == a1)
      {
        v13 = a3;
      }

      else
      {
        v13 = a2;
      }

      if (write(v13, v6, v12) < 0)
      {
        sub_10001AF90();
      }
    }
  }

  close(v8);
  close(a1);
  if (a2 != a1)
  {
    close(a2);
  }

  close(a3);
  free(v6);
}

uint64_t sub_10000618C(char *const *a1, uint64_t a2)
{
  memset(__b, 170, sizeof(__b));
  bufsize = 1024;
  _NSGetExecutablePath(__b, &bufsize);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (posix_spawn_file_actions_init(&v13))
  {
    sub_10001B000(&v12, v15);
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if (posix_spawn_file_actions_addinherit_np(&v13, *(a2 + 4 * v4)))
    {
      sub_10001B06C(&v12, v15);
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v7 = open("/dev/null", 2);
  if (v7 != -1)
  {
    if (posix_spawn_file_actions_adddup2(&v13, v7, 0))
    {
      sub_10001B0D8(&v12, v15);
    }

    if (posix_spawn_file_actions_adddup2(&v13, v7, 1))
    {
      sub_10001B144(&v12, v15);
    }

    if (posix_spawn_file_actions_adddup2(&v13, v7, 2))
    {
      sub_10001B1B0(&v12, v15);
    }
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (posix_spawnattr_init(&v12))
  {
    sub_10001B21C(&v11, v15);
  }

  if (posix_spawnattr_setflags(&v12, 2))
  {
    sub_10001B288(&v11, v15);
  }

  if (posix_spawnattr_setflags(&v12, 0x4000))
  {
    sub_10001B2F4(&v11, v15);
  }

  v15[0] = -1;
  v8 = _NSGetEnviron();
  v9 = posix_spawn(v15, __b, &v13, &v12, a1, *v8);
  if (v9)
  {
    sub_10001B360(v9);
  }

  posix_spawn_file_actions_destroy(&v13);
  result = posix_spawnattr_destroy(&v12);
  if (v7 != -1)
  {
    return close(v7);
  }

  return result;
}

void sub_1000063A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "parent exited, exiting", v2, 2u);
  }

  exit(1);
}

void sub_100006400(id a1, BOOL a2)
{
  v2 = a2;
  v3 = "failure";
  if (a2)
  {
    v3 = "success";
  }

  fprintf(__stderrp, "Heartbeat %s\n", v3);
  exit(!v2);
}

uint64_t sub_100006454(uint64_t a1, int a2)
{
  v4 = fcntl(a2, 3, 0);
  fcntl(a2, 4, v4 & 0xFFFFFFFB);
  v23 = 0xAAAAAAAAAAAAAAAALL;
  if (posix_spawn_file_actions_init(&v23))
  {
    sub_10001B000(&v22, buf);
  }

  v5 = *(a1 + 72);
  if (v5 == -1)
  {
    if (posix_spawn_file_actions_adddup2(&v23, a2, 0))
    {
      sub_10001B3EC(&v22, buf);
    }

    if (posix_spawn_file_actions_adddup2(&v23, a2, 1))
    {
      sub_10001B458(&v22, buf);
    }
  }

  else if (posix_spawn_file_actions_adddup2(&v23, a2, v5))
  {
    sub_10001B380(&v22, buf);
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  if (posix_spawnattr_init(&v22))
  {
    sub_10001B21C(&v21, buf);
  }

  if (posix_spawnattr_setflags(&v22, 2))
  {
    sub_10001B288(&v21, buf);
  }

  if (posix_spawnattr_setflags(&v22, 0x4000))
  {
    sub_10001B2F4(&v21, buf);
  }

  if (posix_spawnattr_setflags(&v22, 12))
  {
    sub_10001B4C4(&v21, buf);
  }

  v19 = 0;
  v20 = -1;
  if (posix_spawnattr_setsigdefault(&v22, &v20))
  {
    sub_10001B530(&v21, buf);
  }

  if (posix_spawnattr_setsigmask(&v22, &v19))
  {
    sub_10001B59C(&v21, buf);
  }

  LODWORD(v21) = -1;
  v6 = *(a1 + 56);
  v7 = *v6;
  v8 = _NSGetEnviron();
  v9 = posix_spawn(&v21, v7, &v23, &v22, v6, *v8);
  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_10001B608(a1, v11, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 64);
      *buf = 136446466;
      v25 = v12;
      v26 = 1024;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Accepted service, started pid %d", buf, 0x12u);
    }

    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 24);
    if (!v14)
    {
      v15 = os_transaction_create();
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24);
    }

    *(v13 + 24) = v14 + 1;
  }

  close(a2);
  posix_spawn_file_actions_destroy(&v23);
  return posix_spawnattr_destroy(&v22);
}

int *sub_100006748(void *a1)
{
  v9 = 0;
  do
  {
    while (1)
    {
      result = wait3(&v9, 1, 0);
      if (result == -1)
      {
        break;
      }

      v3 = result;
      if (!result)
      {
        return result;
      }

      v4 = a1[4];
      if ((v9 & 0x7F) != 0)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v11 = v3;
          v12 = 1024;
          v13 = v9 & 0x7F;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Reaped child %d, terminated with signal %d", buf, 0xEu);
        }
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reaped child %d, exited normally", buf, 8u);
      }

      v5 = *(a1[5] + 8);
      v6 = *(v5 + 24);
      if (v6)
      {
        *(v5 + 24) = v6 - 1;
        if (*(*(a1[5] + 8) + 24))
        {
          continue;
        }
      }

      v7 = *(a1[6] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;
    }

    result = __error();
  }

  while (*result == 4);
  return result;
}

uint64_t sub_1000068F0()
{
  if (remote_compute_platform_tls_required())
  {
    exit(1);
  }

  return printf("TLS is currently %s for the compute platform\n", "not required");
}

uint64_t sub_100006950(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      sub_10001B694(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_1000069BC()
{

  return _os_log_send_and_compose_impl();
}

double sub_1000069E0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_100006A04()
{

  return _os_log_send_and_compose_impl();
}

double sub_100006A48(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_100006A68()
{
  v2 = *v0;

  return _os_crash_msg();
}

BOOL sub_100006A80()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_100006AB4()
{
  v2 = *v0;

  return _os_crash_msg();
}

BOOL sub_100006ACC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_100008A2C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008A74(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000DB58();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "SSH tunnel privileged helper received SIGINT, shutting down server...", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_100008D88(&qword_1000288D8, &unk_10001D600);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10001D5E0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = 0xD000000000000017;
  *(v11 + 40) = 0x800000010001F7E0;
  print(_:separator:terminator:)();

  return (*(*a1 + 192))(v12);
}

uint64_t sub_100008C74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100008CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008CD0()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100009E48(&unk_100028E70, &type metadata accessor for DispatchWorkItemFlags);
  sub_100008D88(&qword_100028920, &qword_10001D7E0);
  sub_100009E90();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100008D88(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008DD8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100008E50(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100008ED0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100008F14()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100008F50()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100008FA4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100009018(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000090A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000090E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100009114(uint64_t a1)
{
  v2 = sub_100009E48(&qword_1000288C8, type metadata accessor for FileAttributeKey);
  v3 = sub_100009E48(&qword_100028908, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000091D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000929C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100009D68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009D1C(v11);
  return v7;
}

unint64_t sub_10000929C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000093A8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000093A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000093F4(a1, a2);
  sub_100009524(&off_100025588);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000093F4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100009610(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009610(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100009524(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100009684(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100009610(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100008D88(&qword_100028910, &qword_10001D7D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009684(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008D88(&qword_100028910, &qword_10001D7D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100009778(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000980C(a1, v4);
}

unint64_t sub_10000980C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100009910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008D88(&qword_100028918, &qword_10001D7D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009DC8(v4, &v11);
      v5 = v11;
      result = sub_100009778(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100009E38(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_1000288E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000288E8);
    }
  }
}

unint64_t sub_100009A68()
{
  result = qword_1000288D0;
  if (!qword_1000288D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288D0);
  }

  return result;
}

uint64_t sub_100009ABC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_100009B20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009B34(a1, a2);
  }

  return a1;
}

uint64_t sub_100009B34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100009B88()
{
  result = qword_1000288E0;
  if (!qword_1000288E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288E0);
  }

  return result;
}

uint64_t sub_100009BDC(uint64_t a1)
{
  v2 = sub_100008D88(&qword_100028C90, &qword_10001D990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009D1C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100009D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008D88(&qword_1000288C0, &qword_10001D5F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100009E38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100009E48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100009E90()
{
  result = qword_100028E80;
  if (!qword_100028E80)
  {
    sub_100009EF4(&qword_100028920, &qword_10001D7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E80);
  }

  return result;
}

uint64_t sub_100009EF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009F4C(uint64_t a1, unsigned int a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    if (a1 <= 1)
    {
      a1 = 1;
    }

    if (a1 == 1)
    {
      return swift_willThrow();
    }

    else
    {
      sleep(a2);

      return (a3)(v8);
    }
  }

  return result;
}

uint64_t sub_100009FE4(uint64_t a1, void *a2)
{
  String.utf8CString.getter();
  v4 = remote_control_enable_network_peer();

  if (!v4)
  {
    _StringGuts.grow(_:)(34);

    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    sub_100009A68();
    swift_allocError();
    *v7 = 0xD000000000000020;
    v7[1] = 0x800000010001F800;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10000A0C0()
{
  result = remote_control_disable_network_peer();
  if (!result)
  {
    sub_100009A68();
    swift_allocError();
    *v1 = 0xD000000000000022;
    v1[1] = 0x800000010001F830;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10000A130()
{
  IPv6Address.debugDescription.getter();
  String.utf8CString.getter();

  v0 = remote_control_connect_network_peer();

  if (!v0)
  {
    _StringGuts.grow(_:)(37);
    v2._object = 0x800000010001F860;
    v2._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v2);
    type metadata accessor for IPv6Address();
    _print_unlocked<A, B>(_:_:)();
    sub_100009A68();
    swift_allocError();
    *v3 = 0;
    v3[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10000A230(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    _StringGuts.grow(_:)(16);
    v6._countAndFlagsBits = 0x6E696E657473696CLL;
    v6._object = 0xEA00000000002867;
    String.append(_:)(v6);
    type metadata accessor for NWListener();
    _print_unlocked<A, B>(_:_:)();
    v7._countAndFlagsBits = 8236;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    type metadata accessor for UtunSocket();
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  if (a3 >> 62 == 1)
  {
    _StringGuts.grow(_:)(17);
    v3._countAndFlagsBits = 0x657463656E6E6F63;
    v3._object = 0xEA00000000002864;
    String.append(_:)(v3);
    type metadata accessor for NWConnection();
    _print_unlocked<A, B>(_:_:)();
    v4._countAndFlagsBits = 8236;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    type metadata accessor for UtunSocket();
    _print_unlocked<A, B>(_:_:)();
    v5._countAndFlagsBits = 41;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    return 0;
  }

  return 0x656E6E6F63736964;
}

unint64_t sub_10000A404()
{
  result = qword_1000288B0;
  if (!qword_1000288B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000288B0);
  }

  return result;
}

void sub_10000A450()
{
  v1 = v0;

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v14 = v4;
    *v3 = 136315138;
    v5 = (v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state);
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    sub_10000A670(v6, v7, v8);
    v9 = sub_10000A230(v6, v7, v8);
    v11 = v10;
    sub_100009ABC(v6, v7, v8);
    v12 = sub_1000091D0(v9, v11, &v14);

    *(v3 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v2, "State changed to %s", v3, 0xCu);
    sub_100009D1C(v4);
  }

  else
  {
  }
}

uint64_t sub_10000A600()
{
  v1 = v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state;
  swift_beginAccess();
  v2 = *v1;
  sub_10000A670(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_10000A670(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_10000A6D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  sub_10000A670(a1, a2, a3);
  sub_100009ABC(v8, v9, v10);
  sub_10000A450();
  return sub_100009ABC(a1, a2, a3);
}

void (*sub_10000A780(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10000A7E4;
}

void sub_10000A7E4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_10000A450();
  }
}

uint64_t sub_10000A818()
{
  (*(*v0 + 144))();
  v2 = v1;
  if ((v3 >> 62) > 1)
  {
    return 0;
  }

  v5 = (*(*v2 + 176))(v4);

  return v5;
}

uint64_t sub_10000A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v31 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = *(v4 + 48);
  v13 = *(v4 + 52);
  v14 = swift_allocObject();
  v30[2] = sub_10000A404();
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v15 = sub_10000D644();
  v16 = v15[1];
  v38 = *v15;
  v39 = v16;

  v17._countAndFlagsBits = 0xD000000000000016;
  v17._object = 0x800000010001F890;
  String.append(_:)(v17);
  v30[1] = v39;
  static DispatchQoS.unspecified.getter();
  v38 = &_swiftEmptyArrayStorage;
  sub_10000D1E8(&qword_100028928, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100008D88(&qword_100028930, qword_10001D880);
  sub_10000BE7C(&qword_100028938, &qword_100028930, qword_10001D880);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v32 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
  *(v14 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = *v15;
  v19 = v15[1];

  Logger.init(subsystem:category:)();
  v20 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_exitSemaphore;
  *(v14 + v20) = dispatch_semaphore_create(0);
  v21 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_port;
  v22 = type metadata accessor for NWEndpoint.Port();
  (*(*(v22 - 8) + 32))(v14 + v21, v34, v22);
  v23 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelSourceAddress;
  v24 = type metadata accessor for IPv6Address();
  v25 = *(*(v24 - 8) + 32);
  v25(v14 + v23, v35, v24);
  v25(v14 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelDestinationAddress, v36, v24);
  v26 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_timeout;
  v27 = type metadata accessor for DispatchTimeInterval();
  (*(*(v27 - 8) + 32))(v14 + v26, v37, v27);
  v28 = (v14 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state);
  *v28 = 0;
  v28[1] = 0;
  v28[2] = 0x8000000000000000;
  return v14;
}

uint64_t sub_10000ACE4()
{
  v1 = type metadata accessor for DispatchTime();
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = *(v58 + 64);
  v3 = __chkstk_darwin(v1);
  v56 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v57 = v55 - v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for IPv6Address();
  v61 = *(v63 - 8);
  v10 = *(v61 + 64);
  v11 = __chkstk_darwin(v63);
  v62 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v60 = v55 - v13;
  v14 = type metadata accessor for NWEndpoint.Port();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NWProtocolTCP.Options();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveCount.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveInterval.setter();
  type metadata accessor for NWParameters();

  v22 = NWParameters.__allocating_init(tls:tcp:)();
  NWParameters.acceptLocalOnly.setter();
  v23 = *(v15 + 16);
  v64 = v0;
  v23(v18, v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_port, v14);
  v24 = type metadata accessor for NWListener();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = v65;
  v28 = NWListener.init(using:on:)();
  if (v27)
  {
  }

  else
  {
    v29 = v28;
    v55[2] = v9;
    v55[3] = v22;
    v55[1] = v6;
    v30 = v64;

    sub_10000B858(sub_10000B458);
    NWListener.newConnectionHandler.setter();

    sub_10000B858(sub_10000B854);
    NWListener.stateUpdateHandler.setter();

    type metadata accessor for UtunSocket();
    v65 = v29;
    v31 = *(v30 + 16);
    v32 = v60;
    v33 = *(v61 + 16);
    v34 = v63;
    v33(v60, v30 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelSourceAddress, v63);
    v35 = v62;
    v33(v62, v30 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelDestinationAddress, v34);
    v36 = sub_100017D64(v31, v32, v35);
    v37 = v64;
    v38 = *(*v36 + 240);

    v39 = v38(sub_10000BC78, v37);
    v42 = v41;
    v63 = v36;
    v43 = v39;

    sub_100009FE4(v43, v42);

    NWListener.start(queue:)();
    v44 = v64;
    aBlock[4] = sub_10000BD48;
    aBlock[5] = v64;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008C74;
    aBlock[3] = &unk_100025640;
    v62 = _Block_copy(aBlock);
    aBlock[7] = &_swiftEmptyArrayStorage;
    v61 = sub_10000D1E8(&unk_100028E70, &type metadata accessor for DispatchWorkItemFlags);

    sub_100008D88(&qword_100028920, &qword_10001D7E0);
    sub_10000BE7C(&qword_100028E80, &qword_100028920, &qword_10001D7E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v45 = type metadata accessor for DispatchWorkItem();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = DispatchWorkItem.init(flags:block:)();
    v62 = v48;

    v49 = *(*v44 + 152);
    v50 = v65;

    v51 = v63;

    v49(v50, v51, v48);
    v52 = v56;
    static DispatchTime.now()();
    v53 = v57;
    + infix(_:_:)();
    v54 = *(v58 + 8);
    v54(v52, v59);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v54)(v53, v59);
  }
}

void sub_10000B458(uint64_t a1)
{
  v3 = *(*v1 + 144);
  v4 = v3();
  v7 = v5;
  if (v6 >> 62)
  {
    sub_100009ABC(v4, v5, v6);

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      v14 = v3();
      v16 = v15;
      v18 = v17;
      v19 = sub_10000A230(v14, v15, v17);
      v21 = v20;
      sub_100009ABC(v14, v16, v18);
      v22 = sub_1000091D0(v19, v21, &v25);

      *(v12 + 4) = v22;
      _os_log_impl(&_mh_execute_header, oslog, v11, "In state %s, rejecting new connection", v12, 0xCu);
      sub_100009D1C(v13);
    }
  }

  else
  {
    dispatch thunk of DispatchWorkItem.cancel()();
    NWListener.cancel()();

    sub_10000B858(sub_10000D1E4);
    NWConnection.stateUpdateHandler.setter();

    type metadata accessor for TCPPacketTunnel();

    v8 = sub_100014808(a1, v7);
    v9 = v1[2];
    v10 = NWConnection.start(queue:)();
    (*(*v8 + 128))(v10);
    sub_10000A130();
    v23 = *(*v1 + 152);

    v23(a1, v7, v8 | 0x4000000000000000);
  }
}

uint64_t sub_10000B858(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Int sub_10000B868(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWListener.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_logger;
  v37 = *(v5 + 16);
  v38 = a1;
  v37(&v32 - v10, a1, v4);
  v36 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = v9;
    v16 = v15;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v16 = 136315138;
    sub_10000D1E8(&qword_100028A50, &type metadata accessor for NWListener.State);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v2;
    v19 = v18;
    v20 = *(v5 + 8);
    v20(v11, v4);
    v21 = sub_1000091D0(v17, v19, &v39);
    v2 = v34;

    *(v16 + 4) = v21;
    v22 = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "NWListener in state %s", v16, 0xCu);
    sub_100009D1C(v33);

    v9 = v35;
  }

  else
  {

    v22 = *(v5 + 8);
    v22(v11, v4);
  }

  v37(v9, v38, v4);
  result = (*(v5 + 88))(v9, v4);
  if (result == enum case for NWListener.State.waiting(_:) || result == enum case for NWListener.State.failed(_:))
  {
    result = (v22)(v9, v4);
LABEL_10:
    v25 = (*(*v2 + 144))(result);
    if (v27 >> 62)
    {
      return sub_100009ABC(v25, v26, v27);
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Listener ended without a connection, shutting down.", v30, 2u);
    }

    return sub_10000C274();
  }

  if (result != enum case for NWListener.State.setup(_:) && result != enum case for NWListener.State.ready(_:))
  {
    if (result != enum case for NWListener.State.cancelled(_:))
    {
      return (v22)(v9, v4);
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10000BC78(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 144))();
  if (v7 >> 62 == 1)
  {
    v8 = v7 & 0x3FFFFFFFFFFFFFFFLL;

    (*(*v8 + 136))(a1, a2);
  }

  else
  {

    return sub_100009ABC(v5, v6, v7);
  }
}

uint64_t sub_10000BD48()
{
  v1 = (*(*v0 + 144))();
  if (v3 >> 62)
  {

    return sub_100009ABC(v1, v2, v3);
  }

  else
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Listener timed out waiting for an incoming connection", v6, 2u);
    }

    NWListener.cancel()();
  }
}

uint64_t sub_10000BE64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000BE7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009EF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BED0()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000091D0(0x656E6E6F63736964, 0xEC00000029287463, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100009D1C(v5);
  }

  result = (*(*v1 + 144))();
  if (v7 >> 62)
  {
    if (v7 >> 62 != 1)
    {
      return result;
    }

    NWConnection.cancel()();
  }

  else
  {

    NWListener.cancel()();
    dispatch thunk of DispatchWorkItem.cancel()();
  }
}

uint64_t sub_10000C0B8()
{
  v1 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_port;
  v4 = type metadata accessor for NWEndpoint.Port();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelSourceAddress;
  v6 = type metadata accessor for IPv6Address();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelDestinationAddress, v6);
  v8 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_timeout;
  v9 = type metadata accessor for DispatchTimeInterval();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  sub_100009ABC(*(v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state), *(v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state + 8), *(v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state + 16));
  v10 = *(*v0 + 12);
  v11 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

Swift::Int sub_10000C274()
{
  v1 = v0;
  v2 = type metadata accessor for NWConnection.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NWListener.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(*v0 + 144))(v10);
  v16 = v15;
  if (!(v14 >> 62))
  {
    v31[0] = v13;
    NWListener.state.getter();
    v22 = (*(v8 + 88))(v12, v7);
    if (v22 != enum case for NWListener.State.failed(_:))
    {
      if (v22 == enum case for NWListener.State.cancelled(_:))
      {
LABEL_16:
        dispatch thunk of DispatchWorkItem.cancel()();
        v26 = sub_10000A0C0();
        (*(*v16 + 272))(v26);
        (*(*v1 + 152))(0, 0, 0x8000000000000000);
        v30 = *(v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_exitSemaphore);
        OS_dispatch_semaphore.signal()();
      }

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Shutting down utun before NWListener is shut down", v25, 2u);
      }
    }

    (*(v8 + 8))(v12, v7);
    goto LABEL_16;
  }

  if (v14 >> 62 != 1)
  {
    v27 = *(v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_exitSemaphore);
    return OS_dispatch_semaphore.signal()();
  }

  NWConnection.state.getter();
  v17 = (*(v3 + 88))(v6, v2);
  if (v17 == enum case for NWConnection.State.failed(_:))
  {
    goto LABEL_8;
  }

  if (v17 != enum case for NWConnection.State.cancelled(_:))
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Shutting down utun before NWConnection is shut down", v20, 2u);
    }

LABEL_8:
    (*(v3 + 8))(v6, v2);
  }

  v21 = sub_10000A0C0();
  (*(*v16 + 272))(v21);
  (*(*v1 + 152))(0, 0, 0x8000000000000000);
  v29 = *(v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_exitSemaphore);
  OS_dispatch_semaphore.signal()();
}

Swift::Int sub_10000CAC4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWConnection.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v29 = *(v5 + 16);
  v30 = a1;
  v29(&v26 - v10, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v9;
    v15 = v14;
    v26 = swift_slowAlloc();
    v31 = v26;
    *v15 = 136315138;
    sub_10000D1E8(&qword_100028A58, &type metadata accessor for NWConnection.State);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v2;
    v18 = v17;
    v19 = *(v5 + 8);
    v19(v11, v4);
    v20 = sub_1000091D0(v16, v18, &v31);
    v2 = v27;

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "NWConnection in state %s", v15, 0xCu);
    sub_100009D1C(v26);

    v9 = v28;
  }

  else
  {

    v19 = *(v5 + 8);
    v19(v11, v4);
  }

  v29(v9, v30, v4);
  result = (*(v5 + 88))(v9, v4);
  if (result == enum case for NWConnection.State.waiting(_:) || result == enum case for NWConnection.State.failed(_:))
  {
    result = (v19)(v9, v4);
LABEL_10:
    result = (*(*v2 + 144))(result);
    if ((v23 >> 62) <= 1)
    {

      return sub_10000C274();
    }

    return result;
  }

  if (result != enum case for NWConnection.State.setup(_:) && result != enum case for NWConnection.State.preparing(_:) && result != enum case for NWConnection.State.ready(_:))
  {
    if (result != enum case for NWConnection.State.cancelled(_:))
    {
      return (v19)(v9, v4);
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t type metadata accessor for TCPPacketTunnelServer()
{
  result = qword_100029390;
  if (!qword_100029390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CEC0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for NWEndpoint.Port();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = type metadata accessor for IPv6Address();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = type metadata accessor for DispatchTimeInterval();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

unint64_t sub_10000D018(void *a1)
{
  v1 = a1[2];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 sub_10000D038(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000D04C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFD && *(a1 + 24))
  {
    return (*a1 + 2097150);
  }

  if (((((*(a1 + 16) >> 43) >> 19) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x60000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF) >= 0x1FFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = (((*(a1 + 16) >> 43) >> 19) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x60000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_10000D0D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2097150;
    if (a3 >= 0x1FFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_10001D850), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_10001D860), vdupq_n_s64(0xF000000000000000)));
    }
  }

  return result;
}

int8x16_t sub_10000D18C(uint64_t a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v3 = *(a1 + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *a1 = result;
    *(a1 + 16) = v3;
  }

  else
  {
    *a1 = 8 * (a2 - 2);
    result.i64[0] = 0;
    *(a1 + 8) = xmmword_10001D870;
  }

  return result;
}

uint64_t sub_10000D1E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D230()
{
  v0 = *(String.utf8CString.getter() + 16);

  if (v0)
  {
    dword_100029768 = -1067168253;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *sub_10000D278()
{
  if (qword_1000293A0 != -1)
  {
    swift_once();
  }

  return &dword_100029768;
}

uint64_t sub_10000D698(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000D6E0(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*(sub_100008D88(&qword_100028A68, &qword_10001D9D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = type metadata accessor for NWEndpoint.Port();
  sub_10000DA6C(v6, a2);
  v7 = sub_10000D698(v6, a2);
  NWEndpoint.Port.init(rawValue:)();
  v8 = *(v6 - 8);
  result = (*(v8 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v8 + 32))(v7, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D89C(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*(sub_100008D88(&qword_100028A60, &qword_10001D9D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = type metadata accessor for IPv6Address();
  sub_10000DA6C(v6, a2);
  v7 = sub_10000D698(v6, a2);
  IPv6Address.init(_:)();
  v8 = *(v6 - 8);
  result = (*(v8 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v8 + 32))(v7, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DA00(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_10000D698(v4, a3);
}

uint64_t *sub_10000DA6C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10000DAD0()
{
  v0 = type metadata accessor for Logger();
  sub_10000DA6C(v0, qword_1000297D0);
  sub_10000D698(v0, qword_1000297D0);
  v1 = sub_10000D644();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000DB58()
{
  if (qword_100029450 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000D698(v0, qword_1000297D0);
}

char *sub_10000DBBC(int a1, void *a2)
{
  v2 = a1;
  if (*a2)
  {
    v3 = a1 < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = a2 + 1;
  v6 = &_swiftEmptyArrayStorage;
  do
  {
    v7 = String.init(cString:)();
    v9 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100010E94(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_100010E94((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[16 * v11];
    *(v12 + 4) = v7;
    *(v12 + 5) = v9;
    v13 = *v5++;
    v14 = v2-- != 0;
  }

  while (v13 && v2 != 0 && v14);
  return v6;
}

void sub_10000ECC8()
{
  v0 = type metadata accessor for IPv6Address();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NWEndpoint.Port();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(91);
  v10._countAndFlagsBits = 0xD000000000000028;
  v10._object = 0x800000010001FD90;
  String.append(_:)(v10);
  v11 = sub_10000D660();
  v24 = v6[2];
  v24(v9, v11, v5);
  _print_unlocked<A, B>(_:_:)();
  v23 = v6[1];
  v23(v9, v5);
  v12._countAndFlagsBits = 0x50497475643C203ELL;
  v12._object = 0xEC000000203F3F20;
  String.append(_:)(v12);
  v13 = sub_10000D84C();
  v14 = v1;
  v15 = *(v1 + 16);
  v15(v4, v13, v0);
  _print_unlocked<A, B>(_:_:)();
  v16 = *(v14 + 8);
  v22[1] = v14 + 8;
  v16(v4, v0);
  v17._object = 0x800000010001FDC0;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18 = sub_10000D7FC();
  v24(v9, v18, v5);
  _print_unlocked<A, B>(_:_:)();
  v23(v9, v5);
  v19._countAndFlagsBits = 0x6C61636F6C3C203ELL;
  v19._object = 0xEE00203F3F205049;
  String.append(_:)(v19);
  v20 = sub_10000D9C8();
  v15(v4, v20, v0);
  _print_unlocked<A, B>(_:_:)();
  v16(v4, v0);
  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  qword_1000297E8 = v25;
  unk_1000297F0 = v26;
}

uint64_t sub_10000F044(uint64_t a1)
{
  v3 = sub_100008D88(&qword_100028A60, &qword_10001D9D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v84 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v87 = v82 - v7;
  v8 = type metadata accessor for IPv6Address();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = *(v89 + 64);
  v10 = __chkstk_darwin(v8);
  v83 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v86 = v82 - v12;
  v13 = sub_100008D88(&qword_100028A68, &qword_10001D9D8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v93 = v82 - v15;
  v16 = type metadata accessor for NWEndpoint.Port();
  v94 = *(v16 - 8);
  v95 = v16;
  v17 = *(v94 + 64);
  __chkstk_darwin(v16);
  v91 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = 0;
  v85 = 0;
  v98 = 0;
  v99 = 0;
  v88 = 0;
  v19 = 0;
  v96 = 0;
  v20 = 0;
  v21 = 0;
  v22 = *(a1 + 16);
  v23 = a1 + 40;
LABEL_2:
  while (v21 != v22)
  {
    v97 = v19;
    while (2)
    {
      v24 = (v23 + 16 * v21);
      v25 = v21;
      while (1)
      {
        if (v25 >= v22)
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v21 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_53;
        }

        v26 = *v24;
        if (v25)
        {
          break;
        }

        v27 = *(v24 - 1) == 0xD000000000000013 && 0x800000010001FAE0 == v26;
        if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_54;
        }

        v25 = 1;
        v24 += 2;
        if (v21 == v22)
        {
          goto LABEL_25;
        }
      }

      v28 = *(v24 - 1);
      v1 = v26;

      switch(v25)
      {
        case 1uLL:

          v20 = v1;
          v96 = v28;
          if (v21 != v22)
          {
            continue;
          }

          v96 = v28;
          v20 = v1;
LABEL_25:
          v19 = v97;
          goto LABEL_26;
        case 2uLL:

          v99 = v1;
          v92 = v28;
          if (v21 != v22)
          {
            continue;
          }

          v92 = v28;
          v99 = v1;
          goto LABEL_25;
        case 3uLL:

          v88 = v28;
          v19 = v1;
          goto LABEL_2;
      }
    }

    v85 = v28;
    v98 = v1;
    v19 = v97;
    if (v25 != 4)
    {

      v29 = 0x800000010001FAA0;
      sub_100009A68();
      swift_allocError();
      v31 = 0xD00000000000003ALL;
      goto LABEL_31;
    }
  }

LABEL_26:
  if (!v20)
  {

    v29 = 0x800000010001FB00;
    sub_100009A68();
    swift_allocError();
    v31 = 0xD000000000000046;
LABEL_31:
    *v30 = v31;
    v30[1] = v29;
    return swift_willThrow();
  }

  v32 = v99;
  if (!v99)
  {
    v34 = 7104878;

    v33 = v93;
    (*(v94 + 56))(v93, 1, 1, v95);
    v32 = 0xE300000000000000;
    goto LABEL_33;
  }

  v34 = v92;
  v33 = v93;
  NWEndpoint.Port.init(_:)();
  v23 = v94;
  v35 = v95;
  if ((*(v94 + 48))(v33, 1, v95) == 1)
  {

LABEL_33:
    sub_100011004(v33, &qword_100028A68, &qword_10001D9D8);
    v100 = 0;
    v101 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v100 = 0xD000000000000023;
    v101 = 0x800000010001FB50;
    v36._countAndFlagsBits = v34;
    v36._object = v32;
    String.append(_:)(v36);

    v37 = v100;
    v38 = v101;
    sub_100009A68();
    swift_allocError();
    *v39 = v37;
    v39[1] = v38;
    return swift_willThrow();
  }

  v41 = v91;
  (*(v23 + 32))(v91, v33, v35);
  if (!v19)
  {
    v46 = 7104878;

    v42 = v87;
    (*(v89 + 56))(v87, 1, 1, v90);
    v19 = 0xE300000000000000;
    goto LABEL_39;
  }

  v42 = v87;
  IPv6Address.init(_:)();
  v43 = v89;
  v44 = v90;
  v45 = *(v89 + 48);
  if (v45(v42, 1, v90) == 1)
  {

    v41 = v91;
    v35 = v95;
    v46 = v88;
LABEL_39:
    sub_100011004(v42, &qword_100028A60, &qword_10001D9D0);
    v100 = 0;
    v101 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v100 = 0xD00000000000001ELL;
    v101 = 0x800000010001FB80;
    v47._countAndFlagsBits = v46;
    v47._object = v19;
    String.append(_:)(v47);

    v48 = v100;
    v49 = v101;
    sub_100009A68();
    swift_allocError();
    *v50 = v48;
    v50[1] = v49;
    swift_willThrow();
    return (*(v23 + 8))(v41, v35);
  }

  v51 = v44;
  v52 = v43;
  v53 = *(v43 + 32);
  v53(v86, v42, v51);
  v54 = v98;
  if (!v98)
  {
    v58 = 7104878;

    v56 = v52;
    v61 = *(v52 + 56);
    v55 = v84;
    v60 = v90;
    v61(v84, 1, 1, v90);
    v57 = 0xE300000000000000;
    v59 = v91;
    goto LABEL_44;
  }

  v55 = v84;
  IPv6Address.init(_:)();
  if (v45(v55, 1, v90) == 1)
  {

    v56 = v89;
    v57 = v54;
    v58 = v85;
    v60 = v90;
    v59 = v91;
LABEL_44:
    sub_100011004(v55, &qword_100028A60, &qword_10001D9D0);
    v100 = 0;
    v101 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v100 = 0xD000000000000021;
    v101 = 0x800000010001FBA0;
    v62._countAndFlagsBits = v58;
    v62._object = v57;
    String.append(_:)(v62);

    v63 = v100;
    v64 = v101;
    sub_100009A68();
    swift_allocError();
    *v65 = v63;
    v65[1] = v64;
    swift_willThrow();
    (*(v56 + 8))(v86, v60);
    v66 = *(v23 + 8);
    v67 = v59;
    return v66(v67, v95);
  }

  v21 = v83;
  v1 = v90;
  v53(v83, v55, v90);
  v22 = v91;
  v25 = v86;
  v68 = v82[1];
  sub_1000161D0(v96, v20, v91, v86, v21);
  if (!v68)
  {
LABEL_55:

    v81 = *(v89 + 8);
    v81(v21, v1);
    v81(v25, v1);
    v66 = *(v23 + 8);
    v67 = v22;
    return v66(v67, v95);
  }

  if (qword_100029450 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_10000D698(v69, qword_1000297D0);
  swift_errorRetain();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    swift_errorRetain();
    v74 = _swift_stdlib_bridgeErrorToNSError();
    *(v72 + 4) = v74;
    *v73 = v74;
    _os_log_impl(&_mh_execute_header, v70, v71, "remotectl ssh-tunnel-callback failed: %@", v72, 0xCu);
    sub_100011004(v73, &qword_100028C90, &qword_10001D990);
  }

  v100 = 0;
  v101 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v75._countAndFlagsBits = 0xD000000000000026;
  v75._object = 0x800000010001FBD0;
  String.append(_:)(v75);
  v102 = v68;
  sub_100008D88(&unk_100028C70, &qword_10001D9E0);
  _print_unlocked<A, B>(_:_:)();
  v76 = v100;
  v77 = v101;
  sub_100009A68();
  swift_allocError();
  *v78 = v76;
  v78[1] = v77;
  swift_willThrow();

  v79 = v90;
  v80 = *(v89 + 8);
  v80(v83, v90);
  v80(v86, v79);
  return (*(v23 + 8))(v91, v95);
}

uint64_t sub_10000FB88(int a1, void *a2, void (*a3)(void))
{
  sub_10000DBBC(a1, a2);
  a3();
}

uint64_t sub_100010BB8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_100011064(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

char *sub_100010E94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008D88(&qword_100028A70, &qword_10001D9E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_100010FA0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100011004(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008D88(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unsigned __int8 *sub_100011064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000115E0();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1000115E0()
{
  v0 = String.subscript.getter();
  v4 = sub_100011660(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100011660(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100009610(v9, 0);
  v12 = sub_1000117B8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000117B8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000119D8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000119D8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000119D8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_100011A54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int16 a5, uint64_t a6, void *a7, int a8)
{
  v42 = a8;
  v46._countAndFlagsBits = a6;
  v46._object = a7;
  v45._countAndFlagsBits = a3;
  v45._object = a4;
  v43 = a1;
  v44 = a2;
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*(sub_100008D88(&unk_100028E60, &unk_10001DA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v41 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(NSTask) init];
  (*(v18 + 56))(v16, 1, 1, v17);
  (*(v10 + 104))(v13, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
  URL.init(filePath:directoryHint:relativeTo:)();
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  (*(v18 + 8))(v21, v17);
  [v22 setExecutableURL:v25];

  sub_100008D88(&qword_100028A70, &qword_10001D9E8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10001D9F0;
  *(v26 + 32) = 28461;
  *(v26 + 40) = 0xE200000000000000;
  *(v26 + 48) = 0xD000000000000018;
  *(v26 + 56) = 0x800000010001FEE0;
  *(v26 + 64) = 21037;
  *(v26 + 72) = 0xE200000000000000;
  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v48 = 0x3A5D313A3A5BLL;
  v49 = 0xE600000000000000;
  v47 = a5;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x3A5D313A3A5B3ALL;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v47 = v42;
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  v30 = v49;
  *(v26 + 80) = v48;
  *(v26 + 88) = v30;
  v31 = v44;
  *(v26 + 96) = v43;
  *(v26 + 104) = v31;
  v48 = 0;
  v49 = 0xE000000000000000;

  _StringGuts.grow(_:)(57);
  v32._countAndFlagsBits = 0xD000000000000031;
  v32._object = 0x800000010001FF00;
  String.append(_:)(v32);
  v47 = a5;
  v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  String.append(_:)(v45);
  v35._countAndFlagsBits = 32;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  String.append(_:)(v46);
  v36 = v49;
  *(v26 + 112) = v48;
  *(v26 + 120) = v36;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 setArguments:isa];

  v48 = 0;
  if ([v22 launchAndReturnError:&v48])
  {
    v38 = v48;
  }

  else
  {
    v39 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v22;
}

void sub_100011F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v82 = a6;
  v80 = a3;
  v81 = a5;
  v77 = a4;
  v78 = a1;
  v79 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  __chkstk_darwin();
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchQoS();
  v70 = *(v72 - 8);
  v9 = *(v70 + 64);
  __chkstk_darwin();
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v11 + 16) = 1024;
  bzero((v11 + 32), 0x400uLL);
  bufsize = 1024;
  if (_NSGetExecutablePath((v11 + 32), &bufsize) == -1)
  {

    __break(1u);
  }

  v12 = String.init(cString:)();
  v14 = v13;
  v76 = sub_100008D88(&qword_1000288D8, &unk_10001D600);
  v15 = swift_allocObject();
  v75 = xmmword_10001D5E0;
  *(v15 + 16) = xmmword_10001D5E0;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = 0xD000000000000052;
  *(v15 + 40) = 0x800000010001FE00;
  print(_:separator:terminator:)();

  v16 = getpgrp();
  v17 = getegid();
  v18 = getuid();
  v19 = getpid();
  sub_100008D88(&qword_100028A70, &qword_10001D9E8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10001DA00;
  *(v20 + 32) = v12;
  *(v20 + 40) = v14;
  *(v20 + 48) = 0xD000000000000015;
  *(v20 + 56) = 0x800000010001FC40;
  LOWORD(aBlock) = NWEndpoint.Port.rawValue.getter();
  *(v20 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v20 + 72) = v21;
  *(v20 + 80) = IPv6Address.debugDescription.getter();
  *(v20 + 88) = v22;
  *(v20 + 96) = IPv6Address.debugDescription.getter();
  *(v20 + 104) = v23;
  LODWORD(aBlock) = v18;
  *(v20 + 112) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v20 + 120) = v24;
  LODWORD(aBlock) = v17;
  *(v20 + 128) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v20 + 136) = v25;
  LODWORD(aBlock) = v19;
  *(v20 + 144) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v20 + 152) = v26;
  LODWORD(aBlock) = v16;
  *(v20 + 160) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v20 + 168) = v27;
  v28 = v83;
  v29 = sub_100014558();

  if (v28)
  {

    return;
  }

  v68 = 0;
  v83 = v29;
  aBlock = 0;
  v85 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  aBlock = 0x6D65722F706D742FLL;
  v85 = 0xEF2E6C746365746FLL;
  v90 = v19;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x2D7265706C65682ELL;
  v31._object = 0xED00007964616572;
  String.append(_:)(v31);
  v32 = objc_opt_self();
  v33 = [v32 defaultManager];
  v34 = String._bridgeToObjectiveC()();
  v35 = [v33 fileExistsAtPath:v34];

  if ((v35 & 1) == 0)
  {
    v36 = 62;
    while (1)
    {
      --v36;
      v37 = v83;
      if (!v36 || ([v83 isRunning] & 1) == 0)
      {
        break;
      }

      sleep(1u);
      v38 = [v32 defaultManager];
      v39 = String._bridgeToObjectiveC()();
      v40 = [v38 fileExistsAtPath:v39];

      if (v40)
      {
        goto LABEL_9;
      }
    }

    sub_100009A68();
    swift_allocError();
    *v57 = 0xD00000000000001ALL;
    v57[1] = 0x800000010001FE60;
    swift_willThrow();
    goto LABEL_16;
  }

LABEL_9:

  v41 = [v32 defaultManager];
  v42 = String._bridgeToObjectiveC()();

  aBlock = 0;
  v43 = [v41 removeItemAtPath:v42 error:&aBlock];

  v44 = aBlock;
  if (!v43)
  {
    v58 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_14;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v75;
  *(v45 + 56) = &type metadata for String;
  *(v45 + 32) = 0xD000000000000037;
  *(v45 + 40) = 0x800000010001FE80;
  v46 = v44;
  print(_:separator:terminator:)();

  v47 = IPv6Address.debugDescription.getter();
  v49 = v48;
  v50 = NWEndpoint.Port.rawValue.getter();
  v51 = IPv6Address.debugDescription.getter();
  v53 = v52;
  v54 = NWEndpoint.Port.rawValue.getter();
  v55 = v68;
  v56 = sub_100011A54(v78, v79, v47, v49, v50, v51, v53, v54);
  if (v55)
  {

LABEL_14:

    return;
  }

  v59 = v56;

  v60 = SIG_IGN.getter();
  signal(2, v60);
  sub_100008A2C(0, &qword_100028C80, OS_dispatch_source_ptr);
  sub_100008A2C(0, &qword_1000288B0, OS_dispatch_queue_ptr);
  v61 = static OS_dispatch_queue.main.getter();
  static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v62 = swift_allocObject();
  *(v62 + 16) = v59;
  v88 = sub_100012A50;
  v89 = v62;
  aBlock = _NSConcreteStackBlock;
  v85 = 1107296256;
  v86 = sub_100008C74;
  v87 = &unk_100025730;
  v63 = _Block_copy(&aBlock);
  v64 = v59;
  v65 = v69;
  static DispatchQoS.unspecified.getter();
  v66 = v71;
  sub_100008CD0();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v63);
  (*(v73 + 8))(v66, v74);
  (*(v70 + 8))(v65, v72);

  OS_dispatch_source.resume()();
  v37 = v83;
  [v83 waitUntilExit];

  swift_unknownObjectRelease();
LABEL_16:
}

uint64_t sub_1000127C8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008D88(&qword_1000288D8, &unk_10001D600);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10001D5E0;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 32) = 0xD000000000000012;
  *(v7 + 40) = 0x800000010001FEC0;
  print(_:separator:terminator:)();

  result = kill([a1 processIdentifier], 9);
  if (result)
  {
    v9 = sub_10000DB58();
    (*(v3 + 16))(v6, v9, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = errno.getter();
      sub_100009B88();
      swift_allocError();
      *v15 = v14;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v16;
      *v13 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to shut down SSH: %@", v12, 0xCu);
      sub_100009BDC(v13);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_100012A18()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100012A70()
{
  result = qword_100028938;
  if (!qword_100028938)
  {
    sub_100009EF4(&qword_100028930, qword_10001D880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028938);
  }

  return result;
}

uint64_t sub_100012ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v44 = a2;
  v36 = a3;
  v45 = a1;
  v33 = type metadata accessor for IPv6Address();
  v42 = *(v33 - 8);
  v4 = v42[8];
  v5 = __chkstk_darwin(v33);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v32 - v7;
  v8 = type metadata accessor for NWEndpoint.Port();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NWEndpoint.Host();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NWProtocolTCP.Options();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveCount.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveInterval.setter();
  dispatch thunk of NWProtocolTCP.Options.connectionTimeout.setter();
  type metadata accessor for NWConnection();
  v37 = v14;
  v21 = *(v14 + 16);
  v39 = v13;
  v22 = v13;
  v23 = v33;
  v21(v17, v45, v22);
  v40 = v9;
  v41 = v8;
  (*(v9 + 16))(v12, v44, v8);
  type metadata accessor for NWParameters();

  NWParameters.__allocating_init(tls:tcp:)();
  v24 = v36;
  v25 = NWConnection.__allocating_init(host:port:using:)();
  v26 = v42[2];
  v27 = v34;
  v26(v34, v24, v23);
  v28 = v35;
  v26(v35, v43, v23);
  v29 = (*(v38 + 152))(v25, v27, v28);

  v30 = v42[1];
  v30(v43, v23);
  v30(v24, v23);
  (*(v40 + 8))(v44, v41);
  (*(v37 + 8))(v45, v39);
  return v29;
}

uint64_t sub_100012E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_100012EEC(a1, a2, a3);
  return v9;
}

void *sub_100012EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a1;
  v4 = v3;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Logger();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for IPv6Address();
  v60 = *(v51 - 8);
  v8 = v60[8];
  v9 = __chkstk_darwin(v51);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v44 - v11;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v3[4] = 0;
  v48 = sub_10000A404();
  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);
  v20 = sub_10000D644();
  v22 = *v20;
  v21 = v20[1];
  v44 = v20;

  v58 = v22;
  v59 = v21;
  v23._countAndFlagsBits = 0xD000000000000016;
  v23._object = 0x800000010001FF40;
  String.append(_:)(v23);
  static DispatchQoS.unspecified.getter();
  v58 = &_swiftEmptyArrayStorage;
  sub_100014450(&qword_100028928, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100008D88(&qword_100028930, qword_10001D880);
  sub_100012A70();
  v24 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v49 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v50);
  v3[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_exitSemaphore;
  *(v3 + v25) = dispatch_semaphore_create(0);
  type metadata accessor for UtunSocket();
  v26 = v3[5];
  v27 = v60[2];
  v28 = v52;
  v27(v52, v56, v24);
  v29 = v53;
  v27(v53, v57, v24);
  v30 = v26;
  v31 = v54;
  v32 = sub_100017D64(v30, v28, v29);
  if (v31)
  {

    v33 = v60[1];
    v33(v57, v24);
    v33(v56, v24);
    v34 = v4[4];

    type metadata accessor for TCPPacketTunnelClient();
    v35 = *(*v4 + 48);
    v36 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37 = v55;
    v3[2] = v32;
    v3[3] = v37;
    v39 = *v44;
    v38 = v44[1];

    v40 = v45;
    Logger.init(subsystem:category:)();
    (*(v46 + 32))(v4 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_logger, v40, v47);
    v41 = v4[3];

    sub_10000B858(sub_1000134EC);
    NWConnection.stateUpdateHandler.setter();

    v42 = v60[1];
    v42(v57, v24);
    v42(v56, v24);
  }

  return v4;
}

uint64_t type metadata accessor for TCPPacketTunnelClient()
{
  result = qword_100029470;
  if (!qword_100029470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000134F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWConnection.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v25 - v10;
  v27 = *(v5 + 16);
  v28 = a1;
  v27(v25 - v10, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v9;
    v15 = v14;
    v25[0] = swift_slowAlloc();
    v29 = v25[0];
    *v15 = 136315138;
    sub_100014450(&qword_100028A58, &type metadata accessor for NWConnection.State);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v25[1] = v2;
    v18 = v17;
    v19 = *(v5 + 8);
    v19(v11, v4);
    v20 = sub_1000091D0(v16, v18, &v29);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "NWConnection in state %s", v15, 0xCu);
    sub_100009D1C(v25[0]);

    v9 = v26;
  }

  else
  {

    v19 = *(v5 + 8);
    v19(v11, v4);
  }

  v27(v9, v28, v4);
  result = (*(v5 + 88))(v9, v4);
  if (result == enum case for NWConnection.State.waiting(_:) || result == enum case for NWConnection.State.failed(_:))
  {
    v19(v9, v4);
    return sub_100014024();
  }

  if (result != enum case for NWConnection.State.setup(_:) && result != enum case for NWConnection.State.preparing(_:) && result != enum case for NWConnection.State.ready(_:))
  {
    if (result != enum case for NWConnection.State.cancelled(_:))
    {
      return (v19)(v9, v4);
    }

    return sub_100014024();
  }

  return result;
}

uint64_t sub_100013890()
{
  v2 = v0;
  type metadata accessor for TCPPacketTunnel();
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = sub_100014808(v3, v4);
  v6 = *(*v4 + 240);

  v7 = v6(sub_1000139DC, v5);
  v9 = v8;

  if (!v1)
  {
    sub_100009FE4(v7, v9);

    v11 = *(v2 + 40);
    v12 = NWConnection.start(queue:)();
    (*(*v5 + 128))(v12);
    v13 = *(v2 + 32);
    *(v2 + 32) = v5;
  }
}

uint64_t sub_100013A00()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v49[-v8];
  v10 = type metadata accessor for NWConnection.State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v49[-v16];
  v18 = *(v0 + 24);

  NWConnection.state.getter();

  v19 = (*(v11 + 88))(v17, v10);
  if (v19 == enum case for NWConnection.State.setup(_:) || v19 == enum case for NWConnection.State.preparing(_:) || v19 == enum case for NWConnection.State.ready(_:))
  {
    v53 = v7;
    (*(v3 + 16))(v9, v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_logger, v2);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v52 = v2;
      v25 = v24;
      v51 = swift_slowAlloc();
      v54[0] = v51;
      *v25 = 136315138;
      v50 = v23;
      v26 = *(v1 + 24);
      NWConnection.state.getter();
      sub_100014450(&qword_100028A58, &type metadata accessor for NWConnection.State);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v11 + 8))(v15, v10);
      v30 = sub_1000091D0(v27, v29, v54);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v50, "NWConnection in state %s at deinit", v25, 0xCu);
      sub_100009D1C(v51);

      v2 = v52;
    }

    (*(v3 + 8))(v9, v2);
    v7 = v53;
  }

  else
  {
    (*(v11 + 8))(v17, v10);
  }

  v31 = *(**(v1 + 16) + 152);

  v31(v32);
  v34 = v33;

  if (v34)
  {

    (*(v3 + 16))(v7, v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_logger, v2);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v38;
      *v37 = 136315138;
      v39 = (*(**(v1 + 16) + 152))();
      v53 = v7;
      v54[0] = v39;
      v54[1] = v40;
      sub_1000143FC();
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;

      v44 = sub_1000091D0(v41, v43, &v55);

      *(v37 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "Utun in state %s at deinit, not disconnected.", v37, 0xCu);
      sub_100009D1C(v38);

      (*(v3 + 8))(v53, v2);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }
  }

  v45 = *(v1 + 16);

  v46 = *(v1 + 24);

  v47 = *(v1 + 32);

  (*(v3 + 8))(v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_logger, v2);
  return v1;
}

uint64_t sub_100013FCC()
{
  sub_100013A00();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int sub_100014024()
{
  v1 = v0;
  v2 = type metadata accessor for NWConnection.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  NWConnection.state.getter();
  v8 = (*(v3 + 88))(v6, v2);
  if (v8 == enum case for NWConnection.State.waiting(_:) || v8 == enum case for NWConnection.State.failed(_:))
  {
LABEL_9:
    (*(v3 + 8))(v6, v2);
    goto LABEL_10;
  }

  if (v8 != enum case for NWConnection.State.cancelled(_:))
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Shutting down utun before NWConnection is shut down", v12, 2u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v13 = sub_10000A0C0();
  (*(**(v1 + 16) + 272))(v13);
  v14 = *(v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_exitSemaphore);
  return OS_dispatch_semaphore.signal()();
}

unint64_t sub_1000143FC()
{
  result = qword_100028A78;
  if (!qword_100028A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A78);
  }

  return result;
}

uint64_t sub_100014450(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000144A0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100014558()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSTask) init];
  v7 = String._bridgeToObjectiveC()();
  [v6 setLaunchPath:v7];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 setArguments:isa];

  [v6 launch];
  v9 = getpgid([v6 processIdentifier]);
  if (tcsetpgrp(0, v9))
  {
    v10 = sub_10000DB58();
    (*(v2 + 16))(v5, v10, v1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[1] = v0;
      v15 = v14;
      *v13 = 138412290;
      v16 = errno.getter();
      sub_100009B88();
      swift_allocError();
      *v17 = v16;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v18;
      *v15 = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to set sudo process to foreground: %@", v13, 0xCu);
      sub_100009BDC(v15);
    }

    (*(v2 + 8))(v5, v1);
  }

  kill([v6 processIdentifier], 19);
  return v6;
}

uint64_t sub_100014808(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_100014858(a1, a2);
  return v7;
}

uint64_t sub_100014858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v30 = a1;
  v4 = type metadata accessor for Logger();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v25 = sub_10000A404();
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v15 = sub_10000D644();
  v17 = *v15;
  v16 = v15[1];

  v33 = v17;
  v34 = v16;
  v18._object = 0x800000010001FFC0;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_100015C80(&qword_100028928, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100008D88(&qword_100028930, qword_10001D880);
  sub_100012A70();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  *(v2 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = OBJC_IVAR____TtC15SSHPacketTunnel15TCPPacketTunnel_exitSemaphore;
  *(v3 + v19) = dispatch_semaphore_create(0);
  v20 = v30;
  *(v3 + 16) = v29;
  *(v3 + 24) = v20;
  v21 = *v15;
  v22 = v15[1];

  v23 = v28;
  Logger.init(subsystem:category:)();
  (*(v31 + 32))(v3 + OBJC_IVAR____TtC15SSHPacketTunnel15TCPPacketTunnel_logger, v23, v32);
  return v3;
}

uint64_t sub_100014BDC()
{
  v1 = *(v0 + 24);

  NWConnection.receive(minimumIncompleteLength:maximumLength:completion:)();
}

uint64_t sub_100014C4C(uint64_t a1, unint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for NWConnection.SendCompletion();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    LODWORD(v10) = 0;
    if (v9 != 2)
    {
      goto LABEL_12;
    }

    v12 = *(v22 + 16);
    v11 = *(v22 + 24);
    v13 = __OFSUB__(v11, v12);
    v10 = v11 - v12;
    if (!v13)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v10) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      goto LABEL_15;
    }

    v10 = v10;
LABEL_10:
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v10 >> 16))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (v9)
  {
    goto LABEL_8;
  }

  LODWORD(v10) = BYTE6(a2);
LABEL_12:
  __src = bswap32(v10) >> 16;
  v14 = sub_1000159B8(&__src, &v24);
  v16 = v15;
  v19[0] = *(v2 + 24);
  *v8 = sub_100015A70;
  v8[1] = v2;
  v21 = enum case for NWConnection.SendCompletion.contentProcessed(_:);
  v20 = v5[13];
  v20(v8);
  v19[1] = type metadata accessor for NWConnection.ContentContext();
  sub_100015A94(v14, v16 & 0xFFFFFFFFFFFFFFLL);

  v19[2] = a2;
  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  sub_100009B34(v14, v16 & 0xFFFFFFFFFFFFFFLL);
  v17 = v5[1];
  v17(v8, v4);
  *v8 = sub_100015AE8;
  v8[1] = v2;
  (v20)(v8, v21, v4);

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  sub_100009B34(v14, v16 & 0xFFFFFFFFFFFFFFLL);
  return (v17)(v8, v4);
}

uint64_t sub_100014F14(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = sub_100008D88(&qword_100028C58, "R?");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for NWError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_100015C10(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011004(v9, &qword_100028C58, "R?");
  }

  v31 = a3;
  (*(v11 + 32))(v17, v9, v10);
  v19 = *(v11 + 16);
  v19(v15, v17, v10);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v22 = 138412290;
    sub_100015C80(&unk_100028C60, &type metadata accessor for NWError);
    swift_allocError();
    v30 = a2;
    v19(v23, v15, v10);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    v25 = *(v11 + 8);
    v25(v15, v10);
    *(v22 + 4) = v24;
    v26 = v29;
    *v29 = v24;
    a2 = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, v31, v22, 0xCu);
    sub_100011004(v26, &qword_100028C90, &qword_10001D990);
  }

  else
  {

    v25 = *(v11 + 8);
    v25(v15, v10);
  }

  v27 = *(a2 + 24);
  NWConnection.cancel()();
  return (v25)(v17, v10);
}

uint64_t sub_10001526C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC15SSHPacketTunnel15TCPPacketTunnel_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100015330(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100008D88(&qword_100028C58, "R?");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for NWError();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v55 - v20;
  if (a3)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "TCP connection closed when reading header", v24, 2u);
    }

    v25 = *(v5 + 24);
    NWConnection.cancel()();
    return;
  }

  sub_100015C10(a4, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v21, v13, v14);
    v29 = *(v15 + 16);
    v29(v19, v21, v14);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v56 = v32;
      v57 = swift_slowAlloc();
      *v32 = 138412290;
      sub_100015C80(&unk_100028C60, &type metadata accessor for NWError);
      swift_allocError();
      v29(v33, v19, v14);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = *(v15 + 8);
      v35(v19, v14);
      v36 = v56;
      v37 = v57;
      *(v56 + 1) = v34;
      *v37 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "TCP connection error %@ when reading header, shutting down...", v36, 0xCu);
      sub_100011004(v37, &qword_100028C90, &qword_10001D990);
    }

    else
    {

      v35 = *(v15 + 8);
      v35(v19, v14);
    }

    v39 = *(v5 + 24);
    NWConnection.cancel()();
    v35(v21, v14);
    return;
  }

  sub_100011004(v13, &qword_100028C58, "R?");
  if (a2 >> 60 == 15)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No error on connection, but Data was nil when reading header", v28, 2u);
    }

    return;
  }

  v38 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v38)
    {
      if (BYTE6(a2) != 2)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v38 != 2)
  {
    goto LABEL_32;
  }

  v41 = *(a1 + 16);
  v40 = *(a1 + 24);
  v42 = v40 - v41;
  if (__OFSUB__(v40, v41))
  {
    __break(1u);
LABEL_22:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_43;
    }

    v42 = HIDWORD(a1) - a1;
  }

  sub_100015A94(a1, a2);
  if (v42 == 2)
  {
LABEL_25:
    if (v38 == 2)
    {
      v50 = *(a1 + 16);
      v51 = *(a1 + 24);
      v46 = __DataStorage._bytes.getter();
      if (v46)
      {
        v52 = __DataStorage._offset.getter();
        if (__OFSUB__(v50, v52))
        {
          goto LABEL_46;
        }

        v46 = (v46 + v50 - v52);
      }

      if (!__OFSUB__(v51, v50))
      {
        __DataStorage._length.getter();
        if (!v46)
        {
LABEL_49:
          __break(1u);
          return;
        }

LABEL_40:
        v53 = *v46;
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    if (v38 != 1)
    {
LABEL_41:
      v54 = *(v5 + 24);

      NWConnection.receive(minimumIncompleteLength:maximumLength:completion:)();

      sub_100009B20(a1, a2);
      return;
    }

    if (a1 <= a1 >> 32)
    {
      v43 = __DataStorage._bytes.getter();
      if (!v43)
      {
        __DataStorage._length.getter();
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v44 = v43;
      v45 = __DataStorage._offset.getter();
      if (!__OFSUB__(a1, v45))
      {
        v46 = (a1 - v45 + v44);
        __DataStorage._length.getter();
        if (!v46)
        {
          goto LABEL_48;
        }

        goto LABEL_40;
      }

      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

LABEL_32:
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Header read guaranteed to be length 2 by Network.framework", v49, 2u);
  }

  sub_100009B20(a1, a2);
}

uint64_t sub_1000159B8(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100015A94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for TCPPacketTunnel()
{
  result = qword_100029490;
  if (!qword_100029490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100015B60()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100015C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008D88(&qword_100028C58, "R?");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015C80(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100015CD4(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100008D88(&qword_100028C58, "R?");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v41 - v12;
  v14 = type metadata accessor for NWError();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  if (a3)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "TCP connection closed when reading message", v24, 2u);
    }

    v25 = *(v5 + 24);
    NWConnection.cancel()();
  }

  else
  {
    sub_100015C10(a4, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_100011004(v13, &qword_100028C58, "R?");
      if (a2 >> 60 == 15)
      {
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "No error on connection, but Data was nil when reading header", v28, 2u);
        }
      }

      else
      {
        v38 = *(**(v5 + 16) + 264);
        sub_100015A94(a1, a2);
        v38(a1, a2);
        v39 = *(v5 + 24);

        NWConnection.receive(minimumIncompleteLength:maximumLength:completion:)();

        sub_100009B20(a1, a2);
      }
    }

    else
    {
      (*(v15 + 32))(v21, v13, v14);
      v29 = *(v15 + 16);
      v29(v19, v21, v14);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v41 = v32;
        v42 = swift_slowAlloc();
        *v32 = 138412290;
        sub_100015C80(&unk_100028C60, &type metadata accessor for NWError);
        swift_allocError();
        v29(v33, v19, v14);
        v34 = _swift_stdlib_bridgeErrorToNSError();
        v35 = *(v15 + 8);
        v35(v19, v14);
        v36 = v41;
        v37 = v42;
        *(v41 + 1) = v34;
        *v37 = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "TCP connection error %@ when reading message, shutting down...", v36, 0xCu);
        sub_100011004(v37, &qword_100028C90, &qword_10001D990);
      }

      else
      {

        v35 = *(v15 + 8);
        v35(v19, v14);
      }

      v40 = *(v5 + 24);
      NWConnection.cancel()();
      v35(v21, v14);
    }
  }
}

uint64_t sub_1000161D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v157 = a3;
  v158 = a5;
  v153 = a1;
  v154 = a4;
  v156 = a2;
  v5 = type metadata accessor for NWEndpoint.Host();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v143 = &v125[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for IPv6Address();
  v150 = *(v8 - 8);
  v9 = *(v150 + 64);
  v10 = __chkstk_darwin(v8);
  v146 = &v125[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v136 = &v125[-v13];
  v14 = __chkstk_darwin(v12);
  v142 = &v125[-v15];
  v16 = __chkstk_darwin(v14);
  v141 = &v125[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v125[-v19];
  __chkstk_darwin(v18);
  v22 = &v125[-v21];
  v23 = type metadata accessor for NWEndpoint.Port();
  isa = v23[-1].isa;
  v25 = isa[8];
  v26 = __chkstk_darwin(v23);
  v132 = &v125[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v139 = &v125[-v29];
  __chkstk_darwin(v28);
  v31 = &v125[-v30];
  v32 = type metadata accessor for Logger();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v131 = &v125[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __chkstk_darwin(v35);
  v133 = &v125[-v38];
  __chkstk_darwin(v37);
  v40 = &v125[-v39];
  v41 = sub_10000DB58();
  v151 = v33;
  v42 = v33;
  v43 = v150;
  v44 = *(v42 + 16);
  v135 = v41;
  v152 = v32;
  v137 = v42 + 16;
  v134 = v44;
  v44(v40);
  v45 = isa[2];
  v155 = v23;
  v147 = v45;
  v148 = isa + 2;
  v45(v31, v157, v23);
  v46 = *(v43 + 16);
  v46(v22, v154, v8);
  v138 = v20;
  v145 = v8;
  v149 = v46;
  v46(v20, v158, v8);
  v47 = v156;

  v48 = v47;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();

  v51 = os_log_type_enabled(v49, v50);
  v130 = isa;
  v140 = v43 + 16;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = v43;
    v126 = v50;
    v54 = v52;
    v127 = swift_slowAlloc();
    v159 = v127;
    *v54 = 136315906;
    *(v54 + 4) = sub_1000091D0(v153, v48, &v159);
    *(v54 + 12) = 2080;
    v55 = NWEndpoint.Port.debugDescription.getter();
    v57 = v56;
    v128 = isa[1];
    v128(v31, v155);
    v58 = sub_1000091D0(v55, v57, &v159);

    *(v54 + 14) = v58;
    *(v54 + 22) = 2080;
    v59 = IPv6Address.debugDescription.getter();
    v61 = v60;
    v62 = *(v53 + 8);
    v63 = v145;
    v62(v22, v145);
    v64 = sub_1000091D0(v59, v61, &v159);

    *(v54 + 24) = v64;
    *(v54 + 32) = 2080;
    v65 = v138;
    v66 = IPv6Address.debugDescription.getter();
    v68 = v67;
    v129 = v62;
    v62(v65, v63);
    v69 = sub_1000091D0(v66, v68, &v159);

    *(v54 + 34) = v69;
    _os_log_impl(&_mh_execute_header, v49, v126, "SSH tunnel callback started. Connecting to %s:%s and creating a utun from %s -> %s", v54, 0x2Au);
    swift_arrayDestroy();

    v138 = *(v151 + 8);
    (v138)(v40, v152);
    v70 = v63;
    v71 = v155;
  }

  else
  {

    v72 = *(v43 + 8);
    v73 = v145;
    v72(v138, v145);
    v129 = v72;
    v72(v22, v73);
    v71 = v155;
    v128 = isa[1];
    v128(v31, v155);
    v138 = *(v151 + 8);
    (v138)(v40, v152);
    v70 = v73;
  }

  type metadata accessor for TCPPacketTunnelClient();

  v74 = v143;
  NWEndpoint.Host.init(_:)();
  v75 = v139;
  v147(v139, v157, v71);
  v76 = v141;
  v77 = v154;
  v78 = v149;
  v149(v141, v154, v70);
  v79 = v142;
  v78(v142, v158, v70);
  sub_100012AD4();
  v80 = v144;
  result = sub_100012ADC(v74, v75, v76, v79);
  v82 = v146;
  if (!v80)
  {
    v83 = result;
    v84 = v77;
    v85 = v155;
    v86 = (*(*result + 176))();
    v87 = (*(*v83[2] + 176))(v86);
    v89 = 1853191285;
    if (v88)
    {
      v89 = v87;
    }

    v144 = v89;
    if (v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = 0xE400000000000000;
    }

    v134(v133, v135, v152);
    v147(v132, v157, v85);
    v91 = v149;
    v149(v136, v84, v70);
    v91(v82, v158, v70);
    v92 = v156;

    v93 = v92;
    v94 = v90;
    v95 = v82;
    v96 = Logger.logObject.getter();
    LODWORD(v91) = static os_log_type_t.info.getter();

    LODWORD(v158) = v91;
    if (os_log_type_enabled(v96, v91))
    {
      v97 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v159 = v157;
      *v97 = 136316162;
      *(v97 + 4) = sub_1000091D0(v153, v93, &v159);
      *(v97 + 12) = 2080;
      v98 = v132;
      v99 = NWEndpoint.Port.debugDescription.getter();
      v101 = v100;
      v128(v98, v155);
      v102 = sub_1000091D0(v99, v101, &v159);

      *(v97 + 14) = v102;
      *(v97 + 22) = 2080;
      *(v97 + 24) = sub_1000091D0(v144, v94, &v159);
      *(v97 + 32) = 2080;
      v103 = v136;
      v104 = IPv6Address.debugDescription.getter();
      v106 = v105;
      v155 = v96;
      v156 = v94;
      v107 = v145;
      v108 = v129;
      v129(v103, v145);
      v109 = sub_1000091D0(v104, v106, &v159);

      *(v97 + 34) = v109;
      *(v97 + 42) = 2080;
      v110 = v146;
      v111 = IPv6Address.debugDescription.getter();
      v113 = v112;
      v108(v110, v107);
      v94 = v156;
      v114 = sub_1000091D0(v111, v113, &v159);

      *(v97 + 44) = v114;
      v115 = v155;
      _os_log_impl(&_mh_execute_header, v155, v158, "SSH tunnel connected to %s:%s on %s from %s -> %s.", v97, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      v116 = v129;
      v129(v95, v70);
      v116(v136, v70);
      v128(v132, v155);
    }

    v117 = v138;
    v118 = (v138)(v133, v152);
    ((*v83)[20])(v118);
    v119 = v131;
    v134(v131, v135, v152);

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v159 = v123;
      *v122 = 136315138;
      v124 = sub_1000091D0(v144, v94, &v159);

      *(v122 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v120, v121, "SSH tunnel exited. %s is now closed.", v122, 0xCu);
      sub_100009D1C(v123);
    }

    else
    {
    }

    return v117(v119, v152);
  }

  return result;
}

uint64_t NWListener.State.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for NWListener.State.waiting(_:))
  {
    v8 = 0x676E6974696177;
  }

  else if (v7 == enum case for NWListener.State.failed(_:))
  {
    v8 = 0x64656C696166;
  }

  else
  {
    if (v7 == enum case for NWListener.State.setup(_:))
    {
      return 0x7075746573;
    }

    if (v7 == enum case for NWListener.State.ready(_:))
    {
      return 0x7964616572;
    }

    if (v7 == enum case for NWListener.State.cancelled(_:))
    {
      return 0x656C6C65636E6163;
    }

    v8 = 0x6E776F6E6B6E75;
  }

  (*(v3 + 8))(v6, v2);
  return v8;
}

ssize_t FileDescriptor._recv(into:)(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  result = recv(a3, a1, v4, 0);
  if (result < 0)
  {
    return errno.getter();
  }

  return result;
}

void sub_1000172AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a1;
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008D88(&unk_100028E60, &unk_10001DA10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(NSTask) init];
  (*(v15 + 56))(v13, 1, 1, v14);
  (*(v6 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  URL.init(filePath:directoryHint:relativeTo:)();
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  (*(v15 + 8))(v18, v14);
  [v19 setExecutableURL:v22];

  sub_100008D88(&qword_100028A70, &qword_10001D9E8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10001D9F0;
  *(v23 + 32) = v28;
  *(v23 + 40) = a2;
  *(v23 + 48) = 0x3674656E69;
  *(v23 + 56) = 0xE500000000000000;

  *(v23 + 64) = IPv6Address.debugDescription.getter();
  *(v23 + 72) = v24;
  *(v23 + 80) = IPv6Address.debugDescription.getter();
  *(v23 + 88) = v25;
  *(v23 + 96) = 0x656C786966657270;
  *(v23 + 104) = 0xE90000000000006ELL;
  *(v23 + 112) = 3682865;
  *(v23 + 120) = 0xE300000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setArguments:isa];

  v31 = v19;
  sub_100009F4C(5, 1u, sub_10001A8F4);
}

void sub_100017618(uint64_t a1, uint64_t a2)
{
  v24[0] = a1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008D88(&unk_100028E60, &unk_10001DA10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(NSTask) init];
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v4 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  URL.init(filePath:directoryHint:relativeTo:)();
  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  (*(v13 + 8))(v16, v12);
  [v17 setExecutableURL:v20];

  sub_100008D88(&qword_100028A70, &qword_10001D9E8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10001D5D0;
  *(v21 + 32) = v24[0];
  *(v21 + 40) = a2;
  *(v21 + 48) = 7697517;
  *(v21 + 56) = 0xE300000000000000;
  v24[7] = 9000;

  *(v21 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v21 + 72) = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setArguments:isa];

  v24[4] = v17;
  sub_100009F4C(5, 1u, sub_10001AA00);
}

uint64_t sub_10001795C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void sub_100017A28()
{

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v12 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    v4 = *(v0 + 136);
    if (v4)
    {
      v5 = *(v0 + 128);

      v6._countAndFlagsBits = v5;
      v6._object = v4;
      String.append(_:)(v6);
      v7._countAndFlagsBits = 41;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);

      v8 = 0x657463656E6E6F63;
      v9 = 0xEA00000000002864;
    }

    else
    {
      v9 = 0xEC00000064657463;
      v8 = 0x656E6E6F63736964;
    }

    v10 = sub_1000091D0(v8, v9, &v12);

    *(v2 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Changed to state %s", v2, 0xCu);
    sub_100009D1C(v3);
  }

  else
  {
  }
}

uint64_t sub_100017BF8()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

void sub_100017C44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  sub_100017A28();
}

void (*sub_100017C9C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100017CF0;
}

void sub_100017CF0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_100017A28();
  }
}

uint64_t sub_100017D24()
{
  result = (*(*v0 + 152))();
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100017D64(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_100017DCC(a1, a2, a3);
  return v9;
}

uint64_t sub_100017DCC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a1;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer);
  v14 = type metadata accessor for __DataStorage();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = __DataStorage.init(length:)();
  *v13 = 0xFFFF00000000;
  v13[1] = v17 | 0x4000000000000000;
  v18 = sub_10000D644();
  v20 = *v18;
  v19 = v18[1];

  Logger.init(subsystem:category:)();
  v68 = v8;
  v69 = v7;
  v21 = *(v8 + 32);
  v66 = OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_logger;
  v21(v4 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_logger, v11, v7);
  v22 = OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelSourceAddress;
  v23 = type metadata accessor for IPv6Address();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v67 = v22;
  v25(v4 + v22, a2, v23);
  v65 = OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelDestinationAddress;
  v25(v4 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelDestinationAddress, a3, v23);
  v26 = socket(32, 2, 2);
  if (v26 < 0)
  {
    v42 = errno.getter();
    sub_100009B88();
    v43 = swift_allocError();
    *v44 = v42;
    sub_1000186B0();
    swift_allocError();
    *v45 = v43;
    swift_willThrow();

    v46 = *(v24 + 8);
    v46(a3, v23);
    v47 = a2;
LABEL_9:
    v46(v47, v23);
    (*(v68 + 8))(v4 + v66, v69);
    v58 = v12[1];
    sub_100018704(*v12);
    v46(v4 + v67, v23);
    v46(v4 + v65, v23);
    sub_100009B34(*(v4 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer), *(v4 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer + 8));
    type metadata accessor for UtunSocket();
    v59 = *(*v4 + 48);
    v60 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v27 = v26;
  v63 = a3;
  v64 = a2;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v28 = sub_100018380(0x60uLL, 0xD00000000000001ALL, 0x80000001000200C0, "Could not open UtunSocket: ");
  sub_10001843C(v28, v29, v30, v31, &v71 + 4);

  v32 = *sub_10000D278();
  if ((ioctl(_:_:_:)() & 0x80000000) != 0)
  {
    v48 = errno.getter();
    sub_100009B88();
    v49 = swift_allocError();
    *v50 = v48;
    v51 = v49 | 0x4000000000000000;
    sub_1000186B0();
    swift_allocError();
    *v52 = v51;
    swift_willThrow();

LABEL_8:
    v46 = *(v24 + 8);
    v46(v63, v23);
    v47 = v64;
    goto LABEL_9;
  }

  v33 = fcntl(_:_:)(v27, 3);
  v34 = fcntl(_:_:_:)(v27, 4, v33 | 4);
  v35 = v70;
  if (v34 < 0)
  {
    v53 = errno.getter();
    sub_100009B88();
    v54 = swift_allocError();
    *v55 = v53;
    v56 = v54 | 0x4000000000000000;
    sub_1000186B0();
    swift_allocError();
    *v57 = v56;
    swift_willThrow();

    goto LABEL_8;
  }

  v36 = v73;
  *(v4 + 68) = v74;
  v37 = v76;
  *(v4 + 84) = v75;
  *(v4 + 100) = v37;
  v38 = v72;
  *(v4 + 20) = v71;
  *(v4 + 36) = v38;
  *(v4 + 116) = v77;
  *(v4 + 52) = v36;
  *(v4 + 16) = v27;
  sub_100018664();
  v39 = v35;
  v40 = static OS_dispatch_source.makeReadSource(fileDescriptor:queue:)();

  v41 = *(v24 + 8);
  v41(v63, v23);
  v41(v64, v23);
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = v40;
  return v4;
}

unint64_t sub_100018380@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    a4 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      a4 = a2 & 0xFFFFFFFFFFFFLL;
    }

    a2 = (a4 << 16) | 7;
    if ((a3 & 0x1000000000000000) == 0)
    {
      if (a4 >= a1)
      {
        a2 = (a1 << 16) | 4;
      }

      return sub_10001A2F0(0xFuLL, a2, v5, v4);
    }
  }

  v7 = (a4 << 16) | 0xB;
  if ((v5 & 0x800000000000000) != 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  v9 = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)();
  v11 = v10;
  a2 = v8;
  if ((v11 & 1) == 0)
  {
    a2 = v9;
  }

  return sub_10001A2F0(0xFuLL, a2, v5, v4);
}

unint64_t sub_10001843C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v26[0] = result;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  if (!a5)
  {
    return result;
  }

  v9 = result;
  __chkstk_darwin(result);
  v21[2] = v26;
  v21[3] = v10;
  v21[4] = v11;
  v21[5] = v10;
  result = sub_10001A014(sub_10001A9E0, v21, v9, a2, a3, a4);
  if ((result & 1) == 0)
  {
    return result;
  }

  v12 = a2 >> 14;
  v13 = v9 >> 14;
  if (v9 >> 14 == v12)
  {
    return result;
  }

  v14 = 0;
  v15 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v15) = 1;
  }

  v16 = 4 << v15;
  v22 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v23 = a4 & 0xFFFFFFFFFFFFFFLL;
  v17 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v17;
  while (1)
  {
    v18 = v9 & 0xC;
    result = v9;
    if (v18 == v16)
    {
      result = sub_1000119D8(v9, a3, a4);
    }

    if (result >> 14 < v13 || result >> 14 >= v12)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v20 = result;
      if (v18 != v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v19 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25[0] = a3;
        v25[1] = v23;
        v20 = *(v25 + v19);
        if (v18 != v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        result = v22;
        if ((a3 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v20 = *(result + v19);
        if (v18 != v16)
        {
LABEL_21:
          if ((a4 & 0x1000000000000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }
      }
    }

    result = sub_1000119D8(v9, a3, a4);
    v9 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_22:
      v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_27;
    }

LABEL_25:
    if (v24 <= v9 >> 16)
    {
      goto LABEL_32;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v9 = result;
LABEL_27:
    if (__OFADD__(v14, 1))
    {
      goto LABEL_31;
    }

    *(a5 + v14++) = v20;
    if (v12 == v9 >> 14)
    {
      return result;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100018664()
{
  result = qword_100028C80;
  if (!qword_100028C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028C80);
  }

  return result;
}

unint64_t sub_1000186B0()
{
  result = qword_100028C88;
  if (!qword_100028C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C88);
  }

  return result;
}

uint64_t sub_100018704(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for UtunSocket()
{
  result = qword_100029750;
  if (!qword_100029750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22[0] = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v22[0] - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v22[0]);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion);
  v16 = *(v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion);
  v17 = *(v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion + 8);
  *v15 = a1;
  v15[1] = a2;

  sub_100018704(v16);
  memset(v24, 0, sizeof(v24));
  v18 = *(v3 + 120);
  swift_getObjectType();
  aBlock[4] = sub_100018A28;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008C74;
  aBlock[3] = &unk_100025758;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100008CD0();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v19);
  (*(v6 + 8))(v9, v22[0]);
  (*(v11 + 8))(v14, v10);

  BYTE1(v24[0]) = 32;
  WORD1(v24[0]) = 2;
  DWORD1(v24[0]) = *(v3 + 20);
  v25 = 1;
  v22[4] = &v25;
  v22[5] = v24;
  v22[6] = v3;
  v20 = v22[1];
  result = sub_100009F4C(255, 0, sub_100018A44);
  if (!v20)
  {
    return aBlock[0];
  }

  return result;
}

uint64_t sub_100018A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100018A44(unint64_t *a1@<X8>)
{
  v4 = v2;
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  *(v6 + 8) = *v7;
  v9 = *(v6 + 16);
  v29 = *v6;
  v30 = v9;
  if ((connect(*(v8 + 16), &v29, 0x20u) & 0x80000000) == 0)
  {
    *&v29.sa_len = 1853191285;
    *&v29.sa_data[6] = 0xE400000000000000;
    if (!*v7)
    {
      __break(1u);
      goto LABEL_16;
    }

    v31 = *v7 - 1;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11 = *&v29.sa_len;
    v3 = *&v29.sa_data[6];

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v28 = a1;
      v14 = swift_slowAlloc();
      *&v29.sa_len = swift_slowAlloc();
      *v14 = 136315650;
      *(v14 + 4) = sub_1000091D0(v11, v3, &v29);
      *(v14 + 12) = 2080;
      v15 = IPv6Address.debugDescription.getter();
      v17 = sub_1000091D0(v15, v16, &v29);

      *(v14 + 14) = v17;
      *(v14 + 22) = 2080;
      v18 = IPv6Address.debugDescription.getter();
      v20 = sub_1000091D0(v18, v19, &v29);

      *(v14 + 24) = v20;
      v4 = v2;
      _os_log_impl(&_mh_execute_header, v12, v13, "Setting %s IP to %s and tunnel destination to %s", v14, 0x20u);
      swift_arrayDestroy();

      a1 = v28;
    }

    sub_1000172AC(v11, v3, v8 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelSourceAddress, v8 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelDestinationAddress);
    if (!v4)
    {
      goto LABEL_10;
    }

    v21 = *v7 + 1;
    if (*v7 != -1)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v22 = errno.getter();
  sub_100009B88();
  v23 = swift_allocError();
  *v24 = v22;
  v11 = v23 | 0x8000000000000000;
  sub_1000186B0();
  v4 = swift_allocError();
  *v25 = v11;
  swift_willThrow();
  v21 = *v7 + 1;
  if (*v7 != -1)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_10:
  sub_100017618(v11, v3);
  if (!v4)
  {
    goto LABEL_13;
  }

  v21 = *v7 + 1;
  if (*v7 != -1)
  {
LABEL_14:
    *v7 = v21;
    return;
  }

  __break(1u);
LABEL_13:
  v26 = *(*v8 + 160);

  v26(v11, v3);
  v27 = *(v8 + 120);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  *a1 = v11;
  a1[1] = v3;
  v21 = *v7 + 1;
  if (*v7 != -1)
  {
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

void sub_100018DD4()
{
  v1 = v0;
  v2 = *(v0 + 120);
  swift_getObjectType();
  v3 = OS_dispatch_source.data.getter();
  if (v3 < 0)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = (v0 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  v28 = Data._Representation.subscript.getter();
  v29 = v8;
  v9 = sub_10001A498(&v28, v1);

  v10 = v28;
  v11 = v29;
  sub_10001979C(v28, v29);
  sub_100009B34(v10, v11);
  swift_endAccess();
  if (v9 <= 0)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Received 0 bytes from utun, closing connection...", v21, 2u);
    }

    (*(*v1 + 272))();
  }

  else
  {
    if (v4 == v9)
    {
      v12 = v1 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion;
      v13 = *(v1 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion);
      if (!v13)
      {
        return;
      }

      v14 = *(v12 + 8);
      v16 = *v5;
      v15 = v5[1];
      v17 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v17 == 2)
        {
          v18 = *(v16 + 16);
LABEL_16:
          sub_100015A94(v16, v15);
          if (v4 < v18)
          {
            __break(1u);
          }
        }
      }

      else if (v17)
      {
        v18 = v16;
        goto LABEL_16;
      }

      v25 = Data._Representation.subscript.getter();
      v27 = v26;
      sub_100009B34(v16, v15);
      v13(v25, v27);
      sub_100018704(v13);
      sub_100009B34(v25, v27);
      return;
    }

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v4;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v22, v23, "Expected to read %ld bytes but read %ld instead.", v24, 0x16u);
    }
  }
}

uint64_t sub_10001955C()
{
  v1 = *(v0 + 120);
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  v2 = *(v0 + 16);
  v3 = FileDescriptor._close()();
  if ((v3 & 0x100000000) == 0)
  {
    return (*(*v0 + 160))(0, 0);
  }

  v5 = v3;
  sub_100009B88();
  swift_willThrowTypedImpl();
  result = swift_allocError();
  *v6 = v5;
  return result;
}

uint64_t sub_100019620()
{
  v1 = v0;
  result = swift_beginAccess();
  if (*(v0 + 17))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 15);
    v4 = *(v1 + 15);
    swift_getObjectType();
    result = OS_dispatch_source.isCancelled.getter();
    if (result)
    {
      v5 = *(v1 + 15);
      swift_unknownObjectRelease();
      v6 = *(v1 + 17);

      v7 = OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_logger;
      v8 = type metadata accessor for Logger();
      (*(*(v8 - 8) + 8))(&v1[v7], v8);
      v9 = *&v1[OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion + 8];
      sub_100018704(*&v1[OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion]);
      v10 = OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelSourceAddress;
      v11 = type metadata accessor for IPv6Address();
      v12 = *(*(v11 - 8) + 8);
      v12(&v1[v10], v11);
      v12(&v1[OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelDestinationAddress], v11);
      sub_100009B34(*&v1[OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer], *&v1[OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer + 8]);
      v13 = *(*v1 + 48);
      v14 = *(*v1 + 52);
      return swift_deallocClassInstance();
    }
  }

  __break(1u);
  return result;
}