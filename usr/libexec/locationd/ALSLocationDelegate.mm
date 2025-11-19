@interface ALSLocationDelegate
- (ALSLocationDelegate)initWithRequester:(void *)a3;
- (void)dealloc;
- (void)finished:(id)a3;
- (void)populateLocationFromTower:(id)a3 location:(CLDaemonLocation *)a4 timeReceived:(double)a5;
- (void)processCells:(id)a3 inRange:(_NSRange)a4 timeReceived:(double)a5 requestType:(int)a6 tag:(int)a7;
- (void)processScdmaCells:(id)a3 inRange:(_NSRange)a4 timeReceived:(double)a5 requestType:(int)a6 tag:(int)a7;
- (void)processWireless:(id)a3 inRange:(_NSRange)a4 timeReceived:(double)a5 requestType:(int)a6 tag:(int)a7 surroundingWifiBands:(const void *)a8;
- (void)requester:(id)a3 didFailWithError:(id)a4;
- (void)requester:(id)a3 didReceiveResponse:(id)a4 forRequest:(id)a5;
- (void)requesterDidFinish:(id)a3;
@end

@implementation ALSLocationDelegate

- (ALSLocationDelegate)initWithRequester:(void *)a3
{
  v6.receiver = self;
  v6.super_class = ALSLocationDelegate;
  v4 = [(ALSLocationDelegate *)&v6 init];
  if (v4)
  {
    v4->fRequestersWithOutstandingRequests = objc_alloc_init(NSMutableSet);
    v4->fRequester = a3;
  }

  return v4;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  fRequestersWithOutstandingRequests = self->fRequestersWithOutstandingRequests;
  v4 = [(NSMutableSet *)fRequestersWithOutstandingRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(fRequestersWithOutstandingRequests);
        }

        [*(*(&v9 + 1) + 8 * i) cancel];
      }

      v5 = [(NSMutableSet *)fRequestersWithOutstandingRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = ALSLocationDelegate;
  [(ALSLocationDelegate *)&v8 dealloc];
}

- (void)requester:(id)a3 didReceiveResponse:(id)a4 forRequest:(id)a5
{
  Current = CFAbsoluteTimeGetCurrent();
  v9 = [a4 cellTowers];
  v48 = [a4 scdmaCellTowers];
  v10 = [a4 cdmaCellTowers];
  v11 = [a4 lteCellTowers];
  v46 = [a4 nr5GCellTowers];
  v12 = [a4 wirelessAPs];
  [a3 timestamp];
  v14 = Current - v13;
  v47 = v12;
  if ([v12 count])
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F0A94();
    }

    v15 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240960;
      *&buf[4] = [a3 tag];
      *&buf[8] = 2050;
      *&buf[10] = v14;
      v60 = 2050;
      v61 = [v12 count];
      v62 = 1026;
      v63 = [a3 type];
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@AlsFlow, reply, tag, %{public}d, wifi, rtt, %{public}.1f, aps, %{public}lu, type, %{public}d", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018F0AA8();
      }

      LODWORD(__p) = 67240960;
      HIDWORD(__p) = [a3 tag];
      *v56 = 2050;
      *&v56[2] = v14;
      *&v56[10] = 2050;
      *&v56[12] = [v12 count];
      v57 = 1026;
      v58 = [a3 type];
      v43 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]", "%s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }
  }

  if ([v9 count] || objc_msgSend(v10, "count") || objc_msgSend(v11, "count") || objc_msgSend(v48, "count") || objc_msgSend(v46, "count"))
  {
    v16 = [v9 count];
    v17 = [v10 count];
    v18 = [v11 count];
    v19 = [v48 count];
    v20 = v17 + v16 + v18 + v19 + [v46 count];
    if (v20 == [v9 count])
    {
      v21 = "gsm";
    }

    else if (v20 == [v11 count])
    {
      v21 = "lte";
    }

    else if (v20 == [v10 count])
    {
      v21 = "cdma";
    }

    else if (v20 == [v48 count])
    {
      v21 = "scdma";
    }

    else if (v20 == [v46 count])
    {
      v21 = "nr";
    }

    else
    {
      v21 = "multiple";
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [a3 tag];
      *buf = 67240962;
      *&buf[4] = v23;
      *&buf[8] = 2050;
      *&buf[10] = v14;
      v60 = 2082;
      v61 = v21;
      v62 = 1026;
      v63 = v20;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "@AlsFlow, reply, tag, %{public}d, cell, rtt, %{public}.1f, %{public}s, %{public}d", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018F0AA8();
      }

      LODWORD(__p) = 67240962;
      HIDWORD(__p) = [a3 tag];
      *v56 = 2050;
      *&v56[2] = v14;
      *&v56[10] = 2082;
      *&v56[12] = v21;
      v57 = 1026;
      v58 = v20;
      v42 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]", "%s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }
  }

  (*(qword_1026584A8 + 16))(&qword_1026584A8);
  ++dword_1026584DC;
  (*(qword_1026584A8 + 24))(&qword_1026584A8);
  sub_10000EC00(buf, "didReceiveResponse");
  sub_100C43164(&qword_1026584A8, buf, *(self->fRequester + 118));
  if (SBYTE3(v61) < 0)
  {
    operator delete(*buf);
  }

  if ([v10 count])
  {
    fRequester = self->fRequester;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1006413E0;
    v52[3] = &unk_10245AFB0;
    v52[4] = v10;
    v52[5] = self;
    v52[6] = a3;
    *&v52[7] = Current;
    sub_100641360(fRequester, [a3 type], objc_msgSend(a3, "tag"), v52);
  }

  if ([v11 count])
  {
    v25 = self->fRequester;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100641E30;
    v51[3] = &unk_10245AFB0;
    v51[4] = v11;
    v51[5] = self;
    v51[6] = a3;
    *&v51[7] = Current;
    sub_100641360(v25, [a3 type], objc_msgSend(a3, "tag"), v51);
  }

  if ([v46 count])
  {
    v26 = self->fRequester;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100642554;
    v50[3] = &unk_10245AFB0;
    v50[4] = v46;
    v50[5] = self;
    v50[6] = a3;
    *&v50[7] = Current;
    sub_100641360(v26, [a3 type], objc_msgSend(a3, "tag"), v50);
  }

  if ([v48 count])
  {
    -[ALSLocationDelegate processScdmaCells:inRange:timeReceived:requestType:tag:](self, "processScdmaCells:inRange:timeReceived:requestType:tag:", v48, 0, [v48 count], objc_msgSend(a3, "type"), objc_msgSend(a3, "tag"), Current);
  }

  if ([v9 count])
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v27 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v9 count];
      *buf = 134349056;
      *&buf[4] = v28;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "AlsCell, gsm, unbatched, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F0AD0(v9);
    }

    -[ALSLocationDelegate processCells:inRange:timeReceived:requestType:tag:](self, "processCells:inRange:timeReceived:requestType:tag:", v9, 0, [v9 count], objc_msgSend(a3, "type"), objc_msgSend(a3, "tag"), Current);
  }

  if ([v47 count])
  {
    __p = 0;
    *v56 = 0;
    *&v56[8] = 0;
    if (![a3 type] && objc_msgSend(a5, "surroundingWifiBandsCount"))
    {
      for (i = 0; i < [a5 surroundingWifiBandsCount]; ++i)
      {
        v32 = [a5 surroundingWifiBandsAtIndex:i];
        v33 = *v56;
        if (*v56 >= *&v56[8])
        {
          v35 = __p;
          v36 = *v56 - __p;
          v37 = (*v56 - __p) >> 2;
          v38 = v37 + 1;
          if ((v37 + 1) >> 62)
          {
            sub_10028C64C();
          }

          v39 = *&v56[8] - __p;
          if ((*&v56[8] - __p) >> 1 > v38)
          {
            v38 = v39 >> 1;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v40 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v38;
          }

          if (v40)
          {
            sub_1000B85D0(&__p, v40);
          }

          *(4 * v37) = v32;
          v34 = 4 * v37 + 4;
          memcpy(0, v35, v36);
          v41 = __p;
          __p = 0;
          *v56 = v34;
          *&v56[8] = 0;
          if (v41)
          {
            operator delete(v41);
          }
        }

        else
        {
          **v56 = v32;
          v34 = v33 + 4;
        }

        *v56 = v34;
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v29 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v30 = [v47 count];
      *buf = 134349056;
      *&buf[4] = v30;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "AlsWifi, unbatched, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F0BC4(buf);
      v44 = [v47 count];
      v53 = 134349056;
      v54 = v44;
      v45 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]", "%s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    -[ALSLocationDelegate processWireless:inRange:timeReceived:requestType:tag:surroundingWifiBands:](self, "processWireless:inRange:timeReceived:requestType:tag:surroundingWifiBands:", v47, 0, [v47 count], objc_msgSend(a3, "type"), objc_msgSend(a3, "tag"), &__p, Current);
    if (__p)
    {
      *v56 = __p;
      operator delete(__p);
    }
  }
}

- (void)requesterDidFinish:(id)a3
{
  p_fRequestersWithOutstandingRequests = &self->fRequestersWithOutstandingRequests;
  if (([(NSMutableSet *)self->fRequestersWithOutstandingRequests containsObject:?]& 1) != 0)
  {
    sub_10000EC00(__p, "requesterDidFinish");
    sub_100C43164(&qword_1026584A8, __p, *(self->fRequester + 118));
    if (v13 < 0)
    {
      operator delete(*__p);
    }

    v6 = [a3 downloadPayloadSize];
    (*(qword_1026584A8 + 16))(&qword_1026584A8);
    dword_1026584D4 += v6;
    (*(qword_1026584A8 + 24))(&qword_1026584A8);
    [a3 setFinished:1];
    [(ALSLocationDelegate *)self finished:a3];
    [(NSMutableSet *)self->fRequestersWithOutstandingRequests removeObject:a3];
    if (qword_1025D4860 != -1)
    {
      sub_1018F1154();
    }

    v7 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSMutableSet *)*p_fRequestersWithOutstandingRequests count];
      *__p = 134218240;
      *&__p[4] = v6;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "AlsRequester, didFinish, payload, %lu, outstanding, %ld", __p, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F117C(p_fRequestersWithOutstandingRequests, v6);
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018F104C();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Unknown pbrequester object received in delegate callback", __p, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F1060();
    }
  }
}

- (void)requester:(id)a3 didFailWithError:(id)a4
{
  if (([(NSMutableSet *)self->fRequestersWithOutstandingRequests containsObject:?]& 1) != 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F0A94();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a3 tag];
      Current = CFAbsoluteTimeGetCurrent();
      [a3 timestamp];
      *buf = 67240704;
      *&buf[4] = v8;
      v34 = 2050;
      v35 = Current - v10;
      v36 = 2050;
      v37 = [a4 code];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@AlsFlow, reply, tag, %{public}d, error, rtt, %{public}.1lf, code, %{public}ld", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F1394(a3, a4);
    }

    v11 = [a3 type];
    if (v11 == 1)
    {
      sub_100643664(self->fRequester, [a3 type], objc_msgSend(a3, "tag"));
    }

    else if (v11)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F14FC();
      }

      v13 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v14 = [a3 tag];
        *buf = 67240192;
        *&buf[4] = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "query: received error for unknown requester type (tag %{public}d)", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F1524(a3);
      }
    }

    else
    {
      sub_1006435E4(self->fRequester, [a3 type], objc_msgSend(a3, "tag"));
    }

    sub_10000EC00(buf, "didFailWithError");
    sub_100C43164(&qword_1026584A8, buf, *(self->fRequester + 118));
    if (SBYTE3(v37) < 0)
    {
      operator delete(*buf);
    }

    [(NSMutableSet *)self->fRequestersWithOutstandingRequests removeObject:a3];
    if (qword_1025D4860 != -1)
    {
      sub_1018F1154();
    }

    v15 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
    {
      sub_1000238CC([a4 domain], buf);
      v16 = SBYTE3(v37);
      v17 = *buf;
      v18 = [(NSMutableSet *)self->fRequestersWithOutstandingRequests count];
      v19 = buf;
      if (v16 < 0)
      {
        v19 = v17;
      }

      *v25 = 136315394;
      *&v25[4] = v19;
      v26 = 2048;
      v27 = v18;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "AlsRequester, didFailWithError, code, %s, outstanding, %ld", v25, 0x16u);
      if (SBYTE3(v37) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F1634(buf);
      sub_1000238CC([a4 domain], v25);
      v20 = v28;
      v21 = *v25;
      v22 = [(NSMutableSet *)self->fRequestersWithOutstandingRequests count];
      v23 = v25;
      if (v20 < 0)
      {
        v23 = v21;
      }

      v29 = 136315394;
      v30 = v23;
      v31 = 2048;
      v32 = v22;
      v24 = _os_log_send_and_compose_impl();
      if (v28 < 0)
      {
        operator delete(*v25);
      }

      sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didFailWithError:]", "%s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018F104C();
    }

    v12 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Unknown pbrequester object received in delegate callback", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F12A0();
    }
  }
}

- (void)finished:(id)a3
{
  if (qword_1025D4860 != -1)
  {
    sub_1018F1948();
  }

  v5 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
  {
    v6 = [(NSMutableSet *)self->fRequestersWithOutstandingRequests count];
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "AlsRequester, finished, outstanding, %ld", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F195C(&self->super.isa);
  }

  if (([a3 processingCellTowers] & 1) == 0 && (objc_msgSend(a3, "processingWirelessAPs") & 1) == 0)
  {
    if ([a3 finished])
    {
      sub_100643818(self->fRequester, [a3 type], objc_msgSend(a3, "tag"));
    }
  }
}

- (void)populateLocationFromTower:(id)a3 location:(CLDaemonLocation *)a4 timeReceived:(double)a5
{
  if (a3 && a4)
  {
    v8 = [a3 accuracy];
    v9 = [a3 accuracy];
    v10 = v9;
    if (v8 > 999999)
    {
      v10 = v9 / 1000000.0;
    }

    *(&a4->coordinate.longitude + 4) = v10;
    *(&a4->courseAccuracy + 4) = a5;
    *(&a4->suitability + 1) = [a3 latitude] / 100000000.0;
    *(&a4->coordinate.latitude + 4) = [a3 longitude] / 100000000.0;
    HIDWORD(a4->rawCourse) = 1;
    if ([a3 hasAltitude] && objc_msgSend(a3, "hasVerticalAccuracy"))
    {
      *(&a4->horizontalAccuracy + 4) = [a3 altitude];
      *(&a4->altitude + 4) = [a3 verticalAccuracy];
    }

    if ([a3 hasConfidence])
    {
      v11 = [a3 confidence];
    }

    else
    {
      v11 = 70;
    }

    HIDWORD(a4->timestamp) = v11;
  }
}

- (void)processCells:(id)a3 inRange:(_NSRange)a4 timeReceived:(double)a5 requestType:(int)a6 tag:(int)a7
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    if (qword_1025D4620 != -1)
    {
      sub_1018F0A94();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v20 = length;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "AlsCell, gsm, rx, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F1BC8(length);
    }

    fRequester = self->fRequester;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100643B28;
    v16[3] = &unk_1024651A8;
    v16[6] = location;
    v16[7] = length;
    v16[4] = a3;
    v16[5] = self;
    v17 = a6;
    v18 = a7;
    *&v16[8] = a5;
    sub_100641360(fRequester, a6, a7, v16);
  }
}

- (void)processScdmaCells:(id)a3 inRange:(_NSRange)a4 timeReceived:(double)a5 requestType:(int)a6 tag:(int)a7
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    if (qword_1025D4620 != -1)
    {
      sub_1018F0A94();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v20 = length;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "AlsCell, scdma, rx, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F1CBC(length);
    }

    fRequester = self->fRequester;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1006442A8;
    v16[3] = &unk_1024651A8;
    v16[6] = location;
    v16[7] = length;
    v16[4] = a3;
    v16[5] = self;
    v17 = a6;
    v18 = a7;
    *&v16[8] = a5;
    sub_100641360(fRequester, a6, a7, v16);
  }
}

- (void)processWireless:(id)a3 inRange:(_NSRange)a4 timeReceived:(double)a5 requestType:(int)a6 tag:(int)a7 surroundingWifiBands:(const void *)a8
{
  length = a4.length;
  location = a4.location;
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4620 != -1)
  {
    sub_1018F0A94();
  }

  v13 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    *&buf[4] = length;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "AlsWifi, rx, %{public}lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F1DB0(length);
  }

  if (length)
  {
    __src = 0;
    v111 = 0;
    v112 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    if (location < location + length)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      v100 = _Q0;
      v98 = a3;
      do
      {
        v19 = [a3 objectAtIndex:location];
        sub_1000238CC([v19 macID], buf);
        v106 = sub_100196E8C(buf);
        if (SHIBYTE(v139) < 0)
        {
          operator delete(*buf);
        }

        if (![v19 hasLocation] || (objc_msgSend(objc_msgSend(v19, "location"), "accuracy") & 0x80000000) != 0)
        {
          v21 = v106;
          v105 = 0uLL;
          v101[0] = 0;
          v101[1] = 0;
          v102 = 0;
          memset(v113, 0, 25);
          *&v156[3] = -1;
          *&v156[11] = -1;
          Current = CFAbsoluteTimeGetCurrent();
          if ([objc_msgSend(v19 "location")])
          {
            v23 = [objc_msgSend(v19 "location")];
          }

          else
          {
            v23 = 1;
          }

          if (p_info[196] != -1)
          {
            sub_1018F0AA8();
          }

          v24 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(__p);
            v25 = __p[23] >= 0 ? __p : *__p;
            v26 = [objc_msgSend(v19 "location")];
            *buf = 136381443;
            *&buf[4] = v25;
            v137 = 2050;
            v138 = location;
            v139 = 1026;
            *v140 = v26;
            *&v140[4] = 1026;
            *&v140[6] = v23;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "AlsWifi, unknown, %{private}s, %{public}lu, hasInfoMask, %{public}d, infoMask, 0x%{public}x", buf, 0x22u);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018F0BC4(buf);
            sub_10018F0D0(&v104);
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v75 = &v104;
            }

            else
            {
              v75 = v104.__r_.__value_.__r.__words[0];
            }

            v76 = [objc_msgSend(v19 "location")];
            *__p = 136381443;
            *&__p[4] = v75;
            *&__p[12] = 2050;
            *&__p[14] = location;
            *&__p[22] = 1026;
            *&__p[24] = v76;
            *&__p[28] = 1026;
            *&__p[30] = v23;
            v77 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v104.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processWireless:inRange:timeReceived:requestType:tag:surroundingWifiBands:]", "%s\n", v77);
            if (v77 != buf)
            {
              free(v77);
            }
          }

          v27 = v108;
          if (v108 >= v109)
          {
            v31 = 0xD37A6F4DE9BD37A7 * ((v108 - v107) >> 3);
            v32 = v31 + 1;
            if (v31 + 1 > 0x1642C8590B21642)
            {
              sub_10028C64C();
            }

            if (0xA6F4DE9BD37A6F4ELL * ((v109 - v107) >> 3) > v32)
            {
              v32 = 0xA6F4DE9BD37A6F4ELL * ((v109 - v107) >> 3);
            }

            if (0xD37A6F4DE9BD37A7 * ((v109 - v107) >> 3) >= 0xB21642C8590B21)
            {
              v33 = 0x1642C8590B21642;
            }

            else
            {
              v33 = v32;
            }

            if (v33)
            {
              sub_10064A6B8(&v107, v33);
            }

            v58 = 8 * ((v108 - v107) >> 3);
            *v58 = 0xFFFF;
            *(v58 + 4) = v105;
            *(v58 + 20) = xmmword_101C82870;
            *(v58 + 36) = v100;
            *(v58 + 52) = v100;
            *(v58 + 68) = 0xBFF0000000000000;
            *(v58 + 76) = Current;
            *(v58 + 84) = 0;
            *(v58 + 88) = 0xBFF0000000000000;
            *(v58 + 96) = *v101;
            *(v58 + 112) = v102;
            *(v58 + 116) = 0xBFF0000000000000;
            *(v58 + 124) = 0x7FFFFFFF;
            v59 = *&v113[9];
            *(v58 + 128) = *v113;
            *(v58 + 137) = v59;
            v60 = *v156;
            *(v58 + 168) = *&v156[15];
            *(v58 + 172) = v23;
            *(v58 + 153) = v60;
            *(v58 + 176) = v21;
            v30 = 184 * v31 + 184;
            v61 = (184 * v31 - (v108 - v107));
            memcpy(v61, v107, v108 - v107);
            v62 = v107;
            v107 = v61;
            v108 = v30;
            v109 = 0;
            if (v62)
            {
              operator delete(v62);
            }
          }

          else
          {
            *v108 = 0xFFFF;
            *(v27 + 4) = v105;
            *(v27 + 20) = xmmword_101C82870;
            *(v27 + 36) = v100;
            *(v27 + 52) = v100;
            *(v27 + 68) = 0xBFF0000000000000;
            *(v27 + 76) = Current;
            *(v27 + 21) = 0;
            *(v27 + 11) = 0xBFF0000000000000;
            *(v27 + 6) = *v101;
            *(v27 + 28) = v102;
            *(v27 + 116) = 0xBFF0000000000000;
            *(v27 + 31) = 0x7FFFFFFF;
            v28 = *v113;
            *(v27 + 137) = *&v113[9];
            *(v27 + 8) = v28;
            v29 = *v156;
            *(v27 + 42) = *&v156[15];
            *(v27 + 43) = v23;
            *(v27 + 153) = v29;
            v30 = (v27 + 184);
            *(v27 + 22) = v21;
          }

          v108 = v30;
        }

        else
        {
          *&__p[4] = 0;
          *&__p[12] = 0;
          *&__p[36] = v100;
          *&__p[52] = v100;
          *&__p[68] = v100;
          *__p = 0xFFFF;
          *&__p[84] = 0;
          *&__p[88] = 0xBFF0000000000000;
          v131 = 0uLL;
          LODWORD(v132) = 0;
          *(&v132 + 4) = 0xBFF0000000000000;
          *v134 = 0;
          v133 = 0uLL;
          v134[8] = 0;
          *&v134[12] = -1;
          *&v134[20] = -1;
          HIDWORD(v132) = 0x7FFFFFFF;
          *&v134[28] = 0;
          v135 = v106;
          *&__p[20] = xmmword_101C82870;
          if ([objc_msgSend(v19 "location")] < 1000000)
          {
            v20 = [objc_msgSend(v19 "location")];
          }

          else
          {
            v20 = [objc_msgSend(v19 "location")] / 1000000.0;
          }

          *&__p[20] = v20;
          *&__p[76] = a5;
          *&__p[4] = [objc_msgSend(v19 "location")] / 100000000.0;
          *&__p[12] = [objc_msgSend(v19 "location")] / 100000000.0;
          DWORD1(v133) = 1;
          if ([objc_msgSend(v19 location] && objc_msgSend(objc_msgSend(v19, "location"), "hasVerticalAccuracy"))
          {
            *&__p[28] = [objc_msgSend(v19 "location")] / 100.0;
            *&__p[36] = [objc_msgSend(v19 "location")] / 100.0;
          }

          if ([objc_msgSend(v19 "location")])
          {
            v34 = [objc_msgSend(v19 "location")];
          }

          else
          {
            v34 = 50;
          }

          *&__p[84] = v34;
          if ([v19 hasChannel])
          {
            *&v134[16] = [v19 channel];
          }

          if ([objc_msgSend(v19 "location")])
          {
            *&v134[12] = [objc_msgSend(v19 "location")];
          }

          if ([objc_msgSend(v19 "location")])
          {
            *&v134[20] = [objc_msgSend(v19 "location")];
          }

          if ([objc_msgSend(v19 "location")])
          {
            *&v134[28] = [objc_msgSend(v19 "location")];
          }

          if ([v19 hasNumZaxisHarvestTraces])
          {
            *&v134[24] = [v19 numZaxisHarvestTraces];
          }

          if (p_info[196] != -1)
          {
            sub_1018F0AA8();
          }

          v35 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            sub_10018F0D0(v113);
            if (v113[23] >= 0)
            {
              v36 = v113;
            }

            else
            {
              v36 = *v113;
            }

            sub_100AE970C(&v104);
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v37 = &v104;
            }

            else
            {
              v37 = v104.__r_.__value_.__r.__words[0];
            }

            v38 = *&v134[12];
            v39 = *&v134[16];
            v40 = *&__p[28];
            v41 = *&v134[20];
            v42 = [objc_msgSend(v19 "location")];
            *buf = 136645379;
            *&buf[4] = v36;
            v137 = 2050;
            v138 = location;
            v139 = 2085;
            *v140 = v37;
            *&v140[8] = 1026;
            v141 = v38;
            v142 = 1026;
            v143 = v39;
            v144 = 2050;
            v145 = v40;
            v146 = 1026;
            v147 = v41;
            v148 = 1026;
            v149 = v42;
            v150 = 1026;
            v151 = *&v134[28];
            v152 = 1026;
            v153 = *&v134[24];
            v154 = 1026;
            v155 = a6;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "AlsWifi, valid, location, %{sensitive}s, %{public}lu, %{sensitive}s, score, %{public}d, channel, %{public}d, alt, %{public}.2lf, reach, %{public}d, hasInfoMask, %{public}d, infoMask, 0x%{public}x, numHarvestTraces, %{public}d, type, %{public}d", buf, 0x54u);
            if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v104.__r_.__value_.__l.__data_);
            }

            a3 = v98;
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            if ((v113[23] & 0x80000000) != 0)
            {
              operator delete(*v113);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018F0BC4(buf);
            sub_10018F0D0(&v104);
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v78 = &v104;
            }

            else
            {
              v78 = v104.__r_.__value_.__r.__words[0];
            }

            sub_100AE970C(v101);
            if (v103 >= 0)
            {
              v79 = v101;
            }

            else
            {
              v79 = v101[0];
            }

            v80 = *&v134[12];
            v81 = *&v134[16];
            v82 = *&__p[28];
            v83 = *&v134[20];
            v84 = [objc_msgSend(v19 "location")];
            *v113 = 136645379;
            *&v113[4] = v78;
            *&v113[12] = 2050;
            *&v113[14] = location;
            *&v113[22] = 2085;
            *&v113[24] = v79;
            v114 = 1026;
            v115 = v80;
            v116 = 1026;
            v117 = v81;
            v118 = 2050;
            v119 = v82;
            v120 = 1026;
            v121 = v83;
            v122 = 1026;
            v123 = v84;
            v124 = 1026;
            v125 = *&v134[28];
            v126 = 1026;
            v127 = *&v134[24];
            v128 = 1026;
            v129 = a6;
            v85 = _os_log_send_and_compose_impl();
            if (v103 < 0)
            {
              operator delete(v101[0]);
            }

            a3 = v98;
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v104.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processWireless:inRange:timeReceived:requestType:tag:surroundingWifiBands:]", "%s\n", v85);
            if (v85 != buf)
            {
              free(v85);
            }
          }

          v43 = v111;
          if (v111 >= v112)
          {
            v54 = __src;
            v55 = v111 - __src;
            v56 = 0xD37A6F4DE9BD37A7 * ((v111 - __src) >> 3);
            v57 = v56 + 1;
            if (v56 + 1 > 0x1642C8590B21642)
            {
              sub_10028C64C();
            }

            if (0xA6F4DE9BD37A6F4ELL * ((v112 - __src) >> 3) > v57)
            {
              v57 = 0xA6F4DE9BD37A6F4ELL * ((v112 - __src) >> 3);
            }

            if (0xD37A6F4DE9BD37A7 * ((v112 - __src) >> 3) >= 0xB21642C8590B21)
            {
              v57 = 0x1642C8590B21642;
            }

            if (v57)
            {
              sub_10064A6B8(&__src, v57);
            }

            v63 = 8 * ((v111 - __src) >> 3);
            v64 = *__p;
            v65 = *&__p[16];
            v66 = *&__p[48];
            *(v63 + 32) = *&__p[32];
            *(v63 + 48) = v66;
            *v63 = v64;
            *(v63 + 16) = v65;
            v67 = *&__p[64];
            v68 = *&__p[80];
            v69 = v132;
            *(v63 + 96) = v131;
            *(v63 + 112) = v69;
            *(v63 + 64) = v67;
            *(v63 + 80) = v68;
            v70 = v133;
            v71 = *v134;
            v72 = *&v134[16];
            *(v63 + 176) = v135;
            *(v63 + 144) = v71;
            *(v63 + 160) = v72;
            *(v63 + 128) = v70;
            v53 = 184 * v56 + 184;
            v73 = (184 * v56 - v55);
            memcpy((v63 - v55), v54, v55);
            v74 = __src;
            __src = v73;
            v111 = v53;
            v112 = 0;
            if (v74)
            {
              operator delete(v74);
            }
          }

          else
          {
            v44 = *__p;
            v45 = *&__p[16];
            v46 = *&__p[48];
            *(v111 + 2) = *&__p[32];
            *(v43 + 3) = v46;
            *v43 = v44;
            *(v43 + 1) = v45;
            v47 = *&__p[64];
            v48 = *&__p[80];
            v49 = v132;
            *(v43 + 6) = v131;
            *(v43 + 7) = v49;
            *(v43 + 4) = v47;
            *(v43 + 5) = v48;
            v50 = v133;
            v51 = *v134;
            v52 = *&v134[16];
            *(v43 + 22) = v135;
            *(v43 + 9) = v51;
            *(v43 + 10) = v52;
            *(v43 + 8) = v50;
            v53 = (v43 + 184);
          }

          v111 = v53;
        }

        ++location;
        --length;
      }

      while (length);
    }

    v87 = *a8;
    v86 = *(a8 + 1);
    if (*a8 == v86)
    {
      v93 = 0;
    }

    else
    {
      v88 = 0;
      v89 = 0;
LABEL_107:
      while (2)
      {
        v90 = v87;
        while (1)
        {
          v92 = *v90++;
          v91 = v92;
          if (v92 == 1)
          {
            break;
          }

          if (v91 == 2)
          {
            ++v87;
            v89 = 1;
            if (v90 != v86)
            {
              goto LABEL_107;
            }

            if (v88)
            {
              v93 = 3;
            }

            else
            {
              v93 = 2;
            }

            goto LABEL_127;
          }

          v87 = v90;
          if (v90 == v86)
          {
            if (v89)
            {
              v93 = 3;
            }

            else
            {
              v93 = 1;
            }

            if (v89)
            {
              v94 = 2;
            }

            else
            {
              v94 = 0;
            }

            if ((v88 & 1) == 0)
            {
              v93 = v94;
            }

            goto LABEL_127;
          }
        }

        ++v87;
        v88 = 1;
        if (v90 != v86)
        {
          continue;
        }

        break;
      }

      if (v89)
      {
        v93 = 3;
      }

      else
      {
        v93 = 1;
      }
    }

LABEL_127:
    sub_100645734(self->fRequester, &__src, &v107, a6, a7, v93);
    if (v107)
    {
      v108 = v107;
      operator delete(v107);
    }

    if (__src)
    {
      v111 = __src;
      operator delete(__src);
    }
  }
}

@end