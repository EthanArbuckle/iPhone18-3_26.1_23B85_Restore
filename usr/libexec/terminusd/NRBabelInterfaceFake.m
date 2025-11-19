@interface NRBabelInterfaceFake
- (NRBabelInterfaceFake)initWithInstance:(id)a3 link:(id)a4;
- (void)sendPacket:(iovec *)a3 iovLen:(unsigned int)a4 toAddr:(const in6_addr *)a5;
@end

@implementation NRBabelInterfaceFake

- (void)sendPacket:(iovec *)a3 iovLen:(unsigned int)a4 toAddr:(const in6_addr *)a5
{
  if (!a4)
  {
    goto LABEL_18;
  }

  v8 = a4;
  if (a4 > 8)
  {
    v11 = a4 & 7;
    if (!v11)
    {
      v11 = 8;
    }

    v9 = a4 - v11;
    p_iov_len = &a3[4].iov_len;
    v13 = 0uLL;
    v14 = v9;
    v15 = 0uLL;
    do
    {
      v16 = p_iov_len - 8;
      v17 = vld2q_f64(v16);
      v18 = p_iov_len - 4;
      v19 = vld2q_f64(v18);
      v20 = p_iov_len + 16;
      v22 = vld2q_f64(p_iov_len);
      v21 = p_iov_len + 4;
      v23 = vld2q_f64(v21);
      v13 = vaddq_s32(v13, vuzp1q_s32(v17, v19));
      v15 = vaddq_s32(v15, vuzp1q_s32(v22, v23));
      p_iov_len = v20;
      v14 -= 8;
    }

    while (v14);
    LODWORD(v10) = vaddvq_s32(vaddq_s32(v15, v13));
  }

  else
  {
    v9 = 0;
    LODWORD(v10) = 0;
  }

  v24 = a4 - v9;
  v25 = &a3[v9].iov_len;
  do
  {
    v26 = *v25;
    v25 += 2;
    v10 = (v10 + v26);
    --v24;
  }

  while (v24);
  if (v10)
  {
    v27 = malloc_type_malloc(v10, 0xF5480FB6uLL);
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = &a3->iov_len;
      do
      {
        v31 = v29;
        memcpy(&v28[v29], *(v30 - 1), *v30);
        v32 = *v30;
        v30 += 2;
        v29 = v32 + v31;
        --v8;
      }

      while (v8);
      v33 = bswap64(*a5->__u6_addr8);
      v34 = 0xFF02000000000000;
      if (v33 == 0xFF02000000000000 && (v34 = 65542, v33 = bswap64(*&a5->__u6_addr32[2]), v33 == 65542))
      {
        v35 = 0;
      }

      else if (v34 < v33)
      {
        v35 = -1;
      }

      else
      {
        v35 = 1;
      }

      v55 = [[NSData alloc] initWithBytesNoCopy:v28 length:v10 freeWhenDone:1];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v57 = self;
      v56 = [(NRBabelLinkFake *)self->_link fakeInterfaces];
      v36 = [v56 countByEnumeratingWithState:&v67 objects:v71 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v68;
        if (v35)
        {
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v68 != v38)
              {
                objc_enumerationMutation(v56);
              }

              v40 = *(*(&v67 + 1) + 8 * i);
              v41 = [(NRBabelInterface *)v40 localAddress];
              if (*v41->__u6_addr8 == *a5->__u6_addr8 && *&v41->__u6_addr32[2] == *&a5->__u6_addr32[2])
              {
                v43 = [(NRBabelInterface *)v40 instance];
                v44 = [v43 queue];
                v58 = _NSConcreteStackBlock;
                v59 = 3221225472;
                v60 = sub_1000DBBDC;
                v61 = &unk_1001FB6A8;
                v62 = v55;
                v63 = v57;
                v66 = v10;
                v64 = v40;
                v65 = a5;
                dispatch_async(v44, &v58);
              }
            }

            v37 = [v56 countByEnumeratingWithState:&v67 objects:v71 count:16];
          }

          while (v37);
        }

        else
        {
          do
          {
            for (j = 0; j != v37; j = j + 1)
            {
              if (*v68 != v38)
              {
                objc_enumerationMutation(v56);
              }

              v46 = *(*(&v67 + 1) + 8 * j);
              if (v46 != v57)
              {
                v47 = [*(*(&v67 + 1) + 8 * j) instance];
                v48 = [v47 queue];
                v58 = _NSConcreteStackBlock;
                v59 = 3221225472;
                v60 = sub_1000DBBDC;
                v61 = &unk_1001FB6A8;
                v62 = v55;
                v63 = v57;
                v66 = v10;
                v64 = v46;
                v65 = a5;
                dispatch_async(v48, &v58);
              }
            }

            v37 = [v56 countByEnumeratingWithState:&v67 objects:v71 count:16];
          }

          while (v37);
        }
      }
    }

    else
    {
      v49 = sub_1000CB9A8();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v51 = sub_1000CB9A8();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      __chkstk_darwin();
      v52 = *__error();
      v53 = _os_log_pack_fill();
      *v53 = 136446210;
      *(v53 + 4) = "[NRBabelInterfaceFake sendPacket:iovLen:toAddr:]";
      sub_1000CB9A8();
      v54 = _NRLogAbortWithPack();
      sub_1000DBBDC(v54);
    }
  }

  else
  {
LABEL_18:
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }
  }
}

- (NRBabelInterfaceFake)initWithInstance:(id)a3 link:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = NRBabelInterfaceFake;
  v8 = [(NRBabelInterface *)&v30 initWithInstance:v6];
  v9 = v8;
  if (v8)
  {
    [(NRBabelInterface *)v8 setInstance:v6];
    objc_storeStrong(&v9->_link, a4);
    v26 = 33022;
    v27 = 0;
    v28 = __rev16([v7 fakeLinkIndex]);
    v29 = [v6 routerID] >> 48;
    [(NRBabelInterface *)v9 setLocalAddress:&v26];
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v10 = qword_1002290F8;
      IPv6AddrString = createIPv6AddrString();
      [v7 name];
      v21 = v20 = IPv6AddrString;
      v18 = 3909;
      v19 = v6;
      v16 = "";
      v17 = "[NRBabelInterfaceFake initWithInstance:link:]";
      _NRLogWithArgs();
    }

    v12 = [v6 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DBF48;
    block[3] = &unk_1001FD088;
    v23 = v6;
    v13 = v9;
    v24 = v13;
    v25 = v7;
    dispatch_async(v12, block);

    v14 = v13;
  }

  else
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }
  }

  return v9;
}

@end