@interface WifiSensor
- (WifiSensor)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)invalidate;
- (void)start;
- (void)stop;
- (void)strategyChanged:(const void *)changed;
- (void)updateWifiSettingsForNextScan:(id)scan;
- (void)wifiScanData:(id)data forSettings:(id)settings;
- (void)wifiScanFailed:(id)failed;
@end

@implementation WifiSensor

- (WifiSensor)init
{
  v9.receiver = self;
  v9.super_class = WifiSensor;
  v2 = [(WifiSensor *)&v9 init];
  if (v2)
  {
    v3 = sub_100007FA8();
    sub_100008150(v3, &v8);
    v4 = v8;
    v8 = 0uLL;
    v5 = *(v2 + 5);
    *(v2 + 2) = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  [(WifiSensor *)self invalidate];
  v3.receiver = self;
  v3.super_class = WifiSensor;
  [(WifiSensor *)&v3 dealloc];
}

- (void)invalidate
{
  [(NewWifiScanner *)self->_scanner invalidate];
  v3 = atomic_exchange(&self->_strategyChangeListener, 0);
  if (v3)
  {
    v4 = sub_100007FA8();

    sub_1002FAE24(v4, v3);
  }
}

- (void)start
{
  if (qword_10045B050 == -1)
  {
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100387448();
  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting wifi scanning", v6, 2u);
  }

LABEL_4:
  if (self->_previousScanTimestamp.m_initialized)
  {
    self->_previousScanTimestamp.m_initialized = 0;
  }

  v4 = (*(*self->_scanStrategy.__ptr_ + 40))(self->_scanStrategy.__ptr_, 0, 0);
  nextSettings = self->_nextSettings;
  self->_nextSettings = v4;

  [(NewWifiScanner *)self->_scanner startListeningCachedScans];
  [(NewWifiScanner *)self->_scanner startScanning];
}

- (void)stop
{
  if (qword_10045B050 == -1)
  {
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100387448();
  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping wifi scanning", v4, 2u);
  }

LABEL_4:
  [(NewWifiScanner *)self->_scanner stopListeningCachedScans];
  [(NewWifiScanner *)self->_scanner stopScanning];
  if (self->_previousScanTimestamp.m_initialized)
  {
    self->_previousScanTimestamp.m_initialized = 0;
  }
}

- (void)strategyChanged:(const void *)changed
{
  v4 = *changed;
  v3 = *(changed + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_scanStrategy.__cntrl_;
  self->_scanStrategy.__ptr_ = v4;
  self->_scanStrategy.__cntrl_ = v3;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl, a2);

    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (void)updateWifiSettingsForNextScan:(id)scan
{
  scanCopy = scan;
  if (!self->_nextSettings)
  {
    sub_100014A08(v6, "");
    sub_100211F6C("No settings available for scan", &__p);
    sub_1000E661C(v6, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    sub_10003F5D0(&v5);
  }

  [scanCopy updateFrom:?];
}

- (void)wifiScanData:(id)data forSettings:(id)settings
{
  dataCopy = data;
  settingsCopy = settings;
  if (([settingsCopy cachedScan] & 1) == 0)
  {
    v6 = (*(*self->_scanStrategy.__ptr_ + 40))(self->_scanStrategy.__ptr_, [settingsCopy timestamp], dataCopy);
    nextSettings = self->_nextSettings;
    self->_nextSettings = v6;
  }

  v73 = 0;
  v74 = 0;
  v75 = 0;
  sub_100309E68(&v73, [dataCopy count]);
  if (self->_previousScanTimestamp.m_initialized)
  {
    v8 = ([settingsCopy timestamp] - *(&self->_previousScanTimestamp.m_storage.dummy_.aligner_ + 7)) / 1000000.0;
  }

  else
  {
    v8 = 1.79769313e308;
  }

  timestamp = [settingsCopy timestamp];
  if (!self->_previousScanTimestamp.m_initialized)
  {
    self->_previousScanTimestamp.m_initialized = 1;
  }

  selfCopy = self;
  *(&self->_previousScanTimestamp.m_storage.dummy_.aligner_ + 7) = timestamp;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v10 = dataCopy;
  v11 = [v10 countByEnumeratingWithState:&v69 objects:v84 count:16];
  v12 = Keybag;
  if (!v11)
  {
    v14 = 0;
    v13 = 0;
    v58 = 0;
    v39 = v10;
    goto LABEL_84;
  }

  v59 = 0;
  v58 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *v70;
  while (1)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v70 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v69 + 1) + 8 * i);
      bssid = [v17 bssid];
      v19 = bssid;
      if (bssid)
      {
        [bssid ps_STLString];
      }

      else
      {
        memset(&v85, 0, sizeof(v85));
      }

      sub_100325564(&v85, v79);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (v79[0])
      {
        v20 = *&v79[8] >> 31;
        if (*&v79[8] >> 31 == *&v79[8])
        {
          buf.__r_.__value_.__l.__size_ = *&v81[2];
          v20 = *&v79[8];
        }

        else
        {
          *&buf.__r_.__value_.__r.__words[1] = *&v81[2];
          v78 = v82;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = v20 ^ *&v79[8];
        if (v8 * 1000000.0 > [v17 age])
        {
          if ([v17 personalHotspot])
          {
            if (qword_10045B050 != -1)
            {
              sub_10038745C();
            }

            v26 = v12[2].superclass;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v61.__r_.__value_.__r.__words[0] = &v62;
              if (LODWORD(buf.__r_.__value_.__l.__data_) != SLODWORD(buf.__r_.__value_.__l.__data_) >> 31)
              {
                sub_10017910C();
              }

              std::to_string(&v85, buf.__r_.__value_.__l.__size_);
              v37 = &v85;
              if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v37 = v85.__r_.__value_.__r.__words[0];
              }

              LODWORD(v76.__r_.__value_.__l.__data_) = 136380675;
              *(v76.__r_.__value_.__r.__words + 4) = v37;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "ap %{private}s filtered out - personal hotspot", &v76, 0xCu);
              if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v85.__r_.__value_.__l.__data_);
              }
            }

            ++v13;
            if (v83 < 0)
            {
              goto LABEL_73;
            }
          }

          else
          {
            if ([v17 requestsAnonymity])
            {
              ++v58;
              if ((v83 & 0x80000000) == 0)
              {
                continue;
              }

LABEL_73:
              operator delete(*(&v82 + 1));
              continue;
            }

            v61.__r_.__value_.__r.__words[0] = 0;
            v61.__r_.__value_.__r.__words[0] = [settingsCopy timestamp];
            rssi = [v17 rssi];
            channelFlags = [v17 channelFlags];
            v66 = sub_10000AA28([v17 channel]);
            v65 = [v17 adHoc] ^ 1;
            personalHotspot = [v17 personalHotspot];
            mode = [v17 mode];
            v34 = [v17 age] / 1000000000.0;
            v62 = v34;
            v35 = v74;
            if (v74 >= v75)
            {
              v74 = sub_10030BF9C(&v73, &buf, &rssi, &channelFlags, &v66, &v65, &personalHotspot, &mode, &v62, &v61);
              if ((v83 & 0x80000000) == 0)
              {
                continue;
              }

              goto LABEL_73;
            }

            data = SLODWORD(buf.__r_.__value_.__l.__data_) >> 31;
            if (SLODWORD(buf.__r_.__value_.__l.__data_) >> 31 == LODWORD(buf.__r_.__value_.__l.__data_))
            {
              v85.__r_.__value_.__l.__size_ = buf.__r_.__value_.__l.__size_;
              data = buf.__r_.__value_.__l.__data_;
            }

            else
            {
              *&v85.__r_.__value_.__r.__words[1] = *&buf.__r_.__value_.__r.__words[1];
              LODWORD(v86) = v78;
            }

            LODWORD(v85.__r_.__value_.__l.__data_) = data ^ LODWORD(buf.__r_.__value_.__l.__data_);
            HIDWORD(v76.__r_.__value_.__r.__words[0]) = channelFlags;
            v76.__r_.__value_.__s.__data_[0] = 1;
            sub_100336A18(v74, &v85, &v76, v66, v65, personalHotspot, mode, v61.__r_.__value_.__l.__data_, rssi, v34);
            v74 = v35 + 88;
            if (v83 < 0)
            {
              goto LABEL_73;
            }
          }
        }

        else
        {
          if (qword_10045B050 != -1)
          {
            sub_10038745C();
          }

          v25 = v12[2].superclass;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v61.__r_.__value_.__r.__words[0] = &v62;
            if (LODWORD(buf.__r_.__value_.__l.__data_) != SLODWORD(buf.__r_.__value_.__l.__data_) >> 31)
            {
              sub_10017910C();
            }

            std::to_string(&v76, buf.__r_.__value_.__l.__size_);
            v27 = v14;
            v28 = v13;
            v29 = v10;
            v30 = SHIBYTE(v76.__r_.__value_.__r.__words[2]);
            v31 = v76.__r_.__value_.__r.__words[0];
            v32 = [v17 age];
            v33 = &v76;
            if (v30 < 0)
            {
              v33 = v31;
            }

            LODWORD(v85.__r_.__value_.__l.__data_) = 136381187;
            *(v85.__r_.__value_.__r.__words + 4) = v33;
            WORD2(v85.__r_.__value_.__r.__words[1]) = 2048;
            *(&v85.__r_.__value_.__r.__words[1] + 6) = v32 / 1000000.0;
            HIWORD(v85.__r_.__value_.__r.__words[2]) = 2048;
            v86 = v8;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "ap %{private}s filtered out. %f ms old, %f ms since last scan", &v85, 0x20u);
            if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v76.__r_.__value_.__l.__data_);
            }

            v10 = v29;
            v13 = v28;
            v14 = v27;
            v12 = Keybag;
          }

          ++v14;
          if (v83 < 0)
          {
            goto LABEL_73;
          }
        }
      }

      else
      {
        if (qword_10045B050 != -1)
        {
          sub_10038745C();
        }

        v21 = v12[2].superclass;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          bssid2 = [v17 bssid];
          v23 = bssid2;
          if (bssid2)
          {
            [bssid2 ps_STLString];
            v24 = &v85;
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v24 = v85.__r_.__value_.__r.__words[0];
            }
          }

          else
          {
            memset(&v85, 0, sizeof(v85));
            v24 = &v85;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
          *(buf.__r_.__value_.__r.__words + 4) = v24;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "ap %{private}s filtered out. invalid mac address", &buf, 0xCu);
          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85.__r_.__value_.__l.__data_);
          }
        }

        ++v59;
        if (v83 < 0)
        {
          goto LABEL_73;
        }
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v69 objects:v84 count:16];
    if (!v11)
    {

      v38 = v59;
      if (v59)
      {
        if (qword_10045B050 == -1)
        {
          v39 = v12[2].superclass;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
LABEL_78:
            std::to_string(v79, v38);
            if (v81[9] >= 0)
            {
              v40 = v79;
            }

            else
            {
              v40 = *v79;
            }

            LODWORD(v85.__r_.__value_.__l.__data_) = 136380675;
            *(v85.__r_.__value_.__r.__words + 4) = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Omitting %{private}s APs with invalid mac address", &v85, 0xCu);
            if ((v81[9] & 0x80000000) != 0)
            {
              operator delete(*v79);
            }
          }
        }

        else
        {
          sub_10038745C();
          v38 = v59;
          v39 = v12[2].superclass;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_78;
          }
        }

LABEL_84:
      }

      if (v14 | v13)
      {
        if (qword_10045B050 != -1)
        {
          sub_10038745C();
        }

        v41 = v12[2].superclass;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = &v85;
          std::to_string(&v85, v14);
          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v42 = v85.__r_.__value_.__r.__words[0];
          }

          std::to_string(&buf, v13);
          v43 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          v44 = buf.__r_.__value_.__r.__words[0];
          std::to_string(&v76, v58);
          p_buf = &buf;
          if (v43 < 0)
          {
            p_buf = v44;
          }

          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = &v76;
          }

          else
          {
            v46 = v76.__r_.__value_.__r.__words[0];
          }

          *v79 = 136381187;
          *&v79[4] = v42;
          v80 = 2081;
          *v81 = p_buf;
          *&v81[8] = 2081;
          *&v81[10] = v46;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Omitting %{private}s old APs, %{private}s hotspots, and %{private}s private APs", v79, 0x20u);
          if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v76.__r_.__value_.__l.__data_);
            v12 = Keybag;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_122;
            }

LABEL_98:
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_123:
              operator delete(v85.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v12 = Keybag;
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_98;
            }

LABEL_122:
            operator delete(buf.__r_.__value_.__l.__data_);
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_123;
            }
          }
        }

        if (v73 == v74)
        {
LABEL_102:
          if ([v10 count])
          {
            if (qword_10045B050 != -1)
            {
              sub_10038745C();
            }

            v47 = v12[2].superclass;
            if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_119;
            }

            v48 = &v85;
            std::to_string(&v85, [v10 count]);
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v48 = v85.__r_.__value_.__r.__words[0];
            }

            v49 = &buf;
            std::to_string(&buf, v14);
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v49 = buf.__r_.__value_.__r.__words[0];
            }

            std::to_string(&v76, v13);
            v50 = SHIBYTE(v76.__r_.__value_.__r.__words[2]);
            v51 = v76.__r_.__value_.__r.__words[0];
            std::to_string(&v61, v58);
            v52 = &v76;
            if (v50 < 0)
            {
              v52 = v51;
            }

            if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v53 = &v61;
            }

            else
            {
              v53 = v61.__r_.__value_.__r.__words[0];
            }

            *v79 = 136381443;
            *&v79[4] = v48;
            v80 = 2081;
            *v81 = v49;
            *&v81[8] = 2081;
            *&v81[10] = v52;
            LOWORD(v82) = 2081;
            *(&v82 + 2) = v53;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "All aps filtered out (actually received %{private}s). %{private}s were too old. %{private}s were personal. %{private}s were private", v79, 0x2Au);
            if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_117;
              }

LABEL_125:
              operator delete(v76.__r_.__value_.__l.__data_);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_126;
              }

LABEL_118:
              if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_119;
              }

LABEL_127:
              operator delete(v85.__r_.__value_.__l.__data_);
              goto LABEL_119;
            }

            operator delete(v61.__r_.__value_.__l.__data_);
            if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_125;
            }

LABEL_117:
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_118;
            }

LABEL_126:
            operator delete(buf.__r_.__value_.__l.__data_);
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_127;
            }

LABEL_119:
          }
        }
      }

      else
      {
        v13 = 0;
        if (v73 == v74)
        {
          goto LABEL_102;
        }
      }

      ptr = selfCopy->fSensorBridge.__ptr_;
      [settingsCopy timestamp];
      sub_10030A00C(v60, settingsCopy);
    }
  }
}

- (void)wifiScanFailed:(id)failed
{
  failedCopy = failed;
  if (([failedCopy cachedScan] & 1) == 0)
  {
    v5 = (*(*self->_scanStrategy.__ptr_ + 40))(self->_scanStrategy.__ptr_, [failedCopy timestamp], 0);
    nextSettings = self->_nextSettings;
    self->_nextSettings = v5;
  }

  ptr = self->fSensorBridge.__ptr_;
  [failedCopy timestamp];
  sub_10030A00C(&v8, failedCopy);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 56) = 0;
  return self;
}

@end