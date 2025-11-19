uint64_t sub_1001051D4(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0u;
  memset(v56, 0, 29);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  Logger.init(subsystem:category:)();
  v25 = v9;
  v10 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v24))
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v28 = v23;
    *v11 = 136315394;
    *(v11 + 4) = sub_100002320(0xD00000000000001DLL, 0x80000001004B9450, v28);
    *(v11 + 12) = 2080;
    v12 = WiFiAddress.description.getter(a2 & 0xFFFFFFFFFFFFLL);
    v14 = sub_100002320(v12, v13, v28);
    v22 = v10;
    v15 = v14;

    *(v11 + 14) = v15;
    v16 = v22;
    _os_log_impl(&_mh_execute_header, v22, v24, "nan_send: %s  remove APPLE80211_IOC_NAN_PAIRING_KEYS for %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v26 + 8))(v25, v27);
  v39 = v54;
  v40 = v55;
  *v41 = v56[0];
  *&v41[13] = *(v56 + 13);
  v35 = v50;
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  *&v28[7] = v43;
  v29 = v44;
  *v28 = a2;
  v28[2] = BYTE2(a2);
  v28[3] = BYTE3(a2);
  v28[4] = BYTE4(a2);
  v28[5] = BYTE5(a2);
  v28[6] = a1 + 1;
  v30 = v45;
  v17 = v3[5];
  v18 = v3[2];
  v19 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v28, &v42, 0, v18, v19);
}

uint64_t IO80211Driver<>.removePairingKeys(using:for:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a4;
  v34 = a1;
  v10 = type metadata accessor for Logger();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  __chkstk_darwin();
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 0u;
  memset(v62, 0, 29);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  Logger.init(subsystem:category:)();
  v14 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  v31 = v14;
  if (os_log_type_enabled(v14, v30))
  {
    v15 = swift_slowAlloc();
    v29 = v6;
    v16 = v15;
    v27 = swift_slowAlloc();
    *v35 = v27;
    *v16 = 136315394;
    *(v16 + 4) = sub_100002320(0xD00000000000001DLL, 0x80000001004B9450, v35);
    *(v16 + 12) = 2080;
    v17 = WiFiAddress.description.getter(a2 & 0xFFFFFFFFFFFFLL);
    v28 = a2;
    v19 = sub_100002320(v17, v18, v35);
    a2 = v28;

    *(v16 + 14) = v19;
    v20 = v31;
    _os_log_impl(&_mh_execute_header, v31, v30, "nan_send: %s  remove APPLE80211_IOC_NAN_PAIRING_KEYS for %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v32 + 8))(v13, v33);
  v46 = v60;
  v47 = v61;
  v48[0] = v62[0];
  *(v48 + 13) = *(v62 + 13);
  v42 = v56;
  v43 = v57;
  v44 = v58;
  v45 = v59;
  v38 = v52;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  *&v35[7] = v49;
  v36 = v50;
  *v35 = a2;
  v35[2] = BYTE2(a2);
  v35[3] = BYTE3(a2);
  v35[4] = BYTE4(a2);
  v35[5] = BYTE5(a2);
  v35[6] = v34 + 1;
  v37 = v51;
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v22 = v21;
  v23 = *(v63 + 8);
  v24 = *(a5 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v35, a3, v22, v23, v24, AssociatedConformanceWitness);
}

uint64_t sub_100105920(uint64_t a1, int a2, unint64_t a3)
{
  LODWORD(v31) = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin();
  v33 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v34[6], 0, 238);
  v34[0] = a3;
  v34[1] = v4;
  v34[2] = v5;
  v34[3] = v6;
  v34[4] = v7;
  v34[5] = v8;
  v12 = v31 + 1;
  v34[40] = v31 + 1;
  v13 = v32;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v14 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v35[0], *(&v35[0] + 1));
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v14 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v32) = v12;
  v34[41] = v14;
  v15 = v33;
  Logger.init(subsystem:category:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v13;
    v19 = v18;
    *&v35[0] = swift_slowAlloc();
    *v19 = 136315906;
    *(v19 + 4) = sub_100002320(0xD00000000000002ALL, 0x80000001004B9470, v35);
    *(v19 + 12) = 256;
    *(v19 + 14) = v14;
    *(v19 + 15) = 256;
    *(v19 + 17) = v32;
    *(v19 + 18) = 2080;
    v20 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v22 = sub_100002320(v20, v21, v35);

    *(v19 + 20) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_KEK with length: %hhu cipher_version: %hhu for %s", v19, 0x1Cu);
    swift_arrayDestroy();

    (*(v28 + 8))(v33, v29);
  }

  else
  {

    (*(v28 + 8))(v15, v29);
  }

  swift_beginAccess();
  v35[12] = *&v34[192];
  v35[13] = *&v34[208];
  v35[14] = *&v34[224];
  v36 = *&v34[240];
  v35[8] = *&v34[128];
  v35[9] = *&v34[144];
  v35[10] = *&v34[160];
  v35[11] = *&v34[176];
  v35[4] = *&v34[64];
  v35[5] = *&v34[80];
  v35[6] = *&v34[96];
  v35[7] = *&v34[112];
  v35[0] = *v34;
  v35[1] = *&v34[16];
  v35[2] = *&v34[32];
  v35[3] = *&v34[48];
  v23 = v30[5];
  v24 = v30[2];
  v25 = v30[3];

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v35, &v37, 0, v24, v25);
}

uint64_t IO80211Driver<>.addPairingKEK(keyEncryptionKey:using:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v35 = a6;
  v36 = a5;
  LODWORD(v38) = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  __chkstk_darwin();
  v40 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v41[6], 0, 238);
  v41[0] = a3;
  v41[1] = v7;
  v41[2] = v8;
  v41[3] = v9;
  v41[4] = v10;
  v41[5] = v11;
  v15 = v38 + 1;
  v41[40] = v38 + 1;
  v16 = v39;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v17 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v42[0], *(&v42[0] + 1));
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v17 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v39) = v15;
  v41[41] = v17;
  v18 = v40;
  Logger.init(subsystem:category:)();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = v16;
    v22 = v21;
    *&v42[0] = swift_slowAlloc();
    *v22 = 136315906;
    *(v22 + 4) = sub_100002320(0xD00000000000002ALL, 0x80000001004B9470, v42);
    *(v22 + 12) = 256;
    *(v22 + 14) = v17;
    *(v22 + 15) = 256;
    *(v22 + 17) = v39;
    *(v22 + 18) = 2080;
    v23 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v25 = sub_100002320(v23, v24, v42);

    *(v22 + 20) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_KEK with length: %hhu cipher_version: %hhu for %s", v22, 0x1Cu);
    swift_arrayDestroy();

    (*(v33 + 8))(v40, v34);
  }

  else
  {

    (*(v33 + 8))(v18, v34);
  }

  swift_beginAccess();
  v42[12] = *&v41[192];
  v42[13] = *&v41[208];
  v42[14] = *&v41[224];
  v43 = *&v41[240];
  v42[8] = *&v41[128];
  v42[9] = *&v41[144];
  v42[10] = *&v41[160];
  v42[11] = *&v41[176];
  v42[4] = *&v41[64];
  v42[5] = *&v41[80];
  v42[6] = *&v41[96];
  v42[7] = *&v41[112];
  v42[0] = *v41;
  v42[1] = *&v41[16];
  v42[2] = *&v41[32];
  v42[3] = *&v41[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v27 = v26;
  v28 = *(v36 + 8);
  v29 = *(v35 + 16);
  v30 = v37;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v42, v30, v27, v28, v29, AssociatedConformanceWitness);
}

uint64_t sub_10010627C(uint64_t a1, int a2, unint64_t a3)
{
  LODWORD(v31) = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin();
  v33 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v34[6], 0, 238);
  v34[0] = a3;
  v34[1] = v4;
  v34[2] = v5;
  v34[3] = v6;
  v34[4] = v7;
  v34[5] = v8;
  v12 = v31 + 1;
  v34[74] = v31 + 1;
  v13 = v32;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v14 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v35[0], *(&v35[0] + 1));
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v14 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v32) = v12;
  v34[75] = v14;
  v15 = v33;
  Logger.init(subsystem:category:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v13;
    v19 = v18;
    *&v35[0] = swift_slowAlloc();
    *v19 = 136315906;
    *(v19 + 4) = sub_100002320(0xD00000000000002CLL, 0x80000001004B94A0, v35);
    *(v19 + 12) = 256;
    *(v19 + 14) = v14;
    *(v19 + 15) = 256;
    *(v19 + 17) = v32;
    *(v19 + 18) = 2080;
    v20 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v22 = sub_100002320(v20, v21, v35);

    *(v19 + 20) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_KCK with length: %hhu cipher_version: %hhu for %s", v19, 0x1Cu);
    swift_arrayDestroy();

    (*(v28 + 8))(v33, v29);
  }

  else
  {

    (*(v28 + 8))(v15, v29);
  }

  swift_beginAccess();
  v35[12] = *&v34[192];
  v35[13] = *&v34[208];
  v35[14] = *&v34[224];
  v36 = *&v34[240];
  v35[8] = *&v34[128];
  v35[9] = *&v34[144];
  v35[10] = *&v34[160];
  v35[11] = *&v34[176];
  v35[4] = *&v34[64];
  v35[5] = *&v34[80];
  v35[6] = *&v34[96];
  v35[7] = *&v34[112];
  v35[0] = *v34;
  v35[1] = *&v34[16];
  v35[2] = *&v34[32];
  v35[3] = *&v34[48];
  v23 = v30[5];
  v24 = v30[2];
  v25 = v30[3];

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v35, &v37, 0, v24, v25);
}

uint64_t IO80211Driver<>.addPairingKCK(keyConfirmationKey:using:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v35 = a6;
  v36 = a5;
  LODWORD(v38) = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  __chkstk_darwin();
  v40 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v41[6], 0, 238);
  v41[0] = a3;
  v41[1] = v7;
  v41[2] = v8;
  v41[3] = v9;
  v41[4] = v10;
  v41[5] = v11;
  v15 = v38 + 1;
  v41[74] = v38 + 1;
  v16 = v39;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v17 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v42[0], *(&v42[0] + 1));
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v17 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v39) = v15;
  v41[75] = v17;
  v18 = v40;
  Logger.init(subsystem:category:)();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = v16;
    v22 = v21;
    *&v42[0] = swift_slowAlloc();
    *v22 = 136315906;
    *(v22 + 4) = sub_100002320(0xD00000000000002CLL, 0x80000001004B94A0, v42);
    *(v22 + 12) = 256;
    *(v22 + 14) = v17;
    *(v22 + 15) = 256;
    *(v22 + 17) = v39;
    *(v22 + 18) = 2080;
    v23 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v25 = sub_100002320(v23, v24, v42);

    *(v22 + 20) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_KCK with length: %hhu cipher_version: %hhu for %s", v22, 0x1Cu);
    swift_arrayDestroy();

    (*(v33 + 8))(v40, v34);
  }

  else
  {

    (*(v33 + 8))(v18, v34);
  }

  swift_beginAccess();
  v42[12] = *&v41[192];
  v42[13] = *&v41[208];
  v42[14] = *&v41[224];
  v43 = *&v41[240];
  v42[8] = *&v41[128];
  v42[9] = *&v41[144];
  v42[10] = *&v41[160];
  v42[11] = *&v41[176];
  v42[4] = *&v41[64];
  v42[5] = *&v41[80];
  v42[6] = *&v41[96];
  v42[7] = *&v41[112];
  v42[0] = *v41;
  v42[1] = *&v41[16];
  v42[2] = *&v41[32];
  v42[3] = *&v41[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v27 = v26;
  v28 = *(v36 + 8);
  v29 = *(v35 + 16);
  v30 = v37;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v42, v30, v27, v28, v29, AssociatedConformanceWitness);
}

uint64_t sub_100106BDC(uint64_t a1, int a2, unint64_t a3)
{
  v30 = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  __chkstk_darwin();
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v32[6], 0, 238);
  v32[0] = a3;
  v32[1] = v4;
  v32[2] = v5;
  v32[3] = v6;
  v32[4] = v7;
  v32[5] = v8;
  v32[142] = v30 & 1;
  v12 = v31;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v13 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v33[0], *(&v33[0] + 1));
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v13 > 0xFF)
  {
    goto LABEL_7;
  }

  v31 = v12;
  v32[143] = v13;
  v14 = v26;
  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *&v33[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100002320(0xD000000000000025, 0x80000001004B94D0, v33);
    *(v17 + 12) = 2080;
    v18 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v20 = sub_100002320(v18, v19, v33);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: IGTK for %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  (*(v27 + 8))(v14, v28);
  v33[12] = *&v32[192];
  v33[13] = *&v32[208];
  v33[14] = *&v32[224];
  v34 = *&v32[240];
  v33[8] = *&v32[128];
  v33[9] = *&v32[144];
  v33[10] = *&v32[160];
  v33[11] = *&v32[176];
  v33[4] = *&v32[64];
  v33[5] = *&v32[80];
  v33[6] = *&v32[96];
  v33[7] = *&v32[112];
  v33[0] = *v32;
  v33[1] = *&v32[16];
  v33[2] = *&v32[32];
  v33[3] = *&v32[48];
  v21 = v29[5];
  v22 = v29[2];
  v23 = v29[3];

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v33, &v35, 0, v22, v23);
}

uint64_t IO80211Driver<>.addIGTKKey(iGTK:iGTKCipherSuite:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v34 = a6;
  v35 = a5;
  v37 = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  __chkstk_darwin();
  v31 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v39[6], 0, 238);
  v39[0] = a3;
  v39[1] = v7;
  v39[2] = v8;
  v39[3] = v9;
  v39[4] = v10;
  v39[5] = v11;
  v39[142] = v37 & 1;
  v15 = v38;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v16 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v40[0], *(&v40[0] + 1));
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v16 > 0xFF)
  {
    goto LABEL_7;
  }

  v38 = v15;
  v39[143] = v16;
  v17 = v31;
  Logger.init(subsystem:category:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *&v40[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_100002320(0xD000000000000025, 0x80000001004B94D0, v40);
    *(v20 + 12) = 2080;
    v21 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v23 = sub_100002320(v21, v22, v40);

    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: IGTK for %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  (*(v32 + 8))(v17, v33);
  v40[12] = *&v39[192];
  v40[13] = *&v39[208];
  v40[14] = *&v39[224];
  v41 = *&v39[240];
  v40[8] = *&v39[128];
  v40[9] = *&v39[144];
  v40[10] = *&v39[160];
  v40[11] = *&v39[176];
  v40[4] = *&v39[64];
  v40[5] = *&v39[80];
  v40[6] = *&v39[96];
  v40[7] = *&v39[112];
  v40[0] = *v39;
  v40[1] = *&v39[16];
  v40[2] = *&v39[32];
  v40[3] = *&v39[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v25 = v24;
  v26 = *(v35 + 8);
  v27 = *(v34 + 16);
  v28 = v36;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v40, v28, v25, v26, v27, AssociatedConformanceWitness);
}

uint64_t sub_1001074A4(uint64_t a1, int a2, unint64_t a3)
{
  v30 = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  __chkstk_darwin();
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v32[6], 0, 238);
  v32[0] = a3;
  v32[1] = v4;
  v32[2] = v5;
  v32[3] = v6;
  v32[4] = v7;
  v32[5] = v8;
  v32[176] = v30 & 1;
  v12 = v31;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v13 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v33[0], *(&v33[0] + 1));
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v13 > 0xFF)
  {
    goto LABEL_7;
  }

  v31 = v12;
  v32[177] = v13;
  v14 = v26;
  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *&v33[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9500, v33);
    *(v17 + 12) = 2080;
    v18 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v20 = sub_100002320(v18, v19, v33);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: BIGTK for %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  (*(v27 + 8))(v14, v28);
  v33[12] = *&v32[192];
  v33[13] = *&v32[208];
  v33[14] = *&v32[224];
  v34 = *&v32[240];
  v33[8] = *&v32[128];
  v33[9] = *&v32[144];
  v33[10] = *&v32[160];
  v33[11] = *&v32[176];
  v33[4] = *&v32[64];
  v33[5] = *&v32[80];
  v33[6] = *&v32[96];
  v33[7] = *&v32[112];
  v33[0] = *v32;
  v33[1] = *&v32[16];
  v33[2] = *&v32[32];
  v33[3] = *&v32[48];
  v21 = v29[5];
  v22 = v29[2];
  v23 = v29[3];

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v33, &v35, 0, v22, v23);
}

uint64_t IO80211Driver<>.addBIGTKKey(bIGTK:bIGTKCipherSuite:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v34 = a6;
  v35 = a5;
  v37 = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  __chkstk_darwin();
  v31 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v39[6], 0, 238);
  v39[0] = a3;
  v39[1] = v7;
  v39[2] = v8;
  v39[3] = v9;
  v39[4] = v10;
  v39[5] = v11;
  v39[176] = v37 & 1;
  v15 = v38;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v16 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v40[0], *(&v40[0] + 1));
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v16 > 0xFF)
  {
    goto LABEL_7;
  }

  v38 = v15;
  v39[177] = v16;
  v17 = v31;
  Logger.init(subsystem:category:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *&v40[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9500, v40);
    *(v20 + 12) = 2080;
    v21 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v23 = sub_100002320(v21, v22, v40);

    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: BIGTK for %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  (*(v32 + 8))(v17, v33);
  v40[12] = *&v39[192];
  v40[13] = *&v39[208];
  v40[14] = *&v39[224];
  v41 = *&v39[240];
  v40[8] = *&v39[128];
  v40[9] = *&v39[144];
  v40[10] = *&v39[160];
  v40[11] = *&v39[176];
  v40[4] = *&v39[64];
  v40[5] = *&v39[80];
  v40[6] = *&v39[96];
  v40[7] = *&v39[112];
  v40[0] = *v39;
  v40[1] = *&v39[16];
  v40[2] = *&v39[32];
  v40[3] = *&v39[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v25 = v24;
  v26 = *(v35 + 8);
  v27 = *(v34 + 16);
  v28 = v36;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v40, v28, v25, v26, v27, AssociatedConformanceWitness);
}

uint64_t sub_100107D68(uint64_t a1, int a2, unint64_t a3)
{
  v30 = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  __chkstk_darwin();
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v32[6], 0, 238);
  v32[0] = a3;
  v32[1] = v4;
  v32[2] = v5;
  v32[3] = v6;
  v32[4] = v7;
  v32[5] = v8;
  v32[210] = v30 + 1;
  v12 = v31;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v13 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v33[0], *(&v33[0] + 1));
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v13 > 0xFF)
  {
    goto LABEL_7;
  }

  v31 = v12;
  v32[211] = v13;
  v14 = v26;
  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *&v33[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100002320(0xD000000000000022, 0x80000001004B9530, v33);
    *(v17 + 12) = 2080;
    v18 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v20 = sub_100002320(v18, v19, v33);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: GTK for %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  (*(v27 + 8))(v14, v28);
  v33[12] = *&v32[192];
  v33[13] = *&v32[208];
  v33[14] = *&v32[224];
  v34 = *&v32[240];
  v33[8] = *&v32[128];
  v33[9] = *&v32[144];
  v33[10] = *&v32[160];
  v33[11] = *&v32[176];
  v33[4] = *&v32[64];
  v33[5] = *&v32[80];
  v33[6] = *&v32[96];
  v33[7] = *&v32[112];
  v33[0] = *v32;
  v33[1] = *&v32[16];
  v33[2] = *&v32[32];
  v33[3] = *&v32[48];
  v21 = v29[5];
  v22 = v29[2];
  v23 = v29[3];

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v33, &v35, 0, v22, v23);
}

uint64_t IO80211Driver<>.addGTKKey(gtk:gtkCipherSuite:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v34 = a6;
  v35 = a5;
  v37 = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  __chkstk_darwin();
  v31 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v39[6], 0, 238);
  v39[0] = a3;
  v39[1] = v7;
  v39[2] = v8;
  v39[3] = v9;
  v39[4] = v10;
  v39[5] = v11;
  v39[210] = v37 + 1;
  v15 = v38;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v16 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v40[0], *(&v40[0] + 1));
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v16 > 0xFF)
  {
    goto LABEL_7;
  }

  v38 = v15;
  v39[211] = v16;
  v17 = v31;
  Logger.init(subsystem:category:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *&v40[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_100002320(0xD000000000000022, 0x80000001004B9530, v40);
    *(v20 + 12) = 2080;
    v21 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v23 = sub_100002320(v21, v22, v40);

    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: GTK for %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  (*(v32 + 8))(v17, v33);
  v40[12] = *&v39[192];
  v40[13] = *&v39[208];
  v40[14] = *&v39[224];
  v41 = *&v39[240];
  v40[8] = *&v39[128];
  v40[9] = *&v39[144];
  v40[10] = *&v39[160];
  v40[11] = *&v39[176];
  v40[4] = *&v39[64];
  v40[5] = *&v39[80];
  v40[6] = *&v39[96];
  v40[7] = *&v39[112];
  v40[0] = *v39;
  v40[1] = *&v39[16];
  v40[2] = *&v39[32];
  v40[3] = *&v39[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v25 = v24;
  v26 = *(v35 + 8);
  v27 = *(v34 + 16);
  v28 = v36;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v40, v28, v25, v26, v27, AssociatedConformanceWitness);
}

uint64_t sub_10010862C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  v7 = type metadata accessor for Logger();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin();
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v33 - v10;
  v43 = 0;
  v42[0] = v1;
  v42[1] = v2;
  v37 = v3;
  v38 = v4;
  v42[2] = v3;
  v42[3] = v4;
  v42[4] = v5;
  v42[5] = v6;
  v35 = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v45[0] = v16;
    *v15 = 136315138;
    v44[0] = v1;
    v44[1] = v2;
    v44[2] = v37;
    v44[3] = v38;
    v44[4] = v5;
    v44[5] = v6;
    type metadata accessor for ether_addr(0);
    v17 = String.init<A>(describing:)();
    v19 = sub_100002320(v17, v18, v45);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "getMatchingSlotCount %s", v15, 0xCu);
    sub_100002A00(v16);

    v7 = v34;
  }

  v20 = *(v39 + 8);
  v20(v11, v7);
  v21 = v40[2];
  v22 = v40[3];
  v23 = v40[5];

  v24 = v21;
  v25 = v41;
  AppleDevice.getRequest(requestType:data:on:)(0x239uLL, v42, v44, 0, v24, v22);

  if (!v25)
  {
    v27 = v7;
    v28 = v36;
    Logger.init(subsystem:category:)();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B9560, v45);
      *(v31 + 12) = 1024;
      swift_beginAccess();
      *(v31 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v29, v30, " %s  valid matching slots count %u", v31, 0x12u);
      sub_100002A00(v32);
    }

    v20(v28, v27);
    swift_beginAccess();
    return v43;
  }

  return result;
}

uint64_t IO80211Driver<>.getMatchingSlotCount(peer:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v37 = a3;
  v35 = a2;
  v4 = a1;
  v5 = a1 >> 8;
  v6 = a1 >> 16;
  v7 = a1 >> 24;
  v8 = HIDWORD(a1);
  v9 = a1 >> 40;
  v41 = type metadata accessor for Logger();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v40 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v32 - v13;
  v43 = 0;
  v42[0] = v4;
  v42[1] = v5;
  v33 = v6;
  v34 = v7;
  v42[2] = v6;
  v42[3] = v7;
  v42[4] = v8;
  v42[5] = v9;
  v32[1] = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32[0] = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v45[0] = v19;
    *v18 = 136315138;
    v44[0] = v4;
    v44[1] = v5;
    v44[2] = v33;
    v44[3] = v34;
    v44[4] = v8;
    v44[5] = v9;
    type metadata accessor for ether_addr(0);
    v20 = String.init<A>(describing:)();
    v22 = sub_100002320(v20, v21, v45);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "getMatchingSlotCount %s", v18, 0xCu);
    sub_100002A00(v19);

    v23 = v32[0];
  }

  else
  {

    v23 = v10;
  }

  v24 = *(v23 + 8);
  v24(v14, v41);
  v25 = v39;
  result = sub_100114390(v42, v44, v36, v35, v37, v38, v45, 569);
  v27 = v40;
  if (!v25)
  {
    Logger.init(subsystem:category:)();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B9560, v45);
      *(v30 + 12) = 1024;
      swift_beginAccess();
      *(v30 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v28, v29, " %s  valid matching slots count %u", v30, 0x12u);
      sub_100002A00(v31);
    }

    v24(v27, v41);
    swift_beginAccess();
    return v43;
  }

  return result;
}

uint64_t sub_100108ED0(uint64_t a1)
{
  v12 = 0;
  v8 = a1;
  v9 = BYTE2(a1);
  v10 = BYTE3(a1);
  v11 = BYTE4(a1);
  BYTE1(v11) = BYTE5(a1);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];

  AppleDevice.getRequest(requestType:data:on:)(0x237uLL, &v8, &v13, 0, v4, v5);

  if (!v2)
  {
    return a1 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t IO80211Driver<>.getChannelSeqMismatchCount(peer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v9 = a1;
  v10 = BYTE2(a1);
  v11 = BYTE3(a1);
  v12 = BYTE4(a1);
  BYTE1(v12) = BYTE5(a1);
  result = sub_100114390(&v9, &v14, v4, a2, a3, a4, &v8, 567);
  if (!v5)
  {
    return a1 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1001090B0()
{
  v2 = v0;
  v3 = __chkstk_darwin();
  bzero(__src, 0xA10uLL);
  v4 = *(v3 + 16);
  LOBYTE(v5) = 2;
  if (v4 < 2)
  {
    v5 = *(v3 + 16);
  }

  __src[6] = v5;
  if (!v4)
  {
LABEL_15:
    v22 = swift_slowAlloc();
    *v22 = 0;
    v22[1] = 0;
    v24 = v2[2];
    v23 = v2[3];
    v25 = v2[5];

    AppleDevice.getRequest(requestType:data:on:)(0x185uLL, v22, (v22 + 2), 0, v24, v23);
    if (v1)
    {
    }

    else
    {

      v28 = v22[1];

      if ((v28 & 0x80) != 0)
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "IO80211Driver update(APPLE80211_IOC_NAN_COMMITTED_AVAILABILITY)", v31, 2u);
        }

        memcpy(__dst, __src, sizeof(__dst));

        AppleDevice.setRequest(requestType:data:on:)(0x141uLL, __dst, __src, 0, v24, v23);
      }
    }

    return result;
  }

  v6 = 0;
  v34 = v3 + 32;
  v7 = &__src[12];
  v32 = v4;
  v33 = v2;
  while (1)
  {
    if (v6 >= 2)
    {
      goto LABEL_6;
    }

    v8 = *(v34 + 16 * v6 + 8);
    v9 = *(v8 + 16);
    if (v9 > 0xFF)
    {
      __break(1u);
    }

    v10 = &__src[1284 * v6 + 8];
    v10[1] = v9;
    v10[2] = v6;
    swift_bridgeObjectRetain_n();
    if (v9)
    {
      break;
    }

LABEL_5:
    swift_bridgeObjectRelease_n();
    v4 = v32;
    v2 = v33;
LABEL_6:
    ++v6;
    v7 += 1284;
    if (v6 == v4)
    {
      goto LABEL_15;
    }
  }

  v11 = (v8 + 80);
  v12 = v7;
  while (1)
  {
    v13 = *(v11 - 5);
    v14 = *(v11 - 4);
    v15 = *(v11 - 3);
    v16 = *(v11 - 1);
    v17 = *(v11 - 16);
    v18 = *(v11 - 24);
    __dst[0] = *v11;
    v38 = v18;
    v39 = v13;
    v40 = v14;
    v42 = v17;
    v41 = v15;
    v43 = v16;
    v19 = v18 & 7;
    v44 = __dst[0];
    sub_10005D4F4(v13, v14, v15);

    if (v19 != 1)
    {

      sub_10000B02C();
      swift_allocError();
      *v27 = xmmword_100481860;
      *(v27 + 16) = 0;
      swift_willThrow();
      goto LABEL_19;
    }

    sub_1001139B4(v37);
    if (v1)
    {
      break;
    }

    v20 = v37[3];
    v12[2] = v37[2];
    v12[3] = v20;
    v12[4] = v37[4];
    v21 = v37[1];
    *v12 = v37[0];
    v12[1] = v21;
    v12 += 5;
    sub_10011A74C(&v38);
    v11 += 56;
    if (!--v9)
    {
      goto LABEL_5;
    }
  }

LABEL_19:
  sub_10011A74C(&v38);
}

uint64_t IO80211Driver<>.update(availability:)()
{
  v2 = __chkstk_darwin();
  v43 = v3;
  v44 = v0;
  v45 = v4;
  v46 = v5;
  v6 = v2;
  v7 = type metadata accessor for Logger();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin();
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v51, 0xA10uLL);
  v10 = *(v6 + 16);
  LOBYTE(v11) = 2;
  if (v10 < 2)
  {
    v11 = *(v6 + 16);
  }

  v51[6] = v11;
  if (!v10)
  {
LABEL_15:
    v28 = v45;
    result = (*(v46 + 520))(v45);
    if ((result & 0x80) != 0)
    {
      v30 = *(v43 + 8);
      (*(*(v30 + 8) + 8))(v28);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "IO80211Driver update(APPLE80211_IOC_NAN_COMMITTED_AVAILABILITY)", v33, 2u);
        v28 = v45;
      }

      (*(v39 + 8))(v42, v40);
      memcpy(v50, v51, sizeof(v50));
      type metadata accessor for apple80211_nan_committed_availability(0);
      v35 = v34;
      v36 = *(v46 + 16);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      return sub_100110D80(321, v50, v28, v35, v30, v36, AssociatedConformanceWitness);
    }

    return result;
  }

  v12 = 0;
  v47 = &v51[8];
  v48 = v6 + 32;
  v13 = &v51[12];
  v41 = v10;
  while (1)
  {
    if (v12 > 1)
    {
      goto LABEL_6;
    }

    v14 = *(v48 + 16 * v12 + 8);
    v15 = *(v14 + 16);
    if (v15 > 0xFF)
    {
      __break(1u);
    }

    v16 = &v47[1284 * v12];
    v16[1] = v15;
    v16[2] = v12;
    swift_bridgeObjectRetain_n();
    v49 = v14;
    if (v15)
    {
      break;
    }

LABEL_5:
    swift_bridgeObjectRelease_n();
    v10 = v41;
LABEL_6:
    ++v12;
    v13 += 1284;
    if (v12 == v10)
    {
      goto LABEL_15;
    }
  }

  v17 = (v14 + 80);
  v18 = v13;
  while (1)
  {
    v19 = *(v17 - 5);
    v20 = *(v17 - 4);
    v21 = *(v17 - 3);
    v22 = *(v17 - 1);
    v23 = *(v17 - 16);
    v24 = *(v17 - 24);
    v50[0] = *v17;
    v53 = v24;
    v54 = v19;
    v55 = v20;
    v57 = v23;
    v56 = v21;
    v58 = v22;
    v25 = v24 & 7;
    v59 = v50[0];
    sub_10005D4F4(v19, v20, v21);

    if (v25 != 1)
    {

      sub_10000B02C();
      swift_allocError();
      *v38 = xmmword_100481860;
      *(v38 + 16) = 0;
      swift_willThrow();
      goto LABEL_21;
    }

    sub_1001139B4(v52);
    if (v1)
    {
      break;
    }

    v26 = v52[3];
    v18[2] = v52[2];
    v18[3] = v26;
    v18[4] = v52[4];
    v27 = v52[1];
    *v18 = v52[0];
    v18[1] = v27;
    v18 += 5;
    sub_10011A74C(&v53);
    v17 += 56;
    if (!--v15)
    {
      goto LABEL_5;
    }
  }

LABEL_21:
  sub_10011A74C(&v53);
}

uint64_t sub_1001098F8()
{
  v2 = v0;
  v3 = __chkstk_darwin();
  bzero(v34, 0xA16uLL);
  v4 = *(v3 + 16);
  LOBYTE(v5) = 2;
  if (v4 < 2)
  {
    v5 = *(v3 + 16);
  }

  LOBYTE(v34[0]) = v5;
  if (v4)
  {
    v6 = 0;
    v32 = v3 + 32;
    v30 = v4;
    v31 = v2;
    do
    {
      if (v6 < 2)
      {
        v7 = v32 + 16 * v6;
        v8 = *(v7 + 8);
        v9 = *(v7 + 2);
        bzero(__src, 0x50AuLL);
        v10 = sub_1000E5540(0, 4uLL, v9);
        if (v1)
        {

          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        __src[0] = v10 & 0xF;
        v11 = *(v8 + 16);
        if (v11)
        {
          swift_bridgeObjectRetain_n();
          v12 = 0;
          v13 = 0;
          v14 = 32;
          do
          {
            if (v13 >= *(v8 + 16))
            {
              __break(1u);
            }

            v15 = *(v8 + v14);
            v16 = *(v8 + v14 + 16);
            v17 = *(v8 + v14 + 32);
            v39 = *(v8 + v14 + 48);
            v38[1] = v16;
            v38[2] = v17;
            v38[0] = v15;
            if (v12 <= 0xF)
            {
              sub_10011A7A0(v38, __dst);
              sub_1001139B4(v35);
              sub_10011A74C(v38);
              v18 = &__src[80 * v12 + 10];
              v19 = v35[3];
              v18[2] = v35[2];
              v18[3] = v19;
              v18[4] = v35[4];
              v20 = v35[1];
              *v18 = v35[0];
              v18[1] = v20;
              ++v12;
            }

            ++v13;
            v14 += 56;
          }

          while (v11 != v13);
          __src[8] = v12;
          swift_bridgeObjectRelease_n();
          v4 = v30;
          v2 = v31;
        }

        memcpy(&v34[645 * v6 + 1], __src, 0x50AuLL);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  v21 = swift_slowAlloc();
  *v21 = 0;
  v21[1] = 0;
  v23 = v2[2];
  v22 = v2[3];
  v24 = v2[5];

  AppleDevice.getRequest(requestType:data:on:)(0x185uLL, v21, (v21 + 2), 0, v23, v22);
  if (v1)
  {
  }

  else
  {

    v26 = v21[1];

    if ((v26 & 0x80) != 0)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "IO80211Driver update(potentialAvailability)", v29, 2u);
      }

      memcpy(__dst, v34, sizeof(__dst));

      AppleDevice.setRequest(requestType:data:on:)(0x142uLL, __dst, &v37, 0, v23, v22);
    }
  }

  return result;
}

uint64_t IO80211Driver<>.update(potentialAvailability:)()
{
  v2 = __chkstk_darwin();
  v42 = v3;
  v43 = v0;
  v46 = v4;
  v41 = v5;
  v6 = v2;
  v7 = type metadata accessor for Logger();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin();
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v51, 0xA16uLL);
  v10 = *(v6 + 16);
  LOBYTE(v11) = 2;
  if (v10 < 2)
  {
    v11 = *(v6 + 16);
  }

  v51[0] = v11;
  if (!v10)
  {
LABEL_16:
    v28 = v42;
    result = (*(v46 + 520))(v42);
    if ((result & 0x80) != 0)
    {
      v30 = *(v41 + 8);
      (*(*(v30 + 8) + 8))(v28);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "IO80211Driver update(potentialAvailability)", v33, 2u);
      }

      (*(v38 + 8))(v40, v39);
      memcpy(v49, v51, 0xA16uLL);
      type metadata accessor for apple80211_nan_potential_availability(0);
      v35 = v34;
      v36 = *(v46 + 16);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      return sub_100110D80(322, v49, v28, v35, v30, v36, AssociatedConformanceWitness);
    }

    return result;
  }

  v12 = 0;
  v13 = v6 + 32;
  v55 = &v50[10];
  v48 = &v51[2];
  v44 = v6 + 32;
  v45 = v10;
  while (1)
  {
    if (v12 > 1)
    {
      goto LABEL_7;
    }

    v14 = v13 + 16 * v12;
    v15 = *(v14 + 8);
    v16 = *(v14 + 2);
    bzero(v50, 0x50AuLL);
    v17 = sub_1000E5540(0, 4uLL, v16);
    if (v1)
    {
      goto LABEL_22;
    }

    v50[0] = v17 & 0xF;
    v18 = *(v15 + 16);
    if (v18)
    {
      break;
    }

LABEL_6:
    memcpy(&v48[1290 * v12], v50, 0x50AuLL);
LABEL_7:
    if (++v12 == v10)
    {
      goto LABEL_16;
    }
  }

  v47 = v12;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  v20 = 0;
  v21 = 32;
  while (v20 < *(v15 + 16))
  {
    v22 = *(v15 + v21);
    v23 = *(v15 + v21 + 16);
    v24 = *(v15 + v21 + 32);
    v54 = *(v15 + v21 + 48);
    v53[1] = v23;
    v53[2] = v24;
    v53[0] = v22;
    if (v19 <= 0xF)
    {
      sub_10011A7A0(v53, v49);
      sub_1001139B4(v52);
      sub_10011A74C(v53);
      v25 = &v55[80 * v19];
      v26 = v52[3];
      v25[2] = v52[2];
      v25[3] = v26;
      v25[4] = v52[4];
      v27 = v52[1];
      *v25 = v52[0];
      v25[1] = v27;
      ++v19;
    }

    ++v20;
    v21 += 56;
    if (v18 == v20)
    {
      v50[8] = v19;
      swift_bridgeObjectRelease_n();
      v13 = v44;
      v10 = v45;
      v12 = v47;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_22:

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10010A1E0(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *(type metadata accessor for Logger() - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin();
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  if (a2)
  {
    v12 = a2[2];
    if (v12 <= 0xFF)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  LOBYTE(v12) = 0;
LABEL_5:
  v27 = v9;
  LOBYTE(v28) = v12;
  sub_1001141BC(&v28 + 2, v38, a1, a2);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[1] = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = a1;
    v18 = v4;
    v19 = v17;
    v39 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD00000000000002CLL, 0x80000001004B9580, &v39);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_FAST_DISCOVERY", v16, 0xCu);
    sub_100002A00(v19);
    v4 = v18;
    a1 = v26;
  }

  (*(v7 + 8))(v11, v27);
  if (a2)
  {
    v20 = a1;
  }

  else
  {
    v20 = 0;
  }

  if (HIDWORD(v20))
  {
    __break(1u);
  }

  v46 = v34;
  v47 = v35;
  v48 = v36;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v40 = v28;
  v49 = v37;
  v41 = v29;
  LOBYTE(v39) = a2 != 0;
  HIDWORD(v39) = v20;
  v50 = 0;
  v21 = v4[5];
  v22 = v4[2];
  v23 = v4[3];

  AppleDevice.setRequest(requestType:data:on:)(0x14DuLL, &v39, v51, 0, v22, v23);
}

uint64_t IO80211Driver<>.update(discoveryBeaconTransmissionSchedule:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v35 = a5;
  v36 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  if (a2)
  {
    v16 = a2[2];
    if (v16 <= 0xFF)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  LOBYTE(v16) = 0;
LABEL_5:
  v34 = a4;
  LOBYTE(v37) = v16;
  sub_1001141BC(&v37 + 2, v47, v36, a2);
  v32[1] = v6;
  Logger.init(subsystem:category:)();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  v19 = os_log_type_enabled(v17, v18);
  v33 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v32[0] = v7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v48 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100002320(0xD00000000000002CLL, 0x80000001004B9580, &v48);
    _os_log_impl(&_mh_execute_header, v17, v18, "nan_send: %s  APPLE80211_IOC_NAN_FAST_DISCOVERY", v21, 0xCu);
    sub_100002A00(v22);
  }

  (*(v12 + 8))(v15, v11);
  v23 = v34;
  v24 = v36;
  if (!a2)
  {
    v24 = 0;
  }

  if (HIDWORD(v24))
  {
    __break(1u);
  }

  v55 = v43;
  v56 = v44;
  v57 = v45;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v49 = v37;
  v58 = v46;
  v50 = v38;
  LOBYTE(v48) = a2 != 0;
  HIDWORD(v48) = v24;
  v59 = 0;
  type metadata accessor for apple80211_nan_forced_disc_beacon_transmission(0);
  v26 = v25;
  v27 = *(v23 + 8);
  v28 = *(v35 + 16);
  v29 = v33;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(333, &v48, v29, v26, v27, v28, AssociatedConformanceWitness);
}

uint64_t sub_10010A8B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = a1;
    v17 = v16;
    v25 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B95B0, &v25);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_DP_LINK_STATUS", v15, 0xCu);
    sub_100002A00(v17);
    a1 = v23;
  }

  (*(v8 + 8))(v11, v7);
  LOWORD(v25) = a2;
  BYTE2(v25) = BYTE2(a2);
  BYTE3(v25) = BYTE3(a2);
  BYTE4(v25) = BYTE4(a2);
  BYTE5(v25) = BYTE5(a2);
  BYTE6(v25) = BYTE6(a2);
  v26 = a1 != 0;
  v18 = v4[5];
  v19 = v4[2];
  v20 = v4[3];

  AppleDevice.setRequest(requestType:data:on:)(0x181uLL, &v25, &v27, 0, v19, v20);
}

uint64_t IO80211Driver<>.update(linkStatus:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a5;
  v30 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[1] = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25[0] = a3;
    v18 = v17;
    v28 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B95B0, &v28);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_DP_LINK_STATUS", v16, 0xCu);
    sub_100002A00(v18);
    a3 = v25[0];
  }

  (*(v9 + 8))(v12, v8);
  LOWORD(v28) = a2;
  BYTE2(v28) = BYTE2(a2);
  BYTE3(v28) = BYTE3(a2);
  BYTE4(v28) = BYTE4(a2);
  BYTE5(v28) = BYTE5(a2);
  BYTE6(v28) = BYTE6(a2);
  v29 = v26 != 0;
  type metadata accessor for apple80211_nan_dp_link_status(0);
  v20 = v19;
  v21 = *(v30 + 8);
  v22 = *(v27 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(385, &v28, a3, v20, v21, v22, AssociatedConformanceWitness);
}

uint64_t sub_10010AE48(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD00000000000001DLL, 0x80000001004B95D0, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_RESTRICT_POWER_SAVE", v12, 0xCu);
    sub_100002A00(v13);

    LOBYTE(a1) = v19;
  }

  (*(v5 + 8))(v8, v4);
  LOBYTE(v20) = a1 & 1;
  HIDWORD(v20) = 1;
  v14 = v2[5];
  v15 = v2[2];
  v16 = v2[3];

  AppleDevice.setRequest(requestType:data:on:)(0x18EuLL, &v20, &v21, 0, v15, v16);
}

uint64_t IO80211Driver<>.update(powerSaveRestriction:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v26 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25[1] = v5;
    v18 = v17;
    v28 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD00000000000001DLL, 0x80000001004B95D0, &v28);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_RESTRICT_POWER_SAVE", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v25[0];
  }

  (*(v9 + 8))(v12, v8);
  LOBYTE(v28) = v26 & 1;
  HIDWORD(v28) = 1;
  type metadata accessor for apple80211_nan_ps_restriction(0);
  v20 = v19;
  v21 = *(v27 + 8);
  v22 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(398, &v28, a2, v20, v21, v22, AssociatedConformanceWitness);
}

uint64_t sub_10010B378(int a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100002320(0xD000000000000020, 0x80000001004B95F0, &v22);
    _os_log_impl(&_mh_execute_header, v10, v11, "nan_send: %s  APPLE80211_IOC_NAN_INFRA_STATUS", v13, 0xCu);
    sub_100002A00(v14);
  }

  (*(v6 + 8))(v9, v5);
  if ((a1 & 0x100) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = a1;
  }

  if ((a1 & 0x100) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  LOBYTE(v22) = BYTE2(a1) & 1;
  HIDWORD(v22) = v16;
  v23 = v15;
  v17 = v3[5];
  v18 = v3[2];
  v19 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(0x190uLL, &v22, &v24, 0, v18, v19);
}

uint64_t IO80211Driver<>.update(internetSharingActivity:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v4;
    v18 = v17;
    v31 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000020, 0x80000001004B95F0, &v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_INFRA_STATUS", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v28;
  }

  (*(v9 + 8))(v12, v8);
  if ((a1 & 0x100) != 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = a1;
  }

  LOBYTE(v31) = BYTE2(a1) & 1;
  if ((a1 & 0x100) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  HIDWORD(v31) = v20;
  v32 = v19;
  type metadata accessor for apple80211_nan_ir_status(0);
  v22 = v21;
  v23 = *(v30 + 8);
  v24 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(400, &v31, a2, v22, v23, v24, AssociatedConformanceWitness);
}

uint64_t sub_10010B8B8()
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];

  AppleDevice.getRequest(requestType:data:on:)(0x22CuLL, &v5, &v8, 0, v1, v2);

  return HIDWORD(v6);
}

uint64_t IO80211Driver<>.linkConditionStatistics.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100114390(&v6, &v9, v3, a1, a2, a3, &v5, 556);
  return HIDWORD(v7);
}

uint64_t sub_10010BA58(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = *v4;
  if ((a3 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v9) = 0;
    v10 = 0;
    LODWORD(v11) = 1;
  }

  else
  {
    v11 = Channel.apple80211Channel.getter(a3 & 0xFFFFFFFFFFFFLL);
    v9 = HIDWORD(v11);
  }

  v15[0] = xmmword_100486AB0;
  v15[1] = xmmword_100486AC0;
  v16 = 1;
  v17 = a1;
  v18 = BYTE2(a1);
  v19 = BYTE3(a1);
  v20 = BYTE4(a1);
  v21 = BYTE5(a1);
  v12 = a4 >> 8;
  if ((a4 & 0x10000) != 0)
  {
    LOBYTE(v12) = 0;
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v22 = a2;
  v23 = BYTE2(a2);
  v24 = BYTE3(a2);
  v25 = BYTE4(a2);
  v26 = BYTE5(a2);
  v27 = v11;
  v28 = v9;
  v29 = v10;
  v30 = v13;
  v31 = v12;
  v32 = 0;
  return sub_10011082C(0x229uLL, v15);
}

uint64_t IO80211Driver<>.update(multicastAddress:responderAddress:channelInfo:countryCode:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v13) = 0;
    v14 = 0;
    LODWORD(v15) = 1;
  }

  else
  {
    v15 = Channel.apple80211Channel.getter(a3 & 0xFFFFFFFFFFFFLL);
    v13 = HIDWORD(v15);
  }

  v24[0] = xmmword_100486AB0;
  v24[1] = xmmword_100486AC0;
  v25 = 1;
  v26 = a1;
  v27 = BYTE2(a1);
  v28 = BYTE3(a1);
  v29 = BYTE4(a1);
  v30 = BYTE5(a1);
  v16 = a4 >> 8;
  if ((a4 & 0x10000) != 0)
  {
    LOBYTE(v16) = 0;
    v17 = 0;
  }

  else
  {
    v17 = a4;
  }

  v31 = a2;
  v32 = BYTE2(a2);
  v33 = BYTE3(a2);
  v34 = BYTE4(a2);
  v35 = BYTE5(a2);
  v36 = v15;
  v37 = v13;
  v38 = v14;
  v39 = v17;
  v40 = v16;
  v41 = 0;
  type metadata accessor for apple80211_nan_create_gcr_session(0);
  v19 = v18;
  v20 = *(a6 + 8);
  v21 = *(a7 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(553, v24, a5, v19, v20, v21, AssociatedConformanceWitness);
}

uint64_t sub_10010BD04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = *v4;
  if ((a3 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v9) = 0;
    v10 = 0;
    LODWORD(v11) = 1;
  }

  else
  {
    v11 = Channel.apple80211Channel.getter(a3 & 0xFFFFFFFFFFFFLL);
    v9 = HIDWORD(v11);
  }

  v15 = xmmword_100486AB0;
  v16 = 0x4000000001;
  v17 = 2;
  v18 = a1;
  v19 = BYTE2(a1);
  v20 = BYTE3(a1);
  v21 = BYTE4(a1);
  v22 = BYTE5(a1);
  v12 = a4 >> 8;
  if ((a4 & 0x10000) != 0)
  {
    LOBYTE(v12) = 0;
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v23 = a2;
  v24 = BYTE2(a2);
  v25 = BYTE3(a2);
  v26 = BYTE4(a2);
  v27 = BYTE5(a2);
  v28 = v11;
  v29 = v9;
  v30 = v10;
  v31 = v13;
  v32 = v12;
  v33 = 0;
  return sub_1001108F4(0x22AuLL, &v15);
}

uint64_t IO80211Driver<>.update(multicastAddress:transmitterAddress:channelInfo:countryCode:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v13) = 0;
    v14 = 0;
    LODWORD(v15) = 1;
  }

  else
  {
    v15 = Channel.apple80211Channel.getter(a3 & 0xFFFFFFFFFFFFLL);
    v13 = HIDWORD(v15);
  }

  v24 = xmmword_100486AB0;
  v25 = 0x4000000001;
  v26 = 2;
  v27 = a1;
  v28 = BYTE2(a1);
  v29 = BYTE3(a1);
  v30 = BYTE4(a1);
  v31 = BYTE5(a1);
  v16 = a4 >> 8;
  if ((a4 & 0x10000) != 0)
  {
    LOBYTE(v16) = 0;
    v17 = 0;
  }

  else
  {
    v17 = a4;
  }

  v32 = a2;
  v33 = BYTE2(a2);
  v34 = BYTE3(a2);
  v35 = BYTE4(a2);
  v36 = BYTE5(a2);
  v37 = v15;
  v38 = v13;
  v39 = v14;
  v40 = v17;
  v41 = v16;
  v42 = 0;
  type metadata accessor for apple80211_nan_join_gcr_session(0);
  v19 = v18;
  v20 = *(a6 + 8);
  v21 = *(a7 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(554, &v24, a5, v19, v20, v21, AssociatedConformanceWitness);
}

uint64_t sub_10010BFB8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = xmmword_100486AB0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a1;
  v10 = BYTE2(a1);
  v11 = BYTE3(a1);
  v12 = BYTE4(a1);
  v13 = BYTE5(a1);
  v14 = a2;
  v15 = BYTE2(a2);
  v16 = BYTE3(a2);
  v17 = BYTE4(a2);
  v18 = BYTE5(a2);
  v19 = 1;
  memset(v20, 0, sizeof(v20));
  return sub_10011082C(0x229uLL, &v5);
}

uint64_t IO80211Driver<>.terminate(multicastAddress:responderAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = xmmword_100486AB0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = a1;
  v19 = BYTE2(a1);
  v20 = BYTE3(a1);
  v21 = BYTE4(a1);
  v22 = BYTE5(a1);
  v23 = a2;
  v24 = BYTE2(a2);
  v25 = BYTE3(a2);
  v26 = BYTE4(a2);
  v27 = BYTE5(a2);
  v28 = 1;
  type metadata accessor for apple80211_nan_create_gcr_session(0);
  v9 = v8;
  memset(v29, 0, sizeof(v29));
  v10 = *(a4 + 8);
  v11 = *(a5 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(553, &v14, a3, v9, v10, v11, AssociatedConformanceWitness);
}

uint64_t sub_10010C19C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = xmmword_100486AB0;
  v6 = 0;
  v7 = 0;
  v8 = a1;
  v9 = BYTE2(a1);
  v10 = BYTE3(a1);
  v11 = BYTE4(a1);
  v12 = BYTE5(a1);
  v13 = a2;
  v14 = BYTE2(a2);
  v15 = BYTE3(a2);
  v16 = BYTE4(a2);
  v17 = BYTE5(a2);
  v18 = 1;
  v19[0] = 0;
  *(v19 + 7) = 0;
  return sub_1001108F4(0x22AuLL, &v5);
}

uint64_t IO80211Driver<>.terminate(multicastAddress:transmitterAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = xmmword_100486AB0;
  v15 = 0;
  v16 = 0;
  v17 = a1;
  v18 = BYTE2(a1);
  v19 = BYTE3(a1);
  v20 = BYTE4(a1);
  v21 = BYTE5(a1);
  v22 = a2;
  v23 = BYTE2(a2);
  v24 = BYTE3(a2);
  v25 = BYTE4(a2);
  v26 = BYTE5(a2);
  v27 = 1;
  type metadata accessor for apple80211_nan_join_gcr_session(0);
  v9 = v8;
  v28[0] = 0;
  *(v28 + 7) = 0;
  v10 = *(a4 + 8);
  v11 = *(a5 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(554, &v14, a3, v9, v10, v11, AssociatedConformanceWitness);
}

uint64_t IO80211Driver<>.update(multicastRateInformation:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = a1;
  v14 = xmmword_100486AD0;
  type metadata accessor for apple80211_nan_gcr_rate(0);
  v8 = v7;
  v9 = *(a3 + 8);
  v10 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(555, v13, a2, v8, v9, v10, AssociatedConformanceWitness);
}

uint64_t IO80211Driver<>.removeMulticastPeer(peerAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = a1;
  v15 = BYTE2(a1);
  v16 = BYTE3(a1);
  v17 = BYTE4(a1);
  v18 = BYTE5(a1);
  type metadata accessor for apple80211_nan_remove_multicast_peer(0);
  v8 = v7;
  v9 = *(a3 + 8);
  v10 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(583, &v13, a2, v8, v9, v10, AssociatedConformanceWitness);
}

id sub_10010C5C4(unint64_t a1)
{
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = a1 >> 40;
  v8 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  bzero(v81, 0x4E0uLL);
  v81[0] = a1;
  v81[1] = v3;
  v81[2] = v4;
  v81[3] = v5;
  v81[4] = v6;
  v81[5] = v7;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[5];

  AppleDevice.getRequest(requestType:data:on:)(0x16CuLL, v81, v171, 0, v9, v10);

  if (!v58)
  {
    v12 = [objc_allocWithZone(WiFiMACAddress) initWithAddress:a1 & 0xFFFFFFFFFFFFLL];
    v13.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v60 = v85;
    v61 = v86;
    v62 = v87;
    v63 = v88;
    v64 = v89;
    v65 = v90;
    v66 = v91;
    v67 = v92;
    v68 = v93;
    v70 = v95;
    v69 = v94;
    v71 = v96;
    v72 = v97;
    v74 = v99;
    v73 = v98;
    v75 = v100;
    v76 = v101;
    v78 = v103;
    v77 = v102;
    v79 = v104;
    sub_100114504(&v60, &v80, &v59);
    v60 = v105;
    v61 = v106;
    v62 = v107;
    v63 = v108;
    v64 = v109;
    v65 = v110;
    v66 = v111;
    v67 = v112;
    sub_100114504(&v60, &v68, &v59);
    v14.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v15.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v30.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v32.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
    v57.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
    v56.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v55.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v54.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v53.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v52.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v51.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    v16.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v50.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v49.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v48.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v47.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v17.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    if (__CFADD__(v82, v83))
    {
      __break(1u);
    }

    isa = v17.super.super.isa;
    v46 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v44 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v43 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v42 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v41 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v40 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v39 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v38 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v37 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v36 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v35 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v34 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v33 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v29 = v12;
    v18 = v84;
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100483520;
    *(v19 + 32) = v18;
    *&v60 = v19;
    static String.Encoding.utf8.getter();
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_10000CADC(&qword_10058D470, &qword_10058D358, &unk_100486960);
    String.init<A>(bytes:encoding:)();

    v60 = v161;
    v61 = v162;
    v62 = v163;
    v63 = v164;
    v64 = v165;
    v65 = v166;
    v66 = v167;
    v67 = v168;
    v68 = v169;
    v69 = v170;
    sub_100114504(&v60, &v70, &v59);
    v60 = v133;
    v61 = v134;
    v62 = v135;
    v63 = v136;
    v64 = v137;
    v65 = v138;
    v66 = v139;
    v67 = v140;
    v68 = v141;
    v70 = v143;
    v69 = v142;
    v71 = v144;
    v72 = v145;
    v74 = v147;
    v73 = v146;
    v75 = v148;
    v76 = v149;
    v78 = v151;
    v77 = v150;
    v79 = v152;
    sub_100114504(&v60, &v80, &v59);
    v60 = v113;
    v61 = v114;
    v62 = v115;
    v63 = v116;
    v64 = v117;
    v65 = v118;
    v66 = v119;
    v67 = v120;
    v68 = v121;
    v70 = v123;
    v69 = v122;
    v71 = v124;
    v72 = v125;
    v74 = v127;
    v73 = v126;
    v75 = v128;
    v76 = v129;
    v78 = v131;
    v77 = v130;
    v79 = v132;
    sub_100114504(&v60, &v80, &v59);
    v60 = v153;
    v61 = v154;
    v62 = v155;
    v63 = v156;
    v64 = v157;
    v65 = v158;
    v66 = v159;
    v67 = v160;
    sub_100114504(&v60, &v68, &v59);
    v24 = objc_allocWithZone(WiFiAwareDataSessionStatisticsReport);
    sub_100018AB4(0, &qword_10058D480, WiFiAwareDataSessionStatisticsHistogramBin_ptr);
    v23 = Array._bridgeToObjectiveC()().super.isa;

    v22 = Array._bridgeToObjectiveC()().super.isa;

    v25 = String._bridgeToObjectiveC()();

    v26 = Array._bridgeToObjectiveC()().super.isa;

    v27 = Array._bridgeToObjectiveC()().super.isa;

    v28 = Array._bridgeToObjectiveC()().super.isa;

    v31 = Array._bridgeToObjectiveC()().super.isa;

    LOBYTE(v21) = 0;
    v58 = [v24 initWithPeerAddress:v29 infrastructureChannel:v13.super.super.isa txCCAHistogram:v23 rxRSSIHistogram:v22 preferred2GChannelsCount:v14.super.super.isa preferred5GChannelsCount:v15.super.super.isa dfsChannelsCount:v30.super.super.isa csaCount:v32.super.super.isa quietIECount:v57.super.super.isa txErrorCount:v56.super.super.isa packetsOn2GCount:v55.super.super.isa packetsNAVOn2GCount:v54.super.super.isa packetsHOFOn2GCount:v53.super.super.isa packetsOn5GCount:v52.super.super.isa packetsOverridenOn5GCount:v51.super.super.isa infraRelayOperationStatus:v21 infraRelayRequestersCount:v16.super.super.isa txExpiredCount:v50.super.super.isa txNoACKCount:v49.super.super.isa txFailedCount:v48.super.super.isa txNoResourcesCount:v47.super.super.isa txIOErrorCount:isa txMemoryErrorCount:v46 txChipModeErrorCount:v44 txNoRemotePeerCount:v43 txInternalErrorCount:v42 txDroppedCount:v41 txFirmwareFreePacketCount:v40 txMaxRetriesCount:v39 txForceLifetimeExpiredCount:v38 channelSequenceMismatchOn5GCount:v37 channelSequenceMismatchOn2GCount:v36 infraScanCount:v35 infraAssocCount:v34 infraDisassocCount:v33 countryCode:v25 txConsecutiveErrorsHistogram:v26 rxFWDelayHistogram:v27 rxIPCDelayHistogram:v28 txPacketExpiryHistogram:v31];
  }

  return v58;
}

id IO80211Driver<>.generateStatisticsReport(for:)(unint64_t a1, objc_class *a2, objc_class *a3, objc_class *a4)
{
  v92 = a2;
  v93 = a3;
  v6 = a1 >> 8;
  v7 = a1 >> 16;
  v8 = a1 >> 24;
  v9 = HIDWORD(a1);
  v10 = a1 >> 40;
  v11 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v117, 0x4E0uLL);
  v117[0] = a1;
  v117[1] = v6;
  v117[2] = v7;
  v117[3] = v8;
  v117[4] = v9;
  v14 = v92;
  v117[5] = v10;
  v15 = v94;
  v16 = v95;
  v94 = a4;
  sub_100114390(v117, v207, v15, v92, v93, a4, &v96, 364);
  if (!v16)
  {
    v59 = v13;
    v65 = 0;
    v17 = [objc_allocWithZone(WiFiMACAddress) initWithAddress:a1 & 0xFFFFFFFFFFFFLL];
    v18.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v97 = v121;
    v98 = v122;
    v99 = v123;
    v100 = v124;
    v101 = v125;
    v102 = v126;
    v103 = v127;
    v104 = v128;
    v105 = v129;
    v107 = v131;
    v106 = v130;
    v108 = v132;
    v109 = v133;
    v111 = v135;
    v110 = v134;
    v112 = v136;
    v113 = v137;
    v115 = v139;
    v114 = v138;
    v116 = v140;
    v61 = sub_10005DC58(&qword_10058D460, &qword_100486EB0);
    v95 = sub_100114478(&v97, v14, v61);
    v97 = v141;
    v98 = v142;
    v99 = v143;
    v100 = v144;
    v101 = v145;
    v102 = v146;
    v103 = v147;
    v104 = v148;
    v60 = sub_10005DC58(&qword_10058D468, &unk_100486EB8);
    v62 = sub_100114478(&v97, v14, v60);
    v19.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v64 = UInt8._bridgeToObjectiveC()().super.super.isa;
    v63 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v91 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v90 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v89 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v88 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v87 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v86 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v85 = UInt64._bridgeToObjectiveC()().super.super.isa;
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    v20.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v84 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v83 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v82 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v81 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v21.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    if (__CFADD__(v118, v119))
    {
      __break(1u);
    }

    v79 = v21.super.super.isa;
    v80 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v78 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v77 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v76 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v75 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v74 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v73 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v72 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v71 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v70 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v69 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v68 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v67 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v57 = v17;
    v22 = v120;
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v23 = swift_allocObject();
    v66 = v20.super.super.isa;
    *(v23 + 16) = xmmword_100483520;
    *(v23 + 32) = v22;
    *&v97 = v23;
    static String.Encoding.utf8.getter();
    v55 = v18.super.super.isa;
    v56 = v19.super.super.isa;
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_10000CADC(&qword_10058D470, &qword_10058D358, &unk_100486960);
    v24 = String.init<A>(bytes:encoding:)();
    v26 = v25;

    if (v26)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    v59 = v27;
    v28 = 0xE000000000000000;
    if (v26)
    {
      v28 = v26;
    }

    v54 = v28;
    v97 = v197;
    v98 = v198;
    v99 = v199;
    v100 = v200;
    v101 = v201;
    v102 = v202;
    v103 = v203;
    v104 = v204;
    v105 = v205;
    v106 = v206;
    v29 = sub_10005DC58(&qword_10058D478, &qword_100486EC8);
    sub_100114478(&v97, v14, v29);
    v97 = v169;
    v98 = v170;
    v99 = v171;
    v100 = v172;
    v101 = v173;
    v102 = v174;
    v103 = v175;
    v104 = v176;
    v105 = v177;
    v107 = v179;
    v106 = v178;
    v108 = v180;
    v109 = v181;
    v111 = v183;
    v110 = v182;
    v112 = v184;
    v113 = v185;
    v115 = v187;
    v114 = v186;
    v116 = v188;
    v30 = v61;
    sub_100114478(&v97, v14, v61);
    v97 = v149;
    v98 = v150;
    v99 = v151;
    v100 = v152;
    v101 = v153;
    v102 = v154;
    v103 = v155;
    v104 = v156;
    v105 = v157;
    v107 = v159;
    v106 = v158;
    v108 = v160;
    v109 = v161;
    v111 = v163;
    v110 = v162;
    v112 = v164;
    v113 = v165;
    v115 = v167;
    v114 = v166;
    v116 = v168;
    sub_100114478(&v97, v14, v30);
    v97 = v189;
    v98 = v190;
    v99 = v191;
    v100 = v192;
    v101 = v193;
    v102 = v194;
    v103 = v195;
    v104 = v196;
    sub_100114478(&v97, v14, v60);
    v60 = objc_allocWithZone(WiFiAwareDataSessionStatisticsReport);
    sub_100018AB4(0, &qword_10058D480, WiFiAwareDataSessionStatisticsHistogramBin_ptr);
    v53 = Array._bridgeToObjectiveC()().super.isa;

    v52 = Array._bridgeToObjectiveC()().super.isa;

    v31 = String._bridgeToObjectiveC()();
    v61 = v31;

    v32 = Array._bridgeToObjectiveC()().super.isa;
    v62 = v32;

    v33 = Array._bridgeToObjectiveC()().super.isa;
    v92 = v33;

    v34 = Array._bridgeToObjectiveC()().super.isa;
    v93 = v34;

    v35 = Array._bridgeToObjectiveC()().super.isa;
    v94 = v35;

    v49 = v34;
    v50 = v35;
    v47 = v32;
    v48 = v33;
    v46 = v31;
    LOBYTE(v45) = 0;
    v36 = v63;
    v37 = v64;
    v38 = v56;
    v39 = v57;
    v40 = v55;
    v42 = v52;
    v41 = v53;
    v43 = isa;
    v95 = [v60 initWithPeerAddress:v57 infrastructureChannel:v55 txCCAHistogram:v53 rxRSSIHistogram:v52 preferred2GChannelsCount:v56 preferred5GChannelsCount:isa dfsChannelsCount:v64 csaCount:v63 quietIECount:v91 txErrorCount:v90 packetsOn2GCount:v89 packetsNAVOn2GCount:v88 packetsHOFOn2GCount:v87 packetsOn5GCount:v86 packetsOverridenOn5GCount:v85 infraRelayOperationStatus:v45 infraRelayRequestersCount:v66 txExpiredCount:v84 txNoACKCount:v83 txFailedCount:v82 txNoResourcesCount:v81 txIOErrorCount:v79 txMemoryErrorCount:v80 txChipModeErrorCount:v78 txNoRemotePeerCount:v77 txInternalErrorCount:v76 txDroppedCount:v75 txFirmwareFreePacketCount:v74 txMaxRetriesCount:v73 txForceLifetimeExpiredCount:v72 channelSequenceMismatchOn5GCount:v71 channelSequenceMismatchOn2GCount:v70 infraScanCount:v69 infraAssocCount:v68 infraDisassocCount:v67 countryCode:v46 txConsecutiveErrorsHistogram:v47 rxFWDelayHistogram:v48 rxIPCDelayHistogram:v49 txPacketExpiryHistogram:v50];
  }

  return v95;
}

__n128 BroadcomDriver<>.getInfraStats()@<Q0>(uint64_t a1@<X8>)
{
  if (qword_10058AB30 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = xmmword_10059B6F8;
  *(a1 + 64) = xmmword_10059B6E8;
  *(a1 + 80) = v1;
  *(a1 + 96) = xmmword_10059B708;
  v2 = xmmword_10059B6B8;
  *a1 = static InfraStatistics.none;
  *(a1 + 16) = v2;
  result = xmmword_10059B6D8;
  *(a1 + 32) = xmmword_10059B6C8;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10010DCE0(uint64_t a1)
{
  v5 = *(*(type metadata accessor for Logger() - 8) + 64);
  result = __chkstk_darwin();
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v43 = v9;
    v44 = v7;
    v45 = result;
    v46 = v1;
    v47 = v2;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = v10;
    if (v10 >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }

    BYTE4(v48) = v11;
    *&v52[0] = _swiftEmptyArrayStorage;

    sub_1000C0664(0, v11, 0);
    v12 = 0;
    v13 = *&v52[0];
    v14 = *(*&v52[0] + 16);
    v15 = 7 * v14;
    v16 = 7 * v11;
    do
    {
      v3.i32[0] = *(a1 + v12 + 32);
      v17 = *(a1 + v12 + 36);
      v18 = *(a1 + v12 + 37);
      v19 = *(a1 + v12 + 38);
      *&v52[0] = v13;
      v20 = *(v13 + 24);
      if (v14++ >= v20 >> 1)
      {
        sub_1000C0664((v20 > 1), v14, 1);
        v13 = *&v52[0];
      }

      v22 = vmovl_u8(v3).u64[0];
      *(v13 + 16) = v14;
      v23 = v13 + v15 + v12;
      *(v23 + 32) = vuzp1_s8(v22, v22).u32[0];
      *(v23 + 36) = v17;
      *(v23 + 37) = v18;
      *(v23 + 38) = v19;
      v12 += 7;
    }

    while (v16 != v12);
    v24 = 0;
    do
    {
      v25 = *(v13 + v24 + 36);
      v26 = *(v13 + v24 + 38);
      v27 = &v48 + v24;
      *(v27 + 5) = *(v13 + v24 + 32);
      *(v27 + 9) = v25;
      v27[11] = v26;
      v24 += 7;
      --v14;
    }

    while (v14);

    v28 = v43;
    Logger.init(subsystem:category:)();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v46;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v52[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100002320(0xD000000000000027, 0x80000001004B9620, v52);
      _os_log_impl(&_mh_execute_header, v29, v30, "nan_send: %s  APPLE80211_IOC_NAN_DATA_PATH_KEEP_ALIVE_IDENTIFIER", v33, 0xCu);
      sub_100002A00(v34);
    }

    (*(v44 + 8))(v28, v45);
    v52[0] = v48;
    v52[1] = v49;
    v52[2] = v50;
    v52[3] = v51;
    v35 = v32[5];
    v36 = v32[2];
    v37 = v32[3];

    v38 = v36;
    v39 = v47;
    AppleDevice.setRequest(requestType:data:on:)(0x16FuLL, v52, &v53, 0, v38, v37);
    if (v39)
    {
    }

    else
    {

      if (v42 <= 8)
      {
      }

      else
      {
        sub_100118368(a1, a1 + 32, 8, (2 * v42) | 1);
        v41 = v40;

        sub_10010DCE0(v41);
      }
    }
  }

  return result;
}

uint64_t IO80211Driver<>.received(keepAliveDatapathIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(*(type metadata accessor for Logger() - 8) + 64);
  result = __chkstk_darwin();
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v52 = v15;
    v53 = v13;
    v54 = result;
    v55 = a3;
    v56 = a2;
    v57 = v4;
    v58 = a4;
    v59 = v5;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v51 = v16;
    if (v16 >= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = v16;
    }

    BYTE4(v60) = v17;
    *&v64[0] = _swiftEmptyArrayStorage;

    sub_1000C0664(0, v17, 0);
    v18 = 0;
    v19 = *&v64[0];
    v20 = *(*&v64[0] + 16);
    v21 = 7 * v20;
    v22 = 7 * v17;
    do
    {
      v6.i32[0] = *(a1 + v18 + 32);
      v23 = *(a1 + v18 + 36);
      v24 = *(a1 + v18 + 37);
      v25 = *(a1 + v18 + 38);
      *&v64[0] = v19;
      v26 = *(v19 + 24);
      if (v20++ >= v26 >> 1)
      {
        sub_1000C0664((v26 > 1), v20, 1);
        v19 = *&v64[0];
      }

      v28 = vmovl_u8(v6).u64[0];
      *(v19 + 16) = v20;
      v29 = v19 + v21 + v18;
      *(v29 + 32) = vuzp1_s8(v28, v28).u32[0];
      *(v29 + 36) = v23;
      *(v29 + 37) = v24;
      *(v29 + 38) = v25;
      v18 += 7;
    }

    while (v22 != v18);
    v30 = 0;
    do
    {
      v31 = *(v19 + v30 + 36);
      v32 = *(v19 + v30 + 38);
      v33 = &v60 + v30;
      *(v33 + 5) = *(v19 + v30 + 32);
      *(v33 + 9) = v31;
      v33[11] = v32;
      v30 += 7;
      --v20;
    }

    while (v20);

    v34 = v52;
    Logger.init(subsystem:category:)();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v58;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v64[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_100002320(0xD000000000000027, 0x80000001004B9620, v64);
      _os_log_impl(&_mh_execute_header, v35, v36, "nan_send: %s  APPLE80211_IOC_NAN_DATA_PATH_KEEP_ALIVE_IDENTIFIER", v39, 0xCu);
      sub_100002A00(v40);
    }

    (*(v53 + 8))(v34, v54);
    v41 = v56;
    v64[0] = v60;
    v64[1] = v61;
    v64[2] = v62;
    v64[3] = v63;
    type metadata accessor for apple80211_nan_keep_alive_dp_identifer(0);
    v43 = v42;
    v44 = *(v55 + 8);
    v45 = *(v38 + 16);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v47 = v59;
    sub_100110D80(367, v64, v41, v43, v44, v45, AssociatedConformanceWitness);
    if (v47 || v51 < 9)
    {
    }

    else
    {
      sub_100118368(a1, a1 + 32, 8, (2 * v51) | 1);
      v49 = v48;

      (*(v38 + 504))(v49, v41, v38);
    }
  }

  return result;
}

BOOL sub_10010E590()
{
  v1 = *v0;
  sub_100110288(0x185uLL, 0, 0);
  return (v2 & 0x80) == 0;
}

uint64_t sub_10010E628()
{
  v1 = *v0;
  sub_100110288(0x185uLL, 0, 0);
  return v2;
}

uint64_t sub_10010E684@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  result = AppleIO80211Driver.init(device:role:name:)(v10, a2, a3, a4);
  *a5 = v13;
  return result;
}

uint64_t sub_10010E700@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  return sub_100119ED4(v4, v5, v6);
}

uint64_t sub_10010E754(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  *(v3 + 3) = v8;
  v3[8] = v2;
  return sub_100119F14(v4, v5, v6);
}

uint64_t (*sub_10010E7B4())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10010E82C(uint64_t a1)
{
  if (*(a1 + 32) == 4)
  {
    v18 = 0uLL;
    v19 = 0;
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    KeyPath = swift_getKeyPath();

    sub_10000F344(v4, v5, &v18, KeyPath, 0x10uLL);

    v16 = v18;
    v17 = v19;
    v7 = v1[5];
    v8 = v1[2];
    v9 = v1[3];

    v10 = &v18;
    v11 = 293;
  }

  else
  {
    if (!*(a1 + 32))
    {
      sub_10000B02C();
      swift_allocError();
      *v2 = xmmword_1004817E0;
      *(v2 + 16) = 0;
      return swift_willThrow();
    }

    v20 = 0uLL;
    v21 = 0;
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = swift_getKeyPath();

    sub_10000F344(v12, v13, &v20, v14, 0x10uLL);

    v16 = v20;
    LODWORD(v17) = v21;
    v15 = v1[5];
    v8 = v1[2];
    v9 = v1[3];

    v10 = &v17 + 4;
    v11 = 95;
  }

  AppleDevice.setRequest(requestType:data:on:)(v11, &v16, v10, 0, v8, v9);
}

uint64_t DeviceDriver<>.destroyInterface(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a4 + 32))(a2, a4);
  if (v9 == 4)
  {
    v26 = 0uLL;
    v27 = 0;
    v12 = (*(a4 + 40))(a2, a4);
    v14 = v13;
    KeyPath = swift_getKeyPath();

    sub_10000F344(v12, v14, &v26, KeyPath, 0x10uLL);

    v24 = v26;
    v25 = v27;
    type metadata accessor for apple80211_companion_skywalk_if_create(0);
    v17 = v16;
    v18 = 293;
  }

  else
  {
    if (!v9)
    {
      sub_10000B02C();
      swift_allocError();
      *v10 = xmmword_1004817E0;
      *(v10 + 16) = 0;
      return swift_willThrow();
    }

    v28 = 0uLL;
    v29 = 0;
    v19 = (*(a4 + 40))(a2, a4);
    v21 = v20;
    v22 = swift_getKeyPath();

    sub_10000F344(v19, v21, &v28, v22, 0x10uLL);

    v24 = v28;
    LODWORD(v25) = v29;
    type metadata accessor for apple80211_virt_if_delete_data(0);
    v17 = v23;
    v18 = 95;
  }

  return sub_100110D80(v18, &v24, a2, v17, a3, a4, a5);
}

uint64_t sub_10010EC60()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_10010EC94()
{

  return sub_100115B90();
}

char *DeviceDriver<>.supportedChannels.getter()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  type metadata accessor for apple80211_channels_info(0);
  sub_100110570(207, v8, 0, 0, v7, v8, v6, v4, v2);
  memcpy(v12, __src, sizeof(v12));
  memcpy(__src, v12, sizeof(__src));
  sub_100110F38(__src, v12, v4, &v10);
  return v10;
}

uint64_t IO80211Driver<>.postPeerPresence(macAddress:ipv6Address:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a5;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v45 = a1;
  v32[1] = a8;
  v12 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = v32 - v16;
  (*(v12 + 56))(a6, v12);
  v18 = *(a7 + 8);
  v19 = *(v18 + 40);
  v33 = v9;
  v20 = v19(a6, v18);
  v21 = v38;
  (*(a9 + 24))(v45 & 0xFFFFFFFFFFFFLL, v34, v35, v36, v37, v20, v22, 1, AssociatedTypeWitness, a9);
  if (v21)
  {
    (*(v14 + 8))(v17, AssociatedTypeWitness);
  }

  v38 = 0;
  (*(v14 + 8))(v17, AssociatedTypeWitness);

  v24 = (*(v18 + 32))(a6, v18);
  v25 = v18;
  if (v24 <= 1)
  {
    v26 = v12;
    if (v24)
    {

      v27 = v45;
      goto LABEL_9;
    }
  }

  else
  {
    v26 = v12;
  }

  v27 = v45;
  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
LABEL_9:
    v39 = 1;
    v40 = v27;
    v41 = BYTE2(v27);
    v42 = BYTE3(v27);
    v43 = BYTE4(v27);
    v44 = BYTE5(v27);
    type metadata accessor for apple80211_awdl_ppp_done(0);
    v30 = v29;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(415, &v39, a6, v30, v26, v25, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t sub_10010F330(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4[2] = &v5;
  return sub_1000ED5E8(sub_10011AFFC, v4, a1, a2);
}

uint64_t DeviceDriver<>.triggerWiFiChipReset(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  return sub_1000ED5E8(sub_10011A82C, v7, a1, a2);
}

uint64_t sub_10010F3D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10010F5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v29 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v24 - v16;
  if (a5)
  {
    v18 = a5;
    v19 = a4;
  }

  else
  {
    v19 = (*(a8 + 40))(a6, a8);
    v18 = v20;
  }

  v21 = *(a7 + 56);

  v21(a6, a7);
  v22 = AssociatedTypeWitness;
  (*(v29 + 24))(v26, v27, v28, 0, v19, v18, AssociatedTypeWitness);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_10010F778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a2;
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v20 - v15;
  (*(a5 + 56))(a4, a5);
  v17 = (*(a6 + 40))(a4, a6);
  (*(a7 + 32))(a1, v20, v21, 0, v17, v18, AssociatedTypeWitness, a7);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_10010F904(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v9 + 8) = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = v3[2];
    v10 = v3[3];
  }

  v11 = v3[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, v9 + 12, 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
    v12 = *(v9 + 8);
  }

  return v5;
}

uint64_t sub_10010FA00(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = v3[2];
    v10 = v3[3];
  }

  v11 = v3[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, (v9 + 3), 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
    v12 = *(v9 + 2);
    v13 = v9[2];
  }

  return v5;
}

uint64_t sub_10010FB04(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v9 + 8) = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = v3[2];
    v10 = v3[3];
  }

  v11 = v3[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, v9 + 12, 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
    v12 = *(v9 + 8);
  }

  return v5;
}

uint64_t sub_10010FC00(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = v3[2];
    v10 = v3[3];
  }

  v11 = v3[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, (v9 + 1), 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
  }

  return v5;
}

uint64_t sub_10010FCE0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = swift_slowAlloc();
  bzero(v10, 0xE88uLL);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    a2 = v4[2];
    v11 = v4[3];
  }

  v12 = v4[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v10, v10 + 3720, 0, a2, v11);

  if (!v5)
  {
    memcpy(a4, v10, 0xE88uLL);
  }
}

uint64_t sub_10010FDD4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = swift_slowAlloc();
  bzero(v10, 0xFB8uLL);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    a2 = v4[2];
    v11 = v4[3];
  }

  v12 = v4[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v10, v10 + 4024, 0, a2, v11);

  if (!v5)
  {
    memcpy(a4, v10, 0xFB8uLL);
  }
}

uint64_t sub_10010FEC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_slowAlloc();
  *v8 = 0;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    a2 = v3[2];
    v9 = v3[3];
  }

  v10 = v3[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v8, (v8 + 8), 0, a2, v9);

  if (v4)
  {
  }

  v12 = *v8;
  v13 = *(v8 + 1);

  return v12 | (v13 << 32);
}

uint64_t sub_10010FFC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v10 + 8) = 0;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    a2 = v4[2];
    v11 = v4[3];
  }

  v12 = v4[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v10, v10 + 12, 0, a2, v11);

  if (!v5)
  {
    *a4 = *v10;
    *(a4 + 8) = *(v10 + 8);
  }
}

uint64_t sub_1001100B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = v3[2];
    v10 = v3[3];
  }

  v11 = v3[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, (v9 + 1), 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
  }

  return v5;
}

uint64_t sub_1001101A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = v3[2];
    v10 = v3[3];
  }

  v11 = v3[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, (v9 + 1), 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
  }

  return v5;
}

uint64_t sub_100110288(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  v9[1] = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = v3[2];
    v10 = v3[3];
  }

  v11 = v3[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, (v9 + 2), 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
    v12 = v9[1];
  }

  return v5;
}

uint64_t sub_100110380(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v8 + 2) = 0;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    a2 = v3[2];
    v9 = v3[3];
  }

  v10 = v3[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v8, v8 + 3, 0, a2, v9);

  if (v4)
  {
  }

  v12 = *(v8 + 2);
  v13 = *v8;

  return v13 | (v12 << 16);
}

uint64_t sub_100110478@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = swift_slowAlloc();
  bzero(v10, 0x2720uLL);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    a2 = v4[2];
    v11 = v4[3];
  }

  v12 = v4[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v10, v10 + 10016, 0, a2, v11);

  if (!v5)
  {
    memcpy(a4, v10, 0x2720uLL);
  }
}

uint64_t sub_100110570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(*(a6 - 8) + 80);
  v15 = *(*(a6 - 8) + 64);
  v16 = swift_slowAlloc();
  v17 = v16;
  if (v15)
  {
    bzero(v16, v15);
  }

  sub_10010F5C4(a1, v17, v17 + v15, a3, a4, a5, a7, a8, a9);
  if (!v19)
  {
    UnsafeMutableRawBufferPointer.load<A>(fromByteOffset:as:)();
  }
}

uint64_t sub_1001106AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  v5 = v3[5];
  v6 = v3[2];
  v7 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(a1, v9, &v10, 0, v6, v7);
}

uint64_t sub_100110768(unint64_t a1, uint64_t a2)
{
  v8 = a2;
  v9 = BYTE4(a2);
  v4 = v2[5];
  v5 = v2[2];
  v6 = v2[3];

  AppleDevice.setRequest(requestType:data:on:)(a1, &v8, &v10, 0, v5, v6);
}

uint64_t sub_10011082C(unint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  v10[0] = *a2;
  v10[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = v2[5];
  v7 = v2[2];
  v8 = v2[3];

  AppleDevice.setRequest(requestType:data:on:)(a1, v10, &v11, 0, v7, v8);
}

uint64_t sub_1001108F4(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v4;
  v9[2] = *(a2 + 32);
  v10 = *(a2 + 48);
  v5 = v2[5];
  v6 = v2[2];
  v7 = v2[3];

  AppleDevice.setRequest(requestType:data:on:)(a1, v9, &v11, 0, v6, v7);
}

uint64_t sub_1001109C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v6 = v4[5];
  v7 = v4[2];
  v8 = v4[3];

  AppleDevice.setRequest(requestType:data:on:)(a1, v10, &v11, 0, v7, v8);
}

uint64_t sub_100110A84(unint64_t a1, uint64_t a2, __int16 a3)
{
  v9 = a2;
  v10 = a3;
  v5 = v3[5];
  v6 = v3[2];
  v7 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(a1, &v9, &v11, 0, v6, v7);
}

uint64_t sub_100110B44(unint64_t a1, uint64_t a2)
{
  v8 = a2;
  v4 = v2[5];
  v5 = v2[2];
  v6 = v2[3];

  AppleDevice.setRequest(requestType:data:on:)(a1, &v8, &v9, 0, v5, v6);
}

uint64_t sub_100110C00(unint64_t a1, int a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v5 = v3[5];
  v6 = v3[2];
  v7 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(a1, &v9, &v11, 0, v6, v7);
}

uint64_t sub_100110CC0(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10[0] = a2;
  v10[1] = a3;
  v11 = a4;
  v6 = v4[5];
  v7 = v4[2];
  v8 = v4[3];

  AppleDevice.setRequest(requestType:data:on:)(a1, v10, &v12, 0, v7, v8);
}

uint64_t sub_100110D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17);
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = v7;
  v29 = a1;
  v18 = sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  sub_10029F448(v17, sub_10011AED0, v22, a4, v18, &type metadata for () + 8, &protocol self-conformance witness table for Error, &v21);
  return (*(v14 + 8))(v17, a4);
}

unint64_t sub_100110F38@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, char **a4@<X8>)
{
  v4 = *(a2 + 12);
  if (*(a2 + 12))
  {
    v6 = result;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v16 = result;
    v15 = *(a2 + 12);
    do
    {
      v19 = v7;
      result = sub_1001110B4(&v19, v6, &v17);
      v10 = v17 | (v18 << 32);
      if ((v10 & 0xFF00000000) != 0x300000000)
      {
        v11 = a3;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100011C2C(0, *(v8 + 2) + 1, 1, v8);
          v8 = result;
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          result = sub_100011C2C((v12 > 1), v13 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 2) = v13 + 1;
        v9 = &v8[8 * v13];
        *(v9 + 8) = v10;
        v9[36] = BYTE4(v10);
        v9[37] = BYTE5(v10);
        a3 = v11;
        v6 = v16;
        v4 = v15;
      }

      ++v7;
    }

    while (v7 != v4);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  *a4 = v8;
  return result;
}

unint64_t sub_1001110B4@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(&type metadata for UInt8 - 1);
  v9 = *(v8 + 16);
  v10 = *(v8 + 72) * v5;
  v9(&v22, a2 + result + v10);

  v18 = v22;
  swift_getKeyPath();
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  (v9)(&v21, a2 + result + v10, &type metadata for UInt8);

  v12 = v21;
  swift_getKeyPath();
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  (v9)(&v20, a2 + result + v10, &type metadata for UInt8);

  v14 = v20;
  swift_getKeyPath();
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v15)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v14)
  {
    v16 = ((v12 != 0) << 8) | 4;
  }

  else
  {
    v16 = (v12 != 0) << 8;
  }

  (v9)(&v19, a2 + result + v10, &type metadata for UInt8);

  if (v19)
  {
    v17 = v16 | 0x400;
  }

  else
  {
    v17 = v16;
  }

  result = sub_100032064(v18, v17);
  *a3 = result;
  *(a3 + 4) = WORD2(result);
  return result;
}

void sub_10011128C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t *), unint64_t a4)
{
  v11 = 0;
  v6 = a3(a1, &v11);
  v7 = v11;
  v8 = a2[5];
  v9 = a2[2];
  v10 = a2[3];

  AppleDevice.setRequest(requestType:data:on:)(a4, v6, v6 + v7, 0, v9, v10);

  free(v6);
}

void sub_100111374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t *), uint64_t a8)
{
  v14 = 0;
  v13 = a7(a1, &v14);
  sub_10010F778(a8, v13, v13 + v14, a3, a4, a5, a6);
  free(v13);
}

uint64_t DeviceDriver<>.userspaceP2POptions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for apple80211_userspace_p2p_options_t(0);
  sub_100110570(389, v8, 0, 0, a1, v8, a2, *(a3 + 16), a4);
  return v10;
}

uint64_t DeviceDriver<>.update(userspaceP2POptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a1;
  v11 = 1;
  type metadata accessor for apple80211_userspace_p2p_options_t(0);
  return sub_100110D80(389, &v11, a2, v9, a3, *(a4 + 16), a5);
}

uint64_t sub_100111558(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a2;
  if (a2[8])
  {
    v13 = 0;
    v14 = 0;
    *(&v16 + 1) = a2[3];
    *&v16 = *(a2 + 1);
    v15 = v16 >> 32;
    v17 = v12 | (v16 << 32);
    v18 = 28;
    v19 = 30;
    LODWORD(v12) = 0;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v15 = 0;
    v14 = 16;
    v13 = 2;
  }

  v22 = 1;
  v23 = a1;
  v24 = BYTE2(a1);
  v25 = BYTE3(a1);
  v26 = BYTE4(a1);
  v27 = BYTE5(a1);
  v28 = 0;
  v29 = v14;
  v30 = v13;
  v31 = 0;
  v32 = v12;
  v33 = 0;
  v34 = v18;
  v35 = v19;
  v36 = 0;
  v37 = 0;
  v38 = v17;
  v39 = v15;
  v40 = 0;
  type metadata accessor for apple80211_infra_peer_address_data(0);
  return sub_100110D80(a3, &v22, a4, v20, a5, *(a6 + 16), a7);
}

uint64_t sub_100111684(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = HIDWORD(a3);
  v8 = a4;
  v9 = a5;
  v10 = a6;
  if (((1 << (a2 & 7)) & ~*(&v7 + (a2 >> 3))) == 0)
  {
    v6 = result;
    swift_beginAccess();
    return sub_10029F424(v6);
  }

  return result;
}

uint64_t sub_100111708@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X7>, char *a7@<X8>, uint64_t a8)
{
  v92 = a6;
  v106 = a3;
  v103 = a8;
  v11 = *a1;
  v12 = *a2;
  v96 = a2;
  v13 = v12;
  v14 = type metadata accessor for Optional();
  v90 = *(v14 - 8);
  v91 = v14;
  v15 = *(v90 + 64);
  __chkstk_darwin();
  v93 = &v86 - v16;
  v94 = *(a5 - 1);
  v17 = *(v94 + 64);
  __chkstk_darwin();
  v89 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = class metadata base offset for KeyPath;
  v20 = *(v13 + class metadata base offset for KeyPath + 8);
  v21 = type metadata accessor for Optional();
  v98 = *(v21 - 8);
  v99 = v21;
  v22 = *(v98 + 64);
  __chkstk_darwin();
  v102 = &v86 - v23;
  v101 = *(v20 - 8);
  v24 = *(v101 + 64);
  __chkstk_darwin();
  v97 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v86 - v26;
  v27 = *(v11 + v19);
  v28 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v30 = &v86 - v29;
  v105 = *(v27 - 8);
  v31 = *(v105 + 64);
  __chkstk_darwin();
  v104 = &v86 - v32;
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if ((v34 & 1) == 0)
  {
    v95 = a5;
    v35 = 0;
    v36 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v37 = v106;
      if (v36 == 2)
      {
        v35 = *(v106 + 16);
      }
    }

    else
    {
      v37 = v106;
      if (v36)
      {
        v35 = v106;
      }
    }

    v38 = v35 + v31;
    if (__OFADD__(v35, v31))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v36 > 1)
    {
      if (v36 == 2)
      {
        if (v38 >= *(v37 + 24))
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      if (v38 < 0)
      {
LABEL_65:
        __break(1u);
        return result;
      }
    }

    else
    {
      if (!v36)
      {
        if (v38 >= BYTE6(a4))
        {
          goto LABEL_20;
        }

LABEL_16:
        if (v36)
        {
          if (v36 == 2)
          {
            v39 = *(v37 + 16);
          }

          else
          {
            v39 = v37;
          }
        }

        else
        {
          v39 = 0;
        }

        if (v38 < v39)
        {
          goto LABEL_65;
        }

        v88 = a7;
        v87 = result;
        v42 = Data._Representation.subscript.getter();
        v44 = v43;
        Data.load<A>(as:)(v42, v43, v27, v30);
        sub_1000124C8(v42, v44);
        v45 = v105;
        (*(v105 + 56))(v30, 0, 1, v27);
        v46 = v104;
        v86 = *(v45 + 32);
        v86(v104, v30, v27);
        if (v36)
        {
          v47 = v102;
          v48 = a4;
          v49 = v106;
          if (v36 == 2)
          {
            v50 = *(v106 + 16);
            result = v50 + v87;
            v51 = v88;
            if (__OFADD__(v50, v87))
            {
LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

            v52 = v103;
            if (result >= *(v106 + 24))
            {
              goto LABEL_37;
            }

LABEL_32:
            if (v36)
            {
              if (v36 != 2)
              {
                v59 = v100;
                v55 = v49;
                v54 = v49 >> 32;
                goto LABEL_41;
              }

              v55 = *(v49 + 16);
              v54 = *(v49 + 24);
            }

            else
            {
              v55 = 0;
              v54 = BYTE6(v48);
            }

            v59 = v100;
LABEL_41:
            if (v54 >= result && v54 >= v55)
            {
              result = Data._Representation.subscript.getter();
              v61 = v60 >> 62;
              v106 = v60;
              v103 = result;
              if ((v60 >> 62) > 1)
              {
                if (v61 != 2)
                {
                  v62 = 0;
                  goto LABEL_53;
                }

                v64 = *(result + 16);
                v63 = *(result + 24);
                v65 = __OFSUB__(v63, v64);
                v62 = v63 - v64;
                if (!v65)
                {
                  goto LABEL_53;
                }

                __break(1u);
              }

              else if (!v61)
              {
                v62 = BYTE6(v60);
LABEL_53:
                v107 = v62;
                v66 = *(v52 + 24);
                sub_100086E78();
                dispatch thunk of Numeric.init<A>(exactly:)();
                v67 = v101;
                if ((*(v101 + 48))(v47, 1, v20) == 1)
                {
                  (*(v105 + 8))(v104, v27);
                  sub_1000124C8(v103, v106);
                  (*(v98 + 8))(v47, v99);
                  v68 = v88;
                }

                else
                {
                  (*(v67 + 32))(v59, v47, v20);
                  v69 = v97;
                  v70 = v104;
                  swift_getAtKeyPath();
                  v71 = *(*(v52 + 16) + 8);
                  v72 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v73 = v69;
                  v74 = *(v67 + 8);
                  v74(v73, v20);
                  v75 = v67 + 8;
                  v68 = v88;
                  if (v72)
                  {
                    v101 = v75;
                    v102 = v74;
                    type metadata accessor for BinaryDecoder();
                    v76 = v93;
                    v77 = v95;
                    v78 = v103;
                    v79 = v106;
                    static BinaryDecoder.decode<A>(_:data:)(v95, v103, v106, v95);
                    (v102)(v100, v20);
                    sub_1000124C8(v78, v79);
                    v80 = v94;
                    (*(v94 + 56))(v76, 0, 1, v77);
                    v81 = *(v80 + 32);
                    v82 = v89;
                    v81(v89, v76, v77);
                    v83 = v77;
                    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
                    v85 = *(TupleTypeMetadata2 + 48);
                    v86(v68, v104, v27);
                    v81(&v68[v85], v82, v83);
                    return (*(*(TupleTypeMetadata2 - 8) + 56))(v68, 0, 1, TupleTypeMetadata2);
                  }

                  sub_1000124C8(v103, v106);
                  v74(v59, v20);
                  (*(v105 + 8))(v70, v27);
                }

                v56 = swift_getTupleTypeMetadata2();
                v57 = *(*(v56 - 8) + 56);
                v58 = v68;
                return v57(v58, 1, 1, v56);
              }

              LODWORD(v62) = HIDWORD(result) - result;
              if (!__OFSUB__(HIDWORD(result), result))
              {
                v62 = v62;
                goto LABEL_53;
              }

              goto LABEL_64;
            }

            goto LABEL_61;
          }

          result = v87 + v106;
          v51 = v88;
          if (__OFADD__(v87, v106))
          {
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v52 = v103;
          if (result < v106 >> 32)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v48 = a4;
          v53 = BYTE6(a4);
          result = v87;
          v51 = v88;
          v47 = v102;
          v52 = v103;
          v49 = v106;
          if (v87 < v53)
          {
            goto LABEL_32;
          }
        }

LABEL_37:
        (*(v45 + 8))(v46, v27, v49, v48);
        v56 = swift_getTupleTypeMetadata2();
        v57 = *(*(v56 - 8) + 56);
        v58 = v51;
        return v57(v58, 1, 1, v56);
      }

      if (v38 < v37 >> 32)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_20:
  v40 = swift_getTupleTypeMetadata2();
  v41 = *(*(v40 - 8) + 56);

  return v41(a7, 1, 1, v40);
}

void sub_100112214(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v11 = __OFSUB__(v9, v10);
      v12 = v9 - v10;
      if (v11)
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v7 == v12)
      {
        goto LABEL_8;
      }
    }

    else if (!v7)
    {
      goto LABEL_8;
    }

LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (v7 != HIDWORD(a1) - a1)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_18:
    __break(1u);
    return;
  }

  if (v7 != BYTE6(a2))
  {
    goto LABEL_13;
  }

LABEL_8:
  v15 = *(a3 - 8);
  Data.load<A>(as:)(a1, a2, a3, a4);
  v13 = 0;
  v6 = v15;
LABEL_14:
  v14 = *(v6 + 56);

  v14(a4, v13, 1, a3);
}

uint64_t sub_100112350(unint64_t a1)
{
  v1 = HIDWORD(a1) == 1;
  if (a1 == 2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100112384(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v3 = 512;
  if (HIBYTE(a2) < 3u)
  {
    v3 = a2 & 0xFF00;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00 | a2 | (a3 << 16);

  return v4;
}

unint64_t sub_1001123DC()
{
  result = (*(v0 + 3) << 8) | (*(v0 + 4) << 16) | (*(v0 + 5) << 24) | (*(v0 + 6) << 32) | (*(v0 + 7) << 40) | (*(v0 + 8) << 48) | *(v0 + 1) | ((*v0 == 1) << 56);
  v2 = *(v0 + 9) | (*(v0 + 13) << 32) | (*(v0 + 14) << 40);
  return result;
}

unint64_t sub_10011243C(unsigned __int16 a1, uint64_t a2)
{
  if (BYTE6(a2) == 24)
  {
    v2 = a1;
    v3 = a2;
    _s7CoreP2P21NANActionFrameSubtypeO8rawValueACSgs5UInt8V_tcfC_0(HIBYTE(a2));
    a2 = v3;
    a1 = v2;
  }

  return a1 | (a2 << 16);
}

uint64_t sub_100112578(unint64_t a1, __int16 a2)
{
  LOWORD(v6) = HIWORD(a1);
  HIWORD(v6) = a2;
  v2 = (a1 >> 16) - 1;
  if (v2 >= 5)
  {
    v3 = 327680;
  }

  else
  {
    v3 = v2 << 16;
  }

  if ((v6 - 1) >= 3)
  {
    v4 = 50331648;
  }

  else
  {
    v4 = (v6 - 1) << 24;
  }

  return v3 & 0xFFFF0000 | a1 | v4;
}

int32x2_t sub_1001125C0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 35);
  if (v3 < 0x3C1)
  {
    v4 = *(v1 + 31);
    if (v4)
    {
LABEL_3:
      if (v4 == 1)
      {
        memcpy(__dst, (v1 + 37), sizeof(__dst));
        v5 = sub_1002AAFAC(__dst, v3);
        v7 = v6;
        v8 = sub_100033AA8(_swiftEmptyArrayStorage);
        v9 = type metadata accessor for BinaryDecoder();
        v10 = swift_allocObject();
        v11 = 0;
        v10[5] = &_swiftEmptyDictionarySingleton;
        v10[2] = v5;
        v10[3] = v7;
        v12 = v7 >> 62;
        if ((v7 >> 62) > 1)
        {
          if (v12 == 2)
          {
            v11 = *(v5 + 16);
          }
        }

        else if (v12)
        {
          v11 = v5;
        }

        v10[4] = v11;
        swift_beginAccess();
        v10[5] = v8;
        v38 = v9;
        v39 = sub_10011AB40(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v37[0] = v10;
        sub_10000AB0C(v5, v7);

        v25 = sub_1001F5414(v37);
        v21 = v29;
        v22 = v30;
        LOBYTE(v23) = v31;

        sub_1000124C8(v5, v7);
        v23 = v23;
        v24 = 1;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 3;
        v25 = 12;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v4 = *(v1 + 31);
    v3 = 960;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  memcpy(__dst, (v1 + 37), sizeof(__dst));
  v13 = sub_1002AAFAC(__dst, v3);
  v15 = v14;
  v16 = sub_100033AA8(_swiftEmptyArrayStorage);
  v17 = type metadata accessor for BinaryDecoder();
  v18 = swift_allocObject();
  v19 = 0;
  v18[5] = &_swiftEmptyDictionarySingleton;
  v18[2] = v13;
  v18[3] = v15;
  v20 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v19 = *(v13 + 16);
    }
  }

  else if (v20)
  {
    v19 = v13;
  }

  v18[4] = v19;
  swift_beginAccess();
  v18[5] = v16;
  v38 = v17;
  v39 = sub_10011AB40(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v37[0] = v18;
  sub_10000AB0C(v13, v15);

  LOBYTE(v25) = sub_10003132C(v37);
  v21 = v26;
  v22 = v27;
  v23 = v28;

  sub_1000124C8(v13, v15);
  v25 = v25;
  v24 = 2;
LABEL_18:
  v33 = *v1;
  v32 = *(v1 + 8);
  v34 = *(v1 + 4);
  *a1 = *(v1 + 6);
  result = vzip1_s32(v32, v33);
  *(a1 + 2) = result;
  *(a1 + 10) = v34;
  *(a1 + 16) = v25;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
  *(a1 + 40) = v23;
  *(a1 + 48) = v24;
  return result;
}

CoreP2P::Channel::Band_optional __swiftcall Channel.Band.init(apple80211:)(__C::apple80211_channel_band apple80211)
{
  if (apple80211.rawValue >= 4)
  {
    return 3;
  }

  else
  {
    return (0x2010003u >> (8 * LOBYTE(apple80211.rawValue)));
  }
}

uint64_t sub_10011298C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_10005DC58(&qword_10058D6A8, &qword_100487310) - 8) + 64);
  __chkstk_darwin();
  v6 = &v57 - v5;
  v7 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 152);
  v13 = *(a1 + 184);
  v88[10] = *(a1 + 168);
  v88[11] = v13;
  v89 = *(a1 + 200);
  v14 = *(a1 + 88);
  v15 = *(a1 + 120);
  v88[6] = *(a1 + 104);
  v88[7] = v15;
  v16 = *(a1 + 136);
  v88[9] = v12;
  v88[8] = v16;
  v17 = *(a1 + 24);
  v18 = *(a1 + 56);
  v88[2] = *(a1 + 40);
  v88[3] = v18;
  v19 = *(a1 + 72);
  v88[5] = v14;
  v88[4] = v19;
  v20 = *(a1 + 8);
  v88[1] = v17;
  v88[0] = v20;
  sub_100114F34(v88, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100016290(v6, &qword_10058D6A8, &qword_100487310);
LABEL_5:
    v37 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
    return (*(*(v37 - 8) + 56))(a2, 1, 1, v37);
  }

  sub_100038FEC(v6, v11, type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration);
  v21 = *(a1 + 208);
  v22 = *(a1 + 224);
  v75 = *(a1 + 232);
  v76 = v22;
  v23 = *(a1 + 240);
  v24 = *(a1 + 248);
  v25 = *(a1 + 256);
  v26 = *(a1 + 264);
  v27 = *(a1 + 272);
  v28 = *(a1 + 280);
  v29 = *(a1 + 296);
  v73 = *(a1 + 288);
  v74 = v27;
  v30 = *(a1 + 312);
  v71 = *(a1 + 304);
  v72 = v29;
  v31 = *(a1 + 328);
  v69 = *(a1 + 320);
  v70 = v30;
  v32 = *(a1 + 344);
  v67 = *(a1 + 336);
  v68 = v31;
  v33 = *(a1 + 360);
  v65 = *(a1 + 352);
  v66 = v32;
  v34 = *(a1 + 376);
  v63 = *(a1 + 368);
  v64 = v33;
  v35 = *(a1 + 392);
  v61 = *(a1 + 384);
  v62 = v34;
  v36 = *(a1 + 408);
  v59 = *(a1 + 400);
  v60 = v35;
  v57 = *(a1 + 416);
  v58 = v36;
  memcpy(v87, (a1 + 424), sizeof(v87));
  sub_100118450(v87, v86);
  if (sub_10011AF1C(v86) == 1)
  {
    sub_10003B8D4(v11, type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration);
    goto LABEL_5;
  }

  v83 = v86[6];
  v84 = v86[7];
  v85 = v86[8];
  v79 = v86[2];
  v80 = v86[3];
  v81 = v86[4];
  v82 = v86[5];
  v77 = v86[0];
  v78 = v86[1];
  sub_100038FEC(v11, a2, type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration);
  v39 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  v40 = a2 + *(v39 + 20);
  v41 = v78;
  *(v40 + 216) = v77;
  v42 = v85;
  *(v40 + 328) = v84;
  *(v40 + 344) = v42;
  v43 = v83;
  *(v40 + 296) = v82;
  *(v40 + 312) = v43;
  v44 = v81;
  v45 = v79;
  *(v40 + 264) = v80;
  *(v40 + 280) = v44;
  *(v40 + 248) = v45;
  *v40 = v21;
  *(v40 + 8) = v28;
  v46 = v75;
  *(v40 + 16) = v76;
  *(v40 + 24) = v46;
  *(v40 + 32) = v23;
  *(v40 + 40) = v24;
  *(v40 + 48) = v25;
  *(v40 + 56) = v26;
  v47 = v73;
  *(v40 + 64) = v74;
  *(v40 + 72) = v28;
  v48 = v71;
  v49 = v72;
  *(v40 + 80) = v47;
  *(v40 + 88) = v49;
  *(v40 + 96) = v48;
  v50 = v69;
  *(v40 + 104) = v70;
  *(v40 + 112) = v50;
  v51 = v67;
  *(v40 + 120) = v68;
  *(v40 + 128) = v51;
  v52 = v65;
  *(v40 + 136) = v66;
  *(v40 + 144) = v52;
  v53 = v63;
  *(v40 + 152) = v64;
  *(v40 + 160) = v53;
  v54 = v61;
  *(v40 + 168) = v62;
  *(v40 + 176) = v54;
  v55 = v59;
  *(v40 + 184) = v60;
  *(v40 + 192) = v55;
  v56 = v57;
  *(v40 + 200) = v58;
  *(v40 + 208) = v56;
  *(v40 + 232) = v41;
  return (*(*(v39 - 8) + 56))(a2, 0, 1, v39);
}

uint64_t sub_100112D70@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  if (v9 < 0)
  {
    Logger.init(subsystem:category:)();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v14, v15, "Received negative chain_rssi_present (%d) in AWDL Action Frame header.", v16, 8u);
    }

    (*(v4 + 8))(v8, v3);
    v17 = type metadata accessor for AWDLActionFrame.Header(0);
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  else
  {
    v10 = *v1;
    v6.i32[0] = *(v1 + 2);
    v33 = vmovl_u8(v6);
    v11 = sub_100032064(*(v1 + 4), *(v1 + 5));
    v34 = v9;
    if ((v11 & 0xFF00000000) == 0x300000000)
    {
      if (qword_10058AA90 != -1)
      {
        swift_once();
      }

      v12 = static Channel.awdlSocial2GHz;
      v32 = byte_10059B61C;
      v13 = byte_10059B61D;
    }

    else
    {
      v12 = v11;
      v32 = HIDWORD(v11);
      v13 = v11 >> 40;
    }

    v31 = v13;
    v19 = *(v1 + 6);
    v20 = type metadata accessor for AWDLActionFrame.Header(0);
    v21 = v20[8];
    *(a1 + v21) = *(v1 + 7);
    v22 = enum case for DispatchTimeInterval.milliseconds(_:);
    v23 = type metadata accessor for DispatchTimeInterval();
    v24 = *(*(v23 - 8) + 104);
    v24(a1 + v21, v22, v23);
    v25 = v20[9];
    *(a1 + v25) = *(v1 + 8);
    v24(a1 + v25, v22, v23);
    LODWORD(v22) = *(v1 + 9);
    LODWORD(v23) = *(v1 + 10);
    LODWORD(v21) = *(v1 + 12);
    v26 = *(v1 + 11);
    v27 = v1[7];
    sub_10005DC58(&qword_10058D6B0, &qword_100487318);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100486AE0;
    *(v28 + 32) = *(v1 + 17);
    *a1 = v10;
    *(a1 + 8) = vuzp1_s8(*v33.i8, *v33.i8).u32[0];
    *(a1 + 12) = v12;
    v29 = v31;
    *(a1 + 16) = v32;
    *(a1 + 17) = v29;
    *(a1 + 20) = v19;
    *(a1 + v20[10]) = v22;
    *(a1 + v20[11]) = v23;
    *(a1 + v20[12]) = v26;
    *(a1 + v20[13]) = v21;
    *(a1 + v20[14]) = v27;
    *(a1 + v20[15]) = v34;
    *(a1 + v20[16]) = v28;
    v30 = *(*(v20 - 1) + 56);

    return v30(a1, 0, 1, v20);
  }
}

unint64_t sub_100113168()
{
  v1 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  v15 = _swiftEmptyArrayStorage;
  sub_1000C0604(0, 10, 0);
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *&__dst[v2 + 16];
    v12 = *&__dst[v2];
    v13[0] = v4;
    *(v13 + 12) = *&__dst[v2 + 28];
    sub_100114808(&v12, v14);
    v15 = v3;
    v6 = v3[2];
    v5 = v3[3];
    if (v6 >= v5 >> 1)
    {
      sub_1000C0604((v5 > 1), v6 + 1, 1);
      v3 = v15;
    }

    v3[2] = v6 + 1;
    v7 = v3 + 14 * v6;
    v8 = *&v14[6];
    *(v7 + 4) = *v14;
    *(v7 + 38) = v8;
    if (v2 == 396)
    {
      break;
    }

    v2 += 44;
  }

  v9 = v1[55];
  v10 = *(v1 + 112);
  return *(v1 + 115) | (*(v1 + 464) << 32) | (*(v1 + 465) << 40);
}

__n128 sub_100113290@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  v6 = a1 & 0xFFFF0000;
  if ((a1 & 0xFFFF0000) != 0)
  {
    v22 = a2;
    v23 = a3;
    v7 = sub_10004F3B0(&v22, v24);
    v9 = v8;
    v13 = sub_1002A58C4(v7, v8);
    v15 = v14;
    sub_1000124C8(v7, v9);
  }

  else
  {
    LOBYTE(v22) = BYTE4(a1);
    BYTE1(v22) = BYTE5(a1);
    BYTE2(v22) = BYTE6(a1);
    BYTE3(v22) = HIBYTE(a1);
    v10 = sub_10004F3B0(&v22, &v22 + 4);
    v12 = v11;
    v16 = sub_10003462C(v10, v11);
    sub_1000124C8(v10, v12);
    v15 = 0;
    v13 = v16;
  }

  v22 = v13;
  v23 = v15;
  v24[0] = 0;
  v24[1] = 0;
  v25 = v6 != 0;
  sub_1000E5728(&v22, v20);
  v17 = v21;
  sub_10011AF34(v13, v15, 0, 0, v6 != 0);
  result = v20[0];
  v19 = v20[1];
  *a4 = v4;
  *(a4 + 24) = v19;
  *(a4 + 8) = result;
  *(a4 + 40) = v17;
  return result;
}

void sub_100113440(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v4 = sub_1004771E4(a1, a2, &v9);
  v5 = v9;
  v6 = a3[5];
  v7 = a3[2];
  v8 = a3[3];

  AppleDevice.setRequest(requestType:data:on:)(0xA2uLL, v4, v4 + v5, 0, v7, v8);

  free(v4);
}

void sub_100113518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  v9 = sub_1004771E4(a1, a2, &v14);
  v10 = v14;
  v11 = *(a6 + 8);
  v12 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10010F778(162, v9, v9 + v10, a4, v11, v12, AssociatedConformanceWitness);
  free(v9);
}

uint64_t sub_100113628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = *(a6 + 8);
  v13 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_10010F778(120, a1, a2, a4, v12, v13, AssociatedConformanceWitness);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t sub_1001136FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAtKeyPath();
  v6 = *(a5 + 16);
  if (v6 >= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(a5 + 16);
  }

  v8 = swift_modifyAtWritableKeyPath();
  v9 = v8;
  v11 = v10;
  if (v6)
  {
    v29 = v8;
    v12 = (a5 + 32);
    sub_1000C0644(0, v7, 0);
    v13 = v7;
    while (1)
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = v15 >> 62;
      if ((v15 >> 62) <= 1)
      {
        break;
      }

      if (v16 == 2)
      {
        v18 = *(v14 + 16);
        v19 = *(v14 + 24);
        v20 = __OFSUB__(v19, v18);
        v17 = v19 - v18;
        if (v20)
        {
          goto LABEL_30;
        }

        goto LABEL_15;
      }

LABEL_16:
      sub_1000BA0A4();
      v21 = DataProtocol.copyBytes(to:)();
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v21 >> 16)
      {
        goto LABEL_28;
      }

      v31 = v21;
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000C0644((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = _swiftEmptyArrayStorage + 34 * v23;
      *(v24 + 32) = v31;
      *(v24 + 2) = 0u;
      *(v24 + 3) = 0u;
      ++v12;
      if (!--v13)
      {
        v9 = v29;
        goto LABEL_22;
      }
    }

    if (v16)
    {
      LODWORD(v17) = DWORD1(v14) - v14;
      if (__OFSUB__(DWORD1(v14), v14))
      {
        goto LABEL_29;
      }

      v17 = v17;
    }

    else
    {
      v17 = BYTE6(v15);
    }

LABEL_15:
    if (v17 > 32)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    goto LABEL_16;
  }

LABEL_22:
  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v26 = &_swiftEmptyArrayStorage[4];
    do
    {
      v27 = *v26;
      v30 = *(v26 + 1);
      *(v11 + 32) = *(v26 + 16);
      *v11 = v27;
      *(v11 + 16) = v30;
      v11 += 34;
      v26 = (v26 + 34);
      --v25;
    }

    while (v25);
  }

  v9(v32, 0);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_1001139B4@<X0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  v8 = sub_1000D3CF8(3, 2uLL, *v1, a1);
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v10 = v8;
  v11 = sub_1000E5558(5, 2uLL, v7, v9);
  v13 = 0.0;
  if (v11 < 5)
  {
    v13 = v11 * 0.2 * 5.0;
    if (COERCE__INT64(fabs(v13)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      swift_once();
      goto LABEL_10;
    }

    if (v13 <= -1.0)
    {
      __break(1u);
    }

    else
    {
      v12 = 0x4070000000000000;
      if (v13 < 256.0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_6:
  v14 = sub_1000E5558(8, 4uLL, v7, v12);
  v3 = v14;
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 > 0xFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = v10;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v10 = *(v1 + 24);
  v34 = a1;
  if (v10 >> 60 != 15)
  {
    v15 = v4;
    v17 = v5;
    v19 = v10;
    goto LABEL_12;
  }

  if (qword_10058A7E0 != -1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v15 = TimeBitmap.nanBitmap.getter(static TimeBitmap.zero, *(&static TimeBitmap.zero + 1), qword_10059B370);
  v17 = v16;
  v19 = v18;
LABEL_12:
  sub_10005D4F4(v4, v5, v10);
  sub_100113EC8(v15, v17, v19, v31);
  result = sub_1000124C8(v17, v19);
  *&v33[17] = v31[1];
  *&v33[33] = v31[2];
  *&v33[49] = *v32;
  *&v33[63] = *&v32[14];
  *&v33[1] = v31[0];
  if ((*(v1 + 48) & 1) != 0 && (v21 = *(v1 + 40), *(v21 + 16)))
  {
    v22 = *(v21 + 32);
    v23 = *(v21 + 34);
    v24 = *(v21 + 36);
    if (*(v21 + 40))
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v21 + 38);
    }

    v27 = v34;
    v28 = *v33;
    *(v34 + 19) = *&v33[16];
    v29 = *&v33[48];
    *(v27 + 35) = *&v33[32];
    *(v27 + 51) = v29;
    *v27 = v30;
    *(v27 + 1) = v13;
    *(v27 + 2) = v3;
    *(v27 + 66) = *&v33[63];
    *(v27 + 3) = v28;
    *(v27 + 74) = v22;
    *(v27 + 75) = v24;
    *(v27 + 76) = v23;
    *(v27 + 78) = v25;
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v26 = xmmword_100481860;
    *(v26 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100113CAC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = a3;
    v8 = result;
    v30 = HIDWORD(a3);
    v31 = a3 >> 40;
    v36 = v4;
    v10 = *(a4 + 48);
    v9 = *(a4 + 56);
    v29 = v5;
    v11 = a3 >> 24;
    v12 = a3 >> 16;
    v28 = *(a4 + 32);
    v13 = *(a4 + 40);
    v14 = a3 >> 8;
    sub_10000AB0C(v10, v9);
    sub_10000AB0C(v10, v9);
    sub_100113EC8(v13, v10, v9, &v32);
    sub_1000124C8(v10, v9);
    v15 = v32;
    *(v8 + 24) = v33;
    v16 = *v35;
    *(v8 + 40) = v34;
    *(v8 + 56) = v16;
    *v8 = v7;
    v27 = v14;
    *(v8 + 1) = v14;
    *(v8 + 2) = v12;
    *(v8 + 3) = v11;
    *(v8 + 4) = v30;
    *(v8 + 5) = v31;
    *(v8 + 6) = v28;
    *(v8 + 7) = 1;
    *(v8 + 70) = *&v35[14];
    *(v8 + 8) = v15;
    result = sub_1000124C8(v10, v9);
    if (v29 != 1)
    {
      v18 = *(a4 + 80);
      v17 = *(a4 + 88);
      v19 = *(a4 + 64);
      v20 = *(a4 + 72);
      sub_10000AB0C(v18, v17);
      sub_10000AB0C(v18, v17);
      sub_100113EC8(v20, v18, v17, &v32);
      sub_1000124C8(v18, v17);
      v21 = v32;
      *(v8 + 102) = v33;
      v22 = *v35;
      *(v8 + 118) = v34;
      *(v8 + 134) = v22;
      *(v8 + 78) = v7;
      *(v8 + 79) = v27;
      *(v8 + 80) = v12;
      *(v8 + 81) = v11;
      *(v8 + 82) = v30;
      *(v8 + 83) = v31;
      *(v8 + 84) = v19;
      *(v8 + 85) = 1;
      *(v8 + 148) = *&v35[14];
      *(v8 + 86) = v21;
      result = sub_1000124C8(v18, v17);
      v23 = v29 - 2;
      if (v29 != 2)
      {
        v24 = (a4 + 120);
        do
        {
          v26 = *(v24 - 1);
          v25 = *v24;
          sub_10000AB0C(v26, *v24);
          result = sub_1000124C8(v26, v25);
          v24 += 4;
          --v23;
        }

        while (v23);
      }
    }
  }

  return result;
}

__n128 sub_100113EC8@<Q0>(__int16 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(&v26[2], 0, 68);
  v8 = sub_10002F214(6, 9uLL, a1, __stack_chk_guard);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v8 >> 16)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *v26 = v8;
  v9 = sub_10002F09C(3uLL, 3uLL, a1);
  v10 = a3 >> 62;
  v11 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v9);
  if (v11 == 8)
  {
    v26[2] = 0;
  }

  else
  {
    v26[2] = v11;
  }

  v12 = sub_10002F09C(0, 3uLL, a1);
  v13 = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v12);
  if (v13 == 4)
  {
    v26[3] = 0;
    if (v10 <= 1)
    {
      if (!v10)
      {
LABEL_8:
        v14 = BYTE6(a3);
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v26[3] = v13;
    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_8;
      }

LABEL_12:
      LODWORD(v14) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      v14 = v14;
      goto LABEL_16;
    }
  }

  if (v10 != 2)
  {
    v26[4] = 0;
    v19 = sub_10004AF78(0, 0, a2, a3);
    v20 = 0;
    goto LABEL_29;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = __OFSUB__(v15, v16);
  v14 = v15 - v16;
  if (v17)
  {
    goto LABEL_36;
  }

LABEL_16:
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_17:
  if (v14 >= 0x40)
  {
    v18 = 64;
  }

  else
  {
    v18 = v14;
  }

  v26[4] = v18;
  if (v10 > 1)
  {
    v19 = sub_10004AF78(*(a2 + 16), v18, a2, a3);
    v20 = *(a2 + 16);
    if (*(a2 + 24) < v20)
    {
      goto LABEL_34;
    }
  }

  else if (v10)
  {
    v19 = sub_10004AF78(a2, v18, a2, a3);
    v20 = a2;
    if (a2 >> 32 < a2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v19 = sub_10004AF78(0, v18, a2, a3);
    v20 = 0;
  }

LABEL_29:
  if (v19 < v20)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = Data._Representation.subscript.getter();
  v23 = v22;
  sub_1000A1CDC(v21, v22, &v26[5], &v26[69]);
  sub_1000124C8(v21, v23);
  v24 = *&v26[48];
  *(a4 + 32) = *&v26[32];
  *(a4 + 48) = v24;
  *(a4 + 62) = *&v26[62];
  result = *&v26[16];
  *a4 = *v26;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_1001141BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = v5[2];

  v20 = v6;
  if (!v6)
  {
  }

  v8 = 0;
  v9 = a1 + 1;
  v10 = v5 + 7;
  while (v8 < v5[2])
  {
    ++v8;
    v12 = *(v10 - 1);
    v11 = *v10;
    v13 = *(v10 - 24);
    v14 = *(v10 - 8);
    sub_10000AB0C(v12, *v10);
    sub_10000AB0C(v12, v11);
    sub_100113EC8(v14, v12, v11, v17);
    sub_1000124C8(v12, v11);
    *&v19[33] = v17[2];
    *&v19[49] = *v18;
    *&v19[63] = *&v18[14];
    *&v19[1] = v17[0];
    *&v19[17] = v17[1];
    *(v9 - 1) = v13;
    v15 = *&v19[48];
    *(v9 + 32) = *&v19[32];
    *(v9 + 48) = v15;
    *(v9 + 63) = *&v19[63];
    v16 = *&v19[16];
    *v9 = *v19;
    *(v9 + 16) = v16;
    result = sub_1000124C8(v12, v11);
    v9 += 72;
    v10 += 4;
    if (v20 == v8)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t Channel.apple80211Channel.getter(unint64_t a1)
{
  if ((BYTE5(a1) - 2) >= 5u)
  {
    if ((a1 >> 40))
    {
      v2 = 516;
    }

    else
    {
      v2 = 4;
    }
  }

  else
  {
    v2 = dword_10048765C[(BYTE5(a1) - 2)];
  }

  v3 = dword_100487650[(a1 << 24) >> 56] | v2;
  Channel.isDFS.getter(a1);
  return (a1 << 32) | 1;
}

uint64_t sub_100114390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v13 = *(a5 + 8);
  v14 = *(a6 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_10010F5C4(a8, a1, a2, 0, 0, a4, v13, v14, AssociatedConformanceWitness);
  if (v8)
  {
    *a7 = v8;
  }

  return result;
}

uint64_t sub_100114478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10005DC58(&qword_10058D648, &qword_100487280);
  sub_100289004(a1, sub_100114504, 0, a3, &type metadata for Never, v5, &protocol witness table for Never, v6);
  return v8;
}

uint64_t sub_100114504@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = a2 - result;
  if ((a2 - result + 23) < 0x2F)
  {
    goto LABEL_7;
  }

  v4 = result;
  v5 = a3;
  v6 = v3 / 24;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v3 >= -23)
  {
    v7 = (v4 + 16);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v7 += 3;
      [objc_allocWithZone(WiFiAwareDataSessionStatisticsHistogramBin) initWithBinStart:v8 binEnd:v9 value:v10];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      --v6;
    }

    while (v6);
    a3 = v5;
LABEL_7:
    *a3 = _swiftEmptyArrayStorage;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011463C(unsigned int a1)
{
  if (a1 > 0x16)
  {
    return 3;
  }

  else
  {
    return qword_100487580[a1];
  }
}

uint64_t sub_10011465C(unsigned int a1)
{
  if (a1 > 0x16)
  {
    return 46;
  }

  else
  {
    return byte_100487638[a1];
  }
}

uint64_t sub_10011478C(unint64_t a1)
{
  if ((BYTE5(a1) - 2) >= 5u)
  {
    if ((a1 >> 40))
    {
      v1 = 516;
    }

    else
    {
      v1 = 4;
    }
  }

  else
  {
    v1 = dword_10048765C[(BYTE5(a1) - 2)];
  }

  v2 = dword_100487650[(a1 << 24) >> 56] | v1;
  if (Channel.isDFS.getter(a1))
  {
    return v2 | 0x100;
  }

  else
  {
    return v2;
  }
}

int8x8_t sub_100114808@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2.i32[0] = *a1;
  v4 = *(a1 + 4);
  v39 = *(a1 + 5);
  v5 = *(a1 + 8);
  v7 = *(a1 + 20);
  v6 = *(a1 + 24);
  v9 = *(a1 + 28);
  v8 = *(a1 + 32);
  v10 = *(a1 + 36);
  v36 = *(a1 + 32);
  v37 = *(a1 + 40);
  if (v5)
  {
    v17 = *(a1 + 24);
    v6 = *(a1 + 28);
    v9 = *(a1 + 36);
    v18 = *(a1 + 4);
    v19 = *(a1 + 16);
    v20 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(*(a1 + 12) & 0x1FF);
    if (v20 == 55)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v4 = v18;
    LOWORD(v10) = v9;
    LOWORD(v9) = v6;
    LOWORD(v6) = v17;
    v22 = v21;
    v23 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v19 & 0x1FF);
    if (v23 == 34)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v11 = v22 | (v24 << 8);
    if ((v5 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v16 = 8704;
    goto LABEL_18;
  }

  v11 = 8704;
  if ((v5 & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v12 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v7 & 0x1FF);
  if (v12 == 55)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v6 & 0x1FF);
  if (v14 == 34)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = v13 | (v15 << 8);
LABEL_18:
  v38 = vmovl_u8(v2).u64[0];
  if ((v5 & 4) != 0)
  {
    v31 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v9 & 0x1FF);
    if (v31 == 55)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31;
    }

    v33 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v36 & 0x1FF);
    if (v33 == 34)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    v25 = v32 | (v34 << 8);
    if ((v5 & 8) != 0)
    {
      goto LABEL_20;
    }

LABEL_34:
    v30 = 8704;
    goto LABEL_35;
  }

  v25 = 8704;
  if ((v5 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_20:
  v26 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v10 & 0x1FF);
  if (v26 == 55)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  v28 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v37 & 0x1FF);
  if (v28 == 34)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  v30 = v27 | (v29 << 8);
LABEL_35:
  result = vuzp1_s8(v38, v38);
  *a2 = result.i32[0];
  *(a2 + 4) = v4;
  *(a2 + 5) = v39;
  *(a2 + 6) = v11;
  *(a2 + 8) = v16;
  *(a2 + 10) = v25;
  *(a2 + 12) = v30;
  return result;
}

unint64_t WiFiNetwork.createRecord()(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = a3 >> 8;
  v9 = a3 >> 16;
  v10 = a3 >> 24;
  v20 = HIDWORD(a3);
  v21 = a3 >> 40;
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  inited = swift_initStackObject();
  *(inited + 32) = 0x5254535F44495353;
  *(inited + 16) = xmmword_100486AF0;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1145656147;
  *(inited + 88) = 0xE400000000000000;
  swift_bridgeObjectRetain_n();
  *(inited + 96) = sub_10016FD40(a1, a2);
  *(inited + 104) = v12;
  *(inited + 120) = &type metadata for Data;
  *(inited + 128) = 0x4449535342;
  *(inited + 136) = 0xE500000000000000;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004817D0;
  *(v13 + 32) = v5;
  *(v13 + 33) = v8;
  *(v13 + 34) = v9;
  *(v13 + 35) = v10;
  *(v13 + 36) = v20;
  *(v13 + 37) = v21;
  v14 = sub_10002D874(v13);
  v16 = v15;

  *(inited + 144) = v14;
  *(inited + 152) = v16;
  *(inited + 168) = &type metadata for Data;
  *(inited + 176) = 0x4C454E4E414843;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = a4;
  *(inited + 216) = &type metadata for UInt32;
  strcpy((inited + 224), "CHANNEL_FLAGS");
  *(inited + 238) = -4864;
  v17 = sub_10011478C(a4 & 0xFFFFFFFFFFFFLL);
  *(inited + 264) = &type metadata for UInt32;
  *(inited + 240) = v17;
  v18 = sub_1000827F8(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BB40, &unk_100480E70);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_100114BE4@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      result = *(a1 + 16);
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
      result = 0;
    }
  }

  else
  {
    v6 = v5 == 0;
    if (v5)
    {
      v7 = a1 >> 32;
    }

    else
    {
      v7 = BYTE6(a2);
    }

    if (v6)
    {
      result = 0;
    }

    else
    {
      result = a1;
    }
  }

  if (v7 < result || result > a3)
  {
    __break(1u);
  }

  else
  {
    v11 = Data._Representation.subscript.getter();
    v12 = v9;
    sub_1000BA0A4();
    v10 = DataProtocol.copyBytes(to:)();
    result = sub_1000124C8(v11, v12);
    *a4 = v10;
  }

  return result;
}

uint64_t AWDLActionFrame.Header.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_10005DC58(&qword_10058C7E0, &unk_100486B30) - 8) + 64);
  __chkstk_darwin();
  v7 = v16 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    v9 = v19;
    sub_100031694(v18, v19);
    v10 = UnkeyedDecodingContainer.decodeData(with:)(72, v9);
    v12 = v10;
    v13 = v11;
    sub_100030E20(v10, v11, v16);
    sub_1000124C8(v12, v13);
    v22 = v16[2];
    v23 = v16[3];
    v24 = v17;
    v20 = v16[0];
    v21 = v16[1];
    sub_100112D70(v7);
    v14 = type metadata accessor for AWDLActionFrame.Header(0);
    if ((*(*(v14 - 8) + 48))(v7, 1, v14) == 1)
    {
      sub_100016290(v7, &qword_10058C7E0, &unk_100486B30);
      type metadata accessor for DecodingError();
      swift_allocError();
      static DecodingError.dataCorruptedError(in:debugDescription:)();
      swift_willThrow();
    }

    else
    {
      sub_100038FEC(v7, a2, type metadata accessor for AWDLActionFrame.Header);
    }

    sub_100002A00(v18);
  }

  return sub_100002A00(a1);
}

unint64_t sub_100114EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003B238(*(a1 + 4));
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

unint64_t sub_100114F34@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v67 = a1[8];
  LODWORD(v7) = a1[9];
  v65 = v9;
  v66 = v7;
  v10 = *(a1 + 3);
  v68 = *(a1 + 4);
  v69 = v10;
  v11 = *(a1 + 5);
  v12 = sub_100032064(*(a1 + 7), *(a1 + 8));
  v13 = sub_100032064(*(a1 + 10), *(a1 + 11));
  v14 = sub_100032064(*(a1 + 13), *(a1 + 14));
  result = sub_100032064(*(a1 + 16), *(a1 + 17));
  v16 = *(a1 + 13);
  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    v63 = a1[96];
    v62 = *(a1 + 23);
    v61 = *(a1 + 22);
    v64 = a2;
    v18 = v4[20];
    *&v8[v18] = v16;
    v45 = v11;
    v19 = enum case for DispatchTimeInterval.seconds(_:);
    v20 = type metadata accessor for DispatchTimeInterval();
    v21 = *(*(v20 - 8) + 104);
    v22 = *(a1 + 72);
    *&v23 = v22;
    *(&v23 + 1) = DWORD1(v22);
    v58 = v23;
    *&v23 = DWORD2(v22);
    *(&v23 + 1) = HIDWORD(v22);
    v55 = v23;
    v21(&v8[v18], v19, v20);
    v24 = *(a1 + 28);
    v25 = *(a1 + 29);
    v53 = *(a1 + 30);
    v52 = *(a1 + 31);
    v51 = *(a1 + 32);
    v50 = *(a1 + 33);
    v49 = *(a1 + 34);
    v48 = *(a1 + 35);
    v47 = *(a1 + 36);
    v54 = a1[148];
    v26 = a1[150];
    v56 = a1[149];
    v57 = v26;
    v27 = a1[152];
    v59 = a1[151];
    v60 = v27;
    v28 = *(a1 + 77) | (*(a1 + 39) << 16);
    v46 = a1[153];
    v29 = WiFiAddress.description.getter(v28);
    *v8 = v65;
    v30 = a1[160];
    v31 = v66;
    v8[1] = v67;
    v8[2] = v31;
    v33 = *(a1 + 41);
    v32 = *(a1 + 42);
    v34 = v68;
    *(v8 + 1) = v69;
    *(v8 + 2) = v34;
    v36 = *(a1 + 43);
    v35 = *(a1 + 44);
    v37 = *(a1 + 24);
    v38 = *(a1 + 23);
    *(v8 + 3) = v45;
    *(v8 + 18) = WORD2(v12);
    *(v8 + 8) = v12;
    *(v8 + 22) = WORD2(v13);
    *(v8 + 10) = v13;
    *(v8 + 26) = WORD2(v14);
    *(v8 + 12) = v14;
    *(v8 + 30) = WORD2(v17);
    *(v8 + 14) = v17;
    v39 = v55;
    *(v8 + 4) = v58;
    *(v8 + 5) = v39;
    v40 = v62;
    *(v8 + 12) = v61;
    *(v8 + 13) = v40;
    v8[112] = v63;
    *&v8[v4[21]] = v24;
    *&v8[v4[22]] = v25;
    *&v8[v4[23]] = v53;
    *&v8[v4[24]] = v52;
    *&v8[v4[25]] = v51;
    *&v8[v4[26]] = v50;
    *&v8[v4[27]] = v49;
    *&v8[v4[28]] = v48;
    *&v8[v4[29]] = v47;
    v8[v4[30]] = v54;
    v8[v4[31]] = v56;
    v8[v4[32]] = v57;
    v8[v4[33]] = v59;
    v8[v4[34]] = v60;
    v8[v4[35]] = v46;
    v41 = &v8[v4[36]];
    *v41 = v29;
    v41[1] = v42;
    v8[v4[37]] = v30;
    *&v8[v4[38]] = v33;
    *&v8[v4[39]] = v32;
    *&v8[v4[40]] = v36;
    *&v8[v4[41]] = v35;
    *&v8[v4[42]] = v38;
    *&v8[v4[43]] = v37;
    v43 = v64;
    sub_100038FEC(v8, v64, type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration);
    return (*(v5 + 56))(v43, 0, 1, v4);
  }

  return result;
}

void *sub_100115324(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 64);
  v3 = *(a1 + 88);
  v4 = *(a1 + 112);
  v5 = *(a1 + 136);
  v6 = *(a1 + 160);
  v7 = *(a1 + 184);
  v8 = *(a1 + 208);
  v9 = *(a1 + 232);
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = v1;
  v20 = *(a1 + 48);
  v21 = v2;
  v22 = *(a1 + 72);
  v23 = v3;
  v24 = *(a1 + 96);
  v26 = *(a1 + 120);
  v25 = v4;
  v27 = v5;
  v28 = *(a1 + 144);
  v30 = *(a1 + 168);
  v29 = v6;
  v31 = v7;
  v32 = *(a1 + 192);
  v34 = *(a1 + 216);
  v33 = v8;
  v35 = v9;
  sub_1000C05E4(0, 10, 0);
  result = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage[2];
  for (i = 16; i != 256; i += 24)
  {
    v13 = *&v16[i];
    v15 = result;
    v14 = result[3];
    if (v11 >= v14 >> 1)
    {
      sub_1000C05E4((v14 > 1), v11 + 1, 1);
      result = v15;
    }

    result[2] = v11 + 1;
    result[v11++ + 4] = v13;
  }

  return result;
}

void *sub_1001154AC(void *a1)
{
  v1 = a1[2];
  v2 = a1[5];
  v3 = a1[8];
  v4 = a1[11];
  v5 = a1[14];
  v6 = a1[17];
  sub_1000C05E4(0, 6, 0);
  result = _swiftEmptyArrayStorage;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    sub_1000C05E4((v8 > 1), v9 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[3];
    v10 = v8 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v11;
  _swiftEmptyArrayStorage[v9 + 4] = v1;
  v12 = v9 + 2;
  if (v10 <= v11)
  {
    sub_1000C05E4((v8 > 1), v12, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v12;
  _swiftEmptyArrayStorage[v11 + 4] = v2;
  v14 = _swiftEmptyArrayStorage[2];
  v13 = _swiftEmptyArrayStorage[3];
  v15 = v13 >> 1;
  v16 = v14 + 1;
  if (v13 >> 1 <= v14)
  {
    sub_1000C05E4((v13 > 1), v14 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v13 = _swiftEmptyArrayStorage[3];
    v15 = v13 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v16;
  _swiftEmptyArrayStorage[v14 + 4] = v3;
  v17 = v14 + 2;
  if (v15 <= v16)
  {
    sub_1000C05E4((v13 > 1), v17, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v17;
  _swiftEmptyArrayStorage[v16 + 4] = v4;
  v19 = _swiftEmptyArrayStorage[2];
  v18 = _swiftEmptyArrayStorage[3];
  v20 = v18 >> 1;
  v21 = v19 + 1;
  if (v18 >> 1 <= v19)
  {
    sub_1000C05E4((v18 > 1), v19 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage[3];
    v20 = v18 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v21;
  _swiftEmptyArrayStorage[v19 + 4] = v5;
  v22 = v19 + 2;
  if (v20 <= v21)
  {
    sub_1000C05E4((v18 > 1), v22, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v22;
  _swiftEmptyArrayStorage[v21 + 4] = v6;
  return result;
}

void *sub_1001156EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 64);
  v3 = *(a1 + 88);
  v4 = *(a1 + 112);
  v5 = *(a1 + 136);
  v6 = *(a1 + 160);
  v7 = *(a1 + 184);
  v8 = *(a1 + 208);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = v1;
  v19 = *(a1 + 48);
  v20 = v2;
  v21 = *(a1 + 72);
  v22 = v3;
  v23 = *(a1 + 96);
  v25 = *(a1 + 120);
  v24 = v4;
  v26 = v5;
  v27 = *(a1 + 144);
  v29 = *(a1 + 168);
  v28 = v6;
  v30 = v7;
  v31 = *(a1 + 192);
  v32 = v8;
  sub_1000C05E4(0, 9, 0);
  result = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage[2];
  for (i = 16; i != 232; i += 24)
  {
    v12 = *&v15[i];
    v14 = result;
    v13 = result[3];
    if (v10 >= v13 >> 1)
    {
      sub_1000C05E4((v13 > 1), v10 + 1, 1);
      result = v14;
    }

    result[2] = v10 + 1;
    result[v10++ + 4] = v12;
  }

  return result;
}

void *sub_100115864(void *a1)
{
  v1 = a1[2];
  v2 = a1[5];
  v3 = a1[8];
  v4 = a1[11];
  sub_1000C05E4(0, 4, 0);
  result = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    sub_1000C05E4((v6 > 1), v7 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v6 = _swiftEmptyArrayStorage[3];
    v8 = v6 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v9;
  _swiftEmptyArrayStorage[v7 + 4] = v1;
  v10 = v7 + 2;
  if (v8 <= v9)
  {
    sub_1000C05E4((v6 > 1), v10, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v10;
  _swiftEmptyArrayStorage[v9 + 4] = v2;
  v12 = _swiftEmptyArrayStorage[2];
  v11 = _swiftEmptyArrayStorage[3];
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (v11 >> 1 <= v12)
  {
    sub_1000C05E4((v11 > 1), v12 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage[3];
    v13 = v11 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v14;
  _swiftEmptyArrayStorage[v12 + 4] = v3;
  v15 = v12 + 2;
  if (v13 <= v14)
  {
    sub_1000C05E4((v11 > 1), v15, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v15;
  _swiftEmptyArrayStorage[v14 + 4] = v4;
  return result;
}

uint64_t sub_100115A0C()
{
  if (*(*v0 + 32) == 4)
  {
    if (qword_10058A898 != -1)
    {
      swift_once();
    }

    return static CountryCode.unknown;
  }

  else
  {
    return sub_100110380(0x33uLL, 0, 0);
  }
}

uint64_t sub_100115AC4(char a1, uint64_t a2)
{
  v4 = *v2;
  v5 = 0x100000001;
  if ((a1 & 1) == 0)
  {
    v5 = 1;
  }

  if ((a2 & &_mh_execute_header) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  result = sub_1001106AC(0x22EuLL, v5, v6);
  if (v3)
  {
  }

  return result;
}

uint64_t sub_100115B18()
{
  v1 = *v0;
  if (qword_10058A830 != -1)
  {
    swift_once();
  }

  if (static PreferenceDefaults.hasBattery)
  {
    v2 = 0x100000001;
  }

  else
  {
    v2 = 1;
  }

  return sub_100110B44(0x236uLL, v2);
}

uint64_t sub_100115B90()
{
  __chkstk_darwin();
  v2 = v1;
  v3 = *v0;
  sub_100110478(0xCFuLL, 0, 0, __src);
  memcpy(v6, __src, sizeof(v6));
  memcpy(__src, v6, sizeof(__src));
  return v2(__src, v6);
}

uint64_t sub_100115CB0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4[2] = &v5;
  return sub_1000ED5E8(sub_10011AAD0, v4, a1, a2);
}

void *sub_100115D00(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058D660, &qword_1004872A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058D668, &qword_1004872A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100115E34(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058D670, &qword_1004872B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058D678, &unk_1004872B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100115F7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100595370, &qword_1004AF240);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001160AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_1005987A0, &unk_100487180);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[8 * v8 - v8])
    {
      memmove(v12, v13, 7 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 7 * v8);
  }

  return v10;
}

char *sub_1001161D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D600, &qword_1004B0920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_10011630C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D6B8, &unk_100487320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

size_t sub_100116458(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005DC58(a5, a6);
  v16 = *(sub_10005DC58(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10005DC58(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_100116640(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D6A0, &unk_100487300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100116744(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D698, &qword_1004872F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10011686C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D690, &qword_1004872F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100116970(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&unk_10059B0B0, &qword_100487150);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100116AF4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058D688, &unk_1004872E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100116C50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10005DC58(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_100116D3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100598800, &qword_1004842A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 10);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 10 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_100116E4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D658, &qword_100487290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100116F70(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&unk_100598770, &qword_100487298);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10011707C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D630, &qword_1004B0750);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100117180(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCA8, &unk_100482FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_10011727C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D640, &unk_100488520);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100117388(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CC78, &qword_100482F80);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001174BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D628, &unk_1004871E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1001175C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCC0, &qword_100492360);
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
    v10 = _swiftEmptyArrayStorage;
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

size_t sub_10011771C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005DC58(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10011791C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10005DC58(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100117A50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CC90, &unk_100487190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CC98, &qword_100482FA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100117B98(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CCB0, &unk_1004871A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&unk_10059B2B0, &qword_100482FC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100117CCC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(qword_10058C850, &unk_100486F10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058BB40, &unk_100480E70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100117E14(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D5F8, &qword_100487168);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100117F20(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CC48, &unk_100487170);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10011802C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058D5E8, &qword_100487158);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058D5F0, &qword_100487160);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100118174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&qword_10058CC40, &unk_100482F40);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  result = v3;
  v7 = v4 - 32;
  v6 = v4 < 32;
  v8 = v4 - 25;
  if (!v6)
  {
    v8 = v7;
  }

  *(v3 + 16) = v1;
  *(v3 + 24) = 2 * (v8 >> 3);
  *(v3 + 32) = *(a1 + 32);
  v9 = v3 + 32;
  *(v3 + 36) = *(a1 + 36);
  if (v1 == 2)
  {
    v10 = 0;
LABEL_12:
    v17 = v9 + 8;
    v18 = ~v10 + v1;
    v19 = a1 + 8 * v10 + 40;
    do
    {
      v20 = *v19;
      *(v17 + 4) = *(v19 + 4);
      *v17 = v20;
      v17 += 8;
      v19 += 8;
      --v18;
    }

    while (v18);
    return result;
  }

  if (v1 != 1)
  {
    v10 = (v1 - 1) & 0xFFFFFFFFFFFFFFFELL;
    v9 += 8 * v10;
    v11 = (a1 + 48);
    v12 = v3 + 48;
    v13 = v10;
    do
    {
      v14 = *(v11 - 2);
      v15 = *v11;
      v16 = *(v11 + 2);
      *(v12 - 4) = *(v11 - 2);
      *(v12 - 8) = v14;
      *(v12 + 4) = v16;
      *v12 = v15;
      v12 += 16;
      v11 += 4;
      v13 -= 2;
    }

    while (v13);
    if (v1 - 1 != v10)
    {
      goto LABEL_12;
    }
  }

  return result;
}

void sub_1001182A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100118368(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10005DC58(&qword_1005987A0, &unk_100487180);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 7);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 - a3 + 8 * a3), 7 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_100118450@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[3];
  v192 = a1[2];
  v193 = v3;
  v194 = a1[4];
  v4 = a1[1];
  v190 = *a1;
  v191 = v4;
  sub_1000C05E4(0, 10, 0);
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage[2];
  do
  {
    v8 = *(&v190 + v5);
    v182 = v6;
    v9 = v6[3];
    if (v7 >= v9 >> 1)
    {
      sub_1000C05E4((v9 > 1), v7 + 1, 1);
      v6 = v182;
    }

    v6[2] = v7 + 1;
    v6[v7 + 4] = v8;
    v5 += 8;
    ++v7;
  }

  while (v5 != 80);
  v180 = v6;
  v10 = a1[8];
  v192 = a1[7];
  v193 = v10;
  v194 = a1[9];
  v11 = a1[6];
  v190 = a1[5];
  v191 = v11;
  sub_1000C05E4(0, 10, 0);
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v14 = _swiftEmptyArrayStorage[2];
  do
  {
    v15 = *(&v190 + v12);
    v183 = v13;
    v16 = v13[3];
    if (v14 >= v16 >> 1)
    {
      sub_1000C05E4((v16 > 1), v14 + 1, 1);
      v13 = v183;
    }

    v13[2] = v14 + 1;
    v13[v14 + 4] = v15;
    v12 += 8;
    ++v14;
  }

  while (v12 != 80);
  v179 = v13;
  v17 = a1[13];
  v192 = a1[12];
  v193 = v17;
  v194 = a1[14];
  v18 = a1[11];
  v190 = a1[10];
  v191 = v18;
  sub_1000C05E4(0, 10, 0);
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage[2];
  do
  {
    v22 = *(&v190 + v19);
    v184 = v20;
    v23 = v20[3];
    if (v21 >= v23 >> 1)
    {
      sub_1000C05E4((v23 > 1), v21 + 1, 1);
      v20 = v184;
    }

    v20[2] = v21 + 1;
    v20[v21 + 4] = v22;
    v19 += 8;
    ++v21;
  }

  while (v19 != 80);
  v178 = v20;
  v24 = a1[18];
  v192 = a1[17];
  v193 = v24;
  v194 = a1[19];
  v25 = a1[16];
  v190 = a1[15];
  v191 = v25;
  sub_1000C05E4(0, 10, 0);
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage[2];
  do
  {
    v29 = *(&v190 + v26);
    v185 = v27;
    v30 = v27[3];
    if (v28 >= v30 >> 1)
    {
      sub_1000C05E4((v30 > 1), v28 + 1, 1);
      v27 = v185;
    }

    v27[2] = v28 + 1;
    v27[v28 + 4] = v29;
    v26 += 8;
    ++v28;
  }

  while (v26 != 80);
  v177 = v27;
  v31 = a1[23];
  v192 = a1[22];
  v193 = v31;
  v194 = a1[24];
  v32 = a1[21];
  v190 = a1[20];
  v191 = v32;
  sub_1000C05E4(0, 10, 0);
  v33 = 0;
  v34 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage[2];
  do
  {
    v36 = *(&v190 + v33);
    v186 = v34;
    v37 = v34[3];
    if (v35 >= v37 >> 1)
    {
      sub_1000C05E4((v37 > 1), v35 + 1, 1);
      v34 = v186;
    }

    v34[2] = v35 + 1;
    v34[v35 + 4] = v36;
    v33 += 8;
    ++v35;
  }

  while (v33 != 80);
  v176 = v34;
  v38 = a1[28];
  v192 = a1[27];
  v193 = v38;
  v194 = a1[29];
  v39 = a1[26];
  v190 = a1[25];
  v191 = v39;
  sub_1000C05E4(0, 10, 0);
  v40 = 0;
  v41 = _swiftEmptyArrayStorage;
  v42 = _swiftEmptyArrayStorage[2];
  do
  {
    v43 = *(&v190 + v40);
    v187 = v41;
    v44 = v41[3];
    if (v42 >= v44 >> 1)
    {
      sub_1000C05E4((v44 > 1), v42 + 1, 1);
      v41 = v187;
    }

    v41[2] = v42 + 1;
    v41[v42 + 4] = v43;
    v40 += 8;
    ++v42;
  }

  while (v40 != 80);
  v175 = v41;
  v46 = *(a1 + 60);
  v45 = *(a1 + 61);
  v48 = *(a1 + 62);
  v47 = *(a1 + 63);
  v49 = *(a1 + 64);
  v50 = *(a1 + 65);
  *&v190 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 6, 0);
  v51 = v190;
  v53 = *(v190 + 16);
  v52 = *(v190 + 24);
  v54 = v52 >> 1;
  v55 = v53 + 1;
  if (v52 >> 1 <= v53)
  {
    sub_1000C05E4((v52 > 1), v53 + 1, 1);
    v51 = v190;
    v52 = *(v190 + 24);
    v54 = v52 >> 1;
  }

  *(v51 + 16) = v55;
  *(v51 + 8 * v53 + 32) = v46;
  *&v190 = v51;
  if (v54 <= v55)
  {
    sub_1000C05E4((v52 > 1), v53 + 2, 1);
    v51 = v190;
  }

  *(v51 + 16) = v53 + 2;
  *(v51 + 8 * v55 + 32) = v45;
  *&v190 = v51;
  v57 = *(v51 + 16);
  v56 = *(v51 + 24);
  v58 = v56 >> 1;
  v59 = v57 + 1;
  if (v56 >> 1 <= v57)
  {
    sub_1000C05E4((v56 > 1), v57 + 1, 1);
    v51 = v190;
    v56 = *(v190 + 24);
    v58 = v56 >> 1;
  }

  *(v51 + 16) = v59;
  *(v51 + 8 * v57 + 32) = v48;
  *&v190 = v51;
  if (v58 <= v59)
  {
    sub_1000C05E4((v56 > 1), v57 + 2, 1);
    v51 = v190;
  }

  *(v51 + 16) = v57 + 2;
  *(v51 + 8 * v59 + 32) = v47;
  *&v190 = v51;
  v61 = *(v51 + 16);
  v60 = *(v51 + 24);
  v62 = v60 >> 1;
  v63 = v61 + 1;
  if (v60 >> 1 <= v61)
  {
    sub_1000C05E4((v60 > 1), v61 + 1, 1);
    v51 = v190;
    v60 = *(v190 + 24);
    v62 = v60 >> 1;
  }

  *(v51 + 16) = v63;
  *(v51 + 8 * v61 + 32) = v49;
  *&v190 = v51;
  if (v62 <= v63)
  {
    sub_1000C05E4((v60 > 1), v61 + 2, 1);
    v51 = v190;
  }

  *(v51 + 16) = v61 + 2;
  v174 = v51;
  *(v51 + 8 * v63 + 32) = v50;
  v64 = a1[36];
  v192 = a1[35];
  v193 = v64;
  *&v194 = *(a1 + 74);
  v65 = a1[34];
  v190 = a1[33];
  v191 = v65;
  sub_1000C05E4(0, 9, 0);
  v66 = 0;
  v67 = _swiftEmptyArrayStorage;
  v68 = _swiftEmptyArrayStorage[2];
  do
  {
    v69 = *(&v190 + v66);
    v188 = v67;
    v70 = v67[3];
    if (v68 >= v70 >> 1)
    {
      sub_1000C05E4((v70 > 1), v68 + 1, 1);
      v67 = v188;
    }

    v67[2] = v68 + 1;
    v67[v68 + 4] = v69;
    v66 += 8;
    ++v68;
  }

  while (v66 != 72);
  v173 = v67;
  v71 = *(a1 + 648);
  v192 = *(a1 + 632);
  v193 = v71;
  *&v194 = *(a1 + 83);
  v72 = *(a1 + 616);
  v190 = *(a1 + 600);
  v191 = v72;
  sub_1000C05E4(0, 9, 0);
  v73 = 0;
  v74 = _swiftEmptyArrayStorage;
  v75 = _swiftEmptyArrayStorage[2];
  do
  {
    v76 = *(&v190 + v73);
    v189 = v74;
    v77 = v74[3];
    if (v75 >= v77 >> 1)
    {
      sub_1000C05E4((v77 > 1), v75 + 1, 1);
      v74 = v189;
    }

    v74[2] = v75 + 1;
    v74[v75 + 4] = v76;
    v73 += 8;
    ++v75;
  }

  while (v73 != 72);
  v172 = v74;
  v78 = *(a1 + 84);
  v79 = *(a1 + 85);
  v80 = *(a1 + 86);
  v81 = *(a1 + 87);
  *&v190 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 4, 0);
  v82 = v190;
  v84 = *(v190 + 16);
  v83 = *(v190 + 24);
  v85 = v83 >> 1;
  v86 = v84 + 1;
  if (v83 >> 1 <= v84)
  {
    sub_1000C05E4((v83 > 1), v84 + 1, 1);
    v82 = v190;
    v83 = *(v190 + 24);
    v85 = v83 >> 1;
  }

  *(v82 + 16) = v86;
  *(v82 + 8 * v84 + 32) = v78;
  *&v190 = v82;
  v87 = v84 + 2;
  if (v85 <= v86)
  {
    sub_1000C05E4((v83 > 1), v87, 1);
    v82 = v190;
  }

  *(v82 + 16) = v87;
  *(v82 + 8 * v86 + 32) = v79;
  *&v190 = v82;
  v89 = *(v82 + 16);
  v88 = *(v82 + 24);
  v90 = v88 >> 1;
  v91 = v89 + 1;
  if (v88 >> 1 <= v89)
  {
    sub_1000C05E4((v88 > 1), v89 + 1, 1);
    v82 = v190;
    v88 = *(v190 + 24);
    v90 = v88 >> 1;
  }

  *(v82 + 16) = v91;
  *(v82 + 8 * v89 + 32) = v80;
  *&v190 = v82;
  v92 = v89 + 2;
  if (v90 <= v91)
  {
    sub_1000C05E4((v88 > 1), v92, 1);
    v82 = v190;
  }

  *(v82 + 16) = v92;
  v171 = v82;
  *(v82 + 8 * v91 + 32) = v81;
  v93 = *(a1 + 88);
  v94 = *(a1 + 89);
  v95 = *(a1 + 90);
  v96 = *(a1 + 91);
  v97 = *(a1 + 92);
  *&v190 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 5, 0);
  v98 = v190;
  v100 = *(v190 + 16);
  v99 = *(v190 + 24);
  v101 = v99 >> 1;
  v102 = v100 + 1;
  if (v99 >> 1 <= v100)
  {
    sub_1000C05E4((v99 > 1), v100 + 1, 1);
    v98 = v190;
    v99 = *(v190 + 24);
    v101 = v99 >> 1;
  }

  *(v98 + 16) = v102;
  *(v98 + 8 * v100 + 32) = v93;
  *&v190 = v98;
  v103 = v100 + 2;
  if (v101 <= v102)
  {
    sub_1000C05E4((v99 > 1), v103, 1);
    v98 = v190;
  }

  *(v98 + 16) = v103;
  *(v98 + 8 * v102 + 32) = v94;
  *&v190 = v98;
  v105 = *(v98 + 16);
  v104 = *(v98 + 24);
  v106 = v104 >> 1;
  v107 = v105 + 1;
  if (v104 >> 1 <= v105)
  {
    sub_1000C05E4((v104 > 1), v105 + 1, 1);
    v98 = v190;
    v104 = *(v190 + 24);
    v106 = v104 >> 1;
  }

  *(v98 + 16) = v107;
  *(v98 + 8 * v105 + 32) = v95;
  *&v190 = v98;
  v108 = v105 + 2;
  if (v106 <= v107)
  {
    sub_1000C05E4((v104 > 1), v108, 1);
    v98 = v190;
  }

  *(v98 + 16) = v108;
  *(v98 + 8 * v107 + 32) = v96;
  *&v190 = v98;
  v110 = *(v98 + 16);
  v109 = *(v98 + 24);
  if (v110 >= v109 >> 1)
  {
    sub_1000C05E4((v109 > 1), v110 + 1, 1);
    v98 = v190;
  }

  *(v98 + 16) = v110 + 1;
  v170 = v98;
  *(v98 + 8 * v110 + 32) = v97;
  v111 = *(a1 + 792);
  v192 = *(a1 + 776);
  v193 = v111;
  v194 = *(a1 + 808);
  v112 = *(a1 + 760);
  v190 = *(a1 + 744);
  v191 = v112;
  sub_1000C05E4(0, 10, 0);
  v113 = 0;
  v114 = _swiftEmptyArrayStorage[2];
  do
  {
    v115 = *(&v190 + v113);
    v116 = _swiftEmptyArrayStorage[3];
    if (v114 >= v116 >> 1)
    {
      sub_1000C05E4((v116 > 1), v114 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v114 + 1;
    _swiftEmptyArrayStorage[v114 + 4] = v115;
    v113 += 8;
    ++v114;
  }

  while (v113 != 80);
  v117 = *(a1 + 103);
  v118 = *(a1 + 104);
  v119 = *(a1 + 105);
  *&v190 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 3, 0);
  v120 = v190;
  v122 = *(v190 + 16);
  v121 = *(v190 + 24);
  v123 = v121 >> 1;
  v124 = v122 + 1;
  if (v121 >> 1 <= v122)
  {
    sub_1000C05E4((v121 > 1), v122 + 1, 1);
    v120 = v190;
    v121 = *(v190 + 24);
    v123 = v121 >> 1;
  }

  *(v120 + 16) = v124;
  *(v120 + 8 * v122 + 32) = v117;
  *&v190 = v120;
  v125 = v122 + 2;
  if (v123 <= v124)
  {
    sub_1000C05E4((v121 > 1), v125, 1);
    v120 = v190;
  }

  *(v120 + 16) = v125;
  *(v120 + 8 * v124 + 32) = v118;
  *&v190 = v120;
  v127 = *(v120 + 16);
  v126 = *(v120 + 24);
  if (v127 >= v126 >> 1)
  {
    sub_1000C05E4((v126 > 1), v127 + 1, 1);
    v120 = v190;
  }

  *(v120 + 16) = v127 + 1;
  v169 = v120;
  *(v120 + 8 * v127 + 32) = v119;
  v128 = a1[56];
  v192 = a1[55];
  v193 = v128;
  v194 = a1[57];
  v129 = a1[54];
  v190 = a1[53];
  v191 = v129;
  sub_1000C05E4(0, 10, 0);
  v130 = 0;
  v131 = _swiftEmptyArrayStorage[2];
  do
  {
    v132 = *(&v190 + v130);
    v133 = _swiftEmptyArrayStorage[3];
    if (v131 >= v133 >> 1)
    {
      sub_1000C05E4((v133 > 1), v131 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v131 + 1;
    _swiftEmptyArrayStorage[v131 + 4] = v132;
    v130 += 8;
    ++v131;
  }

  while (v130 != 80);
  v134 = a1[61];
  v192 = a1[60];
  v193 = v134;
  v194 = a1[62];
  v135 = a1[59];
  v190 = a1[58];
  v191 = v135;
  sub_1000C05E4(0, 10, 0);
  v136 = 0;
  v137 = _swiftEmptyArrayStorage[2];
  do
  {
    v138 = *(&v190 + v136);
    v139 = _swiftEmptyArrayStorage[3];
    if (v137 >= v139 >> 1)
    {
      sub_1000C05E4((v139 > 1), v137 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v137 + 1;
    _swiftEmptyArrayStorage[v137 + 4] = v138;
    v136 += 8;
    ++v137;
  }

  while (v136 != 80);
  v140 = a1[66];
  v192 = a1[65];
  v193 = v140;
  v194 = a1[67];
  v141 = a1[64];
  v190 = a1[63];
  v191 = v141;
  sub_1000C05E4(0, 10, 0);
  v142 = 0;
  v143 = _swiftEmptyArrayStorage[2];
  do
  {
    v144 = *(&v190 + v142);
    v145 = _swiftEmptyArrayStorage[3];
    if (v143 >= v145 >> 1)
    {
      sub_1000C05E4((v145 > 1), v143 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v143 + 1;
    _swiftEmptyArrayStorage[v143 + 4] = v144;
    v142 += 8;
    ++v143;
  }

  while (v142 != 80);
  v146 = a1[69];
  v147 = a1[71];
  v192 = a1[70];
  v193 = v147;
  v194 = a1[72];
  v190 = a1[68];
  v191 = v146;
  sub_1000C05E4(0, 10, 0);
  v148 = 0;
  v149 = _swiftEmptyArrayStorage[2];
  do
  {
    v150 = *(&v190 + v148);
    v151 = _swiftEmptyArrayStorage[3];
    if (v149 >= v151 >> 1)
    {
      sub_1000C05E4((v151 > 1), v149 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v149 + 1;
    _swiftEmptyArrayStorage[v149 + 4] = v150;
    v148 += 8;
    ++v149;
  }

  while (v148 != 80);
  v152 = *(a1 + 146);
  v153 = *(a1 + 147);
  v154 = *(a1 + 148);
  v155 = *(a1 + 149);
  sub_1000C05E4(0, 4, 0);
  v157 = _swiftEmptyArrayStorage[2];
  v156 = _swiftEmptyArrayStorage[3];
  v158 = v156 >> 1;
  v159 = v157 + 1;
  if (v156 >> 1 <= v157)
  {
    sub_1000C05E4((v156 > 1), v157 + 1, 1);
    v156 = _swiftEmptyArrayStorage[3];
    v158 = v156 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v159;
  _swiftEmptyArrayStorage[v157 + 4] = v152;
  if (v158 <= v159)
  {
    sub_1000C05E4((v156 > 1), v157 + 2, 1);
  }

  _swiftEmptyArrayStorage[2] = v157 + 2;
  _swiftEmptyArrayStorage[v159 + 4] = v153;
  v161 = _swiftEmptyArrayStorage[2];
  v160 = _swiftEmptyArrayStorage[3];
  v162 = v160 >> 1;
  v163 = v161 + 1;
  if (v160 >> 1 <= v161)
  {
    sub_1000C05E4((v160 > 1), v161 + 1, 1);
    v160 = _swiftEmptyArrayStorage[3];
    v162 = v160 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v163;
  _swiftEmptyArrayStorage[v161 + 4] = v154;
  if (v162 <= v163)
  {
    sub_1000C05E4((v160 > 1), v161 + 2, 1);
  }

  _swiftEmptyArrayStorage[2] = v161 + 2;
  _swiftEmptyArrayStorage[v163 + 4] = v155;
  *&v190 = v180;
  *(&v190 + 1) = v179;
  *&v191 = v178;
  *(&v191 + 1) = v177;
  *&v192 = v176;
  *(&v192 + 1) = v175;
  *&v193 = v174;
  *(&v193 + 1) = v173;
  *&v194 = v172;
  *(&v194 + 1) = v171;
  *&v195 = v170;
  *(&v195 + 1) = _swiftEmptyArrayStorage;
  *&v196 = v169;
  *(&v196 + 1) = _swiftEmptyArrayStorage;
  *&v197 = _swiftEmptyArrayStorage;
  *(&v197 + 1) = _swiftEmptyArrayStorage;
  *&v198 = _swiftEmptyArrayStorage;
  *(&v198 + 1) = _swiftEmptyArrayStorage;
  result = NANBitmap.Channel.operatingClass.getter(&v190);
  v165 = v197;
  a2[6] = v196;
  a2[7] = v165;
  a2[8] = v198;
  v166 = v193;
  a2[2] = v192;
  a2[3] = v166;
  v167 = v195;
  a2[4] = v194;
  a2[5] = v167;
  v168 = v191;
  *a2 = v190;
  a2[1] = v168;
  return result;
}