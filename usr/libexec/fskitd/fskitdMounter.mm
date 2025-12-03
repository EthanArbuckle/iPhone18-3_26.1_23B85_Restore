@interface fskitdMounter
- (fskitdMounter)init;
- (int)mount;
@end

@implementation fskitdMounter

- (fskitdMounter)init
{
  v5.receiver = self;
  v5.super_class = fskitdMounter;
  v2 = [(fskitdMounter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    bzero(&v2->args, 0x8A8uLL);
    v3->args.readahead = 16;
    *&v3->args.rsize = xmmword_10004CF90;
  }

  return v3;
}

- (int)mount
{
  optreset = 1;
  optind = 0;
  opterr = 0;
  *&v2 = 67109376;
  v32 = v2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = nsgetopt(self->_options, "dg:m:o:u:v");
        if (v4 <= 110)
        {
          break;
        }

        switch(v4)
        {
          case 'o':
            if (!getmntopts())
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100014E94();
              }

              return 22;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *&__endptr.st_dev = v32;
              LOWORD(__endptr.st_ino) = 1024;
              *(&__endptr.st_ino + 2) = 0;
              _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "parsed mntflags:0x%x, altflags:0x%x", &__endptr, 0xEu);
            }

            self->_mntFlags = self->_mntFlags;
            freemntopts();
            break;
          case 'u':
            self->_uidSet = 1;
            v12 = optarg;
            v13 = getpwnam(optarg);
            v14 = v12;
            if (v13)
            {
              pw_uid = v13->pw_uid;
            }

            else
            {
              do
              {
                v17 = *v14++;
                v16 = v17;
              }

              while ((v17 - 48) < 0xA);
              if (v16)
              {
                v29 = fskit_std_log();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
LABEL_58:
                  sub_100014F6C();
                }

LABEL_59:

                return 2;
              }

              pw_uid = strtol(v12, 0, 10);
            }

            self->args.mount_uid = pw_uid;
            break;
          case 'v':
            break;
          default:
            return 22;
        }
      }

      if (v4 <= 102)
      {
        break;
      }

      if (v4 == 103)
      {
        self->_gidSet = 1;
        v6 = optarg;
        v7 = getgrnam(optarg);
        v8 = v6;
        if (v7)
        {
          gr_gid = v7->gr_gid;
        }

        else
        {
          do
          {
            v11 = *v8++;
            v10 = v11;
          }

          while ((v11 - 48) < 0xA);
          if (v10)
          {
            v29 = fskit_std_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_58;
            }

            goto LABEL_59;
          }

          gr_gid = strtol(v6, 0, 10);
        }

        self->args.mount_gid = gr_gid;
      }

      else
      {
        if (v4 != 109)
        {
          return 22;
        }

        self->_modeSet = 1;
        *&__endptr.st_dev = 0;
        if ((*optarg & 0xF8) != 0x30 || (v5 = strtol(optarg, &__endptr, 8), v5 >> 31) || **&__endptr.st_dev)
        {
          v18 = fskit_std_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100014F04();
          }

          return 22;
        }

        self->args.mode = v5;
      }
    }

    if (v4 != 100)
    {
      break;
    }

    self->args.flags |= 0x400u;
  }

  if (v4 != -1)
  {
    return 22;
  }

  self->args.fhlen = [(NSData *)self->_fh length];
  v19 = objc_autoreleasePoolPush();
  *self->args.fh = 0u;
  *&self->args.fh[16] = 0u;
  *&self->args.fh[32] = 0u;
  *&self->args.fh[48] = 0u;
  bytes = [(NSData *)self->_fh bytes];
  v21 = [(NSData *)self->_fh length];
  if (v21 >= 0x40)
  {
    v22 = 64;
  }

  else
  {
    v22 = v21;
  }

  memcpy(self->args.fh, bytes, v22);
  objc_autoreleasePoolPop(v19);
  if ((self->_mntFlags & 0x8000000) != 0)
  {
    self->args.mnton[1023] = 0;
    v23 = strdup(self->args.mnton);
    goto LABEL_49;
  }

  v23 = realpath_DARWIN_EXTSN(self->args.mnton, 0);
  if (v23)
  {
LABEL_49:
    if (!self->_uidSet || !self->_gidSet || !self->_modeSet)
    {
      memset(&__endptr, 0, sizeof(__endptr));
      v27 = stat(v23, &__endptr);
      if (v27)
      {
        v24 = v27;
        v28 = fskit_std_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100014FD4();
        }

        goto LABEL_71;
      }

      uidSet = self->_uidSet;
      if (!uidSet)
      {
        self->args.mount_uid = __endptr.st_uid;
      }

      gidSet = self->_gidSet;
      if (!gidSet)
      {
        self->args.mount_gid = __endptr.st_gid;
      }

      if (!self->_modeSet)
      {
        self->args.mode = __endptr.st_mode & 0x1FF;
        if (!uidSet && !gidSet)
        {
          self->args.mode = 511;
          self->args.flags |= 0x200000u;
        }
      }
    }

    if (![(fskitdMounter *)self callMountOnPath:v23 mountFlags:self->_mntFlags mountArgs:&self->args, v32])
    {
      v24 = 0;
      goto LABEL_72;
    }

    v24 = *__error();
    v28 = fskit_std_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10001503C(v24, v28);
    }

LABEL_71:

LABEL_72:
    free(v23);
    return v24;
  }

  v24 = *__error();
  v25 = fskit_std_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_1000150B4();
  }

  return v24;
}

@end