uint64_t sub_100363808()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_100363874()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003638AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003638EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000C288C;

  return sub_10035F05C(a1, v4, v5, v6);
}

uint64_t sub_1003639C0(unint64_t *a1, void (*a2)(uint64_t))
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

id Item.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id Item.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for Item();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id Item.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Item();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static Item.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100363BFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for Item();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

id CredentialMetadataEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CredentialMetadataEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CredentialMetadataEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CredentialMetadataEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CredentialMetadataEntity.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100363DC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CredentialMetadataEntity();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

id PresentmentEventEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PresentmentEventEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id PresentmentEventEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentmentEventEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static PresentmentEventEntity.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100363F84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PresentmentEventEntity();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

id PresentmentReportEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PresentmentReportEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id PresentmentReportEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentmentReportEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static PresentmentReportEntity.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100364148@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PresentmentReportEntity();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

id SecureElementApplicationEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SecureElementApplicationEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id SecureElementApplicationEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureElementApplicationEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static SecureElementApplicationEntity.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_10036430C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for SecureElementApplicationEntity();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

id SecureElementCredentialEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SecureElementCredentialEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id SecureElementCredentialEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureElementCredentialEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static SecureElementCredentialEntity.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1003644D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for SecureElementCredentialEntity();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    qword_10051B010 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, qword_10051B010, 0, qword_10051B018, qword_10051B020, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = qword_10051B010 - a3;
    if (qword_10051B010 < a3)
    {
      v6 = 0;
    }

    qword_10051B010 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, qword_10051B010, 0, qword_10051B018, qword_10051B020, v9, a5, v7);
  }

  return result;
}

uint64_t sub_100364678(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  if (byte_10050BFC1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreate(sub_100364F28, &v8, a1, a2, &byte_10050BFC1, 1);
  if (v4)
  {
    sub_100364CCC();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && byte_10050BFC1 <= 0x28u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v10 = "ACMLib";
        v11 = 2080;
        v12 = "ACMContextCreateWithFlags";
        v13 = 1024;
        LODWORD(v14[0]) = v6;
        WORD2(v14[0]) = 1024;
        *(v14 + 6) = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= byte_10050BFC1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    v13 = 2048;
    v14[0] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, int a2)
{
  v4 = byte_10050BFC1;
  if (byte_10050BFC1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = byte_10050BFC1;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v12 = "ACMLib";
    v14 = "ACMContextDelete";
    v13 = 2080;
    if (a2)
    {
      v6 = "YES";
    }

    v15 = 1024;
    LODWORD(v16[0]) = v5;
    WORD2(v16[0]) = 2080;
    *(v16 + 6) = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v10 = a1;
  v7 = LibCall_ACMContextDelete(sub_100364F28, &v10, a1, a2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= byte_10050BFC1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    v15 = 2048;
    v16[0] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v7;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  if (byte_10050BFC1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v4, 0x16u);
  }

  if (a1 && a2)
  {
    if (!sub_1003650EC() && !sub_1003652A0(a1, 19, 0, a1, 0x10uLL, 0, 0))
    {
      (*(a2 + 16))(a2, a1, 16);
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  sub_100365590(a2);
LABEL_9:
  if (byte_10050BFC1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v4, 0x16u);
  }
}

void sub_100364CCC()
{
  if (byte_10050BFC1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_10051B02C, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  byte_10050BFC1 = output;
  if (output <= 0x1EuLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1003655B8();
LABEL_12:
    v0 = byte_10050BFC1;
  }

  if (v0 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t sub_100364F28(uint64_t *a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_10050BFC1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100364EEC();
    sub_100364ED4();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = sub_1003650EC();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = sub_1003652A0(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= byte_10050BFC1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100364F1C();
    sub_100364EF8();
    sub_100364EC4();
    sub_100364ED4();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t sub_1003650EC()
{
  if (byte_10050BFC1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100364E94();
    sub_100364ED4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (byte_10051B028)
  {
    v5 = 0;
  }

  else
  {
    v6 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (!MatchingService)
    {
      v9 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v8 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_10051B02C);
    if (v5)
    {
      v9 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v8);
    byte_10051B028 = 1;
  }

  v9 = 10;
LABEL_10:
  if (v9 >= byte_10050BFC1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100364F1C();
    sub_100364EF8();
    sub_100364EC4();
    sub_100364ED4();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  return v5;
}

uint64_t sub_1003652A0(uint64_t a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_10050BFC1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100364EAC();
    sub_100364E88();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  inputStructCnt = 0;
  v19 = LibCall_BuildCommand(a2, 0, a3, a4, a5, &inputStructCnt);
  if (v19)
  {
    v20 = v19;
    if (!a6 && a7)
    {
      v23 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v21 = *a7;
      }

      else
      {
        v21 = 0;
      }

      v44 = v21;
      v22 = IOConnectCallStructMethod(dword_10051B02C, 0, v19, inputStructCnt, a6, &v44);
      v23 = v22;
      if (a1)
      {
        v24 = *(a1 + 16);
      }

      if (v22)
      {
        if (byte_10050BFC1 <= 0x46u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_100364EAC();
          sub_100364F04();
          v49 = v25;
          v50 = v23;
          v51 = v25;
          v52 = v23;
          sub_100364E88();
          _os_log_impl(v26, v27, v28, v29, v30, 0x2Eu);
        }
      }

      else
      {
        if (byte_10050BFC1 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_100364EAC();
          sub_100364F04();
          sub_100364E88();
          _os_log_impl(v31, v32, v33, v34, v35, 0x22u);
        }

        v23 = 0;
        if (a7)
        {
          *a7 = v44;
        }
      }
    }

    v36 = inputStructCnt;
    acm_mem_free_info("<data>", v20, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v20, v36);
    if (v23)
    {
      v37 = 70;
    }

    else
    {
      v37 = 10;
    }
  }

  else
  {
    v37 = 70;
    v23 = 4294967291;
  }

  if (v37 >= byte_10050BFC1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v46 = 136315650;
    v47 = "ACMLib";
    sub_100364EE0();
    v48 = "performCommand";
    sub_100364E78();
    sub_100364E88();
    _os_log_impl(v38, v39, v40, v41, v42, 0x20u);
  }

  return v23;
}

void sub_1003655B8()
{
  sub_100364EF8();
  sub_100364ED4();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

void *sub_10036579C()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  memset(v4, 170, sizeof(v4));
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

unint64_t sub_100366074(unint64_t result, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v5 = 0;
  if (!a3)
  {
LABEL_38:
    result = 0;
LABEL_40:
    *a5 = v5;
    return result;
  }

  v6 = 0;
  v7 = result + a2;
  while (24 * v6 <= ~a4)
  {
    v8 = a4 + 24 * v6;
    v9 = *v8;
    v10 = *v8 > 0xFFFFFFFFFFFFFFEFLL || *v8 + 16 > a2;
    if (v10)
    {
      v5 = 0;
      result = 7;
      goto LABEL_40;
    }

    if (v9 > ~result)
    {
      break;
    }

    v11 = (result + v9);
    v12 = *(v8 + 16);
    if ((v12 & 0x200) == 0)
    {
      if (v12)
      {
        if (v11 < result || (v11 + 2) > v7)
        {
          goto LABEL_43;
        }

        if (!v11[1])
        {
          goto LABEL_37;
        }
      }

      v14 = *(v8 + 8) & 0x1FFFFFFFFFFFFFFFLL;
      v15 = 1;
      if (v14 >= 0x1F)
      {
        do
        {
          ++v15;
          v10 = v14 > 0x7F;
          v14 >>= 7;
        }

        while (v10);
      }

      v16 = __CFADD__(v5, v15);
      v17 = v5 + v15;
      if (v16)
      {
        goto LABEL_42;
      }

      if (v11 < result || (v11 + 2) > v7)
      {
        goto LABEL_43;
      }

      v18 = v11[1];
      if ((v12 & 0x100) != 0)
      {
        if (v18)
        {
          v18 += **v11 >> 7;
          goto LABEL_24;
        }

LABEL_25:
        v19 = 1;
      }

      else
      {
LABEL_24:
        if (v18 < 0x80)
        {
          goto LABEL_25;
        }

        v19 = 1;
        v22 = v18;
        do
        {
          ++v19;
          v10 = v22 > 0xFF;
          v22 >>= 8;
        }

        while (v10);
      }

      v16 = __CFADD__(v17, v19);
      v23 = v17 + v19;
      if (v16)
      {
        goto LABEL_42;
      }

      v16 = __CFADD__(v23, v18);
      v5 = v23 + v18;
      if (v16)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v11 < result || (v11 + 2) > v7)
    {
      goto LABEL_43;
    }

    v21 = v11[1];
    v16 = __CFADD__(v5, v21);
    v5 += v21;
    if (v16)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (++v6 == a3)
    {
      goto LABEL_38;
    }
  }

  __break(0x5513u);
LABEL_42:
  __break(0x5500u);
LABEL_43:
  __break(0x5519u);
  return result;
}

unint64_t DERLengthOfEncodedSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t *a6)
{
  v17 = 0;
  result = sub_100366074(a2, a3, a4, a5, &v17);
  if (!result)
  {
    v9 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = 1;
    if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >= 0x1F)
    {
      do
      {
        ++v10;
        v11 = v9 > 0x7F;
        v9 >>= 7;
      }

      while (v11);
    }

    v12 = 1;
    if (v17 >= 0x80)
    {
      v13 = v17;
      do
      {
        ++v12;
        v11 = v13 > 0xFF;
        v13 >>= 8;
      }

      while (v11);
    }

    v14 = __CFADD__(v10, v12);
    v15 = v10 + v12;
    if (v14 || (v14 = __CFADD__(v15, v17), v16 = v15 + v17, v14))
    {
      __break(0x5500u);
    }

    else
    {
      result = 0;
      *a6 = v16;
    }
  }

  return result;
}

unint64_t DERLengthOfEncodedSequence(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5 = 0;
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) < a2)
  {
    __break(0x5519u);
  }

  if (DERLengthOfEncodedSequenceFromObject(a1, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, &v5))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

id sub_100366330()
{
  objc_opt_self();
  if (qword_10051B038 != -1)
  {
    sub_100367A78();
  }

  v0 = qword_10051B030;

  return v0;
}

void sub_100366378(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.sesd.kml.ownerSharingSession", v3);
  v2 = qword_10051B030;
  qword_10051B030 = v1;
}

uint64_t sub_100366450(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100366468(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) != 1)
  {
    v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v11 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithUTF8String:KmlErrorString()];
    v12 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v5 = [NSError errorWithDomain:v2 code:214 userInfo:v4];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = sub_1003B1A30(*(a1 + 32));
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_1003665C0(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 8) <= 11)
  {
    v8 = KmlLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      sub_100367A8C(v1);
    }

    objc_storeStrong((*(a1 + 32) + 136), *(a1 + 40));
    v9 = *(a1 + 32);
    if (!*(v9 + 128))
    {
      objc_storeStrong((v9 + 128), *(a1 + 40));
      v9 = *(a1 + 32);
    }

    sub_1003B18E8(v9);
    v5 = 0;
  }

  else
  {
    v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v10 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithUTF8String:KmlErrorString()];
    v11 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v5 = [NSError errorWithDomain:v2 code:101 userInfo:v4];
  }

  WeakRetained = objc_loadWeakRetained((*v1 + 232));
  [WeakRetained handleOwnerKeySharingCancelledWithStatus:v5];
}

uint64_t sub_100366778(uint64_t a1)
{
  v2 = [*(a1 + 40) sharingFlow];
  v3 = *(*(a1 + 32) + 24);

  return sub_1003DAD1C(v3, v2);
}

void sub_1003667BC(uint64_t a1)
{
  sub_1003B1F4C(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  sub_1003DAEB8(v2, v3);
}

uint64_t sub_1003667FC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = sub_1003C7D28(v1[3]);
  objc_sync_exit(v1);

  return v2;
}

uint64_t sub_100366860(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = sub_1003DAC80(v1[3]);
  objc_sync_exit(v1);

  return v2;
}

void sub_100366AC0(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 8) == 2)
  {
    v3 = (a1 + 40);
    v4 = *(a1 + 40);
    v5 = KmlLogger();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        sub_100367C0C(v1, v3);
      }

      objc_storeStrong((*v1 + 128), *v3);
      v7 = *v1;
    }

    else
    {
      if (v6)
      {
        sub_100367CDC(v1);
      }

      v7 = *v1;
    }

    sub_1003B18E8(v7);
  }

  else
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      sub_100367B4C(v1);
    }
  }
}

void sub_100366C34(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 8);
  if (v2 == 12)
  {
    v9 = (a1 + 40);
    v10 = *(a1 + 40);
    v6 = KmlLogger();
    v11 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v11)
      {
        sub_100367D9C(v1, v9);
      }

      objc_storeStrong((*v1 + 128), *v9);
      [SESTapToRadar requestTapToRadarKML:@"Owner failed to send signed response" client:@"KMLSendSignedResponseError"];
      v8 = *v1;
      goto LABEL_20;
    }

    if (v11)
    {
      sub_100367E6C(v1);
    }

    goto LABEL_9;
  }

  if (v2 == 3)
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 40);
    v6 = KmlLogger();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        sub_100367F2C(v1, v4);
      }

      objc_storeStrong((*v1 + 128), *v4);
      v8 = *v1;
      goto LABEL_20;
    }

    if (v7)
    {
      sub_100367FFC(v1);
    }

LABEL_9:

    v8 = *v1;
LABEL_20:
    sub_1003B18E8(v8);
    return;
  }

  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    sub_1003680BC(v1);
  }
}

void sub_100366EA8(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    sub_10036817C(a1);
  }

  v3 = [KmlTlv TLVWithTag:40727 unsignedChar:sub_1003C22E0(*(*(a1 + 32) + 24))];
  v4 = [v3 asData];

  if (sub_1003DACE0(*(*(a1 + 32) + 24)))
  {
    v5 = *(a1 + 32);
    v6 = v5[15];
    v7 = v5[27];
    v8 = v5[20];
    v9 = sub_1003AD0FC(v5[3]);
    v10 = sub_1003ACF68(*(*(a1 + 32) + 24));
    v11 = sub_1003C7D28(*(*(a1 + 32) + 24));
    sub_1003CD23C(v6, v4, 0, 0, v7, v8, v9, v10, v11, 6);
  }

  else
  {
    v9 = [[DACarKeyGenericCrossPlatformSharingData alloc] initWithSharingIdentifier:*(*(a1 + 32) + 216) friendKeyIdentifier:0 sharingMessageType:6 message:v4];
    v12 = [DACarKeyAdditionalCrossPlatformSharingData alloc];
    v13 = sub_1003AD0FC(*(*(a1 + 32) + 24));
    v10 = [v12 initWithSharingSessionUUID:v13 bindingAttestation:0 targetDeviceType:sub_1003C7D28(*(*(a1 + 32) + 24)) initiatorIdsPseudonym:0];

    v14 = [[DACarKeySharingMessage alloc] initWithGenericCrossPlatformSharingData:v9 additionalData:v10 privateData:0];
    v15 = +[KmlClientReporterFactory getReporter];
    v16 = sub_1003AF3D8(*(*(a1 + 32) + 24));
    [v15 sendCrossPlatformSharingMessage:v14 toMailboxIdentifier:v16];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
    if (WeakRetained)
    {
      v18 = [[DAShareInitiatorResult alloc] initDataRequiredResultWithResponse:v14];
      v19 = objc_loadWeakRetained((*(a1 + 32) + 200));
      [v19 handleInitiatorMessageResult:v18];
    }
  }
}

void sub_100367454(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x1Cu);
}

id sub_100367478(void *a1)
{
  v4 = v1[27];
  v5 = v1[10] != 0;
  v6 = v1[16];

  return [a1 handleSharingCompleteForInvitationIdentifier:v4 localShare:v2 bindingAttestationUsed:v5 status:v6];
}

BOOL sub_1003674CC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

BOOL sub_100367508(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

id sub_100367558(uint64_t a1)
{

  return [v2 sendCrossPlatformSharingMessage:v1 toMailboxIdentifier:a1];
}

void sub_100367578(uint64_t a1)
{
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

void sub_100367590(uint64_t a1)
{
  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) genericData];
  v2 = [v13 message];
  v3 = [*(a1 + 40) additionalData];
  v4 = [v3 sharingSessionUUID];
  v5 = [*(a1 + 40) genericData];
  v6 = [v5 messageType];
  v7 = *(a1 + 48);
  v8 = [*(a1 + 40) genericData];
  v9 = [v8 friendKeyIdentifier];
  v10 = [*(a1 + 40) additionalData];
  v11 = [v10 bindingAttestation];
  sub_1003B2240(v12, v2, v4, v6, v7, v9, v11);
}

void sub_1003676B8(uint64_t a1)
{
  v5 = KmlLogger();
  if (sub_100057AEC(v5))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 216);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v8 UTF8String];

    v47 = 136315650;
    v48 = "[KmlOwnerSharingSession sendCancelResponse]_block_invoke";
    v49 = 1024;
    sub_100367278();
    sub_1003672D0();
    _os_log_impl(v9, v10, v11, v12, v13, 0x1Cu);
  }

  v14 = *(a1 + 32);
  if (!*(v14 + 128))
  {
    v15 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v45 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:KmlErrorString()];
    v46 = v16;
    [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    objc_claimAutoreleasedReturnValue();
    v17 = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
    v18 = *(a1 + 32);
    v19 = *(v18 + 128);
    *(v18 + 128) = v17;

    v14 = *(a1 + 32);
  }

  if (!*(v14 + 136))
  {
    objc_storeStrong((v14 + 136), *(v14 + 128));
  }

  v20 = [[KmlCancelMessage alloc] initWithKmlErrorCode:{objc_msgSend(*(*(a1 + 32) + 128), "code")}];
  v21 = [v20 asData];

  v22 = sub_1003674A4();
  if (sub_1003DACE0(v22))
  {
    v23 = *(a1 + 32);
    v24 = v23[15];
    v25 = v23[27];
    v26 = v23[20];
    v27 = sub_1003AD0FC(v23[3]);
    v28 = sub_1003674A4();
    v29 = sub_1003ACF68(v28);
    v30 = sub_1003674A4();
    v31 = sub_1003C7D28(v30);
    sub_1003CD23C(v24, v21, 0, 0, v25, v26, v27, v29, v31, 4);
  }

  else
  {
    v27 = [[DACarKeyGenericCrossPlatformSharingData alloc] initWithSharingIdentifier:*(*(a1 + 32) + 216) friendKeyIdentifier:0 sharingMessageType:4 message:v21];
    v32 = [DACarKeyAdditionalCrossPlatformSharingData alloc];
    v33 = sub_1003674A4();
    v34 = sub_1003AD0FC(v33);
    v35 = sub_1003674A4();
    sub_1003C7D28(v35);
    v29 = [sub_100367544() initWithSharingSessionUUID:? bindingAttestation:? targetDeviceType:? initiatorIdsPseudonym:?];

    v36 = [[DACarKeySharingMessage alloc] initWithGenericCrossPlatformSharingData:v27 additionalData:v29 privateData:0];
    v37 = +[KmlClientReporterFactory getReporter];
    v38 = sub_1003674A4();
    v39 = sub_1003AF3D8(v38);
    sub_100367558(v39);

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
    if (WeakRetained)
    {
      v41 = [[DAShareInitiatorResult alloc] initFailureResultWithResponse:v36 error:*(*(a1 + 32) + 128)];
      v42 = objc_loadWeakRetained((*(a1 + 32) + 200));
      [v42 handleInitiatorMessageResult:v41];
    }

    v43 = objc_loadWeakRetained((*(a1 + 32) + 208));

    if (v43)
    {
      v44 = objc_loadWeakRetained((*(a1 + 32) + 208));
      [v44 handleSharingCancelledMessage:v36];
    }
  }

  sub_1003B18E8(*(a1 + 32), 23);
}

void sub_100367A8C(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 216);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100367B4C(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 216);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100367C0C(uint64_t *a1, uint64_t *a2)
{
  sub_100367428(a1);
  if (v3)
  {
    v4 = *(v3 + 216);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v5 UTF8String];
  v6 = *a2;

  sub_1003672C0();
  sub_1003672B0();
  sub_100367418();
  sub_1003672E0();
  _os_log_impl(v7, v8, v9, v10, v11, 0x26u);
}

void sub_100367CDC(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 216);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100367D9C(uint64_t *a1, uint64_t *a2)
{
  sub_100367428(a1);
  if (v3)
  {
    v4 = *(v3 + 216);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v5 UTF8String];
  v6 = *a2;

  sub_1003672C0();
  sub_1003672B0();
  sub_100367418();
  sub_1003672E0();
  _os_log_impl(v7, v8, v9, v10, v11, 0x26u);
}

void sub_100367E6C(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 216);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100367F2C(uint64_t *a1, uint64_t *a2)
{
  sub_100367428(a1);
  if (v3)
  {
    v4 = *(v3 + 216);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v5 UTF8String];
  v6 = *a2;

  sub_1003672C0();
  sub_1003672B0();
  sub_100367418();
  sub_1003672E0();
  _os_log_impl(v7, v8, v9, v10, v11, 0x26u);
}

void sub_100367FFC(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 216);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003680BC(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 216);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_10036817C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 216);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100368DC8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "+[KmlAnalyticsLogger postKmlSharingEvent:]";
    v7 = 1024;
    v8 = 27;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Sharing Event = %@", &v5, 0x1Cu);
  }

  if (v2)
  {
    [CALogger postCAEventFor:@"com.apple.kml.keySharingEvent" eventInput:v2];
  }

  objc_sync_exit(v3);
}

void sub_100368F04(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "+[KmlAnalyticsLogger postKmlOwnerPairingEvent:]";
    v7 = 1024;
    v8 = 38;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i :  Pairing Event = %@", &v5, 0x1Cu);
  }

  if (v2)
  {
    [CALogger postCAEventFor:@"com.apple.kml.keyPairingEvent" eventInput:v2];
  }

  objc_sync_exit(v3);
}

void sub_100369040(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "+[KmlAnalyticsLogger prepKmlKeyTrackingEventForKey:]";
    v12 = 1024;
    v13 = 47;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Saving tracking request start time for keyId: %@", &v10, 0x1Cu);
  }

  v5 = [v2 uppercaseString];

  v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v7 = [v6 dictionaryForKey:@"kml.ca.trackingRequestDuration"];
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  v8 = [v7 mutableCopy];
  v9 = +[NSDate now];
  [v8 setObject:v9 forKeyedSubscript:v5];

  [v6 setObject:v8 forKey:@"kml.ca.trackingRequestDuration"];
  objc_sync_exit(v3);
}

id sub_100369220(uint64_t a1, void *a2)
{
  v2 = a2;
  obj = objc_opt_self();
  objc_sync_enter(obj);
  v22 = [v2 uppercaseString];

  v21 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v23 = [v21 dictionaryForKey:@"kml.ca.trackingRequestDuration"];
  if (v23 && ([v23 objectForKeyedSubscript:v22], v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v4 = objc_opt_isKindOfClass(), v3, (v4 & 1) != 0))
  {
    v5 = +[NSDate now];
    v6 = [v23 mutableCopy];
    [v6 removeObjectForKey:v22];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v6 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:{v11, obj}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v14 = [v23 objectForKeyedSubscript:v11];
            [v5 timeIntervalSinceDate:v14];
            v16 = v15 < 86400.0;

            if (v16)
            {
              continue;
            }
          }

          [v6 removeObjectForKey:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    if ([v6 count])
    {
      [v21 setObject:v6 forKey:@"kml.ca.trackingRequestDuration"];
    }

    else
    {
      [v21 removeObjectForKey:@"kml.ca.trackingRequestDuration"];
    }

    v18 = [v23 objectForKeyedSubscript:{v22, obj}];
    [v5 timeIntervalSinceDate:v18];
    v17 = [CALogger bucketRawTrackingRequestDuration:?];
  }

  else
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "+[KmlAnalyticsLogger getTrackingRequestDurationForKey:]";
      v31 = 1024;
      v32 = 68;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : No start key tracking start time saved for keyId:(%@)", buf, 0x1Cu);
    }

    v17 = 0;
  }

  objc_sync_exit(obj);
  return v17;
}

void sub_1003695CC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "+[KmlAnalyticsLogger postKmlKeyTrackingEvent:]";
    v7 = 1024;
    v8 = 108;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i :  Tracking Event = %@", &v5, 0x1Cu);
  }

  if (v2)
  {
    [CALogger postCAEventFor:@"com.apple.kml.keyTrackingEvent" eventInput:v2];
  }

  objc_sync_exit(v3);
}

void sub_100369708(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "+[KmlAnalyticsLogger postKmlKeyUpgradeEvent:]";
    v7 = 1024;
    v8 = 118;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i :  Upgrade Event = %@", &v5, 0x1Cu);
  }

  if (v2)
  {
    [CALogger postCAEventFor:@"com.apple.kml.keyUpgradeEvent" eventInput:v2];
  }

  objc_sync_exit(v3);
}

void sub_100369844(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "+[KmlAnalyticsLogger postKmlOwnerRevokesFriendKeysEvent:]";
    v7 = 1024;
    v8 = 129;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i :  Initiator revokes recipient Event = %@", &v5, 0x1Cu);
  }

  if (v2)
  {
    [CALogger postCAEventFor:@"com.apple.kml.ownerRevokesFriendKeysEvent" eventInput:v2];
  }

  objc_sync_exit(v3);
}

void sub_100369980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v25 = a7;
  v12 = objc_opt_self();
  objc_sync_enter(v12);
  v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v14 = [v13 dictionaryForKey:@"kml.ca.generalStatistics"];
  if (!v14)
  {
    v14 = sub_100369D90();
  }

  v24 = [v14 objectForKeyedSubscript:@"probingSessionCount"];
  if (a3 | a2 | a4 | a5 || [v24 unsignedIntegerValue])
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v29 = "+[KmlAnalyticsLogger postKmlGeneralStatisticsWithOwnerCarKeyCount:friendCarKeyCount:unifiedAccessHomeKeyCount:unifiedAccessHydraKeyCount:isProductionEnvironment:identifier:]";
      v30 = 1024;
      v31 = 155;
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : (%@) We have stats to report", buf, 0x1Cu);
    }

    v26[0] = @"ownerCarKeyCount";
    v16 = [NSNumber numberWithInteger:a2];
    v27[0] = v16;
    v26[1] = @"friendCarKeyCount";
    v17 = [NSNumber numberWithInteger:a3];
    v27[1] = v17;
    v26[2] = @"unifiedAccessHomeKeyCount";
    v18 = [NSNumber numberWithInteger:a4];
    v27[2] = v18;
    v26[3] = @"unifiedAccessHydraKeyCount";
    v19 = [NSNumber numberWithInteger:a5];
    v27[3] = v19;
    v26[4] = @"production";
    v20 = [NSNumber numberWithBool:a6];
    v27[4] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
    v22 = [v21 mutableCopy];

    [v22 addEntriesFromDictionary:v14];
    [CALogger postCAEventFor:@"com.apple.kml.generalStatisticsEvent" eventInput:v22];
    v23 = KmlLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v29 = "+[KmlAnalyticsLogger postKmlGeneralStatisticsWithOwnerCarKeyCount:friendCarKeyCount:unifiedAccessHomeKeyCount:unifiedAccessHydraKeyCount:isProductionEnvironment:identifier:]";
      v30 = 1024;
      v31 = 172;
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s : %i : (%@) Finished reporting stats to CA", buf, 0x1Cu);
    }

    [v13 removeObjectForKey:@"kml.ca.generalStatistics"];
  }

  else
  {
    v22 = KmlLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v29 = "+[KmlAnalyticsLogger postKmlGeneralStatisticsWithOwnerCarKeyCount:friendCarKeyCount:unifiedAccessHomeKeyCount:unifiedAccessHydraKeyCount:isProductionEnvironment:identifier:]";
      v30 = 1024;
      v31 = 157;
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s : %i : (%@) No stats to report", buf, 0x1Cu);
    }
  }

  objc_sync_exit(v12);
}

void *sub_100369D90()
{
  objc_opt_self();
  v0 = +[NSMutableDictionary dictionary];
  [v0 setObject:&off_1004DCB70 forKeyedSubscript:@"probingSessionCount"];
  return v0;
}

void sub_100369DDC()
{
  obj = objc_opt_self();
  objc_sync_enter(obj);
  v0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v1 = [v0 dictionaryForKey:@"kml.ca.generalStatistics"];
  v2 = [v1 mutableCopy];

  if (!v2)
  {
    v2 = sub_100369D90();
  }

  v3 = [v2 objectForKeyedSubscript:@"probingSessionCount"];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 unsignedIntegerValue] + 1);
  [v2 setObject:v4 forKeyedSubscript:@"probingSessionCount"];

  [v0 setObject:v2 forKey:@"kml.ca.generalStatistics"];
  objc_sync_exit(obj);
}

id sub_100369F14(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = sub_1003DF1BC(v6);
  v10 = v9;
  if (v9)
  {
    v11 = 0;
    v12 = 1;
LABEL_3:
    v8[2](v8, v12, [v9 u16BE:7]);

    v13 = 0;
    goto LABEL_8;
  }

  v35 = 0;
  v14 = SESEndPointList();
  v15 = 0;
  if (v15)
  {
    v13 = v15;
    v16 = KmlLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "+[KmlAnalyticsLogger getHUPDataSourceAndVehicleCapabilitiesWithConfig:keyIdentifier:callback:]";
      v39 = 1024;
      v40 = 215;
      v41 = 2112;
      v42 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s : %i : Error in getting endpoint list: %@", buf, 0x1Cu);
    }
  }

  else
  {
    v29 = v8;
    v30 = v6;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v32;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v31 + 1) + 8 * i);
          v25 = [v24 publicKeyIdentifier];
          v26 = [v25 isEqualToData:v7];

          if (v26)
          {
            v27 = KmlLogger();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v38 = "+[KmlAnalyticsLogger getHUPDataSourceAndVehicleCapabilitiesWithConfig:keyIdentifier:callback:]";
              v39 = 1024;
              v40 = 221;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s : %i : Found our endpoint", buf, 0x12u);
            }

            v28 = v24;
            v21 = v28;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }

    v11 = [v21 hupData];

    if (v11)
    {
      v12 = 2;
      v9 = v11;
      v8 = v29;
      v6 = v30;
      v10 = 0;
      goto LABEL_3;
    }

    v8 = v29;
    v29[2](v29, 0, 0);
    v13 = 0;
    v6 = v30;
    v10 = 0;
  }

LABEL_8:

  return v13;
}

void sub_10036AB14(uint64_t a1)
{
  v2 = +[KmlClientReporterFactory getTestReporter];
  [v2 registerOwnerSideSharingTestInvitations:*(a1 + 32) callback:*(a1 + 40)];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlXpcService registerOwnerSideSharingTestInvitations:callback:]_block_invoke";
    v6 = 1024;
    v7 = 131;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }
}

void sub_10036AD28(uint64_t a1)
{
  v2 = +[KmlClientReporterFactory getTestReporter];
  [v2 registerOwnerSideInvitationRequestHandler:*(a1 + 32)];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlXpcService registerOwnerSideInvitationRequestHandler:]_block_invoke";
    v6 = 1024;
    v7 = 141;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }
}

void sub_10036AF3C(uint64_t a1)
{
  v2 = +[KmlClientReporterFactory getTestReporter];
  [v2 registerFriendSideSharingTestInvitationUUIDHandler:*(a1 + 32)];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlXpcService registerFriendSideSharingTestInvitationUUIDHandler:]_block_invoke";
    v6 = 1024;
    v7 = 151;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }
}

void sub_10036B150(uint64_t a1)
{
  v2 = +[KmlClientReporterFactory getTestReporter];
  [v2 registerFriendSideSharingTestCompletion:*(a1 + 32)];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlXpcService registerFriendSideSharingTestCompletion:]_block_invoke";
    v6 = 1024;
    v7 = 161;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }
}

void sub_10036B364(uint64_t a1)
{
  v2 = +[KmlClientReporterFactory getTestReporter];
  [v2 registerFriendSideInvitationUnusableHandler:*(a1 + 32)];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlXpcService registerFriendSideInvitationUnusableHandler:]_block_invoke";
    v6 = 1024;
    v7 = 171;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }
}

void sub_10036B578(uint64_t a1)
{
  v2 = sub_10037E00C();
  sub_1003CD4C8(v2, *(a1 + 32));
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlXpcService registerCrossPlatformTestMessageOverIDSHandler:]_block_invoke";
    v6 = 1024;
    v7 = 181;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }
}

void sub_10036B78C(uint64_t a1)
{
  v2 = +[KmlClientReporterFactory getTestReporter];
  [v2 registerCrossPlatformMessageSendHandler:*(a1 + 32)];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlXpcService registerCrossPlatformTestMessageSendHandler:]_block_invoke";
    v6 = 1024;
    v7 = 191;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }
}

void sub_10036B9C0(uint64_t a1)
{
  v2 = sub_10037E00C();
  sub_1003CD554(v2, *(a1 + 32), *(a1 + 40));
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlXpcService sendCrossPlatformTestData:toIdsIdentifier:]_block_invoke";
    v6 = 1024;
    v7 = 201;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }
}

void sub_10036BBD4(uint64_t a1)
{
  v2 = +[KmlClientReporterFactory getTestReporter];
  [v2 registerFriendSidePasscodeRetryRequestHandler:*(a1 + 32)];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlXpcService registerFriendSidePasscodeRetryRequestHandler:]_block_invoke";
    v6 = 1024;
    v7 = 211;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }
}

void sub_10036BD7C(id a1)
{
  +[KmlClientReporterFactory removeTestReporter];
  v1 = sub_10037E00C();
  sub_1003CD60C(v1);

  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "[KmlXpcService unregisterSharingTestHandlers]_block_invoke";
    v5 = 1024;
    v6 = 221;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v3, 0x12u);
  }
}

void sub_10036BF20(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  if (v2 > *(v1 + 8))
  {

    sub_1003B6A28(v1, v2);
  }

  else
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[KmlDataExchangeManager setCurrentState:]_block_invoke";
      v7 = 1024;
      v8 = 127;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Current state higher than new state. Do nothing", &v5, 0x12u);
    }
  }
}

uint64_t sub_10036C068(uint64_t result)
{
  if (*(*(result + 32) + 8))
  {
    *(*(*(result + 40) + 8) + 24) = 0;
  }

  return result;
}

void sub_10036C084(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 7)
  {
    sub_10036DE7C(a1, (a1 + 32));
  }

  else
  {
    v1 = KmlLogger();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = 136315394;
      v3 = "[KmlDataExchangeManager continueKeyExchangeWithDeviceCertificate:instanceAttestation:keyAttestation:keyName:]_block_invoke";
      v4 = 1024;
      v5 = 293;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s : %i : We are not waiting for SE interaction. ignore request to exchange owner key", &v2, 0x12u);
    }
  }
}

void sub_10036C158(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) <= 11)
  {

    sub_1003B69C4(v2);
  }

  else
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[KmlDataExchangeManager cancelOwnerPairing]_block_invoke";
      v7 = 1024;
      v8 = 310;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : pairing already done, can't cancel", &v5, 0x12u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
    [WeakRetained handleOwnerPairingCancellationWithResult:0];
  }
}

void sub_10036C27C(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 7)
  {
    v3 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v4 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v10 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:v3 code:15 userInfo:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    sub_1003B7564(*(a1 + 32), 7);
  }

  else
  {
    v1 = KmlLogger();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[KmlDataExchangeManager reportKeyCreationFailed]_block_invoke";
      v13 = 1024;
      v14 = 320;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s : %i : We are not waiting for SE interaction. ignore request to report key creation failure", buf, 0x12u);
    }
  }
}

id sub_10036C414(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = sub_1003CC87C(v1[9]);
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10036C48C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 11)
  {
    v2 = *(a1 + 40);
    v3 = *(v1 + 88);

    [v3 startTransactionForKeyWithIdentifier:v2];
  }

  else
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[KmlDataExchangeManager startMailboxConfigurationForKeyIdentifier:]_block_invoke";
      v7 = 1024;
      v8 = 350;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Key exchange is not done to configure mailboxes", &v5, 0x12u);
    }
  }
}

void sub_10036C598(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) != 12)
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315394;
      v4 = "[KmlDataExchangeManager startFirstPostPairingTransactionForKeyIdentifier:]_block_invoke";
      v5 = 1024;
      v6 = 365;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : pairing not done yet, can't start first transaction.", &v3, 0x12u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_10036C67C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 12)
  {

    sub_1003B69C4(v1);
  }

  else
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315394;
      v4 = "[KmlDataExchangeManager cancelFirstPostPairingTransaction]_block_invoke";
      v5 = 1024;
      v6 = 383;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : First transaction hasn't started. Nothing to cancel", &v3, 0x12u);
    }
  }
}

void sub_10036C780(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    sub_1003C922C(*(v1 + 72));
  }
}

id sub_10036C7B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 56) == 1 && *(*(a1 + 40) + 144) == 1)
    {
      v3 = KmlLogger();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v5 = 136315394;
        v6 = "[KmlDataExchangeManager pairingEndedWithResult:uwbSupport:keyIdentifier:]_block_invoke";
        v7 = 1024;
        v8 = 431;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Paired UWB capable key over NFC. Kick first approach.", &v5, 0x12u);
      }

      sub_100379170(KmlPairingTransportFactory, *(a1 + 48));
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  return [*(*(a1 + 40) + 88) pairingEndedWithResult:v2];
}

void sub_10036CA38(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    if (*(a1 + 40))
    {
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        *buf = 136315650;
        v15 = "[KmlDataExchangeManager handleSessionStartResult:]_block_invoke";
        v16 = 1024;
        v17 = 633;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s : %i : Error in starting session - %@", buf, 0x1Cu);
      }

      v6 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v7 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
      v13 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v9 = [NSError errorWithDomain:v6 code:9 userInfo:v8];
      v10 = *(a1 + 32);
      v11 = *(v10 + 48);
      *(v10 + 48) = v9;

      sub_1003B69C4(*(a1 + 32));
    }

    else
    {

      sub_1003B69C4(v2);
    }
  }

  else
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[KmlDataExchangeManager handleSessionStartResult:]_block_invoke";
      v16 = 1024;
      v17 = 627;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Not expecting session start. Ignore it.", buf, 0x12u);
    }

    [*(*(a1 + 32) + 88) readApdu];
  }
}

void sub_10036CDD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 8)
  {
    if (*(a1 + 40))
    {
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        *buf = 136315650;
        v15 = "[KmlDataExchangeManager handleSessionResumeResult:]_block_invoke";
        v16 = 1024;
        v17 = 655;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s : %i : Error in resuming session - %@", buf, 0x1Cu);
      }

      v6 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v7 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
      v13 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v9 = [NSError errorWithDomain:v6 code:9 userInfo:v8];
      v10 = *(a1 + 32);
      v11 = *(v10 + 48);
      *(v10 + 48) = v9;

      sub_1003B69C4(*(a1 + 32));
    }

    else
    {
      *(v2 + 40);

      sub_1003B69C4(v2);
    }
  }

  else
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[KmlDataExchangeManager handleSessionResumeResult:]_block_invoke";
      v16 = 1024;
      v17 = 649;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Not expecting session start. Ignore it.", buf, 0x12u);
    }

    [*(*(a1 + 32) + 88) readApdu];
  }
}

void sub_10036D1A4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  if (v3)
  {
    sub_10036DEF4(v2, a1);
  }

  else
  {
    v6 = *(a1 + 40);
    v5 = (a1 + 40);
    v4 = v6;
    if (*(v6 + 8) == 6)
    {

      sub_1003B69C4(v4);
    }

    else
    {
      sub_10036DFF4(&v7, &v8, v5);
    }
  }
}

void sub_10036D390(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *(v2 - 1);
  if (v3)
  {
    sub_10036E154(v1, v3, v2);
  }

  else if (*(v1 + 8) == 10)
  {

    sub_1003B69C4(v1);
  }

  else
  {
    sub_10036E1A0(&v4, &v5, v2);
  }
}

void sub_10036D584(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (*(v3 + 8) == 11)
    {
      objc_storeStrong((v3 + 48), v1);
      v3 = *(a1 + 40);
    }

    sub_1003B69C4(v3);
  }
}

void sub_10036D688(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 8);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 12)
  {
    if (v5)
    {
      v8 = *(a1 + 40);
      *buf = 136315650;
      v19 = "[KmlDataExchangeManager handleTransactionEndResult:]_block_invoke";
      v20 = 1024;
      v21 = 743;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received didEndTransaction during first transaction. Error: %@", buf, 0x1Cu);
    }

    if (*(a1 + 40))
    {
      v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      if ([*(a1 + 40) code] == 23)
      {
        v10 = 10;
      }

      else
      {
        v10 = 7;
      }

      [*(a1 + 40) code];
      v11 = [NSString stringWithUTF8String:KmlErrorString()];
      v17 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v13 = [NSError errorWithDomain:v9 code:v10 userInfo:v12];
      v14 = *(a1 + 32);
      v15 = *(v14 + 48);
      *(v14 + 48) = v13;
    }

    sub_1003B69C4(*v2);
  }

  else if (v3 == 11)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      *buf = 136315650;
      v19 = "[KmlDataExchangeManager handleTransactionEndResult:]_block_invoke";
      v20 = 1024;
      v21 = 734;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : While waiting for mailboxes, transaction session ended with - %@.", buf, 0x1Cu);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_10036E300(v2, v7);
    }

    else
    {
      sub_10036E338(v2);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 136315394;
      v19 = "[KmlDataExchangeManager handleTransactionEndResult:]_block_invoke";
      v20 = 1024;
      v21 = 749;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received didEndTransaction callback, but we don't care about it in this state. Ignore", buf, 0x12u);
    }
  }
}

void sub_10036DBA0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x12u);
}

void sub_10036DBF0(uint64_t a1@<X0>, NSObject *a2@<X8>, uint64_t a3, char block, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a8 = a1;

  dispatch_async(a2, &block);
}

void sub_10036DC0C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x12u);
}

BOOL sub_10036DC64(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_10036DCD8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

BOOL sub_10036DCF8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_10036DD10(uint64_t a1)
{
  sub_1003C922C(*(*(a1 + 32) + 72));
  v2 = *(a1 + 32);

  sub_1003B69C4(v2);
}

void sub_10036DD54(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  v8 = NSLocalizedDescriptionKey;
  v3 = [NSString stringWithUTF8String:KmlErrorString()];
  v9 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [NSError errorWithDomain:v2 code:31 userInfo:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  sub_1003B69C4(*(a1 + 32));
}

void sub_10036DE7C(void **a1, uint64_t *a2)
{
  v3 = sub_1003B5EDC([KmlKeyDataTransmitter alloc], a1[5], a1[6], a1[7], a1[8]);
  sub_1003C7DB0(*(*a2 + 72), v3);
  sub_1003B69C4(*a2);
}

void sub_10036DEF4(id *a1, uint64_t a2)
{
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v7 = 136315650;
    v8 = "[KmlDataExchangeManager handleSessionPauseResult:]_block_invoke";
    v9 = 1024;
    v10 = 674;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s : %i : Error in session disconnect - %@", &v7, 0x1Cu);
  }

  v6 = *(a2 + 40);
  if (!*(v6 + 48))
  {
    objc_storeStrong((v6 + 48), *a1);
    v6 = *(a2 + 40);
  }

  sub_1003B69C4(v6);
}

void sub_10036DFF4(NSErrorUserInfoKey *a1, void *a2, uint64_t *a3)
{
  v6 = KmlLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10036DB8C();
    sub_10036DCD8(&_mh_execute_header, v7, v8, "%s : %i : received pause in wrong state.", v9, v10, v11, v12, v17);
  }

  v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  *a1 = NSLocalizedDescriptionKey;
  v14 = [NSString stringWithUTF8String:KmlErrorString()];
  *a2 = v14;
  [NSDictionary dictionaryWithObjects:a2 forKeys:a1 count:1];
  objc_claimAutoreleasedReturnValue();
  v15 = [sub_10036DC40() errorWithDomain:? code:? userInfo:?];
  v16 = *(*a3 + 48);
  *(*a3 + 48) = v15;

  sub_1003B69C4(*a3);
}

void sub_10036E154(id *location, void *a2, id **a3)
{
  if (!location[6])
  {
    objc_storeStrong(location + 6, a2);
    location = *a3;
    v3 = vars8;
  }

  sub_1003B69C4(location);
}

void sub_10036E1A0(NSErrorUserInfoKey *a1, void *a2, uint64_t *a3)
{
  v6 = KmlLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10036DB8C();
    sub_10036DCD8(&_mh_execute_header, v7, v8, "%s : %i : received end in wrong state.", v9, v10, v11, v12, v17);
  }

  v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  *a1 = NSLocalizedDescriptionKey;
  v14 = [NSString stringWithUTF8String:KmlErrorString()];
  *a2 = v14;
  [NSDictionary dictionaryWithObjects:a2 forKeys:a1 count:1];
  objc_claimAutoreleasedReturnValue();
  v15 = [sub_10036DC40() errorWithDomain:? code:? userInfo:?];
  v16 = *(*a3 + 48);
  *(*a3 + 48) = v15;

  sub_1003B69C4(*a3);
}

void sub_10036E338(uint64_t *a1)
{
  v3 = KmlLogger();
  if (sub_100057AEC(v3))
  {
    sub_10036DB8C();
    v7 = 739;
    sub_10036DBA0(&_mh_execute_header, v4, v5, "%s : %i : Transaction was successful", v6);
  }

  sub_1003B69C4(*a1);
}

id sub_10036E88C(void *a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 136315906;
    v7 = "[KmlWalletReporter sharingCompleteForInvitationIdentifier:friendKeyIdentifier:status:]_block_invoke";
    v8 = 1024;
    v9 = 74;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Invitation ID: %@, friendKeyID : %@", &v6, 0x26u);
  }

  return [*(a1[6] + 16) sharingInvitationWasInvalidated:a1[4] withCredentialIdentifier:a1[5] error:a1[7] completion:&stru_1004D1B18];
}

void sub_10036E978(id a1, BOOL a2)
{
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"un-";
    v5 = 136315906;
    v6 = "[KmlWalletReporter sharingCompleteForInvitationIdentifier:friendKeyIdentifier:status:]_block_invoke";
    if (v2)
    {
      v4 = &stru_1004D9380;
    }

    v7 = 1024;
    v8 = 76;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = @"successfully";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Reported to wallet %@%@", &v5, 0x26u);
  }
}

void sub_10036ECE4(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = "[KmlWalletReporter sendCrossPlatformSharingMessage:toMailboxIdentifier:]_block_invoke_2";
    v9 = 1024;
    v6 = @"un-";
    v10 = 115;
    v7 = 136316162;
    if (v3)
    {
      v6 = &stru_1004D9380;
    }

    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = @"successfully";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Handed the message to wallet %@%@; error - %@", &v7, 0x30u);
  }
}

id sub_10036EF64(uint64_t a1)
{

  return [v1 addObject:a1];
}

void sub_10036EFBC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_INFO, a4, (v5 - 144), 0x1Cu);
}

void sub_10036F104(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_INFO, a4, &buf, 0x1Cu);
}

BOOL sub_10036F124(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

id sub_10036F154(uint64_t a1)
{

  return [v1 appendData:a1];
}

__n128 sub_10036F24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  *(v11 - 128) = a11.n128_u32[0];
  return result;
}

id sub_10036F258(uint64_t a1)
{

  return [v1 appendData:a1];
}

int64_t sub_10036F32C(id a1, KmlTlv *a2, KmlTlv *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(KmlTlv *)v4 tag];
  if (v6 == [(KmlTlv *)v5 tag])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(KmlTlv *)v4 tag];
    if (v8 > [(KmlTlv *)v5 tag])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

void sub_10036F470(uint64_t a1@<X8>, float a2@<S0>)
{
  *&STACK[0x240] = a2;
  *(v2 + 4) = a1;
  LOWORD(STACK[0x24C]) = 1024;
}

void sub_10036F4E4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void sub_10036F500(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void sub_10036F518(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_INFO, a4, &buf, 0x12u);
}

BOOL sub_10036F548(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10036F590(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x1Cu);
}

id sub_10036F5A8(uint64_t a1)
{

  return [v1 appendData:a1];
}

BOOL sub_10036F5C4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_10036F5DC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10036F5F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x1Cu);
}

id sub_10036F65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v65 countByEnumeratingWithState:&a23 objects:&a65 count:16];
}

void sub_10036F790(float a1)
{
  *(v3 - 128) = a1;
  *(v1 + 4) = v2;
  *(v3 - 116) = 1024;
}

void sub_10036F7A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_INFO, a4, (v5 - 128), 0x12u);
}

void sub_10036F7C4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x12u);
}

id sub_10036F7E4(uint64_t a1)
{

  return [v1 appendData:a1];
}

id sub_10036F884(uint64_t a1)
{

  return [v1 appendData:a1];
}

id sub_10036F8B0(uint64_t a1)
{

  return [v1 appendData:a1];
}

id sub_10036F8D8(uint64_t a1)
{

  return [v1 appendData:a1];
}

id sub_10036F8F4(uint64_t a1)
{

  return [v1 doesVersion:a1 support:768];
}

uint64_t sub_10036F930@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(v3 + 14) = v2;
  *(v5 - 126) = a2;
  *(v5 - 124) = v4;
  *(v5 - 120) = a2;
  *(v3 + 26) = result;
  return result;
}

id sub_10036F960()
{

  return [v1 appendData:v0];
}

BOOL sub_10036F978(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_10036F99C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint8_t buf)
{

  _os_log_impl(a1, v25, OS_LOG_TYPE_INFO, a4, &buf, 0x12u);
}

id sub_10036F9BC()
{
  v3 = *(v1 + 2216);
  v4 = *(v0 + 48);

  return [v4 agreedKmlVehicleVersion];
}

void sub_10036FD2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[KmlNfcPairingTransport startTransactionForKeyWithIdentifier:]_block_invoke";
      v14 = 1024;
      v15 = 147;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Transport not ready to start transaction", buf, 0x12u);
    }

    v4 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v5 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v11 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [NSError errorWithDomain:v4 code:25 userInfo:v6];

    v8 = [*(a1 + 32) delegate];
    [v8 handleTransactionStartResult:v7];
  }

  else
  {
    objc_storeStrong((v2 + 112), *(a1 + 40));
    v9 = *(a1 + 32);

    sub_1003C11C4(v9, 10);
  }
}

void sub_100370008(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 56) == 1)
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v7 = "[KmlNfcPairingTransport readApdu]_block_invoke";
      v8 = 1024;
      v9 = 165;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Read already in progress. Ignore another attempt", buf, 0x12u);
    }
  }

  else
  {
    *(v1 + 56) = 1;
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100370134;
    block[3] = &unk_1004C08D8;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

id sub_1003701D4(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlNfcPairingTransport sendApdu:]_block_invoke";
    v6 = 1024;
    v7 = 180;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }

  return [*(*(a1 + 32) + 40) sendAPDU:*(a1 + 40)];
}

void sub_100370318(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "[KmlNfcPairingTransport reset]_block_invoke";
    v5 = 1024;
    v6 = 188;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Reset requested", &v3, 0x12u);
  }

  sub_1003C1530(*(a1 + 32));
}

void sub_10037049C(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  if (v2 > *(v1 + 8))
  {

    sub_1003C1648(v1, v2);
  }

  else
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[KmlNfcPairingTransport setCurrentState:]_block_invoke";
      v7 = 1024;
      v8 = 209;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Current state higher than new state. Do nothing", &v5, 0x12u);
    }
  }
}

void sub_1003705DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003706A8;
  block[3] = &unk_1004C24A8;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_1003706A8(uint64_t a1)
{
  v2 = KmlSignpostLogger();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    v12 = 138412290;
    v13 = v3;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NfcHceSessionCreate", "error=%@", &v12, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = KmlLogger();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v10 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[KmlNfcPairingTransport setCurrentState_sync:]_block_invoke";
      v14 = 1024;
      v15 = 233;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : startHCESession Error: %@", &v12, 0x1Cu);
    }

    objc_storeStrong((*(a1 + 40) + 64), *(a1 + 32));
    v11 = *(a1 + 40);
    goto LABEL_11;
  }

  if (v6)
  {
    v12 = 136315394;
    v13 = "[KmlNfcPairingTransport setCurrentState_sync:]_block_invoke";
    v14 = 1024;
    v15 = 238;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : HCESession started", &v12, 0x12u);
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = (a1 + 40);
  [v7 setDelegate:v8];
  objc_storeStrong(*v9 + 5, v9[1]);
  if (*(*v9 + 1) == 1)
  {
LABEL_11:
    sub_1003C11C4();
    return;
  }

  sub_100372468(v9);
}

void sub_10037088C(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 NFCLoyaltyAndPaymentSessionTimeLimit];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10037094C;
  v6[3] = &unk_1004D1C10;
  v6[4] = *(a1 + 32);
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = v3;
}

void sub_10037094C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100372314;
  block[3] = &unk_1004C08D8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_1003709C0(uint64_t a1)
{
  [*(*(a1 + 32) + 88) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  *(v2 + 88) = 0;

  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlNfcPairingTransport cancelEndTransactionTimer]_block_invoke";
    v7 = 1024;
    v8 = 360;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : endTransactionTimer cancelled", &v5, 0x12u);
  }
}

void sub_100370A98(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 NFCHceSessionTimeLimit];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100370B58;
  v6[3] = &unk_1004D1C10;
  v6[4] = *(a1 + 32);
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  *(v4 + 96) = v3;
}

void sub_100370B58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100370BCC;
  block[3] = &unk_1004C08D8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_100370BCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = (a1 + 32);
  if ((*(v2 + 8) | 4) == 6)
  {
    sub_10037250C(v1, v4);
    v3 = *v4;
  }

  else
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 136315394;
      *&v4[4] = "[KmlNfcPairingTransport startHceTimer]_block_invoke";
      v5 = 1024;
      v6 = 385;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : hce session timer fired, but we had moved to next state. So Ignore", v4, 0x12u);
    }
  }
}

void sub_100370CA8(uint64_t a1)
{
  [*(*(a1 + 32) + 96) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  *(*(a1 + 32) + 104) = 0;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlNfcPairingTransport cancelHceTimer]_block_invoke";
    v7 = 1024;
    v8 = 404;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : hceSessionTimer cancelled", &v5, 0x12u);
  }
}

void sub_100370D88(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  v2 = [*(a1 + 32) delegate];
  [v2 handleIncomingApdu:*(a1 + 40) error:*(a1 + 48)];
}

void sub_100370DE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100370EB0;
  block[3] = &unk_1004C24A8;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_100370EB0(uint64_t a1)
{
  v2 = KmlSignpostLogger();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v26 = v3;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NfcLnPtxnSessionCreate", "error=%@", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    sub_1003725D0((a1 + 32), a1);
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = (a1 + 40);
    [v4 setDelegate:v5];
    objc_storeStrong(*v6 + 6, v6[1]);
    v7 = *(*v6 + 1);
    v8 = KmlLogger();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7 == 10)
    {
      if (v9)
      {
        *buf = 136315394;
        v26 = "[KmlNfcPairingTransport startLoyaltyAndPaymentSession]_block_invoke";
        v27 = 1024;
        v28 = 473;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : LoyaltyAndPayment session started, configuring active applet and starting card emulation mode", buf, 0x12u);
      }

      v10 = [*(*v6 + 6) appletWithIdentifier:@"A000000809434343444B417631"];
      if (*(*v6 + 14))
      {
        v31 = *(*v6 + 14);
        v12 = [NSArray arrayWithObjects:&v31 count:1];
        v11 = [NSSet setWithArray:v12];
      }

      else
      {
        v11 = 0;
      }

      v13 = *(*v6 + 6);
      v24 = 0;
      [v13 setActivePaymentApplet:v10 keys:v11 error:&v24];
      v14 = v24;
      v21 = v24;
      if (v21)
      {
        v23 = KmlLogger();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v26 = "[KmlNfcPairingTransport startLoyaltyAndPaymentSession]_block_invoke";
          v27 = 1024;
          v28 = 479;
          v29 = 2112;
          v30 = v21;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s : %i : setActivePaymentApplet Error: %@", buf, 0x1Cu);
        }

        objc_storeStrong(*v6 + 8, v14);
        v22 = 15;
      }

      else
      {
        v22 = 11;
      }

      sub_1003C11C4(*v6, v22, v15, v16, v17, v18, v19, v20);
      [*(*v6 + 6) startCardEmulation:1 authorization:0];
    }

    else
    {
      sub_1003726BC(v9, v8, v6);
    }
  }
}

void sub_100371218(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 40);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 == v3)
  {
    if (v5)
    {
      *buf = 136315394;
      v9 = "[KmlNfcPairingTransport hceSessionDidConnect:]_block_invoke";
      v10 = 1024;
      v11 = 567;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received SessionDidConnect callback for active session.", buf, 0x12u);
    }

    if ((*(*v1 + 8) | 4) == 6)
    {
      sub_100372758(*v1, v1);
    }

    else
    {
      sub_100372798(&v6, &v7, v1);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 136315394;
      v9 = "[KmlNfcPairingTransport hceSessionDidConnect:]_block_invoke";
      v10 = 1024;
      v11 = 564;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received SessionDidConnect callback, but not for active session. Ignoring", buf, 0x12u);
    }
  }
}

void sub_100371410(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 40);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 == v3)
  {
    if (v5)
    {
      v8 = 136315394;
      v9 = "[KmlNfcPairingTransport hceSessionDidDisconnect:]_block_invoke";
      v10 = 1024;
      v11 = 592;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received SessionDidDisconnect callback, for active session.", &v8, 0x12u);
    }

    v6 = *(a1 + 40);
    if ((*(v6 + 8) - 3) > 1)
    {
      v7 = 9;
    }

    else
    {
      v7 = 5;
    }

    sub_1003C11C4(v6, v7);
  }

  else
  {
    if (v5)
    {
      v8 = 136315394;
      v9 = "[KmlNfcPairingTransport hceSessionDidDisconnect:]_block_invoke";
      v10 = 1024;
      v11 = 588;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received SessionDidDisconnect callback, but not for active session. Ignoring", &v8, 0x12u);
    }
  }
}

void sub_1003715F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 40);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 == v3)
  {
    if (v5)
    {
      *buf = 136315394;
      v16 = "[KmlNfcPairingTransport hceSessionDidEndUnexpectedly:]_block_invoke";
      v17 = 1024;
      v18 = 610;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received SessionDidEndUnexpectedly callback for active session. Bailing out.", buf, 0x12u);
    }

    v6 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    if (*(*(a1 + 40) + 104))
    {
      v7 = 23;
    }

    else
    {
      v7 = 24;
    }

    v8 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v14 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [NSError errorWithDomain:v6 code:v7 userInfo:v9];
    v11 = *(a1 + 40);
    v12 = *(v11 + 64);
    *(v11 + 64) = v10;

    sub_1003C11C4(*(a1 + 40), 9);
  }

  else
  {
    if (v5)
    {
      *buf = 136315394;
      v16 = "[KmlNfcPairingTransport hceSessionDidEndUnexpectedly:]_block_invoke";
      v17 = 1024;
      v18 = 606;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received SessionDidEndUnexpectedly callback, but not for active session. Ignoring", buf, 0x12u);
    }
  }
}

void sub_1003718BC(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3 == v2[5])
  {
    v5 = [v2 delegate];
    [v5 handleIncomingApdu:a1[6] error:0];
  }

  else
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v7 = "[KmlNfcPairingTransport hceSession:didReceiveAPDU:]_block_invoke";
      v8 = 1024;
      v9 = 620;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received didReceiveAPDU callback, but not for active session. Ignoring", buf, 0x12u);
    }
  }
}

void sub_100371A74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2 == *(v1 + 48))
  {
    sub_100372908(v1, v4);
    v3 = *v4;
  }

  else
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 136315394;
      *&v4[4] = "[KmlNfcPairingTransport loyaltyAndPaymentSession:didStartTransaction:]_block_invoke";
      v5 = 1024;
      v6 = 635;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Received didStartTransaction callback, but not for active session. Ignoring", v4, 0x12u);
    }
  }
}

void sub_100371C10(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 48))
  {
    if ([*(a1 + 48) didError])
    {
      v3 = KmlLogger();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v13 = "[KmlNfcPairingTransport loyaltyAndPaymentSession:didEndTransaction:]_block_invoke";
        v14 = 1024;
        v15 = 652;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Received didEndTransaction callback reports error.", buf, 0x12u);
      }

      v4 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v5 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
      v11 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v7 = [NSError errorWithDomain:v4 code:24 userInfo:v6];
      v8 = *(a1 + 40);
      v9 = *(v8 + 64);
      *(v8 + 64) = v7;
    }

    sub_1003C11C4(*(a1 + 40), 13);
  }

  else
  {
    v1 = KmlLogger();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[KmlNfcPairingTransport loyaltyAndPaymentSession:didEndTransaction:]_block_invoke";
      v14 = 1024;
      v15 = 647;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s : %i : Received didEndTransaction callback, but not for active session. Ignoring", buf, 0x12u);
    }
  }
}

void sub_100371EB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 48);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 == v3)
  {
    if (v5)
    {
      *buf = 136315394;
      v15 = "[KmlNfcPairingTransport loyaltyAndPaymentSessionDidEndUnexpectedly:]_block_invoke";
      v16 = 1024;
      v17 = 666;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Transaction session ended un-expectedly.", buf, 0x12u);
    }

    v6 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v7 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v13 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [NSError errorWithDomain:v6 code:24 userInfo:v8];
    v10 = *(a1 + 40);
    v11 = *(v10 + 64);
    *(v10 + 64) = v9;

    sub_1003C11C4(*(a1 + 40), 13);
  }

  else
  {
    if (v5)
    {
      *buf = 136315394;
      v15 = "[KmlNfcPairingTransport loyaltyAndPaymentSessionDidEndUnexpectedly:]_block_invoke";
      v16 = 1024;
      v17 = 663;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received SessionDidEndUnexpectedly callback, but not for active session. Ignoring", buf, 0x12u);
    }
  }
}

void sub_1003721B4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, v17, OS_LOG_TYPE_INFO, a4, &buf, 0x12u);
}

void sub_1003721EC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_INFO, a4, &buf, 0x12u);
}

void sub_10037220C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x12u);
}

uint64_t sub_10037225C()
{
  v2 = *(v0 + 1128);

  return KmlErrorString();
}

void sub_1003722CC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, v17, OS_LOG_TYPE_INFO, a4, &buf, 0x1Cu);
}

void sub_100372468(uint64_t *a1)
{
  v3 = KmlLogger();
  if (sub_100057AEC(v3))
  {
    sub_10036DB8C();
    v7 = 242;
    sub_10036DBA0(&_mh_execute_header, v4, v5, "%s : %i : state changed while we were trying to get HCE session. cleanup to make sure we are not leaking session", v6);
  }

  sub_1003C1530(*a1);
}

uint64_t sub_10037250C(void *a1, void *a2)
{
  v5 = KmlLogger();
  if (sub_10036DCF8(v5))
  {
    sub_10036DB8C();
    v10 = 381;
    sub_10036DC0C(&_mh_execute_header, v2, v6, "%s : %i : Ending hce session due to time out.", v9);
  }

  result = sub_1003C0C6C(*a1);
  v8 = *a1;
  *a2 = *(*a1 + 96);
  *(v8 + 96) = 0;
  return result;
}

uint64_t sub_1003725D0(id *a1, uint64_t a2)
{
  v5 = KmlLogger();
  if (sub_10036DCF8(v5))
  {
    v6 = *a1;
    *v14 = 136315650;
    *&v14[4] = "[KmlNfcPairingTransport startLoyaltyAndPaymentSession]_block_invoke";
    *&v14[12] = 1024;
    *&v14[14] = 458;
    *&v14[18] = 2112;
    *&v14[20] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Error in starting loyalty and payment session - %@", v14, 0x1Cu);
  }

  objc_storeStrong((*(a2 + 40) + 64), *a1);
  return sub_1003C11C4(*(a2 + 40), 15, v7, v8, v9, v10, v11, v12, *v14, *&v14[8], *&v14[16], *&v14[24], v15, v16);
}

void sub_1003726BC(char a1, void *a2, uint64_t *a3)
{
  if (a1)
  {
    sub_10036DB8C();
    v8 = 468;
    sub_10036DBA0(&_mh_execute_header, v5, v6, "%s : %i : state changed while we were trying to get LoyaltyAndPayment session. cleanup to make sure we are not leaking session", v7);
  }

  sub_1003C1530(*a3);
}

void sub_100372758(uint64_t a1, uint64_t *a2)
{
  sub_1003C2200(a1);
  if (*(*a2 + 8) == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 7;
  }

  sub_1003C11C4(*a2, v3);
}

void sub_100372798(NSErrorUserInfoKey *a1, void *a2, uint64_t *a3)
{
  v7 = KmlLogger();
  if (sub_10036F124(v7))
  {
    sub_10036DB8C();
    v15 = 577;
    sub_10036DC0C(&_mh_execute_header, v3, v8, "%s : %i : received connect in wrong state.", v14);
  }

  v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  *a1 = NSLocalizedDescriptionKey;
  v10 = [NSString stringWithUTF8String:KmlErrorString()];
  *a2 = v10;
  v11 = [NSDictionary dictionaryWithObjects:a2 forKeys:a1 count:1];
  v12 = [NSError errorWithDomain:v9 code:24 userInfo:v11];
  v13 = *(*a3 + 64);
  *(*a3 + 64) = v12;

  sub_1003C11C4(*a3, 9);
}

void sub_100372908(uint64_t a1, void *a2)
{
  sub_1003C1FBC(a1);
  v4 = KmlLogger();
  if (sub_100057AEC(v4))
  {
    sub_10036DB8C();
    v8 = 639;
    sub_10036DBA0(&_mh_execute_header, v5, v6, "%s : %i : Transaction started and endTransactionTimer canceled", v7);
  }

  *a2 = v2;
}

id sub_1003729A8()
{
  objc_opt_self();
  if (qword_10051B048 != -1)
  {
    sub_1003764FC();
  }

  v0 = qword_10051B040;

  return v0;
}

void sub_1003729F0(id a1)
{
  v1 = KmlLogger();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "+[KmlOwnerPairingManager opManagerArray]_block_invoke";
    v6 = 1024;
    v7 = 86;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s : %i : OPManager: initializing opManagerArray", &v4, 0x12u);
  }

  v2 = +[NSMutableArray array];
  v3 = qword_10051B040;
  qword_10051B040 = v2;
}

void sub_100372AC8()
{
  objc_opt_self();
  v0 = sub_1003729A8();
  v1 = +[NSMutableIndexSet indexSet];
  v2 = v0;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8 && *(v8 + 200) == 52)
        {
          [v1 addIndex:{v5, v9}];
        }

        ++v5;
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [v3 removeObjectsAtIndexes:v1];
  objc_sync_exit(v3);
}

KmlOwnerPairingManager *sub_100372C58(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  sub_100372AC8();
  v3 = sub_1003729A8();
  objc_sync_enter(v3);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (v2)
        {
          v8 = *(*(&v16 + 1) + 8 * v7);
          v9 = v8 ? v8[24] : 0;
          v10 = v9;
          v11 = [v2 uppercaseString];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
            v14 = v8;

            goto LABEL_17;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v13 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v5 = v13;
    }

    while (v13);
  }

  if (v2)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_alloc_init(KmlOwnerPairingManager);
    if (v14)
    {
      [v4 addObject:v14];
    }
  }

LABEL_17:
  objc_sync_exit(v4);

  return v14;
}

void sub_100372FA4(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 184), *(a1 + 40));
  v2 = sub_1003C42F4([KmlSeManager alloc], *(a1 + 32));
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

void sub_100373000(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 200))
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[KmlOwnerPairingManager preWarmForManufacturer:]_block_invoke";
      v6 = 1024;
      v7 = 202;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Pre-warm called in wrong state", &v4, 0x12u);
    }
  }

  else
  {
    objc_storeStrong((v1 + 80), *(a1 + 40));
    sub_1003C244C(*(a1 + 32));
    *(*(a1 + 32) + 177) = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_1003730FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 200) | 2) == 2)
  {
    *(v1 + 177) = 0;
    v4 = *(a1 + 40);
    v5 = kmlUtilSanitizeFriendlyName();
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;

    v2 = objc_opt_new();
    v8 = [v2 BOOLValueForSetting:2 manufacturer:*(*(a1 + 32) + 80) brand:0 uuid:0 error:0];
    if (v8)
    {
      [*(*(a1 + 32) + 152) downgradePreferredVersion];
    }

    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 56);
      v12 = @"No";
      if (v8)
      {
        v12 = @"Yes";
      }

      v13 = *(v10 + 152);
      v26 = 136316162;
      v27 = "[KmlOwnerPairingManager startOwnerPairingWithPassword:keyName:transport:bindingAttestation:]_block_invoke";
      v28 = 1024;
      v29 = 234;
      v30 = 2112;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : KeyName : %@; Downgrade framework version : %@,\n versionInfo : %@", &v26, 0x30u);
    }

    v14 = sub_1003B6790([KmlDataExchangeManager alloc], *(a1 + 32), *(a1 + 48), *(a1 + 72), *(*(a1 + 32) + 152));
    v15 = *(a1 + 32);
    v16 = *(v15 + 8);
    *(v15 + 8) = v14;

    v17 = sub_1003DF2B8([KmlBindingAttestation alloc], *(a1 + 56));
    v18 = sub_1003BA3D0(v17);

    if (v18)
    {
      v24 = sub_1003BA3D0(v17);
      v25 = *(a1 + 32);
      v23 = *(v25 + 88);
      *(v25 + 88) = v24;
    }

    else
    {
      v19 = KmlLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v26 = 136315394;
        v27 = "[KmlOwnerPairingManager startOwnerPairingWithPassword:keyName:transport:bindingAttestation:]_block_invoke";
        v28 = 1024;
        v29 = 247;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s : %i : We didn't get well formatted Binding Attestation.", &v26, 0x12u);
      }

      v20 = KmlLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v26 = 136315394;
        v27 = "[KmlOwnerPairingManager startOwnerPairingWithPassword:keyName:transport:bindingAttestation:]_block_invoke";
        v28 = 1024;
        v29 = 250;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s : %i : Workaround: Using data passed in as BA as anonymizedDsid", &v26, 0x12u);
      }

      v21 = *(a1 + 32);
      v22 = *(a1 + 56);
      v23 = *(v21 + 88);
      *(v21 + 88) = v22;
    }

    sub_1003C244C(*(a1 + 32));
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v26 = 136315394;
      v27 = "[KmlOwnerPairingManager startOwnerPairingWithPassword:keyName:transport:bindingAttestation:]_block_invoke";
      v28 = 1024;
      v29 = 256;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Pairing is already under progress", &v26, 0x12u);
    }
  }
}

void sub_100373460(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(v1 + 200);
  if (v3 > 21)
  {
    switch(v3)
    {
      case 42:
        v7 = KmlLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v9 = 136315394;
          v10 = "[KmlOwnerPairingManager endOwnerPairingSession]_block_invoke";
          v11 = 1024;
          v12 = 285;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : probing session ends", &v9, 0x12u);
        }

        v8 = *v2;
        if (*(*v2 + 137) == 1)
        {
          sub_1003C244C(v8);
        }

        else
        {
          *(v8 + 138) = 1;
        }

        break;
      case 31:
        v6 = KmlLogger();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v9 = 136315394;
          v10 = "[KmlOwnerPairingManager endOwnerPairingSession]_block_invoke";
          v11 = 1024;
          v12 = 282;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : First post OP transaction cancel requested", &v9, 0x12u);
        }

        sub_1003B7870(*(*v2 + 8));
        break;
      case 23:
        v5 = KmlLogger();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v9 = 136315394;
          v10 = "[KmlOwnerPairingManager endOwnerPairingSession]_block_invoke";
          v11 = 1024;
          v12 = 277;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : OPManager: First transaction skip requested", &v9, 0x12u);
        }

        *(*v2 + 136) = 0;
        objc_storeWeak((*v2 + 184), 0);
        sub_1003B79D8(*(*v2 + 8));
        break;
    }
  }

  else if (*(v1 + 176) == 1)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[KmlOwnerPairingManager endOwnerPairingSession]_block_invoke";
      v11 = 1024;
      v12 = 268;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : probing cancel requested", &v9, 0x12u);
    }

    sub_1003B7988(*(*v2 + 8));
  }

  else
  {
    sub_100376510(v3, v2, v1);
  }
}

void sub_100373700(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v14 = "[KmlOwnerPairingManager saveTrackingReceipt:otherJSONData:]_block_invoke";
    v15 = 1024;
    v16 = 300;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s : %i : otherJsonData : %@", buf, 0x1Cu);
  }

  if (*(*(a1 + 40) + 200) == 23)
  {
    v5 = sub_1003DFBD4([KmlEndpointManager alloc], *(*(a1 + 40) + 192), *(*(a1 + 40) + 152));
    v8 = sub_1003E0590(v5, *(a1 + 48), *(a1 + 32));
    v10 = *(a1 + 40);
    v6 = sub_1003B85B8(v5);
    sub_1003C26E4(v10, v8, v6);
  }

  else
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[KmlOwnerPairingManager saveTrackingReceipt:otherJSONData:]_block_invoke";
      v15 = 1024;
      v16 = 307;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : OPManager: Received tracking receipt when we don't expect. Ignore it.", buf, 0x12u);
    }

    v5 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v6 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v12 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:v5 code:214 userInfo:v7];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 184));
  [WeakRetained handleKmlOwnerPairingTrackingReceiptSaveResult:v8];
}

void sub_100373970(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlOwnerPairingManager startProbing]_block_invoke";
    v7 = 1024;
    v8 = 320;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : OPManager: start Probing.", &v5, 0x12u);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 200))
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[KmlOwnerPairingManager startProbing]_block_invoke";
      v7 = 1024;
      v8 = 336;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Probing called in wrong state", &v5, 0x12u);
    }
  }

  else
  {
    sub_1003765C8(v3, (a1 + 32), a1);
  }
}

void sub_100373AB0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  v3 = KmlLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2 == 23)
  {
    if (v4)
    {
      *buf = 136315394;
      v14 = "[KmlOwnerPairingManager endpointRevoked]_block_invoke";
      v15 = 1024;
      v16 = 347;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Endpoint revoked while we were waiting for tracking receipt.", buf, 0x12u);
    }

    v5 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v6 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v12 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:v5 code:27 userInfo:v7];
    v9 = *(a1 + 32);
    v10 = *(v9 + 120);
    *(v9 + 120) = v8;

    sub_1003C244C(*(a1 + 32));
  }

  else
  {
    if (v4)
    {
      *buf = 136315394;
      v14 = "[KmlOwnerPairingManager endpointRevoked]_block_invoke";
      v15 = 1024;
      v16 = 351;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Endpoint revoked but we are not in a state to take an action.", buf, 0x12u);
    }
  }
}

void sub_100373C9C(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 200) == 23)
  {
    v4 = KmlSignpostLogger();
    if (os_signpost_enabled(v4))
    {
      v5 = *(a1 + 40);
      v8 = 138412290;
      v9 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OpTrackingReceiptSaved", "result = %@", &v8, 0xCu);
    }

    v6 = *(a1 + 40);
    v7 = KmlLogger();
    if (v6)
    {
      sub_100376660();
    }

    else
    {
      sub_10037678C(v7, v1, a1);
    }
  }

  else
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[KmlOwnerPairingManager trackingReceiptSaveResult:ppidData:]_block_invoke";
      v10 = 1024;
      v11 = 375;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : We are not in a state to handle tracking receipt saved notification", &v8, 0x12u);
    }
  }
}

void sub_100373E0C(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  if (v2 > *(v1 + 200))
  {

    sub_1003C2894(v1, v2);
  }

  else
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[KmlOwnerPairingManager setOwnerPairingState:]_block_invoke";
      v7 = 1024;
      v8 = 385;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : OPManager: Current state higher than new state. Do nothing", &v5, 0x12u);
    }
  }
}

uint64_t sub_100373F9C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  v3 = KmlLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2 == 42)
  {
    if (v4)
    {
      v6 = 136315394;
      v7 = "[KmlOwnerPairingManager setOwnerPairingState_sync:]_block_invoke";
      v8 = 1024;
      v9 = 470;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Probing was already done when timer fired.", &v6, 0x12u);
    }
  }

  else
  {
    if (v4)
    {
      v6 = 136315394;
      v7 = "[KmlOwnerPairingManager setOwnerPairingState_sync:]_block_invoke";
      v8 = 1024;
      v9 = 467;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Timer fired. End probing", &v6, 0x12u);
    }

    sub_1003B7988(*(*(a1 + 32) + 8));
  }

  *(*(a1 + 32) + 137) = 1;
  result = *(a1 + 32);
  if (*(result + 138) == 1)
  {
    return sub_1003C244C();
  }

  return result;
}

void sub_1003740FC(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1003B7AE4(*(a1 + 8));
    v3 = sub_100376FF0(*(a1 + 16));
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "[KmlOwnerPairingManager reportPairingEventToCA]";
      *&buf[12] = 1024;
      *&buf[14] = 981;
      *&buf[18] = 1024;
      *&buf[20] = v2;
      LOWORD(v60) = 1024;
      *(&v60 + 2) = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Debug states: DXManagerStep - %08x ; SEManagerStep - %08x", buf, 0x1Eu);
    }

    v5 = [*(a1 + 144) readerSupportsNfc];
    if ([*(a1 + 144) readerSupportsUwb])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v60 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v7 = *(a1 + 24);
    v8 = *(a1 + 64);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100375598;
    v46[3] = &unk_1004D1CD0;
    v46[4] = buf;
    v46[5] = &v47;
    v36 = sub_100369F14(KmlAnalyticsLogger, v7, v8, v46);
    if (v36)
    {
      v9 = KmlLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v36 localizedFailureReason];
        *v53 = 136315650;
        v54 = "[KmlOwnerPairingManager reportPairingEventToCA]";
        v55 = 1024;
        v56 = 997;
        v57 = 2112;
        v58 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s : %i : Could not get HUP data due to error %@", v53, 0x1Cu);
      }
    }

    v11 = 168;
    if (!*(a1 + 120))
    {
      v11 = 200;
    }

    v12 = *(a1 + v11);
    if (sub_1003B85B8(*(a1 + 8)) == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(a1 + 120);
    if (v14)
    {
      v15 = [v14 code];
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_1003B85AC(*(a1 + 24));

    if (v16)
    {
      v17 = sub_1003B85AC(*(a1 + 24));
      v18 = [v17 manufacturer];
      v45 = [v18 copy];

      v19 = sub_1003B85AC(*(a1 + 24));
      v20 = [v19 brand];
      v44 = [v20 copy];

      v21 = sub_1003B85AC(*(a1 + 24));
      v22 = [v21 regionString];
      v43 = [v22 copy];
    }

    else
    {
      v21 = KmlLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v53 = 136315394;
        v54 = "[KmlOwnerPairingManager reportPairingEventToCA]";
        v55 = 1024;
        v56 = 1015;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s : %i : No routing info available", v53, 0x12u);
      }

      v43 = @"Unknown";
      v44 = @"Unknown";
      v45 = @"Unknown";
    }

    v23 = [*(a1 + 152) vehicleSupportedFrameworkVersionsForCA];
    v24 = [v23 length];

    if (v24)
    {
      v37 = [*(a1 + 152) vehicleSupportedFrameworkVersionsForCA];
    }

    else
    {
      v37 = @"0000";
    }

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 152) agreedKmlVehicleVersion], 768))
    {
      v25 = 0x80;
    }

    else
    {
      v25 = 0;
    }

    v35 = v25;
    v52[0] = &off_1004DCCF0;
    v51[0] = @"type";
    v51[1] = @"step";
    v42 = [NSNumber numberWithInteger:v12];
    v52[1] = v42;
    v52[2] = v43;
    v51[2] = @"dataCenterCode";
    v51[3] = @"HUPDataSource";
    v41 = [NSNumber numberWithUnsignedInteger:*(*&buf[8] + 24)];
    v52[3] = v41;
    v51[4] = @"vehicleCapabilities";
    v40 = [NSNumber numberWithUnsignedInteger:v48[3]];
    v52[4] = v40;
    v52[5] = v45;
    v51[5] = @"manufacturer";
    v51[6] = @"brand";
    v52[6] = v44;
    v51[7] = @"pairingTransport";
    v39 = [NSNumber numberWithUnsignedInt:v13];
    v52[7] = v39;
    v51[8] = @"totalOwnerKeysPaired";
    v38 = [NSNumber numberWithInteger:*(a1 + 160)];
    v52[8] = v38;
    v51[9] = @"status";
    v26 = [NSNumber numberWithUnsignedInt:v15];
    v52[9] = v26;
    v51[10] = @"dataExchangeStep";
    v27 = [NSNumber numberWithUnsignedInteger:v2];
    v52[10] = v27;
    v51[11] = @"seManagerState";
    v28 = [NSNumber numberWithUnsignedInteger:v3];
    v52[11] = v28;
    v51[12] = @"readerSupportedTransportTypes";
    v29 = [NSNumber numberWithUnsignedInteger:v6 | v5];
    v52[12] = v29;
    v51[13] = @"pairedKeyVersion";
    v30 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 152) agreedKmlVehicleVersion]);
    v52[13] = v30;
    v52[14] = v37;
    v51[14] = @"carSupportedFrameworkVersions";
    v51[15] = @"maxOfflineAttestationCount";
    v31 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [*(a1 + 144) maxOfflineAttestationCount]);
    v52[15] = v31;
    v51[16] = @"mailboxVersion";
    v32 = [NSNumber numberWithUnsignedChar:v35];
    v52[16] = v32;
    v51[17] = @"keyClassOriginBitmap";
    sub_1003DE58C(*(a1 + 24));
    v33 = [NSNumber numberWithUnsignedChar:kmlUtilKeyClassOriginBitmap()];
    v52[17] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:18];

    sub_100368F04(KmlAnalyticsLogger, v34);
    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_10037483C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100374924(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 176) == 1)
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      *buf = 136315650;
      v17 = "[KmlOwnerPairingManager handlePairingTransportSessionFailedWithError:]_block_invoke";
      v18 = 1024;
      v19 = 725;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Transport error from DXM during probing session: %@", buf, 0x1Cu);
    }

    [*(a1 + 32) handleProbingCompletionWithBrandCode:0xFFFFLL error:*(a1 + 40)];
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = KmlLogger();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        v11 = *(*(a1 + 32) + 120);
        *buf = 136315650;
        v17 = "[KmlOwnerPairingManager handlePairingTransportSessionFailedWithError:]_block_invoke";
        v18 = 1024;
        v19 = 734;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Ignoring DXM error for OPManager error: %@", buf, 0x1Cu);
      }
    }

    else
    {
      if (v7)
      {
        v8 = *(a1 + 40);
        *buf = 136315650;
        v17 = "[KmlOwnerPairingManager handlePairingTransportSessionFailedWithError:]_block_invoke";
        v18 = 1024;
        v19 = 731;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Propagating error from DXM session: %@", buf, 0x1Cu);
      }

      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v6 = *(v9 + 120);
      *(v9 + 120) = v10;
    }

    if (sub_1003F6F5C(v12))
    {
      v13 = [NSString alloc];
      v14 = [*(*(a1 + 32) + 120) localizedDescription];
      v15 = [v13 initWithFormat:@"OP Transport Session Failure: %@", v14];

      [SESTapToRadar requestTapToRadarKML:v15 client:@"KMLPairingTransportError"];
    }

    sub_1003C244C(*(a1 + 32));
  }
}

void sub_100374BFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  [WeakRetained handleKmlOwnerPairingCancellationResult:*(a1 + 40)];

  v3 = *(a1 + 40);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 1)
  {
    if (v5)
    {
      *buf = 136315394;
      v19 = "[KmlOwnerPairingManager handleOwnerPairingCancellationWithResult:]_block_invoke";
      v20 = 1024;
      v21 = 757;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : OPManager: Owner Pairing cancelled in DXM session", buf, 0x12u);
    }

    v6 = *(*(a1 + 32) + 177);
    v7 = KmlLogger();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6 == 1)
    {
      if (v8)
      {
        *buf = 136315394;
        v19 = "[KmlOwnerPairingManager handleOwnerPairingCancellationWithResult:]_block_invoke";
        v20 = 1024;
        v21 = 759;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : We don't report cancel success during preWarm", buf, 0x12u);
      }

      v9 = *(a1 + 32);
      v10 = *(v9 + 120);
      *(v9 + 120) = 0;
    }

    else
    {
      if (v8)
      {
        *buf = 136315394;
        v19 = "[KmlOwnerPairingManager handleOwnerPairingCancellationWithResult:]_block_invoke";
        v20 = 1024;
        v21 = 762;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : Owner pairing cancel successful.", buf, 0x12u);
      }

      v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v11 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
      v17 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v13 = [NSError errorWithDomain:v10 code:1 userInfo:v12];
      v14 = *(a1 + 32);
      v15 = *(v14 + 120);
      *(v14 + 120) = v13;
    }

    sub_1003C244C(*(a1 + 32));
  }

  else
  {
    if (v5)
    {
      *buf = 136315394;
      v19 = "[KmlOwnerPairingManager handleOwnerPairingCancellationWithResult:]_block_invoke";
      v20 = 1024;
      v21 = 767;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : OPManager: Failed to cancel Owner Pairing", buf, 0x12u);
    }
  }
}

void sub_100375090(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlOwnerPairingManager handlePairingDidStart]_block_invoke";
    v6 = 1024;
    v7 = 828;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  [WeakRetained handleKmlOwnerPairingDidStart];
}

void sub_1003753F4(uint64_t a1)
{
  if (*(*(a1 + 32) + 200) == 22)
  {
    v2 = *(a1 + 40);
    KmlLogger();
    objc_claimAutoreleasedReturnValue();
    if (v2)
    {
      sub_100376850();
    }

    else
    {
      sub_100376930();
    }
  }

  else
  {
    v1 = KmlLogger();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v3 = 136315394;
      v4 = "[KmlOwnerPairingManager handleEncryptionResult:trackingRequest:keyInformation:]_block_invoke";
      v5 = 1024;
      v6 = 884;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s : %i : We are not trying to create the key tracking request. Ignore", &v3, 0x12u);
    }
  }
}

uint64_t sub_100375598(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

id sub_10037576C()
{

  return [v2 BOOLValueForSetting:10 manufacturer:v0 brand:v1 uuid:v3 error:0];
}

void sub_1003757A0(void *a1, NSObject *a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, OS_SIGNPOST_INTERVAL_BEGIN, a4, a5, a6, a7, 2u);
}

void sub_100375AC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  [WeakRetained handleKmlOwnerPairingFirstTransactionCompletionResult:*(a1 + 40)];

  v3 = KmlLogger();
  if (sub_100057AEC(v3))
  {
    v4 = *(a1 + 40);
    *v32 = 136315650;
    *&v32[4] = "[KmlOwnerPairingManager handleFirstPostPairingTransactionEndResult:]_block_invoke";
    *&v32[12] = 1024;
    sub_1003757CC();
    sub_100057A9C();
    _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
  }

  v10 = KmlSignpostLogger();
  if (os_signpost_enabled(v10))
  {
    v11 = *(a1 + 40);
    *v32 = 138412290;
    *&v32[4] = v11;
    sub_1003756F8();
    _os_signpost_emit_with_name_impl(v12, v13, v14, v15, v16, v17, v18, 0xCu);
  }

  v19 = sub_1003B85AC(*(*(a1 + 32) + 24));
  v20 = [v19 manufacturer];

  v21 = sub_1003B85AC(*(*(a1 + 32) + 24));
  v22 = [v21 brand];

  v23 = objc_opt_new();
  v24 = [*(*(a1 + 32) + 144) mfiPPID];
  v25 = sub_10037576C();

  if ((v25 & 1) == 0)
  {
    sub_1003C52D0(*(*(a1 + 32) + 16));
  }

  if (sub_1003F6F5C(v26) && [v23 emulateNFCOnlyDevice])
  {
    v27 = KmlLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *v32 = 136315394;
      *&v32[4] = "[KmlOwnerPairingManager handleFirstPostPairingTransactionEndResult:]_block_invoke";
      *&v32[12] = 1024;
      *&v32[14] = 797;
      sub_10036DC0C(&_mh_execute_header, v27, v28, "%s : %i : Emulating NFC only device", v32);
    }

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = +[NISession deviceCapabilities];
  v31 = v29 & [v30 supportsPreciseDistanceMeasurement];

  sub_1003B7A28(*(*(a1 + 32) + 8), 0, [*(*(a1 + 32) + 144) readerSupportsUwb] & v31, *(*(a1 + 32) + 192));
  sub_1003C244C(*(a1 + 32));
}

void sub_100375D58(uint64_t a1)
{
  v3 = KmlLogger();
  if (sub_100057AEC(v3))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    sub_100057A9C();
    _os_log_impl(v4, v5, v6, v7, v8, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 184));
  [WeakRetained handleKmlOwnerPairingProbingCompletionWithBrandCode:*(a1 + 48) error:*(a1 + 32)];

  objc_storeStrong((*(a1 + 40) + 120), *(a1 + 32));
  sub_1003C244C(*(a1 + 40));
}

void sub_100375E5C(uint64_t a1)
{
  v2 = KmlSignpostLogger();
  if (os_signpost_enabled(v2))
  {
    v97 = *(a1 + 32);
    sub_1003756F8();
    _os_signpost_emit_with_name_impl(v3, v4, v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *(a1 + 32);
  v11 = KmlLogger();
  v12 = sub_100057AEC(v11);
  if (v10)
  {
    if (v12)
    {
      sub_10036DB8C();
      sub_100057A9C();
      _os_log_impl(v90, v91, v92, v93, v94, 0x12u);
    }

    v95 = *(a1 + 40);
    v18 = (a1 + 40);
    v96 = *(v18 - 1);
    v89 = *(v95 + 120);
    *(v95 + 120) = v96;
  }

  else
  {
    if (v12)
    {
      sub_10036DB8C();
      sub_100057A9C();
      _os_log_impl(v13, v14, v15, v16, v17, 0x12u);
    }

    v19 = *(a1 + 40);
    v18 = (a1 + 40);
    v20 = sub_1003C75BC(*(v19 + 16));
    v21 = *(*v18 + 32);
    *(*v18 + 32) = v20;

    v22 = KmlLogger();
    if (sub_100057AEC(v22))
    {
      sub_10036DB8C();
      sub_100057A9C();
      _os_log_impl(v23, v24, v25, v26, v27, 0x12u);
    }

    v28 = KmlLogger();
    if (sub_100057AEC(v28))
    {
      v29 = *(*v18 + 32);
      v30 = kmlUtilHexStringFromData();
      sub_1003757EC();
      sub_100057A9C();
      _os_log_impl(v31, v32, v33, v34, v35, 0x1Cu);
    }

    v36 = KmlLogger();
    if (sub_100057AEC(v36))
    {
      sub_10036DB8C();
      sub_100057A9C();
      _os_log_impl(v37, v38, v39, v40, v41, 0x12u);
    }

    v42 = sub_100375794();
    v43 = sub_1003C75C8(v42);
    v44 = *(*v18 + 40);
    *(*v18 + 40) = v43;

    v45 = KmlLogger();
    if (sub_100057AEC(v45))
    {
      sub_10036DB8C();
      sub_100057A9C();
      _os_log_impl(v46, v47, v48, v49, v50, 0x12u);
    }

    v51 = KmlLogger();
    if (sub_100057AEC(v51))
    {
      v52 = *(*v18 + 40);
      v53 = kmlUtilHexStringFromData();
      sub_1003757EC();
      sub_100057A9C();
      _os_log_impl(v54, v55, v56, v57, v58, 0x1Cu);
    }

    v59 = KmlLogger();
    if (sub_100057AEC(v59))
    {
      sub_10036DB8C();
      sub_100057A9C();
      _os_log_impl(v60, v61, v62, v63, v64, 0x12u);
    }

    v65 = sub_100375794();
    v66 = sub_1003C75D4(v65);
    v67 = *(*v18 + 48);
    *(*v18 + 48) = v66;

    v68 = KmlLogger();
    if (sub_100057AEC(v68))
    {
      sub_10036DB8C();
      sub_100057A9C();
      _os_log_impl(v69, v70, v71, v72, v73, 0x12u);
    }

    v74 = *(*v18 + 48);
    kmlUtilLogLargeData();
    v75 = KmlLogger();
    if (sub_100057AEC(v75))
    {
      sub_10036DB8C();
      sub_100057A9C();
      _os_log_impl(v76, v77, v78, v79, v80, 0x12u);
    }

    v81 = sub_100375794();
    v82 = sub_1003C75E0(v81);
    v83 = *(*v18 + 64);
    *(*v18 + 64) = v82;

    v84 = sub_100375794();
    v85 = sub_1003C75EC(v84);
    v86 = *(*v18 + 192);
    *(*v18 + 192) = v85;

    v87 = sub_100375794();
    v88 = sub_1003B85B8(v87);
    v89 = *(*v18 + 72);
    *(*v18 + 72) = v88;
  }

  sub_1003C244C(*v18);
}

void sub_10037632C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  [WeakRetained handleKmlOwnerPairingPreWarmCompletionResult:*(a1 + 40)];

  v3 = KmlSignpostLogger();
  if (os_signpost_enabled(v3))
  {
    v4 = *(a1 + 40);
    v21 = 138412290;
    v22 = v4;
    sub_1003756F8();
    _os_signpost_emit_with_name_impl(v5, v6, v7, v8, v9, v10, v11, 0xCu);
  }

  v12 = *(a1 + 40);
  v13 = KmlLogger();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      v21 = 136315650;
      v22 = "[KmlOwnerPairingManager handlePreWarmResult:]_block_invoke";
      v23 = 1024;
      sub_1003757CC();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s : %i : Pre-Warm failed - %@", &v21, 0x1Cu);
    }

    objc_storeStrong((*(a1 + 32) + 120), *(a1 + 40));
    if ([*(a1 + 40) code] != 228)
    {
      [SESTapToRadar requestTapToRadarKML:@"OP Prewarm failure" client:@"KMLPreWarmFailure"];
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      sub_10036DB8C();
      v24 = 917;
      sub_100057A9C();
      _os_log_impl(v15, v16, v17, v18, v19, 0x12u);
    }
  }

  sub_1003C244C(*(a1 + 32));
}

void sub_100376510(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1 == 2)
  {
    v5 = KmlLogger();
    if (sub_100057AEC(v5))
    {
      sub_10036DB8C();
      sub_100057A9C();
      _os_log_impl(v6, v7, v8, v9, v10, 0x12u);
    }

    a3 = *a2;
  }

  sub_1003C244C(a3);
}

void sub_1003765C8(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  *(a1 + 56) = 0;

  [*(*a2 + 19) downgradePreferredVersion];
  v6 = sub_1003B6790([KmlDataExchangeManager alloc], *a2, 0, 1, *(*a2 + 19));
  v7 = *(*a2 + 1);
  *(*a2 + 1) = v6;

  *(*a2 + 176) = 1;
  sub_1003C244C(*a2);
  *(*(*(a3 + 40) + 8) + 24) = 1;
}

void sub_100376660()
{
  sub_10037575C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10036DB8C();
    sub_1003757E0();
    _os_log_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x12u);
  }

  v8 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  v9 = [*v1 code];
  v10 = [*v1 userInfo];
  v11 = [NSError errorWithDomain:v8 code:v9 userInfo:v10];
  v12 = *(*v0 + 120);
  *(*v0 + 120) = v11;

  sub_1003C244C(*v0);
}

void sub_10037678C(NSObject *a1, uint64_t *a2, uint64_t a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    sub_10036DB8C();
    sub_1003757E0();
    sub_10036DC0C(v6, v7, v8, v9, v10);
  }

  [*(*a2 + 144) updatePPIDWithServerProvidedData:*(a3 + 48)];
  sub_1003C244C(*a2);
}

void sub_100376850()
{
  sub_10037575C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10036DB8C();
    sub_1003757E0();
    _os_log_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x12u);
  }

  objc_storeStrong((*v0 + 120), *v1);
  [SESTapToRadar requestTapToRadarKML:@"OP key tracking request encryption failure" client:@"KMLEncryptTrackingRequestError"];
  sub_1003C244C(*v0);
}

void sub_100376930()
{
  sub_10037575C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    sub_10036DB8C();
    sub_1003757E0();
    sub_10036DC0C(v4, v5, v6, v7, v8);
  }

  objc_storeStrong((*v0 + 104), *(v1 + 48));
  objc_storeStrong((*v0 + 96), *(v1 + 56));
  sub_1003C244C(*v0);
}

void sub_1003769FC(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v4 = 136315650;
      v5 = "[KmlSeManager preWarmWithManufacturer:]_block_invoke";
      v6 = 1024;
      v7 = 93;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : SEManager: PreWarm SE for pairing with %@", &v4, 0x1Cu);
    }

    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
    sub_1003C4520(*(a1 + 32), 1);
  }
}

void sub_100376AF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) <= 4)
  {

    sub_1003C4520(v2, 8);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v2 + 136));
    [WeakRetained handleKeyCreationCancellationResult:0];
  }
}

void sub_100376B58(uint64_t a1)
{
  if (*(*(a1 + 32) + 184))
  {
    SESEndPointDelete();
    v2 = 0;
    v3 = KmlLogger();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + 40);
        v7 = *(v5 + 184);
        *buf = 136316162;
        v16 = "[KmlSeManager deleteKey_sync]_block_invoke";
        v17 = 1024;
        v18 = 171;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v7;
        v23 = 2112;
        v24 = v2;
        v8 = "%s : %i : SEManager: Failed to delete key with name:%@ and id:%@, due to %@";
        v9 = v4;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 48;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 40);
      v14 = *(v12 + 184);
      *buf = 136315906;
      v16 = "[KmlSeManager deleteKey_sync]_block_invoke";
      v17 = 1024;
      v18 = 173;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v8 = "%s : %i : SEManager: Deleted key with name: %@ and id: %@";
      v9 = v4;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 38;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[KmlSeManager deleteKey_sync]_block_invoke";
    v17 = 1024;
    v18 = 165;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : There is no key to delete", buf, 0x12u);
  }

LABEL_11:
}

void sub_100376D50(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 5)
  {
    v3 = *(v2 + 176);
    v20 = 0;
    v4 = sub_1003993B8(KmlEndpointManager, v3, &v20);
    v5 = v20;
    v6 = v5;
    v7 = *(a1 + 32);
    if (v4)
    {
      sub_1003C48C4(*(a1 + 32), *(a1 + 40), v4, *(a1 + 48));
      v9 = sub_1003C4EE0(*(a1 + 32), v4);
      v8 = [[DAKeyInformation alloc] initWithEndpoint:v4];
      v16 = sub_1003DF1BC(*(*(a1 + 32) + 24));

      if (!v16)
      {
        goto LABEL_8;
      }

      v17 = *(a1 + 32);
      v18 = *(v17 + 176);
      v10 = sub_1003DF1BC(*(v17 + 24));
      v19 = SESEndPointTriggerHeadUnitPairing();
    }

    else
    {
      v6 = v5;
      v8 = 0;
      v9 = 0;
      v10 = *(v7 + 120);
      *(v7 + 120) = v6;
    }
  }

  else
  {
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[KmlSeManager createEncryptedTrackingRequestWithOpaqueAttestation:anonymizedDsid:]_block_invoke";
      v25 = 1024;
      v26 = 207;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : SEManager: Requested to create key tracking request in wrong state.", buf, 0x12u);
    }

    v6 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v21 = NSLocalizedDescriptionKey;
    v4 = [NSString stringWithUTF8String:KmlErrorString()];
    v22 = v4;
    v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v12 = [NSError errorWithDomain:v6 code:28 userInfo:v10];
    v13 = *(a1 + 32);
    v14 = *(v13 + 120);
    *(v13 + 120) = v12;

    v8 = 0;
    v9 = 0;
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  [WeakRetained handleEncryptionResult:*(*(a1 + 32) + 120) trackingRequest:v9 keyInformation:v8];
}

uint64_t sub_100376FF0(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    dispatch_assert_queue_not_V2(*(a1 + 128));
    v2 = *(v1 + 128);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1003770C0;
    v4[3] = &unk_1004C14E8;
    v4[4] = v1;
    v4[5] = &v5;
    dispatch_sync(v2, v4);
    v1 = *(v6 + 6);
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_1003770A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

dispatch_queue_t *sub_1003770D8(dispatch_queue_t *a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_1003771EC;
    v9 = sub_1003771FC;
    v10 = 0;
    dispatch_assert_queue_not_V2(a1[16]);
    v2 = v1[16];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100377204;
    v4[3] = &unk_1004C24F8;
    v4[4] = v1;
    v4[5] = &v5;
    dispatch_sync(v2, v4);
    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_1003771D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003771EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100377204(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  SESEndPointConfigureNFCExpressInLPM();
  objc_storeStrong((v3 + 40), obj);
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 136315650;
    v8 = "[KmlSeManager disableNfcExpress_sync]_block_invoke";
    v9 = 1024;
    v10 = 234;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : disable nfc express mode in full power mode, result - %@", buf, 0x1Cu);
  }
}

void sub_10037730C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 176);
  v16 = 0;
  v3 = sub_1003993B8(KmlEndpointManager, v2, &v16);
  v4 = v16;
  if (v3)
  {
    v5 = [KmlDeviceConfigurationData alloc];
    v6 = [v3 deviceConfiguration];
    v7 = [v5 initWithData:v6];

    [v7 removeUwbSupportLocally];
    v8 = [v7 asData];
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = kmlUtilHexStringFromData();
      *buf = 136315650;
      v18 = "[KmlSeManager disableUwbTransport]_block_invoke";
      v19 = 1024;
      v20 = 253;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : DeviceConfigData: %@", buf, 0x1Cu);
    }

    v11 = *(*(a1 + 32) + 184);
    v15 = v8;
    v12 = v8;
    v13 = SESEndPointUpdateWithBlock();
    if (v13)
    {
      v14 = KmlLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[KmlSeManager disableUwbTransport]_block_invoke_2";
        v19 = 1024;
        v20 = 267;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s : %i : SEManager: Could not update endpoint", buf, 0x12u);
      }
    }
  }

  else
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "[KmlSeManager disableUwbTransport]_block_invoke";
      v19 = 1024;
      v20 = 246;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s : %i : No endpoint found: %@", buf, 0x1Cu);
    }
  }
}

void sub_1003775E8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceConfiguration:v2];
  [v3 setBleDCKIdentifier:0];
  [v3 setBleOOBKey:0];
  [v3 setSupportedRKEFunctions:0];
  [v3 setBleUUID:0];
}

void sub_100377664(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  if (v2 > *(v1 + 8))
  {

    sub_1003C5330(v1, v2);
  }

  else
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[KmlSeManager setCurrentState:]_block_invoke";
      v7 = 1024;
      v8 = 277;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : SEManager: Current state higher than new state. Do nothing", &v5, 0x12u);
    }
  }
}

void sub_100377784(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100378050;
  v7[3] = &unk_1004C22F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100377820(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTrackingRequest:v3];
  [v4 setAnonymizedDsid:*(*(a1 + 40) + 112)];
}

void sub_100377880(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mfiPPID];
  [v3 setReaderConfigID:v4];

  [v3 setMailboxMapping:*(a1 + 40)];
  [v3 setDeviceConfiguration:*(a1 + 48)];
  v5 = sub_1003DEEC8(*(*(a1 + 56) + 24));
  [v3 setReaderInfo:v5];

  [v3 setFriendlyName:*(*(a1 + 56) + 40)];
  [v3 setKeyRole:&off_1004DCD50];
  v6 = sub_1003B85B8(*(*(a1 + 56) + 24));
  [v3 setReaderLongTermPublicKeyCertificate:v6];

  [v3 setBleIntroKey:*(*(a1 + 56) + 72)];
  [v3 setBleOOBMasterKey:*(*(a1 + 56) + 80)];
  [v3 setLongTermSharedSecret:*(*(a1 + 56) + 88)];
  v7 = sub_1003DDEBC(*(*(a1 + 56) + 24));
  [v3 setSlotIdentifier:v7];

  v8 = sub_1003DDEBC(*(*(a1 + 56) + 24));
  v9 = kmlUtilGetDckIdFromSlotId();

  v10 = *(*(a1 + 56) + 80);
  v11 = kmlUtilGetOOBKey();
  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315906;
    v15 = "[KmlSeManager saveMetaDataOnEndpoint]_block_invoke";
    v16 = 1024;
    v17 = 841;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s : %i : DCK_Id : %@, OOB_Key : %@", &v14, 0x26u);
  }

  [v3 setBleDCKIdentifier:v9];
  [v3 setBleOOBKey:v11];
  [v3 setVehicleSupportedVersionsData:*(a1 + 64)];
  v13 = sub_1003DE370(*(*(a1 + 56) + 24));
  [v3 setMailboxSizesPlusAdditionalData:v13];
}

void sub_100377C78(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x12u);
}

id sub_100377C94(uint64_t a1)
{

  return [v1 addObject:a1];
}

BOOL sub_100377D18(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_100377D54(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_100377D6C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_100377D84(uint64_t a1)
{
  v3 = KmlLogger();
  if (sub_100057AEC(v3))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v30 = "[KmlSeManager createOwnerPairingKeysWithConfig:manufacturer:keyName:secureElementSession:bleIntroKey:bleOOBMasterKey:longTermSharedSecret:uwbSupported:versionInformation:]_block_invoke";
    v31 = 1024;
    v32 = 111;
    v33 = 2112;
    v34 = v5;
    sub_100367454(&_mh_execute_header, v1, v4, "%s : %i : SEManager: Create keys for manufacturer: %@", buf);
  }

  objc_storeStrong((*(a1 + 40) + 24), *(a1 + 48));
  objc_storeStrong((*(a1 + 40) + 40), *(a1 + 56));
  v6 = *(a1 + 40);
  v8 = *(v6 + 32);
  v7 = (v6 + 32);
  if (!v8)
  {
    objc_storeStrong(v7, *(a1 + 32));
  }

  if (*(a1 + 32) && ([*(*(a1 + 40) + 32) isEqualToString:?] & 1) == 0)
  {
    v9 = KmlLogger();
    if (sub_100057AEC(v9))
    {
      v10 = *(a1 + 32);
      v11 = *(*(a1 + 40) + 32);
      *buf = 136315906;
      v30 = "[KmlSeManager createOwnerPairingKeysWithConfig:manufacturer:keyName:secureElementSession:bleIntroKey:bleOOBMasterKey:longTermSharedSecret:uwbSupported:versionInformation:]_block_invoke";
      v31 = 1024;
      v32 = 119;
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s : %i : We pre-warmed for %@, but request to create endpoint is for %@", buf, 0x26u);
    }

    objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  }

  objc_storeStrong((*(a1 + 40) + 56), *(a1 + 64));
  v28 = 0;
  v12 = [NFSecureElement embeddedSecureElementWithError:&v28];
  v13 = v28;
  v14 = [v12 info];
  v15 = [v14 serialNumber];
  v16 = *(a1 + 40);
  v17 = *(v16 + 64);
  *(v16 + 64) = v15;

  v18 = *(a1 + 40);
  if (!*(v18 + 64) || v13)
  {
    v22 = KmlLogger();
    if (sub_100377D18(v22))
    {
      *buf = 136315650;
      v30 = "[KmlSeManager createOwnerPairingKeysWithConfig:manufacturer:keyName:secureElementSession:bleIntroKey:bleOOBMasterKey:longTermSharedSecret:uwbSupported:versionInformation:]_block_invoke";
      sub_10036F4A8();
      sub_10036F460();
      v34 = v13;
      sub_100377CF0();
      _os_log_impl(v23, v24, v25, v26, v27, 0x1Cu);
    }

    v20 = 7;
    v21 = 120;
    v19 = v13;
  }

  else
  {
    objc_storeStrong((v18 + 72), *(a1 + 72));
    objc_storeStrong((*(a1 + 40) + 80), *(a1 + 80));
    objc_storeStrong((*(a1 + 40) + 88), *(a1 + 88));
    *(*(a1 + 40) + 96) = *(a1 + 104);
    v19 = *(a1 + 96);
    v20 = 4;
    v21 = 104;
  }

  objc_storeStrong((*(a1 + 40) + v21), v19);
  sub_1003C4520(*(a1 + 40), v20);
}

void sub_100378050(uint64_t a1)
{
  sub_1003C4520(*(a1 + 32), 2);
  if (*(a1 + 40))
  {
    v2 = sesErrorToKmlError();
    v3 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v4 = [v2 code];
    v5 = [v2 userInfo];
    v7 = [NSError errorWithDomain:v3 code:v4 userInfo:v5];
  }

  else
  {
    v7 = 0;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  [WeakRetained handlePreWarmResult:v7];
}

id sub_10037814C(uint64_t a1, __int16 a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = sub_1003C75F8([KmlApduResponse alloc], a2, v4);

  return v5;
}

id sub_1003781BC(uint64_t a1, __int16 a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = sub_1003C7838([KmlApduResponse alloc], a2, v4);

  return v5;
}

id sub_100378B14(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  if (qword_10051B050 != -1)
  {
    sub_100379074();
  }

  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:qword_10051B058 fromData:v4 error:a3];

  return v5;
}

void sub_100378BA4(id a1)
{
  v1 = [NSSet setWithObjects:objc_opt_class(), 0];
  v2 = qword_10051B058;
  qword_10051B058 = v1;
}

id sub_100378CC8()
{
  objc_opt_self();
  if (qword_10051B068 != -1)
  {
    sub_100379088();
  }

  v0 = qword_10051B060;

  return v0;
}

void sub_100378D10(id a1)
{
  v1 = objc_alloc_init(KmlSharingInvitationRecordsUpdater);
  v2 = qword_10051B060;
  qword_10051B060 = v1;
}

id sub_100378D4C()
{
  objc_opt_self();
  if (qword_10051B078 != -1)
  {
    sub_10037909C();
  }

  v0 = qword_10051B070;

  return v0;
}

void sub_100378D94(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.sesd.kml.friendRecordsUpdater", v3);
  v2 = qword_10051B070;
  qword_10051B070 = v1;
}

id sub_100378F0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 8) = 1;
    v2 = (a1 + 40);
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 8);
    if (v3)
    {
      v5 = *(v3 + 104);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v2 = (a1 + 40);
    v4 = *(*(a1 + 40) + 8);
  }

  [v4 setObject:v3 forKeyedSubscript:v5];
  return sub_1003C8268(*v2);
}

id sub_100378F8C(void *a1)
{
  [a1 encodeObject:0 forKey:@"crossPlatformMailboxIdentifier"];

  return [a1 encodeInteger:0 forKey:@"sharingFlow"];
}

id sub_100379010(void *a1)
{
  [a1 encodeObject:0 forKey:@"invitationIdentifier"];
  [a1 encodeInteger:0 forKey:@"numberOfPinAttempts"];

  return [a1 encodeInteger:0 forKey:@"numberOfOSPAttempts"];
}

id sub_1003790B0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1003C08D8([KmlNfcPairingTransport alloc], v2);

  return v3;
}

KmlBluetoothPairingTransport *sub_100379110(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [[KmlBluetoothPairingTransport alloc] initWithDelegate:v2];

  return v3;
}

void sub_100379170(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  [BluetoothHCEAndTransactionSession startFirstApproachForKeyWithIdentifier:v2];
}

void sub_100379588(id a1)
{
  v1 = [NSSet setWithObjects:objc_opt_class(), 0];
  v2 = qword_10051B088;
  qword_10051B088 = v1;
}

void sub_1003797D0(id a1)
{
  v1 = objc_alloc_init(KmlCachedAuthorizationManager);
  v2 = qword_10051B090;
  qword_10051B090 = v1;
}

void sub_10037BC88(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 96) = a2;
  *(v2 + 4) = a1;
  *(v3 - 84) = 1024;
}

void sub_10037BCF0(float a1)
{
  *&STACK[0x250] = a1;
  *(v2 + 4) = v1;
  LOWORD(STACK[0x25C]) = 1024;
}

BOOL sub_10037BD10(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_10037BD6C(__int16 a1@<W8>)
{
  *(v3 + 14) = v1;
  *(v4 - 78) = a1;
  *(v4 - 76) = v2;
}

void sub_10037BDD4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, v17, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

void sub_10037BDF4(void *a1, NSObject *a2, os_signpost_type_t a3, uint64_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, v7, a5, a6, a7, 2u);
}

void sub_10037BE50(id a1)
{
  v1 = objc_alloc_init(KeyManagementLibrary);
  v2 = qword_10051B0B0;
  qword_10051B0B0 = v1;

  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "+[KeyManagementLibrary sharedLibrary]_block_invoke";
    v6 = 1024;
    v7 = 50;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Service created", &v4, 0x12u);
  }
}

void sub_10037CE00(id a1, NSError *a2)
{
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = @"No Error";
    v5 = 136315650;
    v6 = "[KeyManagementLibrary handleCloseForConnection:]_block_invoke";
    if (v2)
    {
      v4 = v2;
    }

    v7 = 1024;
    v8 = 224;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s : %i : Session ended with %@", &v5, 0x1Cu);
  }
}

void sub_10037D5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_10037D9BC(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 objectForKeyedSubscript:@"clientName"];
    v8 = 136315650;
    v9 = "[KeyManagementLibrary clientAppIsBackGrounded:]_block_invoke";
    v10 = 1024;
    v11 = 373;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Client (%@) is backGrounded", &v8, 0x1Cu);
  }

  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"BackGroundClient"];
  v5 = [v2 objectForKeyedSubscript:@"Entitlements"];
  if (sub_1003CDC98(v5))
  {
    v6 = *(*(a1 + 40) + 32);
    if (v6)
    {
      [v6 startBackGroundTimer];
    }
  }

  else
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[KeyManagementLibrary clientAppIsBackGrounded:]_block_invoke";
      v10 = 1024;
      v11 = 377;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : Client doesn't have entitlement to continue.", &v8, 0x12u);
    }

    [*(a1 + 32) invalidate];
  }
}

void sub_10037DCB4(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 objectForKeyedSubscript:@"clientName"];
    v5 = 136315650;
    v6 = "[KeyManagementLibrary clientAppIsForeGrounded:]_block_invoke";
    v7 = 1024;
    v8 = 398;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Client (%@) is foreGrounded", &v5, 0x1Cu);
  }

  [v2 setObject:&__kCFBooleanFalse forKeyedSubscript:@"BackGroundClient"];
  [*(*(a1 + 40) + 32) cancelBackGroundTimer];
}

void sub_10037DF38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  sub_1003CCA88(v2, WeakRetained);
}

void sub_10037DF98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  sub_1003CCA88(v2, WeakRetained);
}

id sub_10037E00C()
{
  objc_opt_self();
  if (qword_10051B0C8 != -1)
  {
    sub_10037FB9C();
  }

  v0 = qword_10051B0C0;

  return v0;
}

void sub_10037E054(id a1)
{
  v1 = objc_alloc_init(KmlSharingTransport);
  v2 = qword_10051B0C0;
  qword_10051B0C0 = v1;
}

void sub_10037E308(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  sub_1003F1CD4(v2);
}

uint64_t sub_10037E34C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if ([v3 length])
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      dispatch_assert_queue_not_V2(*(a1 + 40));
      v6 = *(a1 + 40);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10037E464;
      block[3] = &unk_1004D1EE8;
      v10 = &v11;
      block[4] = a1;
      v9 = v4;
      dispatch_sync(v6, block);
      v5 = *(v12 + 24);

      _Block_object_dispose(&v11, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

void sub_10037E44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10037E464(uint64_t a1)
{
  result = sub_1003A8D9C(*(*(a1 + 32) + 8), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

dispatch_queue_t *sub_10037E49C(dispatch_queue_t *a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10037E5B0;
    v9 = sub_10037E5C0;
    v10 = 0;
    dispatch_assert_queue_not_V2(a1[5]);
    v2 = v1[5];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10037E5C8;
    v4[3] = &unk_1004C14E8;
    v4[4] = v1;
    v4[5] = &v5;
    dispatch_sync(v2, v4);
    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_10037E598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10037E5B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10037E5C8(uint64_t a1)
{
  v2 = sub_1003F223C(*(*(a1 + 32) + 8));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10037E618(uint64_t a1)
{
  v13 = +[NSMutableDictionary dictionary];
  [v13 setObject:*(a1 + 32) forKeyedSubscript:@"kmlMessageId"];
  [v13 setObject:*(a1 + 40) forKeyedSubscript:@"kmlSharingData"];
  v2 = [*(a1 + 48) UUIDString];
  [v13 setObject:v2 forKeyedSubscript:@"kmlSharingUuid"];

  v3 = *(a1 + 96);
  v4 = @"kmlPhone";
  if (v3 == 2)
  {
    v4 = @"kmlWatch";
  }

  if (v3 == 255)
  {
    v5 = @"kmlAnyDevice";
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 56))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v13 setObject:v6 forKeyedSubscript:@"kmlDeviceType"];
  v7 = *(a1 + 64);
  if (v7)
  {
    [v13 setObject:v7 forKeyedSubscript:@"kmlMetaData"];
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    [v13 setObject:v8 forKeyedSubscript:@"kmlBindingAttestation"];
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    [v13 setObject:v9 forKeyedSubscript:@"kmlKeyId"];
  }

  v10 = sub_1003CD3CC(*(a1 + 56), *(a1 + 104));
  [v13 setObject:v10 forKeyedSubscript:@"kmlMessageType"];

  v11 = *(a1 + 104) == 8 && *(a1 + 96) == 2;
  v12 = sub_1003F11AC([KmlMessageToSend alloc], v13, *(a1 + 32), *(a1 + 88));
  sub_1003F138C(*(*(a1 + 56) + 8), v12, v11);
}

void sub_10037E7D0(void *a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v8 = 136315650;
    v9 = "[KmlSharingTransport queueCrossPlatformSharingMessage:forInvitationIdentifier:fromMailboxIdentifier:]_block_invoke";
    v10 = 1024;
    v11 = 202;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Invitation Identifier - %@", &v8, 0x1Cu);
  }

  if (KmlLogIsInternalBuild())
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[5];
      v8 = 136315650;
      v9 = "[KmlSharingTransport queueCrossPlatformSharingMessage:forInvitationIdentifier:fromMailboxIdentifier:]_block_invoke";
      v10 = 1024;
      v11 = 203;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Mailbox identifier - %@", &v8, 0x1Cu);
    }
  }

  v6 = [*(a1[6] + 24) objectForKeyedSubscript:a1[4]];
  [v6 handleCrossPlatformSharingMessage:a1[7] fromMailboxIdentifier:a1[5]];
  if (!v6)
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[KmlSharingTransport queueCrossPlatformSharingMessage:forInvitationIdentifier:fromMailboxIdentifier:]_block_invoke";
      v10 = 1024;
      v11 = 208;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : No delegate to handle message. Dropping it", &v8, 0x12u);
    }
  }
}

void sub_10037E9B0(uint64_t a1, double a2)
{
  if (sub_1003F6F5C(a2))
  {
    v3 = objc_retainBlock(*(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;
  }

  else
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[KmlSharingTransport registerCrossPlatformTestMessageOverIDSHandler:]_block_invoke";
      v9 = 1024;
      v10 = 222;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s : %i : Internal build test only method", &v7, 0x12u);
    }
  }
}

void sub_10037EAC0(void *a1, double a2)
{
  if (sub_1003F6F5C(a2))
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = a1[6];

    sub_1003F22C4(v4, v3, v5);
  }

  else
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[KmlSharingTransport sendCrossPlatformTestData:toIdsIdentifier:]_block_invoke";
      v9 = 1024;
      v10 = 234;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s : %i : Internal build test only method", &v7, 0x12u);
    }
  }
}

void sub_10037EBC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

id sub_10037EC70(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 = [*(*(a1 + 32) + 24) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];

        [v5 handleTransportSetupResult:*(a1 + 40)];
        v7 = v7 + 1;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 32) removeAllObjects];
}

void sub_10037EE70(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  [v2 handleSendMessageResult:a1[6]];
}

void sub_10037EF90(void *a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v6 = 136315650;
    v7 = "[KmlSharingTransport handleIncomingTestData:fromRemoteIdsIdentifier:]_block_invoke";
    v8 = 1024;
    v9 = 271;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : KSTransport: received data from %@.", &v6, 0x1Cu);
  }

  v4 = *(a1[5] + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, a1[6], 0);
  }

  else
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[KmlSharingTransport handleIncomingTestData:fromRemoteIdsIdentifier:]_block_invoke";
      v8 = 1024;
      v9 = 275;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : KSTransport: We don't expect NSData from anyone so dropping it.", &v6, 0x12u);
    }
  }
}

void sub_10037F1B0(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v59 = "[KmlSharingTransport handleIncomingMessage:fromRemoteIdsIdentifier:]_block_invoke";
    v60 = 1024;
    v61 = 283;
    v62 = 2112;
    v63 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : KSTransport: received message from %@.", buf, 0x1Cu);
  }

  v4 = [*(a1 + 40) objectForKeyedSubscript:@"kmlSharingData"];

  if (v4)
  {
    v5 = [NSData alloc];
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"kmlSharingData"];
    v4 = [v5 initWithData:v6];
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:@"kmlMetaData"];

  if (v7)
  {
    v8 = [NSData alloc];
    v9 = [*(a1 + 40) objectForKeyedSubscript:@"kmlMetaData"];
    v10 = [v8 initWithData:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 40) objectForKeyedSubscript:@"kmlBindingAttestation"];

  if (v11)
  {
    v12 = [NSData alloc];
    v13 = [*(a1 + 40) objectForKeyedSubscript:@"kmlBindingAttestation"];
    v14 = [v12 initWithData:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [*(a1 + 40) objectForKeyedSubscript:@"kmlMessageId"];

  if (v15)
  {
    v16 = [NSString alloc];
    v17 = [*(a1 + 40) objectForKeyedSubscript:@"kmlMessageId"];
    v18 = [v16 initWithString:v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = [*(a1 + 40) objectForKeyedSubscript:@"kmlKeyId"];

  if (v19)
  {
    v20 = [NSString alloc];
    v21 = [*(a1 + 40) objectForKeyedSubscript:@"kmlKeyId"];
    v22 = [v20 initWithString:v21];
  }

  else
  {
    v22 = 0;
  }

  v23 = [*(a1 + 40) objectForKeyedSubscript:@"kmlSharingUuid"];

  if (v23)
  {
    v24 = [NSUUID alloc];
    v25 = [*(a1 + 40) objectForKeyedSubscript:@"kmlSharingUuid"];
    v26 = [v24 initWithUUIDString:v25];
  }

  else
  {
    v26 = 0;
  }

  v27 = [*(a1 + 40) objectForKeyedSubscript:@"kmlMessageType"];

  if (v27)
  {
    v28 = *(a1 + 48);
    v29 = [*(a1 + 40) objectForKeyedSubscript:@"kmlMessageType"];
    v30 = sub_10037F9DC(v28, v29);
  }

  else
  {
    v30 = 0;
  }

  v52 = v14;
  v31 = [*(a1 + 40) objectForKeyedSubscript:@"kmlDeviceType"];

  if (v31)
  {
    v45 = *(a1 + 48);
    v46 = [*(a1 + 40) objectForKeyedSubscript:@"kmlDeviceType"];
    v32 = sub_1003CD680(v45, v46);

    if (!v4)
    {
LABEL_58:
      v35 = KmlLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v59 = "[KmlSharingTransport handleIncomingMessage:fromRemoteIdsIdentifier:]_block_invoke";
        v60 = 1024;
        v61 = 327;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s : %i : KSTransport: malformed message, dropping it.", buf, 0x12u);
      }

      goto LABEL_69;
    }
  }

  else
  {
    v32 = 1;
    if (!v4)
    {
      goto LABEL_58;
    }
  }

  if (!v26)
  {
    goto LABEL_58;
  }

  if (v30 == 8)
  {
    v34 = sub_10039E654(KmlOwnerSharingManager, v26);
    if (v34)
    {
      v35 = v34;
      goto LABEL_47;
    }

    goto LABEL_65;
  }

  if (v30 == 9)
  {
    v33 = KmlLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v59 = "[KmlSharingTransport handleIncomingMessage:fromRemoteIdsIdentifier:]_block_invoke";
      v60 = 1024;
      v61 = 337;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s : %i : Dropping re-invite errror response by design. It will be handled in future", buf, 0x12u);
    }

    goto LABEL_65;
  }

  if (!v18)
  {
    v44 = KmlLogger();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v59 = "[KmlSharingTransport handleIncomingMessage:fromRemoteIdsIdentifier:]_block_invoke";
      v60 = 1024;
      v61 = 341;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s : %i : Missing messageId, dropping it.", buf, 0x12u);
    }

    goto LABEL_68;
  }

  v49 = v22;
  v50 = v10;
  v51 = v4;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v36 = *(*(a1 + 48) + 24);
  v37 = [v36 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v54;
LABEL_36:
    v40 = 0;
    while (1)
    {
      if (*v54 != v39)
      {
        objc_enumerationMutation(v36);
      }

      v41 = *(*(&v53 + 1) + 8 * v40);
      if ([v41 isEqualToString:v18])
      {
        break;
      }

      if (v38 == ++v40)
      {
        v38 = [v36 countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v38)
        {
          goto LABEL_36;
        }

        goto LABEL_42;
      }
    }

    v42 = KmlLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v59 = "[KmlSharingTransport handleIncomingMessage:fromRemoteIdsIdentifier:]_block_invoke";
      v60 = 1024;
      v61 = 347;
      v62 = 2112;
      v63 = v18;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s : %i : KSTransport: Found delegate that can handle the message with id %@", buf, 0x1Cu);
    }

    v35 = [*(*(a1 + 48) + 24) objectForKey:v41];

    v22 = v49;
    if (v35)
    {
      v10 = v50;
      v4 = v51;
      goto LABEL_47;
    }
  }

  else
  {
LABEL_42:

    v22 = v49;
  }

  if (v30 <= 3)
  {
    v10 = v50;
    v4 = v51;
    if (v30 != 1)
    {
      if (v30 != 2)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v10 = v50;
  v4 = v51;
  if (v30 == 5)
  {
LABEL_63:
    v47 = sub_10039EE5C(KmlOwnerSharingManager, v18, v26);
    goto LABEL_64;
  }

  if (v30 != 4)
  {
LABEL_65:
    v48 = KmlLogger();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v59 = "[KmlSharingTransport handleIncomingMessage:fromRemoteIdsIdentifier:]_block_invoke";
      v60 = 1024;
      v61 = 375;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s : %i : KSTransport: No delegate to handle this message. Dropping it.", buf, 0x12u);
    }

    sub_1003F20AC(*(*(a1 + 48) + 8), *(a1 + 32));
LABEL_68:
    v35 = 0;
LABEL_69:
    v43 = v52;
    goto LABEL_70;
  }

LABEL_62:
  v47 = sub_10038B89C(KmlFriendSharingManager, v18, 1);
LABEL_64:
  v35 = v47;
  if (!v47)
  {
    goto LABEL_65;
  }

  sub_1003CCE74(*(a1 + 48), v47, v18);
LABEL_47:
  v43 = v52;
  [v35 handleIncomingMessage:v4 metaData:v10 bindingAttestation:v52 keyIdentifier:v22 uuid:v26 messageType:v30 targetDeviceType:v32 remoteIdsIdentifier:*(a1 + 32)];
  if (v30 == 3 || (v30 & 0xE) == 4)
  {
    sub_1003F20AC(*(*(a1 + 48) + 8), *(a1 + 32));
  }

LABEL_70:
}

uint64_t sub_10037F9DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if ([v3 isEqualToString:@"kmlInvitation"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"kmlSigningRequest"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"kmlSignedResponse"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"kmlOwnerCancel"])
    {
      v5 = 4;
    }

    else if ([v4 isEqualToString:@"kmlFriendCancel"])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:@"kmlPinEntryRequest"])
    {
      v5 = 6;
    }

    else if ([v4 isEqualToString:@"kmlPinEntryValue"])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:@"kmlReinviteRequest"])
    {
      v5 = 8;
    }

    else if ([v4 isEqualToString:@"kmlReinviteErrorResponse"])
    {
      v5 = 9;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void sub_10037FC88(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  v17 = NSLocalizedDescriptionKey;
  v3 = [NSString stringWithUTF8String:KmlErrorString()];
  v18 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v5 = [NSError errorWithDomain:v2 code:13 userInfo:v4];

  if (*(*(a1 + 32) + 56))
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[KmlOwnerPairingSession preWarmForManufacturer:callback:]_block_invoke";
      v15 = 1024;
      v16 = 45;
      v7 = "%s : %i : We already have Pairing in progress. Denying this request.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, &v13, 0x12u);
    }
  }

  else
  {
    v8 = sub_100372C58(KmlOwnerPairingManager, 0);
    v9 = *(a1 + 32);
    v10 = *(v9 + 56);
    *(v9 + 56) = v8;

    sub_1003C22EC(*(*(a1 + 32) + 56), *(a1 + 32));
    v11 = sub_1003C2384(*(*(a1 + 32) + 56), *(a1 + 40));
    v12 = KmlLogger();
    v6 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "[KmlOwnerPairingSession preWarmForManufacturer:callback:]_block_invoke";
        v15 = 1024;
        v16 = 53;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Started pre-warm for pairing.", &v13, 0x12u);
      }

      v6 = v5;
      v5 = 0;
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[KmlOwnerPairingSession preWarmForManufacturer:callback:]_block_invoke";
      v15 = 1024;
      v16 = 56;
      v7 = "%s : %i : Failed to start pre-warm.";
      goto LABEL_10;
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100380050(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[KmlOwnerPairingSession startKeyPairingWithPassword:keyName:transport:bindingAttestation:callback:]_block_invoke";
    v21 = 1024;
    v22 = 73;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Requesting Pairing to Start", buf, 0x12u);
  }

  v3 = *(*(a1 + 32) + 56);
  if (!v3)
  {
    v4 = sub_100372C58(KmlOwnerPairingManager, 0);
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    sub_1003C22EC(*(*(a1 + 32) + 56), *(a1 + 32));
    v3 = *(*(a1 + 32) + 56);
  }

  if (sub_1003C24B0(v3, *(a1 + 40), *(a1 + 48), *(a1 + 72), *(a1 + 56)))
  {
    v7 = objc_retainBlock(*(a1 + 64));
    v8 = *(a1 + 32);
    v9 = *(v8 + 64);
    *(v8 + 64) = v7;

    v10 = *(a1 + 32);
    v11 = *(v10 + 80);
    *(v10 + 80) = 0;

    *(*(a1 + 32) + 88) = 0;
    *(*(a1 + 32) + 89) = 0;
    *(*(a1 + 32) + 90) = 0;
  }

  else
  {
    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v13 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v18 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v15 = [NSError errorWithDomain:v12 code:13 userInfo:v14];

    v16 = KmlLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[KmlOwnerPairingSession startKeyPairingWithPassword:keyName:transport:bindingAttestation:callback:]_block_invoke";
      v21 = 1024;
      v22 = 85;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s : %i : We already have Pairing in progress. Denying this request.", buf, 0x12u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

uint64_t sub_1003803BC(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[KmlOwnerPairingSession startProbingWithCallback:]_block_invoke";
    v19 = 1024;
    v20 = 102;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v17, 0x12u);
  }

  if (*(*(a1 + 32) + 56))
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[KmlOwnerPairingSession startProbingWithCallback:]_block_invoke";
      v19 = 1024;
      v20 = 114;
      v4 = "%s : %i : Started probing in the wrong time: opManager is not nil.";
      v5 = v3;
      v6 = OS_LOG_TYPE_INFO;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v5, v6, v4, &v17, 0x12u);
    }
  }

  else
  {
    v7 = sub_100372C58(KmlOwnerPairingManager, 0);
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = v7;

    sub_1003C22EC(*(*(a1 + 32) + 56), *(a1 + 32));
    v10 = sub_1003C2794(*(*(a1 + 32) + 56));
    v11 = KmlLogger();
    v3 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = 136315394;
        v18 = "[KmlOwnerPairingSession startProbingWithCallback:]_block_invoke";
        v19 = 1024;
        v20 = 109;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Started probing for pairing.", &v17, 0x12u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[KmlOwnerPairingSession startProbingWithCallback:]_block_invoke";
      v19 = 1024;
      v20 = 111;
      v4 = "%s : %i : Failed to start probing.";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
      goto LABEL_11;
    }
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 64);
  *(v12 + 64) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 80);
  *(v14 + 80) = 0;

  *(*(a1 + 32) + 88) = 0;
  *(*(a1 + 32) + 89) = 0;
  *(*(a1 + 32) + 90) = 0;
  return (*(*(a1 + 40) + 16))();
}

void sub_100380734(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[KmlOwnerPairingSession endSessionWithCompletion:]_block_invoke";
    v16 = 1024;
    v17 = 128;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  if (v4)
  {
    sub_1003C25D8(v4);
    v5 = sub_1003C42C4(*(*(a1 + 32) + 56));
    v3 = *(a1 + 32);
    if ((v5 & 1) == 0)
    {
      v6 = sub_1003C42DC(*(v3 + 56));
      v3 = *(a1 + 32);
      if ((v6 & 1) == 0)
      {
        if ((*(v3 + 88) & 1) == 0)
        {
          v7 = KmlLogger();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v15 = "[KmlOwnerPairingSession endSessionWithCompletion:]_block_invoke";
            v16 = 1024;
            v17 = 135;
            v8 = "%s : %i : Save end session callback to be called after pairing completion";
            goto LABEL_13;
          }

LABEL_14:

          v9 = objc_retainBlock(*(a1 + 40));
          v10 = *(a1 + 32);
          v11 = *(v10 + 80);
          *(v10 + 80) = v9;

          return;
        }

        if (*(v3 + 89) == 1 && (*(v3 + 90) & 1) == 0)
        {
          v7 = KmlLogger();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v15 = "[KmlOwnerPairingSession endSessionWithCompletion:]_block_invoke";
            v16 = 1024;
            v17 = 141;
            v8 = "%s : %i : Save end session callback to be called after first post OP transaction is done.";
LABEL_13:
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v8, buf, 0x12u);
            goto LABEL_14;
          }

          goto LABEL_14;
        }
      }
    }
  }

  v12 = *(a1 + 40);
  v13.receiver = v3;
  v13.super_class = KmlOwnerPairingSession;
  objc_msgSendSuper2(&v13, "endSessionWithCompletion:", v12);
  sub_1003CD6EC(*(a1 + 32));
}

void sub_100380A8C(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[KmlOwnerPairingSession consumeTrackingReceipt:otherJSONData:forKeyWithIdentifier:callback:]_block_invoke";
    v19 = 1024;
    v20 = 161;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    *buf = 136315650;
    v18 = "[KmlOwnerPairingSession consumeTrackingReceipt:otherJSONData:forKeyWithIdentifier:callback:]_block_invoke";
    v19 = 1024;
    v20 = 167;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s : %i : otherJsonData : %@", buf, 0x1Cu);
  }

  v5 = *(*(a1 + 40) + 56);
  if (v5)
  {
    v6 = sub_1003C22E0(v5);
    if ([v6 isEqualToString:*(a1 + 48)])
    {
      v7 = *(*(a1 + 40) + 88);

      if (v7 == 1)
      {
        v8 = objc_retainBlock(*(a1 + 64));
        v9 = *(a1 + 40);
        v10 = *(v9 + 72);
        *(v9 + 72) = v8;

        sub_1003C2638(*(*(a1 + 40) + 56), *(a1 + 56), *(a1 + 32));
        return;
      }
    }

    else
    {
    }
  }

  v11 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  v12 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
  v16 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v14 = [NSError errorWithDomain:v11 code:210 userInfo:v13];

  (*(*(a1 + 64) + 16))();
}

void sub_100380F1C(uint64_t a1, const char *a2)
{
  v2 = (a1 + 32);
  *(*(a1 + 32) + 88) = 1;
  v3 = sub_1003CD7B0(*(a1 + 32), a2);
  [v3 handleKeyPairingCompletionResult:v2[1] keyInformation:v2[2] trackingRequest:v2[3]];

  v4 = *(*v2 + 10);
  if (v4)
  {
    sub_100381B34(*v2, &v5, v4, v2);
  }
}

void sub_100381194(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = KmlLogger();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v1 == 1)
  {
    if (v3)
    {
      v5 = 136315394;
      v6 = "[KmlOwnerPairingSession handleKmlOwnerPairingCancellationResult:]_block_invoke";
      v7 = 1024;
      v8 = 211;
      v4 = "%s : %i : Cancel successful";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v4, &v5, 0x12u);
    }
  }

  else if (v3)
  {
    v5 = 136315394;
    v6 = "[KmlOwnerPairingSession handleKmlOwnerPairingCancellationResult:]_block_invoke";
    v7 = 1024;
    v8 = 213;
    v4 = "%s : %i : Failed to cancel";
    goto LABEL_6;
  }
}

void sub_1003813EC(uint64_t a1, const char *a2)
{
  v2 = (a1 + 32);
  *(*(a1 + 32) + 90) = 1;
  v3 = sub_1003CD7B0(*(a1 + 32), a2);
  [v3 handleFirstTransactionCompletionResult:v2[1]];

  v4 = *(*v2 + 10);
  if (v4)
  {
    sub_100381B34(*v2, &v5, v4, v2);
  }
}

uint64_t sub_1003815BC(uint64_t a1)
{
  *(*(a1 + 32) + 89) = *(a1 + 40) == 0;
  v1 = *(a1 + 40);
  return (*(*(*(a1 + 32) + 72) + 16))();
}

void sub_100381744(uint64_t a1, const char *a2)
{
  v3 = sub_1003CD7B0(*(a1 + 32), a2);
  [v3 handlePreWarmCompletionResult:*(a1 + 40)];
}

void sub_100381900(uint64_t a1, const char *a2)
{
  v3 = sub_1003CD7B0(*(a1 + 32), a2);
  [v3 handleProbingCompletionWithBrandCode:*(a1 + 48) error:*(a1 + 40)];
}

void sub_100381A74(uint64_t a1, const char *a2)
{
  v2 = sub_1003CD7B0(*(a1 + 32), a2);
  [v2 handlePairingDidStart];
}

void sub_100381B34(void *a1, objc_super *a2, uint64_t a3, uint64_t *a4)
{
  a2->receiver = a1;
  a2->super_class = KmlOwnerPairingSession;
  [(objc_super *)a2 endSessionWithCompletion:?];
  sub_1003CD6EC(*a4);
}

id sub_100381FB0(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlSession cancelXpcConnection]_block_invoke";
    v6 = 1024;
    v7 = 121;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Invalidating connection", &v4, 0x12u);
  }

  sub_1003CD8C0(*(a1 + 32));
  return [*(*(a1 + 32) + 24) invalidate];
}

void sub_100382080(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = KmlLogger();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v7 = "[KmlSession startBackGroundTimerWithTimeout:]_block_invoke";
      v8 = 1024;
      v9 = 135;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Timer already running. Ignore another start", buf, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v7 = "[KmlSession startBackGroundTimerWithTimeout:]_block_invoke";
      v8 = 1024;
      v9 = 139;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Starting background connection timer", buf, 0x12u);
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100382214;
    v5[3] = &unk_1004C2B00;
    v5[4] = *(a1 + 32);
    v5[5] = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_100382214(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100382308;
  v6[3] = &unk_1004D1FC8;
  objc_copyWeak(&v7, &location);
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:v2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_1003822EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100382308(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    sub_1003828DC(WeakRetained);
  }
}

void sub_1003823B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 40))
  {

    sub_1003CD8C0(v1);
  }

  else
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315394;
      v4 = "[KmlSession cancelBackGroundTimer]_block_invoke";
      v5 = 1024;
      v6 = 158;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Timer is not running.", &v3, 0x12u);
    }
  }
}

void sub_1003824B4(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlSession cancelBackGroundTimer_internal]_block_invoke";
    v7 = 1024;
    v8 = 168;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Stopping background timer", &v5, 0x12u);
  }

  [*(*(a1 + 32) + 40) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100382658(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[KmlSession endSessionWithCompletion:]_block_invoke";
    v8 = 1024;
    v9 = 179;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s : %i : ", &v6, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_1003829A0(WeakRetained, a1);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

void sub_1003828DC(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "[KmlSession startBackGroundTimerWithTimeout:]_block_invoke_2";
    v5 = 1024;
    v6 = 147;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Cancelling connection from backgrounded client due to time out.", &v3, 0x12u);
  }

  sub_1003CD844(a1);
}

void sub_1003829A0(uint64_t a1, uint64_t a2)
{
  sub_1003CD8C0(a1);
  v4 = +[KeyManagementLibrary sharedLibrary];
  [v4 removeSession:a1 withError:0];
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;

  v6 = *(a2 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

void sub_100382BE0(void **a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[KmlKeySharingSession sendSharingInviteForKeyIdentifier:toIdsIdentifier:auth:config:completionHandler:]_block_invoke";
    v18 = 1024;
    v19 = 64;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Key Sharing requested", buf, 0x12u);
  }

  v3 = sub_10039E038(KmlOwnerSharingManager, a1[5], a1[6], 0);
  v4 = a1[4];
  v5 = v4[8];
  v4[8] = v3;

  sub_1003C42B4(*(a1[4] + 8), a1[4]);
  v6 = sub_1003EB2A4(*(a1[4] + 8), a1[7], 0, a1[8]);
  v7 = a1[9];
  if (v6)
  {
    v8 = objc_retainBlock(a1[9]);
    v9 = a1[4];
    v10 = v9[16];
    v9[16] = v8;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v11 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [NSError errorWithDomain:v10 code:108 userInfo:v12];
    v7[2](v7, 0, v13);
  }
}

void sub_100382EE0(void **a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[KmlKeySharingSession sendSilentSharingInviteForKeyIdentifier:config:groupIdentifier:completionHandler:]_block_invoke";
    v18 = 1024;
    v19 = 81;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Silent Key Sharing requested", buf, 0x12u);
  }

  v3 = sub_10039E654(KmlOwnerSharingManager, a1[5]);
  v4 = a1[4];
  v5 = v4[8];
  v4[8] = v3;

  sub_1003C42B4(*(a1[4] + 8), a1[4]);
  v6 = sub_1003EB418(*(a1[4] + 8), a1[6]);
  v7 = a1[7];
  if (v6)
  {
    v8 = objc_retainBlock(a1[7]);
    v9 = a1[4];
    v10 = v9[18];
    v9[18] = v8;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v11 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [NSError errorWithDomain:v10 code:105 userInfo:v12];
    v7[2](v7, 0, v13);
  }
}

uint64_t sub_100383184(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[KmlKeySharingSession authorizeSharingInvitationIdentifier:auth:completionHandler:]_block_invoke";
    v6 = 1024;
    v7 = 98;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s : %i : NOT IMPLEMENTED", &v4, 0x12u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10038332C(void **a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    *buf = 136315650;
    v21 = "[KmlKeySharingSession cancelSharingInvitation:completionHandler:]_block_invoke";
    v22 = 1024;
    v23 = 109;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Cancel requested for invitation ID:%@", buf, 0x1Cu);
  }

  v4 = sub_10038B89C(KmlFriendSharingManager, a1[4], 0);
  v5 = a1[5];
  v6 = v5[10];
  v5[10] = v4;

  if (*(a1[5] + 10))
  {
    v7 = objc_retainBlock(a1[6]);
    v8 = a1[5];
    v9 = v8[17];
    v8[17] = v7;

    sub_1003D8E18(*(a1[5] + 10), a1[5]);
    sub_1003D10A4(*(a1[5] + 10));
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      *buf = 136315650;
      v21 = "[KmlKeySharingSession cancelSharingInvitation:completionHandler:]_block_invoke";
      v22 = 1024;
      v23 = 116;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : %i : We don't have a valid invitation with ID:%@", buf, 0x1Cu);
    }

    v12 = [DAShareRecipientResult alloc];
    v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v14 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v19 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v16 = [NSError errorWithDomain:v13 code:109 userInfo:v15];
    v17 = [v12 initFailureResultWithCredentialIdentifier:0 error:v16];

    (*(a1[6] + 2))();
  }
}

void sub_1003836FC(void **a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[KmlKeySharingSession acceptSharingInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:]_block_invoke";
    v11 = 1024;
    v12 = 129;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : KmlXpcService: Start key sharing exchange", &v9, 0x12u);
  }

  v3 = objc_retainBlock(a1[8]);
  v4 = a1[4];
  v5 = v4[11];
  v4[11] = v3;

  v6 = sub_10038B89C(KmlFriendSharingManager, a1[5], 1);
  v7 = a1[4];
  v8 = v7[10];
  v7[10] = v6;

  sub_1003D8E18(*(a1[4] + 10), a1[4]);
  sub_1003D05F4(*(a1[4] + 10), a1[6], a1[7]);
}

void sub_1003838FC(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[KmlKeySharingSession requestInviteWithConfig:completionHandler:]_block_invoke";
    v10 = 1024;
    v11 = 140;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Request key sharing invitation for late device", &v8, 0x12u);
  }

  v3 = [*(a1 + 40) sharingSessionIdentifier];
  v4 = sub_10038BE60(KmlFriendSharingManager, v3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = sub_1003D12D8(*(*(a1 + 32) + 80), *(a1 + 40));
  (*(*(a1 + 48) + 16))();
}

void sub_100383BA0(void **a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[KmlKeySharingSession createSharingInvitationsForKeyIdentifier:friendIdentifier:auth:ourBindingAttestation:config:completionHandler:]_block_invoke";
    v18 = 1024;
    v19 = 156;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Cross-platform Key Sharing requested", buf, 0x12u);
  }

  v3 = sub_10039E038(KmlOwnerSharingManager, a1[5], a1[6], 1);
  v4 = a1[4];
  v5 = v4[8];
  v4[8] = v3;

  sub_1003C42B4(*(a1[4] + 8), a1[4]);
  v6 = sub_1003EB2A4(*(a1[4] + 8), a1[7], a1[8], a1[9]);
  v7 = a1[10];
  if (v6)
  {
    v8 = objc_retainBlock(a1[10]);
    v9 = a1[4];
    v10 = v9[16];
    v9[16] = v8;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v11 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [NSError errorWithDomain:v10 code:108 userInfo:v12];
    v7[2](v7, 0, v13);
  }
}

void sub_100383E78(void **a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[KmlKeySharingSession createSilentSharingInvitationWithGroupIdentifier:completionHandler:]_block_invoke";
    v21 = 1024;
    v22 = 171;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Silent Cross-platform Key Sharing requested", buf, 0x12u);
  }

  v3 = sub_10039E654(KmlOwnerSharingManager, a1[5]);
  v4 = a1[4];
  v5 = v4[8];
  v4[8] = v3;

  sub_1003C42B4(*(a1[4] + 8), a1[4]);
  v6 = a1[5];
  if (sub_1003EB52C(*(a1[4] + 8)))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1003840C4;
    v15[3] = &unk_1004C1EC0;
    v16 = a1[6];
    v7 = objc_retainBlock(v15);
    v8 = a1[4];
    v9 = v8[16];
    v8[16] = v7;

    v10 = v16;
  }

  else
  {
    v11 = a1[6];
    v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v17 = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithUTF8String:KmlErrorString()];
    v18 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [NSError errorWithDomain:v10 code:108 userInfo:v13];
    v11[2](v11, 0, v14);
  }
}

void sub_1003840C4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 count])
  {
    v6 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100384288(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v18 = "[KmlKeySharingSession setMailboxIdentifier:forOwnerKeyIdentifier:forInvitationIdentifier:completionHandler:]_block_invoke";
    v19 = 1024;
    v20 = 191;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : InvitationId - %@", buf, 0x1Cu);
  }

  if (KmlLogIsInternalBuild())
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 136315650;
      v18 = "[KmlKeySharingSession setMailboxIdentifier:forOwnerKeyIdentifier:forInvitationIdentifier:completionHandler:]_block_invoke";
      v19 = 1024;
      v20 = 192;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : MailboxId - %@", buf, 0x1Cu);
    }
  }

  v6 = sub_10039E370(KmlOwnerSharingManager, *(a1 + 56), *(a1 + 32));
  v7 = *(a1 + 48);
  v8 = *(v7 + 64);
  *(v7 + 64) = v6;

  v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
  v10 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
  v16 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v12 = [NSError errorWithDomain:v9 code:109 userInfo:v11];

  v13 = *(*(a1 + 48) + 64);
  if (v13)
  {
    v14 = sub_1003EB6A8(v13, *(a1 + 40), *(a1 + 32));

    v12 = v14;
  }

  (*(*(a1 + 64) + 16))();
}

void sub_100384668(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v22 = "[KmlKeySharingSession acceptSharingInvitation:withIdentifier:fromMailboxIdentifier:passcode:productPlanIdentifier:completionHandler:]_block_invoke";
    v23 = 1024;
    v24 = 210;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : InvitationIdentifier- %@", buf, 0x1Cu);
  }

  if (KmlLogIsInternalBuild())
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 136315650;
      v22 = "[KmlKeySharingSession acceptSharingInvitation:withIdentifier:fromMailboxIdentifier:passcode:productPlanIdentifier:completionHandler:]_block_invoke";
      v23 = 1024;
      v24 = 211;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : MailboxId - %@", buf, 0x1Cu);
    }
  }

  if (*(a1 + 48) && (v6 = *(a1 + 40)) != 0)
  {
    v7 = sub_10038C388(KmlFriendSharingManager, v6, 1);
  }

  else
  {
    v7 = sub_10038B89C(KmlFriendSharingManager, *(a1 + 32), 0);
  }

  v8 = *(a1 + 56);
  v9 = *(v8 + 80);
  *(v8 + 80) = v7;

  if (*(*(a1 + 56) + 80))
  {
    v10 = objc_retainBlock(*(a1 + 80));
    v11 = *(a1 + 56);
    v12 = *(v11 + 96);
    *(v11 + 96) = v10;

    sub_1003D8E18(*(*(a1 + 56) + 80), *(a1 + 56));
    sub_1003D0DF0(*(*(a1 + 56) + 80), *(a1 + 48), *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[KmlKeySharingSession acceptSharingInvitation:withIdentifier:fromMailboxIdentifier:passcode:productPlanIdentifier:completionHandler:]_block_invoke";
      v23 = 1024;
      v24 = 223;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s : %i : No manager found to handle this", buf, 0x12u);
    }

    v14 = *(a1 + 80);
    v15 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v16 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v20 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v18 = [NSError errorWithDomain:v15 code:109 userInfo:v17];
    (*(v14 + 16))(v14, 0, 0, v18);
  }
}

void sub_100384A94(void **a1)
{
  if (KmlLogIsInternalBuild())
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v10 = 136315650;
      v11 = "[KmlKeySharingSession startShareAcceptanceFlowWithInvitation:fromMailboxIdentifier:completionHandler:]_block_invoke";
      v12 = 1024;
      v13 = 234;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : MailboxId - %@", &v10, 0x1Cu);
    }
  }

  v4 = sub_10038C388(KmlFriendSharingManager, a1[4], 1);
  v5 = a1[5];
  v6 = v5[10];
  v5[10] = v4;

  v7 = objc_retainBlock(a1[7]);
  v8 = a1[5];
  v9 = v8[13];
  v8[13] = v7;

  sub_1003D8E18(*(a1[5] + 10), a1[5]);
  sub_1003D0AD0(*(a1[5] + 10), a1[6]);
}

void sub_100384CA8(id *a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [a1[4] genericData];
    v4 = [v3 sharingIdentifier];
    v13 = 136315650;
    v14 = "[KmlKeySharingSession startShareAcceptanceFlowWithInvitation:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 247;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : InvitationIdentifier- %@", &v13, 0x1Cu);
  }

  v5 = [a1[4] genericData];
  v6 = [v5 sharingIdentifier];
  v7 = sub_10038BB7C(KmlFriendSharingManager, v6, 1);
  v8 = a1[5];
  v9 = v8[10];
  v8[10] = v7;

  v10 = objc_retainBlock(a1[6]);
  v11 = a1[5];
  v12 = v11[13];
  v11[13] = v10;

  sub_1003D8E18(*(a1[5] + 10), a1[5]);
  sub_1003D0AD0(*(a1[5] + 10), a1[4]);
}

void sub_100384F2C(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v19 = "[KmlKeySharingSession handleRecipientMessage:forInvitationIdentifier:completionHandler:]_block_invoke";
    v20 = 1024;
    v21 = 260;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  v4 = sub_10038B89C(KmlFriendSharingManager, *(a1 + 32), 0);
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  if (*(*(a1 + 40) + 80))
  {
    v7 = objc_retainBlock(*(a1 + 56));
    v8 = *(a1 + 40);
    v9 = *(v8 + 112);
    *(v8 + 112) = v7;

    sub_1003D8E18(*(*(a1 + 40) + 80), *(a1 + 40));
    [*(*(a1 + 40) + 80) handleCrossPlatformSharingMessage:*(a1 + 48) fromMailboxIdentifier:0];
  }

  else
  {
    v10 = [DAShareRecipientResult alloc];
    v11 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v12 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v17 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = [NSError errorWithDomain:v11 code:109 userInfo:v13];
    v15 = [v10 initFailureResultWithCredentialIdentifier:0 error:v14];

    (*(*(a1 + 56) + 16))();
  }
}

void sub_100385264(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v19 = "[KmlKeySharingSession handleInitiatorMessage:forInvitationIdentifier:completionHandler:]_block_invoke";
    v20 = 1024;
    v21 = 282;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  v4 = sub_10039E844(KmlOwnerSharingManager, *(a1 + 32));
  v5 = *(a1 + 40);
  v6 = *(v5 + 72);
  *(v5 + 72) = v4;

  if (*(*(a1 + 40) + 72))
  {
    v7 = objc_retainBlock(*(a1 + 56));
    v8 = *(a1 + 40);
    v9 = *(v8 + 120);
    *(v8 + 120) = v7;

    sub_1003B5E9C(*(*(a1 + 40) + 72), *(a1 + 40));
    [*(*(a1 + 40) + 72) handleCrossPlatformSharingMessage:*(a1 + 48) fromMailboxIdentifier:0];
  }

  else
  {
    v10 = [DAShareInitiatorResult alloc];
    v11 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v12 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v17 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = [NSError errorWithDomain:v11 code:109 userInfo:v13];
    v15 = [v10 initFailureResultWithResponse:0 error:v14];

    (*(*(a1 + 56) + 16))();
  }
}

void sub_100385570(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v17 = "[KmlKeySharingSession requestBindingAttestationDataForKeyWithIdentifier:callback:]_block_invoke";
    v18 = 1024;
    v19 = 304;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Request Binding Attestation Data for key with id: %@", buf, 0x1Cu);
  }

  v4 = sub_10038C140(KmlFriendSharingManager, *(a1 + 32));
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    v13 = 0;
    v8 = sub_1003D13E4(v7, &v13);
    v9 = v13;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v14 = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:KmlErrorString()];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [NSError errorWithDomain:v10 code:210 userInfo:v12];

    v8 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10038586C(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v15 = "[KmlKeySharingSession setBindingAttestation:forKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 322;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Set Binding Attestation Data for key with id: %@", buf, 0x1Cu);
  }

  v4 = sub_10038C140(KmlFriendSharingManager, *(a1 + 32));
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    v8 = sub_10038DB48(v7, *(a1 + 48));
  }

  else
  {
    v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v10 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:v9 code:210 userInfo:v11];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100385B24(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v17 = "[KmlKeySharingSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v18 = 1024;
    v19 = 339;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Get pre-track request for invitation with id: %@", buf, 0x1Cu);
  }

  v4 = sub_10038B89C(KmlFriendSharingManager, *(a1 + 32), 0);
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    v13 = 0;
    v8 = sub_1003D145C(v7, &v13);
    v9 = v13;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v14 = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:KmlErrorString()];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [NSError errorWithDomain:v10 code:210 userInfo:v12];

    v8 = 0;
  }

  (*(*(a1 + 48) + 16))();
}