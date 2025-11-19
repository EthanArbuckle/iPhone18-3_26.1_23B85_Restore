double sub_1003D2C68@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003D2CCC(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003D2CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2CCC(std::string *a1)
{
  sub_1003D2D2C(a1);
  sub_1003D2E04(a1);
  sub_1003D2EE8(a1);
  sub_1003D2FCC(a1);
  sub_10038C868(a1);
  sub_10038C5BC(a1);

  return sub_1003957F8(a1);
}

uint64_t sub_1003D2D2C(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  v2 = std::string::append(&v7, "ModelUUID", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D2DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2E04(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "GenerationTimestamp", 0x13uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D2EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2EE8(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "ModelType", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D2F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2FCC(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Model", 5uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D307C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D32C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D3370()
{
  v0 = type metadata accessor for Logger();
  sub_1003D65A0(v0, qword_1026560E0);
  sub_1003134C0(v0, qword_1026560E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003D342C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  LOBYTE(a7) = a7(v8, v10, v11, v13, v14, v16, ObjCClassMetadata);

  return a7 & 1;
}

uint64_t sub_1003D350C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_100134768(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      sub_1003D66B8(&qword_1025D4FC8, &type metadata accessor for CryptoKitError);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, enum case for CryptoKitError.incorrectParameterSize(_:), v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = &type metadata for Data;
  v29[4] = &protocol witness table for Data;
  v29[0] = a1;
  v29[1] = a2;
  v10 = sub_1003D6510(v29, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = __DataStorage._length.getter();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_1003D39E4(v15, v14, &v28);
  sub_1003D6554(v29);
  return AES.GCM.SealedBox.init(combined:)();
}

Class sub_1003D381C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = a3;
  v8 = a4;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = a5(v9, v11, v12, v14);
  v17 = v16;

  sub_100134768(v9, v11);
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1003D6460(v15, v17);
    v18 = isa;
  }

  return v18;
}

id sub_1003D3904()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1003D3938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLMicroLocationEncryption();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1003D39AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLMicroLocationEncryption();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *sub_1003D39E4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100134980(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1003D633C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1003D63B8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1003D3A78()
{
  if (&class metadata base offset for ArchiveEncryptionContext)
  {
    v0 = &type metadata accessor for ArchiveEncryptionContext == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || &type metadata for ArchiveEncryptionContext == 0 || &metaclass for ArchiveEncryptionContext == 0 || &nominal type descriptor for ArchiveEncryptionContext == 0 || &class metadata base offset for ArchiveByteStream == 0 || &protocol conformance descriptor for ArchiveByteStream == 0 || &protocol witness table for ArchiveByteStream == 0 || &type metadata accessor for ArchiveByteStream == 0 || &type metadata for ArchiveByteStream == 0 || &metaclass for ArchiveByteStream == 0 || &nominal type descriptor for ArchiveByteStream == 0)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1003134C0(v11, qword_1026560E0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_41;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "encryptFile: AppleArchive Library not loaded. method aborted.";
    goto LABEL_40;
  }

  if (!&protocol conformance descriptor for SymmetricKey || !&type metadata accessor for SymmetricKey || !&nominal type descriptor for SymmetricKey || !&type metadata for SymmetricKey)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1003134C0(v32, qword_1026560E0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_41;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "encryptFile: CryptoKit Frameowrk not loaded. method aborted.";
LABEL_40:
    _os_log_impl(dword_100000000, v12, v13, v15, v14, 2u);

LABEL_41:

    return 0;
  }

  v17 = type metadata accessor for FilePath();
  v75 = v66;
  v72 = *(v17 - 8);
  v73 = v17;
  v18 = *(v72 + 64);
  __chkstk_darwin(v17);

  v76 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = FilePath.init(_:)();
  v74 = v66;
  __chkstk_darwin(v19);
  v20 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  FilePath.init(_:)();
  v21 = type metadata accessor for ArchiveEncryptionContext.Profile();
  __chkstk_darwin(v21 - 8);
  static ArchiveEncryptionContext.Profile.hkdf_sha256_aesctr_hmac__symmetric__none.getter();
  v22 = type metadata accessor for ArchiveCompression();
  __chkstk_darwin(v22 - 8);
  static ArchiveCompression.lzfse.getter();
  type metadata accessor for ArchiveEncryptionContext();
  swift_allocObject();
  v77 = ArchiveEncryptionContext.init(profile:compressionAlgorithm:compressionBlockSize:)();
  v23 = type metadata accessor for SymmetricKey();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1003D6474(&qword_1025D4FB0);
  __chkstk_darwin(v27 - 8);
  v29 = v66 - v28;
  v30 = String._bridgeToObjectiveC()();
  v31 = [swift_getObjCClassFromMetadata() retrieveSymmetricKey:v30];

  if (v31)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  v80[0] = v78;
  v80[1] = v79;
  v33 = v76;
  if (!*(&v79 + 1))
  {
    sub_1003D6658(v80, &qword_1025D4FB8);
    (*(v24 + 56))(v29, 1, 1, v23);
    goto LABEL_58;
  }

  v34 = swift_dynamicCast();
  (*(v24 + 56))(v29, v34 ^ 1u, 1, v23);
  if ((*(v24 + 48))(v29, 1, v23) == 1)
  {
LABEL_58:
    sub_1003D6658(v29, &qword_1025D4FB0);
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1003134C0(v35, qword_1026560E0);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(dword_100000000, v36, v37, "Failed to retrieve symmetric key for file encryption", v38, 2u);
    }

    v39 = v73;
    v40 = *(v72 + 8);
    v40(v20, v73);
    v40(v33, v39);
    return 0;
  }

  (*(v24 + 32))(v26, v29, v23);
  dispatch thunk of ArchiveEncryptionContext.setSymmetricKey(_:)();
  type metadata accessor for ArchiveByteStream();
  v41 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (!v41)
  {
    v49 = v26;
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1003134C0(v50, qword_1026560E0);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(dword_100000000, v51, v52, "Failed to create input file stream for encryption", v53, 2u);
    }

    goto LABEL_77;
  }

  v42 = v41;
  v43 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (!v43)
  {
    v49 = v26;
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1003134C0(v54, qword_1026560E0);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(dword_100000000, v55, v56, "Failed to create output file stream for encryption", v57, 2u);
    }

LABEL_77:

    (*(v24 + 8))(v49, v23);
LABEL_78:
    v58 = v73;
    v59 = *(v72 + 8);
    v59(v20, v73);
    v59(v33, v58);
    return 0;
  }

  v70 = v42;
  v71 = v26;
  v44 = v43;
  v45 = type metadata accessor for ArchiveFlags();
  v68 = v66;
  v67 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = v66 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v80[0] = &_swiftEmptyArrayStorage;
  v69 = sub_1003D66B8(&qword_1025D4FE0, &type metadata accessor for ArchiveFlags);
  sub_1003D6474(&qword_1025D4FE8);
  sub_1003D6700();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v69 = v44;
  v48 = static ArchiveByteStream.encryptionStream(writingTo:encryptionContext:flags:threadCount:)();
  (*(v67 + 8))(v47, v45);
  if (!v48)
  {
    v33 = v76;
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1003134C0(v60, qword_1026560E0);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(dword_100000000, v61, v62, "Failed to create encryption stream", v63, 2u);
    }

    (*(v24 + 8))(v71, v23);
    goto LABEL_78;
  }

  static ArchiveByteStream.process(readingFrom:writingTo:)();
  v66[1] = v66;
  dispatch thunk of ArchiveByteStream.close()();
  dispatch thunk of ArchiveByteStream.close()();
  dispatch thunk of ArchiveByteStream.close()();

  (*(v24 + 8))(v71, v23);
  v64 = v73;
  v65 = *(v72 + 8);
  v65(v20, v73);
  v65(v76, v64);
  return 1;
}

uint64_t sub_1003D4AC8()
{
  if (&class metadata base offset for ArchiveEncryptionContext)
  {
    v0 = &type metadata accessor for ArchiveEncryptionContext == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || &type metadata for ArchiveEncryptionContext == 0 || &metaclass for ArchiveEncryptionContext == 0 || &nominal type descriptor for ArchiveEncryptionContext == 0 || &class metadata base offset for ArchiveByteStream == 0 || &protocol conformance descriptor for ArchiveByteStream == 0 || &protocol witness table for ArchiveByteStream == 0 || &type metadata accessor for ArchiveByteStream == 0 || &type metadata for ArchiveByteStream == 0 || &metaclass for ArchiveByteStream == 0 || &nominal type descriptor for ArchiveByteStream == 0)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1003134C0(v11, qword_1026560E0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_41;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "decryptFile: AppleArchive Frameowrk not loaded. method aborted.";
    goto LABEL_40;
  }

  if (!&protocol conformance descriptor for SymmetricKey || !&type metadata accessor for SymmetricKey || !&nominal type descriptor for SymmetricKey || !&type metadata for SymmetricKey)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1003134C0(v29, qword_1026560E0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_41;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "decryptFile: CryptoKit Frameowrk not loaded. method aborted.";
LABEL_40:
    _os_log_impl(dword_100000000, v12, v13, v15, v14, 2u);

LABEL_41:

    return 0;
  }

  v17 = type metadata accessor for FilePath();
  v80 = v70;
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  __chkstk_darwin(v17);

  v81 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = FilePath.init(_:)();
  v79 = v70;
  __chkstk_darwin(v19);
  v20 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  FilePath.init(_:)();
  v21 = type metadata accessor for SymmetricKey();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v76 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1003D6474(&qword_1025D4FB0);
  __chkstk_darwin(v24 - 8);
  v26 = v70 - v25;
  v27 = String._bridgeToObjectiveC()();
  v28 = [swift_getObjCClassFromMetadata() retrieveSymmetricKey:v27];

  if (v28)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84[0] = v82;
  v84[1] = v83;
  v30 = v81;
  if (!*(&v83 + 1))
  {
    sub_1003D6658(v84, &qword_1025D4FB8);
    (*(v22 + 56))(v26, 1, 1, v21);
    goto LABEL_60;
  }

  v31 = swift_dynamicCast();
  (*(v22 + 56))(v26, v31 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v26, 1, v21) == 1)
  {
LABEL_60:
    sub_1003D6658(v26, &qword_1025D4FB0);
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1003134C0(v36, qword_1026560E0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(dword_100000000, v37, v38, "Failed to retrieve symmetric key for file decryption", v39, 2u);
    }

    v40 = v78;
    v41 = *(v77 + 8);
    v41(v20, v78);
    v41(v30, v40);
    return 0;
  }

  (*(v22 + 32))(v76, v26, v21);
  type metadata accessor for ArchiveByteStream();
  v32 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (!v32)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1003134C0(v42, qword_1026560E0);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(dword_100000000, v43, v44, "Failed to open source archive file for decryption", v45, 2u);
    }

    goto LABEL_74;
  }

  v33 = v32;
  type metadata accessor for ArchiveEncryptionContext();
  swift_allocObject();

  v34 = ArchiveEncryptionContext.init(from:)();
  if (!v34)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1003134C0(v46, qword_1026560E0);
    v43 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(dword_100000000, v43, v47, "Failed to create archive context for decryption", v48, 2u);
    }

LABEL_74:

LABEL_75:
    (*(v22 + 8))(v76, v21);
    v49 = v78;
    v50 = *(v77 + 8);
    v50(v20, v78);
    v50(v30, v49);
    return 0;
  }

  v35 = v34;
  dispatch thunk of ArchiveEncryptionContext.setSymmetricKey(_:)();
  v75 = v35;
  v51 = type metadata accessor for ArchiveFlags();
  v72 = v70;
  v71 = *(v51 - 8);
  __chkstk_darwin(v51);
  v73 = v33;
  v53 = v70 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v84[0] = &_swiftEmptyArrayStorage;
  v70[1] = sub_1003D66B8(&qword_1025D4FE0, &type metadata accessor for ArchiveFlags);
  sub_1003D6474(&qword_1025D4FE8);
  sub_1003D6700();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v54 = static ArchiveByteStream.decryptionStream(readingFrom:encryptionContext:flags:threadCount:)();
  (*(v71 + 8))(v53, v51);
  if (!v54)
  {
    v30 = v81;
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1003134C0(v57, qword_1026560E0);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(dword_100000000, v58, v59, "Failed to create decryption stream", v60, 2u);
    }

    goto LABEL_75;
  }

  v55 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  v56 = v81;
  if (!v55)
  {
    v61 = v81;
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1003134C0(v62, qword_1026560E0);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(dword_100000000, v63, v64, "Failed to create output file stream for decryption", v65, 2u);
    }

    (*(v22 + 8))(v76, v21);
    v66 = v78;
    v67 = *(v77 + 8);
    v67(v20, v78);
    v67(v61, v66);
    return 0;
  }

  v72 = v55;
  static ArchiveByteStream.process(readingFrom:writingTo:)();
  v74 = v70;
  dispatch thunk of ArchiveByteStream.close()();
  dispatch thunk of ArchiveByteStream.close()();
  dispatch thunk of ArchiveByteStream.close()();

  (*(v22 + 8))(v76, v21);
  v68 = v78;
  v69 = *(v77 + 8);
  v69(v20, v78);
  v69(v56, v68);
  return 1;
}

uint64_t sub_1003D5B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (&protocol conformance descriptor for SymmetricKey)
  {
    v4 = &type metadata accessor for SymmetricKey == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || &nominal type descriptor for SymmetricKey == 0 || &type metadata for SymmetricKey == 0 || &type metadata accessor for AES == 0 || &nominal type descriptor for AES == 0 || &type metadata for AES == 0)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1003134C0(v10, qword_1026560E0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_26;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "encryptData: CryptoKit Frameowrk not loaded. method aborted.";
    goto LABEL_25;
  }

  v20 = type metadata accessor for SymmetricKey();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1003D6474(&qword_1025D4FB0);
  __chkstk_darwin(v24 - 8);
  v26 = &v40 - v25;
  type metadata accessor for CLMicroLocationKeychain();
  sub_1003D778C(a3, a4, v45);
  if (!v45[3])
  {
    sub_1003D6658(v45, &qword_1025D4FB8);
    (*(v21 + 56))(v26, 1, 1, v20);
    goto LABEL_31;
  }

  v27 = swift_dynamicCast();
  (*(v21 + 56))(v26, v27 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v26, 1, v20) == 1)
  {
LABEL_31:
    sub_1003D6658(v26, &qword_1025D4FB0);
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1003134C0(v38, qword_1026560E0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_26;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Failed to retrieve symmetric key for data encryption";
LABEL_25:
    _os_log_impl(dword_100000000, v11, v12, v14, v13, 2u);

LABEL_26:

    return 0;
  }

  v44 = &v40;
  (*(v21 + 32))(v23, v26, v20);
  v28 = type metadata accessor for AES.GCM.Nonce();
  v43 = &v40;
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  AES.GCM.Nonce.init()();
  v41 = type metadata accessor for AES.GCM.SealedBox();
  v42 = &v40;
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v33 = &v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = a1;
  v45[1] = a2;
  v34 = sub_1003D6474(&qword_1025D4FD0);
  v35 = __chkstk_darwin(v34 - 8);
  v37 = &v40 - v36;
  (*(v29 + 16))(&v40 - v36, v31, v28, v35);
  (*(v29 + 56))(v37, 0, 1, v28);
  sub_1003D6604();
  static AES.GCM.seal<A>(_:using:nonce:)();
  sub_1003D6658(v37, &qword_1025D4FD0);
  v39 = AES.GCM.SealedBox.combined.getter();
  (*(v40 + 8))(v33, v41);
  (*(v29 + 8))(v31, v28);
  (*(v21 + 8))(v23, v20);
  return v39;
}

uint64_t sub_1003D633C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1003D63B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1003D6460(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100134768(a1, a2);
  }

  return a1;
}

uint64_t sub_1003D6474(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1003D64BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_1003D6510(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1003D6554(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *sub_1003D65A0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1003D6604()
{
  result = qword_1025D4FD8;
  if (!qword_1025D4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1025D4FD8);
  }

  return result;
}

uint64_t sub_1003D6658(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1003D6474(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003D66B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003D6700()
{
  result = qword_1025D4FF0;
  if (!qword_1025D4FF0)
  {
    sub_1003D6764(&qword_1025D4FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1025D4FF0);
  }

  return result;
}

uint64_t sub_1003D6764(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1003D67AC()
{
  v0 = type metadata accessor for Logger();
  sub_1003D65A0(v0, qword_102656100);
  sub_1003134C0(v0, qword_102656100);
  return Logger.init(subsystem:category:)();
}

void sub_1003D6830(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (&protocol conformance descriptor for SymmetricKey)
  {
    v4 = &type metadata accessor for SymmetricKey == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || &nominal type descriptor for SymmetricKey == 0 || &type metadata for SymmetricKey == 0)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1003134C0(v21, qword_102656100);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(dword_100000000, v22, v23, "getSymmetricKeyOrCreateNew: CryptoKit Frameowrk not loaded. method aborted.", v24, 2u);
    }

    *a3 = 0u;
    a3[1] = 0u;
    return;
  }

  v59 = a3;
  v63 = 0;
  v9 = sub_1003D6474(&qword_1025D4FB0);
  v58 = &v51;
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v51 - v11;
  v56 = a1;
  v57 = a2;
  v13 = sub_1003D6F98(a1, a2, &v63, &v51 - v11);
  __chkstk_darwin(v13);
  sub_1003DA170(&v51 - v11, &v51 - v11, &qword_1025D4FB0);
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(v14 - 8);
  v16 = v15 + 48;
  v60 = *(v15 + 48);
  v17 = v60(&v51 - v11, 1, v14);
  v18 = sub_1003D82CC(&v51 - v11);
  if (v17 == 1 && v63 == -25300)
  {
    __chkstk_darwin(v18);
    v25 = type metadata accessor for SymmetricKeySize();
    __chkstk_darwin(v25 - 8);
    static SymmetricKeySize.bits256.getter();
    SymmetricKey.init(size:)();
    sub_1003D82CC(&v51 - v11);
    v55 = v15;
    (*(v15 + 56))(&v51 - v11, 0, 1, v14);
    v26 = sub_1003D8398(&v51 - v11, &v51 - v11);
    __chkstk_darwin(v26);
    sub_1003DA170(&v51 - v11, &v51 - v11, &qword_1025D4FB0);
    v27 = v60;
    v28 = v60(&v51 - v11, 1, v14);
    v29 = sub_1003D82CC(&v51 - v11);
    if (v28 == 1)
    {
LABEL_24:
      if (qword_1026560F8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1003134C0(v30, qword_102656100);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v59;
      if (v33)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(dword_100000000, v31, v32, "Failed to generate a symmetric key", v35, 2u);
      }

      sub_1003D82CC(v12);
      *v34 = 0u;
      v34[1] = 0u;
      return;
    }

    v52 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v29);
    v54 = v10;
    sub_1003DA170(v12, &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1025D4FB0);
    v53 = v16;
    if (v27(&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v14) != 1)
    {
      sub_1003D8408();
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      v39 = v61;
      v38 = v62;
      v40 = *(v55 + 8);
      v40(&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      v41 = v38 >> 62;
      if ((v38 >> 62) > 1)
      {
        if (v41 != 2)
        {
          sub_100134768(v39, v38);
          goto LABEL_24;
        }

        v44 = &v51 - v11;
        v46 = *(v39 + 16);
        v45 = *(v39 + 24);
        v42 = sub_100134768(v39, v38);
        v47 = v45 - v46;
        if (!__OFSUB__(v45, v46))
        {
          v12 = v44;
          if (!v47)
          {
            goto LABEL_24;
          }

LABEL_41:
          __chkstk_darwin(v42);
          v49 = &v51 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1003DA170(v12, v49, &qword_1025D4FB0);
          if (v27(v49, 1, v14) != 1)
          {
            v50 = sub_1003D9910(v49, v56, v57);
            v18 = (v40)(v49, v14);
            v15 = v55;
            v11 = v52;
            if (!v50)
            {
              sub_1003D82CC(v12);
              goto LABEL_17;
            }

            goto LABEL_15;
          }

LABEL_48:
          __break(1u);
          return;
        }

        __break(1u);
      }

      else
      {
        if (!v41)
        {
          v42 = sub_100134768(v39, v38);
          v43 = BYTE6(v38);
          goto LABEL_40;
        }

        v42 = sub_100134768(v39, v38);
        LODWORD(v43) = HIDWORD(v39) - v39;
        if (!__OFSUB__(HIDWORD(v39), v39))
        {
          v43 = v43;
LABEL_40:
          if (!v43)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_15:
  __chkstk_darwin(v18);
  sub_1003DA170(v12, &v51 - v11, &qword_1025D4FB0);
  if (v60(&v51 - v11, 1, v14) == 1)
  {
    sub_1003D82CC(v12);
    sub_1003D82CC(&v51 - v11);
LABEL_17:
    v20 = v59;
    *v59 = 0u;
    v20[1] = 0u;
    return;
  }

  v36 = v59;
  *(v59 + 3) = v14;
  v37 = sub_1003D8334(v36);
  (*(v15 + 32))(v37, &v51 - v11, v14);
  sub_1003D82CC(v12);
}

uint64_t sub_1003D6F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, OSStatus *a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v48[1] = a2;
  v49 = a1;
  v48[0] = a4;
  sub_1003D6474(&qword_1025D5000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101C66420;
  *(inited + 32) = kSecClass;
  v50 = inited + 32;
  type metadata accessor for CFString();
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v6;
  *(inited + 72) = kSecUseDataProtectionKeychain;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrAccessible;
  *(inited + 120) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 144) = v6;
  *(inited + 152) = kSecAttrSynchronizable;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecAttrApplicationLabel;
  *(inited + 200) = v49;
  *(inited + 208) = a2;
  *(inited + 224) = &type metadata for String;
  *(inited + 232) = kSecReturnData;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v7 = kSecClass;
  v8 = kSecClassKey;
  v9 = kSecUseDataProtectionKeychain;
  v10 = kSecAttrAccessible;
  v11 = kSecAttrAccessibleWhenUnlocked;
  v12 = kSecAttrSynchronizable;
  v13 = kSecAttrApplicationLabel;

  v14 = kSecReturnData;
  sub_1003D97E8(inited);
  swift_setDeallocating();
  sub_1003D6474(&qword_1025D5008);
  swift_arrayDestroy();
  v54 = 0;
  v15 = sub_1003D6474(&qword_1025D4FB0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v48 - v17;
  v19 = type metadata accessor for SymmetricKey();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  sub_1003D9CFC();
  sub_1003D9D48();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = SecItemCopyMatching(isa, &v54);

  v23 = v54;
  *v51 = v22;
  if (v22 == -25300)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1003134C0(v26, qword_102656100);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(dword_100000000, v27, v28, "key not found in keychain", v29, 2u);
    }

    goto LABEL_24;
  }

  if (v22)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1003134C0(v30, qword_102656100);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v53 = v34;
      *v33 = 67109378;
      *(v33 + 4) = v22;
      *(v33 + 8) = 2080;
      v35 = SecCopyErrorMessageString(v22, 0);
      if (v35)
      {
        v36 = v35;
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40 = v37;
      }

      else
      {
        LODWORD(v52) = v22;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v45;
      }

      v46 = sub_1003D8454(v40, v39, &v53);

      *(v33 + 10) = v46;
      _os_log_impl(dword_100000000, v31, v32, "Failed to retrieve key from keychain, error %d, %s", v33, 0x12u);
      sub_1003D6554(v34);
    }

    goto LABEL_24;
  }

  if (v23)
  {
    v52 = v23;
    swift_unknownObjectRetain();
    v24 = swift_dynamicCast();
    if (v24)
    {
      *&v25 = __chkstk_darwin(v24);
      v53 = v25;
      SymmetricKey.init<A>(data:)();
      sub_1003D82CC(v18);
      v20(v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v19);
      sub_1003D8398(v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
LABEL_24:
      sub_1003D8398(v18, v48[0]);
      return swift_unknownObjectRelease();
    }
  }

  if (qword_1026560F8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1003134C0(v41, qword_102656100);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(dword_100000000, v42, v43, "Failed to get key from keychain. Got invalid data", v44, 2u);
  }

  sub_1003D82CC(v18);
  v20(v48[0], 1, 1, v19);
  return swift_unknownObjectRelease();
}

void sub_1003D778C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (&protocol conformance descriptor for SymmetricKey)
  {
    v4 = &type metadata accessor for SymmetricKey == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || &nominal type descriptor for SymmetricKey == 0 || &type metadata for SymmetricKey == 0)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1003134C0(v14, qword_102656100);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(dword_100000000, v15, v16, "retrieveSymmetricKey: CryptoKit Frameowrk not loaded. method aborted.", v17, 2u);
    }

    goto LABEL_18;
  }

  v9 = sub_1003D6474(&qword_1025D4FB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19[-v10];
  sub_1003D6F98(a1, a2, &v20, &v19[-v10]);
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1003D82CC(v11);
LABEL_18:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  *(a3 + 24) = v12;
  v18 = sub_1003D8334(a3);
  (*(v13 + 32))(v18, v11, v12);
}

void sub_1003D7A64(UInt8 *bytes@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (bytes)
  {
    v4 = a2 - bytes;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFDataCreateWithBytesNoCopy(0, bytes, v4, kCFAllocatorNull);
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xC000000000000000;
  }

  *a3 = v7;
  a3[1] = v9;
}

uint64_t sub_1003D7B00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result == 0x79656B5F6F6ELL && a2 == 0xE600000000000000;
  if (v4 || (v6 = result, result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v7 = type metadata accessor for SymmetricKey();
    v27 = &v27;
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    __chkstk_darwin(v7);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = &v27 - v10;
    if (qword_102656118 != -1)
    {
      swift_once();
    }

    v12 = swift_beginAccess();
    v13 = qword_102656120;
    __chkstk_darwin(v12);
    v14 = &v27 - v10;
    if (*(v13 + 16) && (v15 = sub_1003D8A40(v6, a2), (v16 & 1) != 0))
    {
      (*(v8 + 16))(v14, *(v13 + 56) + *(v8 + 72) * v15, v7);
      v17 = *(v8 + 32);
      v17(v11, v14, v7);
      swift_endAccess();
      *(a3 + 24) = v7;
      v18 = sub_1003D8334(a3);
      return (v17)(v18, v11, v7);
    }

    else
    {
      v19 = swift_endAccess();
      __chkstk_darwin(v19);
      v20 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = type metadata accessor for SymmetricKeySize();
      __chkstk_darwin(v21 - 8);
      static SymmetricKeySize.bits256.getter();
      SymmetricKey.init(size:)();
      v22 = sub_1003D6474(&qword_1025D4FB0);
      v23 = __chkstk_darwin(v22 - 8);
      v25 = &v27 - v24;
      (*(v8 + 16))(&v27 - v24, v20, v7, v23);
      (*(v8 + 56))(v25, 0, 1, v7);
      swift_beginAccess();

      sub_1003D7EB0(v25, v6, a2);
      swift_endAccess();
      *(a3 + 24) = v7;
      v26 = sub_1003D8334(a3);
      return (*(v8 + 32))(v26, v20, v7);
    }
  }

  return result;
}

uint64_t sub_1003D7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(a1, 1, v7);
  if (v9 == 1)
  {
    sub_1003D82CC(a1);
    v10 = sub_1003D6474(&qword_1025D4FB0);
    __chkstk_darwin(v10 - 8);
    v12 = &v18 - v11;
    sub_1003D8C34(a2, a3, &v18 - v11);

    return sub_1003D82CC(v12);
  }

  else
  {
    v14 = __chkstk_darwin(v9);
    v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 32))(v16, a1, v7, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1003D9338(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

id sub_1003D8080(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t))
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4(v14, v5);

  v6 = v15;
  if (v15)
  {
    v7 = sub_1003D6510(v14, v15);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_1003D6554(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1003D81E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1003D8234(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1003D8290(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003D82CC(uint64_t a1)
{
  v2 = sub_1003D6474(&qword_1025D4FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1003D8334(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1003D8398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003D6474(&qword_1025D4FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003D8408()
{
  result = qword_1025D4FF8;
  if (!qword_1025D4FF8)
  {
    type metadata accessor for SymmetricKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1025D4FF8);
  }

  return result;
}

unint64_t sub_1003D8454(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1003D8520(v11, 0, 0, 1, a1, a2);
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
    sub_1003DA110(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1003D6554(v11);
  return v7;
}

unint64_t sub_1003D8520(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1003D862C(a5, a6);
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

char *sub_1003D862C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1003D8678(a1, a2);
  sub_1003D87A8(&off_102449EE8);
  return v3;
}

char *sub_1003D8678(uint64_t a1, unint64_t a2)
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

  v6 = sub_1003D8894(v5, 0);
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
        v7 = sub_1003D8894(v10, 0);
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

uint64_t sub_1003D87A8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003D8908(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1003D8894(uint64_t a1, uint64_t a2)
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

  sub_1003D6474(&qword_1025D5080);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1003D8908(char *result, int64_t a2, char a3, char *a4)
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
    sub_1003D6474(&qword_1025D5080);
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

unint64_t sub_1003D89FC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1003D8AB8(a1, v4);
}

unint64_t sub_1003D8A40(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1003D8B7C(a1, a2, v4);
}

unint64_t sub_1003D8AB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1003D9CFC();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1003D8B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1003D8C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1003D8A40(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003D9568();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for SymmetricKey();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1003D914C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for SymmetricKey();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1003D8DA4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1003D6474(&qword_1025D5078);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v44 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = type metadata accessor for SymmetricKey();
      v43 = &v39;
      v22 = *(v21 - 8);
      v24 = __chkstk_darwin(v21);
      v25 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *(v5 + 56);
      v27 = (*(v5 + 48) + 16 * v20);
      v28 = v27[1];
      v45 = *v27;
      v42 = *(v29 + 72);
      v30 = v26 + v42 * v20;
      if (v41)
      {
        (*(v22 + 32))(&v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v21, v24);
      }

      else
      {
        (*(v22 + 16))(&v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v21, v24);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v45;
      v16[1] = v28;
      result = (*(v22 + 32))(*(v7 + 56) + v42 * v15, v25, v21);
      ++*(v7 + 16);
      v12 = v44;
      v5 = v40;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_1003D914C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for SymmetricKey() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1003D9338(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1003D8A40(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1003D9568();
      goto LABEL_7;
    }

    sub_1003D8DA4(v15, a4 & 1);
    v26 = sub_1003D8A40(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for SymmetricKey();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1003D94B8(v12, a2, a3, a1, v18);
}

uint64_t sub_1003D94B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SymmetricKey();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_1003D9568()
{
  v1 = v0;
  sub_1003D6474(&qword_1025D5078);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v34 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v2 + 16);
    v35 = v2;
    v36 = v4;
    *(v4 + 16) = v10;
    v11 = 1 << *(v2 + 32);
    v12 = *(v2 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v35;
        v21 = 16 * v19;
        v22 = (*(v35 + 48) + 16 * v19);
        v23 = *v22;
        v37 = v22[1];
        v38 = v23;
        v24 = type metadata accessor for SymmetricKey();
        v39 = &v34;
        v25 = *(v24 - 8);
        v26 = __chkstk_darwin(v24);
        v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = *(v29 + 72) * v19;
        (*(v25 + 16))(v28, *(v20 + 56) + v30, v24, v26);
        v31 = v36;
        v32 = (*(v36 + 48) + v21);
        v33 = v37;
        *v32 = v38;
        v32[1] = v33;
        (*(v25 + 32))(*(v31 + 56) + v30, v28, v24);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v34;
        v4 = v36;
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1003D97E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1003D6474(&qword_1025D5088);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1003DA170(v4, &v11, &qword_1025D5008);
      v5 = v11;
      result = sub_1003D89FC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1003DA1D8(&v12, (v3[7] + 32 * result));
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

BOOL sub_1003D9910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003D6474(&qword_1025D5000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101C66420;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString();
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v4;
  *(inited + 72) = kSecUseDataProtectionKeychain;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrAccessible;
  *(inited + 120) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 144) = v4;
  *(inited + 152) = kSecAttrSynchronizable;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecValueData;
  type metadata accessor for SymmetricKey();
  sub_1003D8408();
  v5 = kSecClass;
  v6 = kSecClassKey;
  v7 = kSecUseDataProtectionKeychain;
  v8 = kSecAttrAccessible;
  v9 = kSecAttrAccessibleWhenUnlocked;
  v10 = kSecAttrSynchronizable;
  v11 = kSecValueData;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  *(inited + 200) = *v31;
  *(inited + 224) = &type metadata for Data;
  *(inited + 232) = kSecAttrApplicationLabel;
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = a2;
  *(inited + 248) = a3;
  v12 = kSecAttrApplicationLabel;

  sub_1003D97E8(inited);
  swift_setDeallocating();
  sub_1003D6474(&qword_1025D5008);
  swift_arrayDestroy();
  sub_1003D9CFC();
  sub_1003D9D48();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = SecItemAdd(isa, 0);

  if (v14)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1003134C0(v15, qword_102656100);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31[0] = v19;
      *v18 = 67109378;
      *(v18 + 4) = v14;
      *(v18 + 8) = 2080;
      v20 = SecCopyErrorMessageString(v14, 0);
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v22;
      }

      else
      {
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v26;
      }

      v27 = sub_1003D8454(v25, v24, v31);

      *(v18 + 10) = v27;
      _os_log_impl(dword_100000000, v16, v17, "Failed to store key in keychain, error %d, %s", v18, 0x12u);
      sub_1003D6554(v19);
    }
  }

  return v14 == 0;
}

void type metadata accessor for CFString()
{
  if (!qword_1025D5070)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1025D5070);
    }
  }
}

unint64_t sub_1003D9CFC()
{
  result = qword_1025D5010;
  if (!qword_1025D5010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1025D5010);
  }

  return result;
}

unint64_t sub_1003D9D48()
{
  result = qword_1025D5018;
  if (!qword_1025D5018)
  {
    sub_1003D9CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1025D5018);
  }

  return result;
}

BOOL sub_1003D9DA0(uint64_t a1, uint64_t a2)
{
  sub_1003D6474(&qword_1025D5000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101C66430;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString();
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v4;
  *(inited + 72) = kSecUseDataProtectionKeychain;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrAccessible;
  *(inited + 120) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 144) = v4;
  *(inited + 152) = kSecAttrSynchronizable;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecAttrApplicationLabel;
  *(inited + 224) = &type metadata for String;
  *(inited + 200) = a1;
  *(inited + 208) = a2;
  v5 = kSecClass;
  v6 = kSecClassKey;
  v7 = kSecUseDataProtectionKeychain;
  v8 = kSecAttrAccessible;
  v9 = kSecAttrAccessibleAfterFirstUnlock;
  v10 = kSecAttrSynchronizable;
  v11 = kSecAttrApplicationLabel;

  sub_1003D97E8(inited);
  swift_setDeallocating();
  sub_1003D6474(&qword_1025D5008);
  swift_arrayDestroy();
  sub_1003D9CFC();
  sub_1003D9D48();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = SecItemDelete(isa);

  if (v13)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1003134C0(v14, qword_102656100);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 67109378;
      *(v17 + 4) = v13;
      *(v17 + 8) = 2080;
      v19 = SecCopyErrorMessageString(v13, 0);
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v21;
      }

      else
      {
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v25;
      }

      v26 = sub_1003D8454(v24, v23, &v29);

      *(v17 + 10) = v26;
      _os_log_impl(dword_100000000, v15, v16, "Failed to remove key from keychain, error %d, %s", v17, 0x12u);
      sub_1003D6554(v18);
    }
  }

  return v13 == 0;
}

uint64_t sub_1003DA110(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1003DA170(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1003D6474(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_1003DA1D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1003DA1EC(uint64_t result)
{
  *result = 2147450879;
  *(result + 4) = 0x7FFF;
  *(result + 6) = 2147450879;
  *(result + 10) = 0x7FFF;
  *(result + 12) = 2147450879;
  *(result + 16) = 0x7FFF;
  *(result + 18) = 2147450879;
  *(result + 22) = 0x7FFF;
  *(result + 28) = 0x7FFF;
  *(result + 24) = 2147450879;
  *(result + 34) = 0x7FFF;
  *(result + 30) = 2147450879;
  *(result + 40) = 0x7FFF;
  *(result + 36) = 2147450879;
  *(result + 46) = 0x7FFF;
  *(result + 42) = 2147450879;
  *(result + 52) = 0x7FFF;
  *(result + 48) = 2147450879;
  *(result + 58) = 0x7FFF;
  *(result + 54) = 2147450879;
  *(result + 64) = 0x7FFF;
  *(result + 60) = 2147450879;
  *(result + 70) = 0x7FFF;
  *(result + 66) = 2147450879;
  *(result + 76) = 0x7FFF;
  *(result + 72) = 2147450879;
  *(result + 82) = 0x7FFF;
  *(result + 78) = 2147450879;
  *(result + 88) = 0x7FFF;
  *(result + 84) = 2147450879;
  *(result + 94) = 0x7FFF;
  *(result + 90) = 2147450879;
  *(result + 100) = 0x7FFF;
  *(result + 96) = 2147450879;
  *(result + 106) = 0x7FFF;
  *(result + 102) = 2147450879;
  *(result + 112) = 0x7FFF;
  *(result + 108) = 2147450879;
  *(result + 118) = 0x7FFF;
  *(result + 114) = 2147450879;
  *(result + 124) = 0x7FFF;
  *(result + 120) = 2147450879;
  *(result + 130) = 0x7FFF;
  *(result + 126) = 2147450879;
  *(result + 136) = 0x7FFF;
  *(result + 132) = 2147450879;
  *(result + 142) = 0x7FFF;
  *(result + 138) = 2147450879;
  *(result + 148) = 0x7FFF;
  *(result + 144) = 2147450879;
  *(result + 154) = 0x7FFF;
  *(result + 150) = 2147450879;
  *(result + 160) = 0x7FFF;
  *(result + 156) = 2147450879;
  *(result + 166) = 0x7FFF;
  *(result + 162) = 2147450879;
  *(result + 172) = 0x7FFF;
  *(result + 168) = 2147450879;
  *(result + 178) = 0x7FFF;
  *(result + 174) = 2147450879;
  *(result + 184) = 0x7FFF;
  *(result + 180) = 2147450879;
  *(result + 190) = 0x7FFF;
  *(result + 186) = 2147450879;
  return result;
}

uint64_t sub_1003DA300(__int16 a1, __int16 a2, __int16 a3, uint64_t a4, _WORD *a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  *a5 = 1;
  sub_1003DC798(v6, 32, 1, a4);
  return 1;
}

uint64_t sub_1003DA344(int a1, int a2)
{
  v2 = 2 * a1;
  v3 = v2 >= a2;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 2 * (v2 - v4);
  v6 = v5 >= a2;
  if (v5 < a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = 2 * (v5 - v7);
  if (v8 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (4 * v6) | (8 * v3) | (2 * (v8 >= a2));
  v11 = 2 * (v8 - v9);
  if (v11 < a2)
  {
    v12 = 0;
  }

  else
  {
    ++v10;
    v12 = a2;
  }

  v13 = 2 * (v11 - v12);
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  v15 = (2 * (v13 >= a2)) | (4 * v10);
  v16 = 2 * (v13 - v14);
  if (v16 < a2)
  {
    v17 = 0;
  }

  else
  {
    ++v15;
    v17 = a2;
  }

  v18 = 2 * (v16 - v17);
  if (v18 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0;
  }

  v20 = (2 * (v18 >= a2)) | (4 * v15);
  v21 = 2 * (v18 - v19);
  if (v21 < a2)
  {
    v22 = 0;
  }

  else
  {
    ++v20;
    v22 = a2;
  }

  v23 = 2 * (v21 - v22);
  if (v23 >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = 0;
  }

  v25 = (2 * (v23 >= a2)) | (4 * v20);
  v26 = 2 * (v23 - v24);
  if (v26 < a2)
  {
    v27 = 0;
  }

  else
  {
    ++v25;
    v27 = a2;
  }

  v28 = 2 * (v26 - v27);
  if (v28 >= a2)
  {
    v29 = a2;
  }

  else
  {
    v29 = 0;
  }

  v30 = (2 * (v28 >= a2)) | (4 * v25);
  v31 = 2 * (v28 - v29);
  if (v31 < a2)
  {
    v32 = 0;
  }

  else
  {
    ++v30;
    v32 = a2;
  }

  v33 = 2 * (v31 - v32);
  if (v33 >= a2)
  {
    v34 = a2;
  }

  else
  {
    v34 = 0;
  }

  v35 = (2 * (v33 >= a2)) | (4 * v30);
  v36 = 2 * (v33 - v34);
  if (v36 < a2)
  {
    v37 = 0;
  }

  else
  {
    ++v35;
    v37 = a2;
  }

  return ((a2 <= 2 * (v36 - v37)) | (2 * v35));
}

uint64_t sub_1003DA4A8(unint64_t a1)
{
  if (a1 < 1)
  {
    if (a1)
    {
      return 0;
    }

    else
    {
      return 31;
    }
  }

  else
  {
    v1 = a1 >> 30;
    if (a1 >> 30)
    {
      return 0;
    }

    else
    {
      do
      {
        v2 = a1 >> 29;
        a1 *= 2;
        LOWORD(v1) = v1 + 1;
      }

      while (!v2);
      return v1;
    }
  }
}

uint64_t sub_1003DA4EC(int a1)
{
  if (a1 >= 0)
  {
    LOWORD(v1) = a1;
  }

  else
  {
    v1 = -a1;
  }

  if (a1 == -32768)
  {
    LOWORD(v1) = 0x7FFF;
  }

  return v1;
}

uint64_t sub_1003DA508(uint64_t a1, int a2, __int16 *a3, _WORD *a4)
{
  if (a2 > 32)
  {
    return 0;
  }

  v6 = sub_1003DA344(1, a2);
  if (a2 < 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_34;
  }

  v7 = v6;
  v8 = a2;
  if (a2 == 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_9:
    v31 = (a1 + 6 * v9 + 4);
    v32 = a2 - v9;
    do
    {
      v12 += *(v31 - 2) * v7;
      v11 += *(v31 - 1) * v7;
      v10 += *v31 * v7;
      v31 += 3;
      --v32;
    }

    while (v32);
    goto LABEL_11;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v9 = a2 & 0x7FFELL;
  v28 = (a1 + 6);
  v29 = v9;
  do
  {
    v26 += *(v28 - 3) * v7;
    v27 += *v28 * v7;
    v24 += *(v28 - 2) * v7;
    v25 += v28[1] * v7;
    v30 = v28[2];
    v22 += *(v28 - 1) * v7;
    v28 += 6;
    v23 += v30 * v7;
    v29 -= 2;
  }

  while (v29);
  v10 = v23 + v22;
  v11 = v25 + v24;
  v12 = v27 + v26;
  if (v9 != a2)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (a2 < 4)
  {
    v33 = 0;
    goto LABEL_22;
  }

  if (a2 >= 0x10)
  {
    v33 = a2 & 0x30;
    v34 = &v85;
    v35 = a2 & 0x7FF0;
    v36 = a1;
    do
    {
      v37 = v36;
      v36 += 48;
      v89 = vld3q_s16(v37);
      v37 += 24;
      v90 = vld3q_s16(v37);
      v34[-1] = vshrn_high_n_s32(vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(*v89.val[1].i8, *v89.val[1].i8), *v89.val[0].i8, *v89.val[0].i8), *v89.val[2].i8, *v89.val[2].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v89.val[1], v89.val[1]), v89.val[0], v89.val[0]), v89.val[2], v89.val[2]), 0xBuLL);
      *v34 = vshrn_high_n_s32(vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(*v90.val[1].i8, *v90.val[1].i8), *v90.val[0].i8, *v90.val[0].i8), *v90.val[2].i8, *v90.val[2].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v90.val[1], v90.val[1]), v90.val[0], v90.val[0]), v90.val[2], v90.val[2]), 0xBuLL);
      v34 += 2;
      v35 -= 16;
    }

    while (v35);
    if (v33 == a2)
    {
      goto LABEL_24;
    }

    if ((a2 & 0xCLL) == 0)
    {
LABEL_22:
      v42 = &v84[v33];
      v43 = (a1 + 6 * v33 + 4);
      v44 = a2 - v33;
      do
      {
        *v42++ = (*(v43 - 2) * *(v43 - 2) + *(v43 - 1) * *(v43 - 1) + *v43 * *v43) >> 11;
        v43 += 3;
        --v44;
      }

      while (v44);
      goto LABEL_24;
    }
  }

  else
  {
    v33 = 0;
  }

  v38 = v33;
  v33 = a2 & 0x7FFCLL;
  v39 = (a1 + 6 * v38);
  v40 = &v84[v38];
  v41 = v38 - v33;
  do
  {
    v88 = vld3_s16(v39);
    v39 += 12;
    *v40++ = vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(v88.val[1], v88.val[1]), v88.val[0], v88.val[0]), v88.val[2], v88.val[2]), 0xBuLL);
    v41 += 4;
  }

  while (v41);
  if (v33 != a2)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (a2 > 7)
  {
    v46 = vdupq_n_s16(v12 >> 15);
    v47 = vdupq_n_s16(v11 >> 15);
    v45 = a2 & 0x7FF8;
    v48 = vdupq_n_s16(v10 >> 15);
    v49 = v86;
    v50 = v45;
    v51 = a1;
    do
    {
      v91 = vld3q_s16(v51);
      v51 += 24;
      v92.val[0] = vsubq_s16(v91.val[0], v46);
      v92.val[1] = vsubq_s16(v91.val[1], v47);
      v92.val[2] = vsubq_s16(v91.val[2], v48);
      vst3q_s16(v49, v92);
      v49 += 24;
      v50 -= 8;
    }

    while (v50);
    if (v45 == a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v45 = 0;
  }

  v52 = a2 - v45;
  v53 = 6 * v45 + 4;
  v54 = (a1 + v53);
  v55 = &v86[v53];
  do
  {
    *(v55 - 2) = *(v54 - 2) - (v12 >> 15);
    *(v55 - 1) = *(v54 - 1) - (v11 >> 15);
    v56 = *v54;
    v54 += 3;
    *v55 = v56 - (v10 >> 15);
    v55 += 3;
    --v52;
  }

  while (v52);
LABEL_31:
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = (a1 + 4);
  v61 = v87;
  v62 = v84;
  do
  {
    v21 += *(v61 - 1) * *(v60 - 2);
    v20 += *v61 * *(v60 - 1);
    v63 = v61[1];
    v19 += v61[1] * *v60;
    v18 += *(v60 - 1) * *(v61 - 1);
    v17 += *v60 * *(v61 - 1);
    v16 += *v60 * *v61;
    v64 = *v62++;
    v57 += v64 * *(v61 - 1);
    v58 += v64 * *v61;
    v60 += 3;
    v61 += 3;
    v59 += v64 * v63;
    --v8;
  }

  while (v8);
  v15 = v57 >> 1;
  v14 = v58 >> 1;
  v13 = v59 >> 1;
LABEL_34:
  v65 = sub_1003DA4A8(v21);
  v66 = sub_1003DA4A8(v18);
  if (v65 >= v66)
  {
    v65 = v66;
  }

  v67 = sub_1003DA4A8(v17);
  if (v65 >= v67)
  {
    v65 = v67;
  }

  v68 = sub_1003DA4A8(v18);
  if (v65 >= v68)
  {
    v65 = v68;
  }

  v69 = sub_1003DA4A8(v20);
  if (v65 >= v69)
  {
    v65 = v69;
  }

  v70 = sub_1003DA4A8(v16);
  if (v65 >= v70)
  {
    v65 = v70;
  }

  v71 = sub_1003DA4A8(v17);
  if (v65 >= v71)
  {
    v65 = v71;
  }

  v72 = sub_1003DA4A8(v16);
  if (v65 >= v72)
  {
    v65 = v72;
  }

  v73 = sub_1003DA4A8(v19);
  if (v65 >= v73)
  {
    v65 = v73;
  }

  v74 = sub_1003DA4A8(v15);
  if (v65 >= v74)
  {
    v65 = v74;
  }

  v75 = sub_1003DA4A8(v14);
  if (v65 >= v75)
  {
    v65 = v75;
  }

  v76 = sub_1003DA4A8(v13);
  if (v65 >= v76)
  {
    v77 = v76;
  }

  else
  {
    v77 = v65;
  }

  if (v77 >= 32)
  {
    LOBYTE(v77) = 32;
  }

  v78 = v18 << v77 >> 18;
  a3[3] = v78;
  a3[1] = v78;
  v79 = v17 << v77 >> 18;
  a3[6] = v79;
  a3[2] = v79;
  v80 = v16 << v77 >> 18;
  a3[7] = v80;
  a3[5] = v80;
  *a3 = v21 << v77 >> 18;
  a3[4] = v20 << v77 >> 18;
  a3[8] = v19 << v77 >> 18;
  *a4 = v15 << v77 >> 18;
  a4[1] = v14 << v77 >> 18;
  a4[2] = v13 << v77 >> 18;
  if (*a3 >= 6 && a3[4] >= 6 && a3[8] > 5)
  {
    return 4;
  }

  return 0;
}

uint64_t sub_1003DAA68(__int16 *a1, int a2, __int16 *a3, __int16 *a4, _WORD *a5)
{
  v7 = a3[8];
  v8 = a3[5];
  v9 = v7 * a3[4] - v8 * v8;
  v10 = *a3;
  v11 = a3[6];
  v12 = *a3 * v7 - v11 * v11;
  v13 = a3[1];
  v14 = *a3 * a3[4] - v13 * v13;
  if (v12 <= v9)
  {
    v15 = a3[8] * a3[4] - a3[5] * a3[5];
  }

  else
  {
    v15 = *a3 * a3[8] - a3[6] * a3[6];
  }

  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *a3 * a3[4] - a3[1] * a3[1];
  }

  if (v16 >= 1)
  {
    v19 = a3[4];
    v51 = 0;
    v20 = v12 > v9;
    if (v14 > v15)
    {
      v20 = 2;
    }

    if (v20 == 2)
    {
      v58 = v10;
      v59 = v13;
      v56 = -v11;
      v60 = a3[3];
      v61 = v19;
      v57 = -v8;
      if (sub_1003DAE94(&v58, 2, v55, v54))
      {
        sub_1003DB100(&v58, 2, v55, v54, &v56, &v52);
        v21 = v52 >> 2;
        *a4 = v52 >> 2;
        v22 = v53 >> 2;
        a4[1] = v53 >> 2;
        v24 = 2048;
        goto LABEL_19;
      }
    }

    else if (v20 == 1)
    {
      v58 = v7;
      v59 = v11;
      v56 = -v8;
      v60 = v11;
      v61 = v10;
      v57 = -v13;
      if (sub_1003DAE94(&v58, 2, v55, v54))
      {
        sub_1003DB100(&v58, 2, v55, v54, &v56, &v52);
        v21 = v53 >> 2;
        *a4 = v53 >> 2;
        v22 = 2048;
        a4[1] = 2048;
        v23 = v52;
LABEL_18:
        v24 = v23 >> 2;
LABEL_19:
        a4[2] = v24;
        v25 = sub_1003DC6F0(v22 * v22 + v21 * v21 + v24 * v24, &v51);
        v26 = (v25 >> 8) * *a4;
        *a4 = v26 >> 11;
        v27 = (v25 >> 8) * a4[1];
        a4[1] = v27 >> 11;
        v28 = (v25 >> 8) * a4[2];
        a4[2] = v28 >> 11;
        v29 = (v26 << 37) >> 48;
        v30 = (v27 << 37) >> 48;
        v31 = v29 * *a1 + (v27 >> 11) * a1[1];
        v32 = (v28 << 37) >> 48;
        v33 = v31 + (v28 >> 11) * a1[2];
        if (a2 < 2)
        {
          LODWORD(v36) = v31 + (v28 >> 11) * a1[2];
          LODWORD(v35) = v36;
        }

        else
        {
          if (a2 == 2)
          {
            v34 = 1;
            v35 = v33;
            v36 = v33;
          }

          else
          {
            v39 = 0;
            v34 = (a2 - 1) | 1;
            v40 = a1 + 4;
            v41 = (a2 - 1) & 0xFFFFFFFFFFFFFFFELL;
            v42 = v33;
            v43 = v33;
            v44 = v33;
            v45 = v33;
            do
            {
              v46 = v29 * *(v40 - 1) + v30 * *v40 + (v28 >> 11) * v40[1];
              v47 = v29 * v40[2] + v30 * v40[3] + (v28 >> 11) * v40[4];
              if (v44 <= v46)
              {
                v44 = v29 * *(v40 - 1) + v30 * *v40 + (v28 >> 11) * v40[1];
              }

              if (v45 <= v47)
              {
                v45 = v29 * v40[2] + v30 * v40[3] + (v28 >> 11) * v40[4];
              }

              if (v42 >= v46)
              {
                v42 = v29 * *(v40 - 1) + v30 * *v40 + (v28 >> 11) * v40[1];
              }

              if (v43 >= v47)
              {
                v43 = v29 * v40[2] + v30 * v40[3] + (v28 >> 11) * v40[4];
              }

              LODWORD(v33) = v46 + v33;
              v39 += v47;
              v40 += 6;
              v41 -= 2;
            }

            while (v41);
            LODWORD(v33) = v39 + v33;
            if (v42 >= v43)
            {
              v35 = v43;
            }

            else
            {
              v35 = v42;
            }

            if (v44 <= v45)
            {
              v36 = v45;
            }

            else
            {
              v36 = v44;
            }

            if (a2 - 1 == ((a2 - 1) & 0xFFFFFFFFFFFFFFFELL))
            {
              goto LABEL_48;
            }
          }

          v48 = &a1[3 * v34 + 2];
          v49 = a2 - v34;
          do
          {
            v50 = v29 * *(v48 - 2) + v30 * *(v48 - 1) + v32 * *v48;
            if (v36 <= v50)
            {
              v36 = v29 * *(v48 - 2) + v30 * *(v48 - 1) + v32 * *v48;
            }

            if (v35 >= v50)
            {
              v35 = v29 * *(v48 - 2) + v30 * *(v48 - 1) + v32 * *v48;
            }

            LODWORD(v33) = v50 + v33;
            v48 += 3;
            --v49;
          }

          while (v49);
        }

LABEL_48:
        *a5 = (v36 - v35) >> 11;
        v37 = 1;
        a4[3] = -(((v33 >> 11) * sub_1003DA344(1, a2)) >> 15);
        return v37;
      }
    }

    else
    {
      v58 = v19;
      v60 = v8;
      v56 = -v13;
      v59 = v8;
      v61 = v7;
      v57 = -v11;
      if (sub_1003DAE94(&v58, 2, v55, v54))
      {
        sub_1003DB100(&v58, 2, v55, v54, &v56, &v52);
        v21 = 2048;
        *a4 = 2048;
        v22 = v52 >> 2;
        a4[1] = v52 >> 2;
        v23 = v53;
        goto LABEL_18;
      }
    }
  }

  return 0;
}

uint64_t sub_1003DAE94(_WORD *a1, int a2, __int16 *a3, __int16 *a4)
{
  if (a2 < 1)
  {
    return 1;
  }

  v29 = v4;
  v30 = v5;
  v9 = 0;
  v28 = 0;
  v10 = a2;
  v11 = a1;
  v12 = a1;
  while (2)
  {
    v27 = v11;
    if (v9)
    {
      v13 = v9;
      while (1)
      {
        v14 = a1[3 * v9 + v13] << 15;
        if (v9 >= 2)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            v18 = &a1[3 * v9];
            v19 = &a1[3 * v13];
            v14 -= 4 * v18[(v9 - v16 - 1)] * v19[(v9 - v16 - 1)];
            v17 -= 4 * v18[(v9 - v16 - 2)] * v19[(v9 - v16 - 2)];
            v16 += 2;
          }

          while ((v9 & 0xFFFFFFFE) != v16);
          v14 += v17;
          LOWORD(v15) = v9 & 1;
          if ((v9 & 0xFFFFFFFE) == v9)
          {
            goto LABEL_13;
          }
        }

        else
        {
          LOWORD(v15) = v9;
        }

        do
        {
          v20 = v15 - 1;
          v15 = (v15 - 1);
          v14 -= 4 * a1[3 * v9 + v20] * a1[3 * v13 + v20];
        }

        while (v15 > 0);
LABEL_13:
        if (v9 == v13)
        {
          if (v14 < 1)
          {
            return 0;
          }

          v21 = sub_1003DC6F0(v14, &v28);
          a3[v9] = HIWORD(v21);
          a4[v9] = v21 >> 1;
          if (++v13 == v10)
          {
            goto LABEL_3;
          }
        }

        else
        {
          a1[3 * v13++ + v9] = 2 * (WORD1(v14) * a3[v9] + ((((v14 >> 1) & 0x7FFE) * a3[v9]) >> 15) + (((v14 >> 16) * a4[v9]) >> 15));
          if (v13 == v10)
          {
            goto LABEL_3;
          }
        }
      }
    }

    for (i = 0; i != v10; ++i)
    {
      while (1)
      {
        v23 = v12[i];
        v24 = v23 << 15;
        if (!i)
        {
          break;
        }

        *v11 = 2 * ((v23 >> 1) * *a3 + ((((v24 >> 1) & 0x4000) * *a3) >> 15) + (((v23 >> 1) * *a4) >> 15));
        v11 += 3;
        if (v10 == ++i)
        {
          goto LABEL_3;
        }
      }

      if (v23 < 1)
      {
        return 0;
      }

      v25 = sub_1003DC6F0(v24, &v28);
      *a3 = HIWORD(v25);
      *a4 = v25 >> 1;
      v11 += 3;
    }

LABEL_3:
    ++v9;
    v12 += 3;
    v11 = v27 + 1;
    if (v9 != v10)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_1003DB100(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 - 1;
  if (a2 >= 1)
  {
    v7 = 0;
    while (!v7)
    {
      v8 = 0;
LABEL_4:
      v9 = (*(a5 + 2 * v7) << 15) - v8;
      *(a6 + 2 * v7) = 2 * (HIWORD(v9) * *(a3 + 2 * v7) + (((v9 >> 16) * *(a4 + 2 * v7)) >> 15) + ((((v9 >> 1) & 0x7FFE) * *(a3 + 2 * v7)) >> 15));
      if (++v7 == a2)
      {
        goto LABEL_13;
      }
    }

    if (v7 > 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      LOWORD(v11) = v7 - (v7 & 0xFFFE);
      do
      {
        v15 = result + 6 * v7;
        v13 += *(a6 + 2 * (v7 - v12 - 1)) * *(v15 + 2 * (v7 - v12 - 1));
        v14 += *(a6 + 2 * (v7 - v12 - 2)) * *(v15 + 2 * (v7 - v12 - 2));
        v12 += 2;
      }

      while ((v7 & 0xFFFFFFFE) != v12);
      v10 = v14 + v13;
      if ((v7 & 0xFFFFFFFE) == v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
      LOWORD(v11) = v7;
    }

    do
    {
      v16 = v11 - 1;
      v11 = (v11 - 1);
      v10 += *(a6 + 2 * v16) * *(result + 6 * v7 + 2 * v16);
    }

    while (v11 > 0);
LABEL_12:
    v8 = 4 * v10;
    goto LABEL_4;
  }

LABEL_13:
  if (((a2 - 1) & 0x8000) == 0)
  {
    v17 = 0;
    v18 = v6;
    v19 = result + 2 * v6;
    v20 = v18;
    v21 = v19 + 6;
    v22 = -1;
    v23 = a2;
    do
    {
      v25 = *(a6 + 2 * v20) << 15;
      if (a2 > v23)
      {
        v26 = v23;
        if (v17 == 1)
        {
          goto LABEL_21;
        }

        v27 = 0;
        v28 = (v22 + 1) & 0x1FFFE;
        v29 = (v21 + 6 * v23);
        v30 = (a6 + 2 + 2 * v23);
        v31 = (v17 - 1) + 1;
        v26 = (v31 & 0x1FFFE) + v23;
        do
        {
          v25 -= 4 * *(v29 - 3) * *(v30 - 1);
          v27 -= 4 * *v29 * *v30;
          v29 += 6;
          v30 += 2;
          v28 -= 2;
        }

        while (v28);
        v25 += v27;
        if (v31 != (v31 & 0x1FFFE))
        {
LABEL_21:
          v32 = (a6 + 2 * v26);
          v33 = (v19 + 6 * v26);
          v34 = v26 + 1;
          do
          {
            v36 = *v33;
            v33 += 3;
            v35 = v36;
            v37 = *v32++;
            v25 -= 4 * v35 * v37;
            v38 = v34++;
          }

          while (v38 != a2);
        }
      }

      result = *(a3 + 2 * v20);
      *(a6 + 2 * v20) = 2 * (HIWORD(v25) * result + ((((v25 >> 1) & 0x7FFE) * result) >> 15) + (((v25 >> 16) * *(a4 + 2 * v20)) >> 15));
      --v23;
      ++v17;
      ++v22;
      v21 -= 2;
      v19 -= 2;
    }

    while (v20-- > 0);
  }

  return result;
}

uint64_t sub_1003DB360(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, __int16 a6)
{
  *a1 = a2;
  *(a1 + 400) = a3;
  result = sub_1003DB3A8(a1, a5, a6, 1);
  *(a1 + 396) = 0;
  *(a1 + 398) = a4;
  *(a1 + 504) = 0;
  return result;
}

uint64_t sub_1003DB3A8(uint64_t result, uint64_t a2, __int16 a3, int a4)
{
  v5 = result;
  if (a4)
  {
    *(result + 8) = 2147450879;
    *(result + 12) = 0x7FFF;
    *(result + 14) = 2147450879;
    *(result + 18) = 0x7FFF;
    *(result + 20) = 2147450879;
    *(result + 24) = 0x7FFF;
    *(result + 26) = 2147450879;
    *(result + 30) = 0x7FFF;
    *(result + 36) = 0x7FFF;
    *(result + 32) = 2147450879;
    *(result + 42) = 0x7FFF;
    *(result + 38) = 2147450879;
    *(result + 48) = 0x7FFF;
    *(result + 44) = 2147450879;
    *(result + 54) = 0x7FFF;
    *(result + 50) = 2147450879;
    *(result + 60) = 0x7FFF;
    *(result + 56) = 2147450879;
    *(result + 66) = 0x7FFF;
    *(result + 62) = 2147450879;
    *(result + 72) = 0x7FFF;
    *(result + 68) = 2147450879;
    *(result + 78) = 0x7FFF;
    *(result + 74) = 2147450879;
    *(result + 84) = 0x7FFF;
    *(result + 80) = 2147450879;
    *(result + 90) = 0x7FFF;
    *(result + 86) = 2147450879;
    *(result + 96) = 0x7FFF;
    *(result + 92) = 2147450879;
    *(result + 102) = 0x7FFF;
    *(result + 98) = 2147450879;
    *(result + 108) = 0x7FFF;
    *(result + 104) = 2147450879;
    *(result + 114) = 0x7FFF;
    *(result + 110) = 2147450879;
    *(result + 120) = 0x7FFF;
    *(result + 116) = 2147450879;
    *(result + 126) = 0x7FFF;
    *(result + 122) = 2147450879;
    *(result + 132) = 0x7FFF;
    *(result + 128) = 2147450879;
    *(result + 138) = 0x7FFF;
    *(result + 134) = 2147450879;
    *(result + 144) = 0x7FFF;
    *(result + 140) = 2147450879;
    *(result + 150) = 0x7FFF;
    *(result + 146) = 2147450879;
    *(result + 156) = 0x7FFF;
    *(result + 152) = 2147450879;
    *(result + 162) = 0x7FFF;
    *(result + 158) = 2147450879;
    *(result + 168) = 0x7FFF;
    *(result + 164) = 2147450879;
    *(result + 174) = 0x7FFF;
    *(result + 170) = 2147450879;
    *(result + 180) = 0x7FFF;
    *(result + 176) = 2147450879;
    *(result + 186) = 0x7FFF;
    *(result + 182) = 2147450879;
    *(result + 192) = 0x7FFF;
    *(result + 188) = 2147450879;
    *(result + 198) = 0x7FFF;
    *(result + 194) = 2147450879;
    *(result + 204) = 0x7FFF;
    *(result + 200) = 2147450879;
    *(result + 210) = 0x7FFF;
    *(result + 206) = 2147450879;
    *(result + 216) = 0x7FFF;
    *(result + 212) = 2147450879;
    *(result + 222) = 0x7FFF;
    *(result + 218) = 2147450879;
    *(result + 228) = 0x7FFF;
    *(result + 224) = 2147450879;
    *(result + 234) = 0x7FFF;
    *(result + 230) = 2147450879;
    *(result + 240) = 0x7FFF;
    *(result + 236) = 2147450879;
    *(result + 246) = 0x7FFF;
    *(result + 242) = 2147450879;
    *(result + 252) = 0x7FFF;
    *(result + 248) = 2147450879;
    *(result + 258) = 0x7FFF;
    *(result + 254) = 2147450879;
    *(result + 264) = 0x7FFF;
    *(result + 260) = 2147450879;
    *(result + 270) = 0x7FFF;
    *(result + 266) = 2147450879;
    *(result + 276) = 0x7FFF;
    *(result + 272) = 2147450879;
    *(result + 282) = 0x7FFF;
    *(result + 278) = 2147450879;
    *(result + 288) = 0x7FFF;
    *(result + 284) = 2147450879;
    *(result + 294) = 0x7FFF;
    *(result + 290) = 2147450879;
    *(result + 300) = 0x7FFF;
    *(result + 296) = 2147450879;
    *(result + 412) = 0x7FFF;
    *(result + 408) = 2147450879;
    *(result + 306) = 0x7FFF;
    *(result + 302) = 2147450879;
    *(result + 418) = 0x7FFF;
    *(result + 414) = 2147450879;
    *(result + 312) = 0x7FFF;
    *(result + 308) = 2147450879;
    *(result + 424) = 0x7FFF;
    *(result + 420) = 2147450879;
    *(result + 318) = 0x7FFF;
    *(result + 314) = 2147450879;
    *(result + 430) = 0x7FFF;
    *(result + 426) = 2147450879;
    *(result + 324) = 0x7FFF;
    *(result + 320) = 2147450879;
    *(result + 436) = 0x7FFF;
    *(result + 432) = 2147450879;
    *(result + 330) = 0x7FFF;
    *(result + 326) = 2147450879;
    *(result + 442) = 0x7FFF;
    *(result + 438) = 2147450879;
    *(result + 336) = 0x7FFF;
    *(result + 332) = 2147450879;
    *(result + 448) = 0x7FFF;
    *(result + 444) = 2147450879;
    *(result + 342) = 0x7FFF;
    *(result + 338) = 2147450879;
    *(result + 454) = 0x7FFF;
    *(result + 450) = 2147450879;
    *(result + 348) = 0x7FFF;
    *(result + 344) = 2147450879;
    *(result + 460) = 0x7FFF;
    *(result + 456) = 2147450879;
    *(result + 354) = 0x7FFF;
    *(result + 350) = 2147450879;
    *(result + 466) = 0x7FFF;
    *(result + 462) = 2147450879;
    *(result + 360) = 0x7FFF;
    *(result + 356) = 2147450879;
    *(result + 472) = 0x7FFF;
    *(result + 468) = 2147450879;
    *(result + 366) = 0x7FFF;
    *(result + 362) = 2147450879;
    *(result + 478) = 0x7FFF;
    *(result + 474) = 2147450879;
    *(result + 372) = 0x7FFF;
    *(result + 368) = 2147450879;
    *(result + 484) = 0x7FFF;
    *(result + 480) = 2147450879;
    *(result + 378) = 0x7FFF;
    *(result + 374) = 2147450879;
    *(result + 490) = 0x7FFF;
    *(result + 486) = 2147450879;
    *(result + 384) = 0x7FFF;
    *(result + 380) = 2147450879;
    *(result + 496) = 0x7FFF;
    *(result + 492) = 2147450879;
    *(result + 390) = 0x7FFF;
    *(result + 386) = 2147450879;
    *(result + 502) = 0x7FFF;
    *(result + 498) = 2147450879;
  }

  v6 = a3;
  if (a3 <= 0)
  {
    *(result + 392) = 0;
    *(result + 394) = 0;
  }

  else
  {
    *(result + 392) = 1;
    result = sub_1003DC798(a2, 16, 1, result + 296);
    if (v6 <= 3)
    {
      v7 = a3 - 1;
    }

    else
    {
      v7 = 2;
    }

    *(v5 + 394) = v7;
  }

  return result;
}

uint64_t sub_1003DB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, __int16 a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11)
{
  v88 = 0;
  if (*(a4 + 199) > 1u || *(a4 + 197) > 2u)
  {
    LOWORD(v12) = 0;
    return v12;
  }

  v90 = 0;
  v89 = 0;
  if (((a6 - 1) & 0x8000) == 0)
  {
    v12 = 0;
    v86 = (a4 + 37);
    v16 = (a6 - 1);
    v84 = (a4 + 43);
    v85 = a4 + 300;
    while (1)
    {
      v18 = *(a4 + 199);
      LOWORD(v19) = *(a4 + 197);
      if (*a4)
      {
        v20 = *(*a4 + 8 * v18);
      }

      else
      {
        v20 = &unk_101C75A70 + 90 * *(a4 + 199);
      }

      v21 = &v20[30 * *(a4 + 197)];
      if (!a7)
      {
        LODWORD(v18) = 0;
      }

      if (!a8)
      {
        LOWORD(v19) = 0;
      }

      v22 = a4[50];
      if (v22)
      {
        v23 = *(v22 + 8 * v18);
        v19 = v19;
      }

      else
      {
        v19 = v19;
        v23 = &unk_101C75B24 + 90 * v18;
      }

      v24 = &v23[30 * v19];
      v25 = *v21;
      v26 = *(v21 + 2);
      *v87 = *v24;
      *&v87[7] = *(v24 + 14);
      v87[0] = v25;
      v87[2] = v26;
      v27 = sub_1003DBD84((a5 + 6 * v16), v87, a4 + 4, a4 + 204, &v89, a4 + 252, &v88, 0, 0);
      LODWORD(v28) = *(a4 + 199);
      if (v27 != 2)
      {
        goto LABEL_26;
      }

      if (v28 > 0)
      {
        break;
      }

      v33 = *(v21 + 12);
      if (v33 < 0 || *(a4 + 252) < v33)
      {
        goto LABEL_26;
      }

      *(a4 + 199) = v28 + 1;
      if ((v28 & 0x80000000) == 0)
      {
        LOWORD(v28) = 1;
        v29 = *(v21 + 13);
        if (v29 < 0)
        {
LABEL_26:
          v30 = *(a4 + 197);
          v31 = *a4;
          v28 = v28;
          if (*a4)
          {
            goto LABEL_27;
          }

          goto LABEL_22;
        }

LABEL_20:
        if (*(a4 + 252) <= v29)
        {
          LOWORD(v28) = v28 - 1;
          *(a4 + 199) = v28;
          v30 = *(a4 + 197);
          v31 = *a4;
          v28 = v28;
          if (*a4)
          {
            goto LABEL_27;
          }

          goto LABEL_22;
        }

        goto LABEL_26;
      }

      v30 = *(a4 + 197);
      v31 = *a4;
      v28 = (v28 + 1);
      if (*a4)
      {
LABEL_27:
        v32 = (*(v31 + 8 * v28) + 30 * v30);
        if (v88 != 1)
        {
          goto LABEL_6;
        }

        goto LABEL_28;
      }

LABEL_22:
      v32 = (&unk_101C75A70 + 90 * v28 + 30 * v30);
      if (v88 != 1)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (sub_1003DBD84((a5 + 6 * v16), v32, a4 + 4, a4 + 100, &v89, a4 + 198, &v88, 1, a11) != 2)
      {
        goto LABEL_6;
      }

      v34 = *(a4 + 196);
      if (v34 < 16)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = 16;
      }

      *(a4 + 196) = v35;
      sub_1003DC798(&v89, 16, 1, v86);
      v36 = *(a4 + 196);
      if (v36 < 2 || (v37 = v32[11], v37 <= 1))
      {
        *a9 = v89;
        *(a9 + 4) = v90;
        ++v12;
        if (*(a4 + 196) >= v32[10])
        {
          goto LABEL_73;
        }

        goto LABEL_6;
      }

      v90 = 0;
      v89 = 0;
      if (v36 >= v37)
      {
        v38 = sub_1003DA344(1, v37);
        v40 = v89;
        v41 = HIWORD(v89);
        v42 = v90;
        v44 = v32[11];
        if (v44 < 1)
        {
          goto LABEL_72;
        }

        if (v44 < 4)
        {
          v45 = 0;
LABEL_69:
          v79 = (v85 + 6 * v45);
          do
          {
            v40 += *(v79 - 2);
            v41 += *(v79 - 1);
            v80 = *v79;
            v79 += 3;
            v42 += v80;
            ++v45;
          }

          while (v45 < v44);
          goto LABEL_71;
        }

        if (v44 >= 0x10)
        {
          v45 = v44 & 0x7FF0;
          v64 = 0uLL;
          v65 = v89;
          v66 = HIWORD(v89);
          v67 = v90;
          v68 = v45;
          v69 = v84;
          v70 = 0uLL;
          v71 = 0uLL;
          do
          {
            v72 = v69 - 24;
            v94 = vld3q_s16(v72);
            v96 = vld3q_s16(v69);
            v65 = vaddq_s16(v65, v94.val[0]);
            v64 = vaddq_s16(v64, v96.val[0]);
            v66 = vaddq_s16(v66, v94.val[1]);
            v70 = vaddq_s16(v70, v96.val[1]);
            v67 = vaddq_s16(v67, v94.val[2]);
            v71 = vaddq_s16(v71, v96.val[2]);
            v69 += 48;
            v68 -= 16;
          }

          while (v68);
          v40 = vaddvq_s16(vaddq_s16(v64, v65));
          v41 = vaddvq_s16(vaddq_s16(v70, v66));
          v42 = vaddvq_s16(vaddq_s16(v71, v67));
          if (v45 == v44)
          {
            goto LABEL_71;
          }

          if ((v44 & 0xC) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v45 = 0;
        }

        v73 = v45;
        v74 = v40;
        v75 = v41;
        v45 = v44 & 0x7FFC;
        v76 = v42;
        v77 = (v86 + 6 * v73);
        v78 = v73 - v45;
        do
        {
          v92 = vld3_s16(v77);
          v77 += 12;
          v74 = vadd_s16(v74, v92.val[0]);
          v75 = vadd_s16(v75, v92.val[1]);
          v76 = vadd_s16(v76, v92.val[2]);
          v78 += 4;
        }

        while (v78);
        v40 = vaddv_s16(v74);
        v41 = vaddv_s16(v75);
        v42 = vaddv_s16(v76);
        if (v45 == v44)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      v38 = sub_1003DA344(1, v36);
      v39 = *(a4 + 196);
      v40 = v89;
      v41 = HIWORD(v89);
      v42 = v90;
      if (v39 < 1)
      {
        goto LABEL_72;
      }

      if (v39 >= 4)
      {
        if (v39 < 0x10)
        {
          v43 = 0;
LABEL_56:
          v55 = v43;
          v56 = v40;
          v57 = v41;
          v43 = v39 & 0x7FFC;
          v58 = v42;
          v59 = (v86 + 6 * v55);
          v60 = v55 - v43;
          do
          {
            v91 = vld3_s16(v59);
            v59 += 12;
            v56 = vadd_s16(v56, v91.val[0]);
            v57 = vadd_s16(v57, v91.val[1]);
            v58 = vadd_s16(v58, v91.val[2]);
            v60 += 4;
          }

          while (v60);
          v40 = vaddv_s16(v56);
          v41 = vaddv_s16(v57);
          v42 = vaddv_s16(v58);
          if (v43 == v39)
          {
            goto LABEL_71;
          }

          goto LABEL_59;
        }

        v43 = v39 & 0x7FF0;
        v46 = 0uLL;
        v47 = v89;
        v48 = HIWORD(v89);
        v49 = v90;
        v50 = v43;
        v51 = v84;
        v52 = 0uLL;
        v53 = 0uLL;
        do
        {
          v54 = v51 - 24;
          v93 = vld3q_s16(v54);
          v95 = vld3q_s16(v51);
          v47 = vaddq_s16(v47, v93.val[0]);
          v46 = vaddq_s16(v46, v95.val[0]);
          v48 = vaddq_s16(v48, v93.val[1]);
          v52 = vaddq_s16(v52, v95.val[1]);
          v49 = vaddq_s16(v49, v93.val[2]);
          v53 = vaddq_s16(v53, v95.val[2]);
          v51 += 48;
          v50 -= 16;
        }

        while (v50);
        v40 = vaddvq_s16(vaddq_s16(v46, v47));
        v41 = vaddvq_s16(vaddq_s16(v52, v48));
        v42 = vaddvq_s16(vaddq_s16(v53, v49));
        if (v43 == v39)
        {
          goto LABEL_71;
        }

        if ((v39 & 0xC) != 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v43 = 0;
      }

LABEL_59:
      v61 = (v85 + 6 * v43);
      v62 = v39 - v43;
      do
      {
        v40 += *(v61 - 2);
        v41 += *(v61 - 1);
        v63 = *v61;
        v61 += 3;
        v42 += v63;
        --v62;
      }

      while (v62);
LABEL_71:
      LOWORD(v89) = v40;
      HIWORD(v89) = v41;
      v90 = v42;
LABEL_72:
      *a9 = (v40 * v38) >> 15;
      *(a9 + 2) = (v41 * v38) >> 15;
      *(a9 + 4) = (v42 * v38) >> 15;
      ++v12;
      if (*(a4 + 196) >= v32[10])
      {
LABEL_73:
        v81 = *(a4 + 197);
        if (v81 <= 1)
        {
          *(a4 + 196) = 0;
          *(a4 + 197) = v81 + 1;
        }
      }

LABEL_6:
      if (v16-- <= 0)
      {
        goto LABEL_76;
      }
    }

    v29 = *(v21 + 13);
    if (v29 < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  LOWORD(v12) = 0;
LABEL_76:
  v82 = *(a4 + 197);
  if (*(a4 + 196))
  {
    ++v82;
  }

  *a10 = v82;
  return v12;
}

uint64_t sub_1003DBD84(_WORD *a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6, _WORD *a7, int a8, uint64_t a9)
{
  if (*a2 < 1)
  {
    return 0;
  }

  v9 = a6;
  v11 = a4;
  *a7 = 0;
  if (a8)
  {
    v14 = a2 + 14;
    if (a2[14])
    {
      if (a8 != 1)
      {
        v15 = a6;
        v16 = a4;
        v17 = a1;
        v87 = a7;
        if (a2[2] <= 0)
        {
          goto LABEL_20;
        }

        return 0;
      }

LABEL_11:
      v86 = a2 + 14;
      goto LABEL_23;
    }

    if (a8 == 1)
    {
      goto LABEL_11;
    }

    v15 = a6;
    v16 = a4;
    v17 = a1;
    v87 = a7;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_13:
    v22 = a2[2];
    if (v19 < v22 || v20 < v22 || v21 < v22)
    {
      return 0;
    }

    goto LABEL_20;
  }

  v15 = a6;
  v16 = a4;
  v87 = a7;
  v19 = sub_1003DA4EC((*a3 - *a1));
  v20 = sub_1003DA4EC((a3[1] - a1[1]));
  v17 = a1;
  v21 = sub_1003DA4EC((a3[2] - a1[2]));
  a8 = 0;
  v14 = a2 + 14;
  if (!a2[14])
  {
    goto LABEL_13;
  }

  if (v20 + v19 + v21 < a2[2])
  {
    return 0;
  }

LABEL_20:
  v86 = v14;
  if (!a8)
  {
    sub_1003DC798(v17, *a2, 1, a3);
    *v87 = 1;
  }

  v11 = v16;
  v9 = v15;
LABEL_23:
  v25 = *a2;
  v26 = &a3[3 * *a2];
  if (*(v26 - 3) == 0x7FFF && *(v26 - 2) == 0x7FFF && *(v26 - 1) == 0x7FFF)
  {
    return 0;
  }

  v96 = 0;
  v95 = 0;
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  sub_1003DC824(a3, v25, &v95, &v93, &v91, &v89);
  v28 = *a2;
  v29 = *a2;
  if (v28 >= 1)
  {
    v30 = v91;
    v31 = HIWORD(v91);
    v32 = v92;
    if (v29 >= 8)
    {
      v33 = v28 & 0x7FF8;
      v34 = vdupq_n_s16(v91);
      v35 = vdupq_n_s16(HIWORD(v91));
      v36 = vdupq_n_s16(v92);
      v37 = v33;
      v38 = a3;
      do
      {
        v111 = vld3q_s16(v38);
        v113.val[0] = vsubq_s16(v111.val[0], v34);
        v113.val[1] = vsubq_s16(v111.val[1], v35);
        v113.val[2] = vsubq_s16(v111.val[2], v36);
        vst3q_s16(v38, v113);
        v38 += 24;
        v37 -= 8;
      }

      while (v37);
      if (v33 == v28)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v33 = 0;
    }

    v39 = v28 - v33;
    v40 = &a3[3 * v33 + 2];
    do
    {
      *(v40 - 2) -= v30;
      *(v40 - 1) -= v31;
      *v40 -= v32;
      v40 += 3;
      --v39;
    }

    while (v39);
LABEL_35:
    v29 = *a2;
  }

  v41 = v29;
  v42 = sub_1003DA508(a3, v29, &v107, &v105);
  v109 = v107;
  v110 = v108;
  if (v42 == 4 && sub_1003DAE94(&v109, 3, &v101, &v99))
  {
    v88 = v11;
    sub_1003DB100(&v109, 3, &v101, &v99, &v105, &v103);
    v43 = v103 >> 2;
    *a5 = v43;
    v44 = SHIWORD(v103) >> 2;
    a5[1] = v44;
    v45 = v104 >> 2;
    a5[2] = v104 >> 2;
    v46 = (*a3 - v43) * (*a3 - v43) + (a3[1] - v44) * (a3[1] - v44) + (a3[2] - v45) * (a3[2] - v45);
    v47 = sub_1003DC4E4(v46);
    v48 = v47;
    if (v29 < 2)
    {
      v51 = v47;
    }

    else
    {
      v49 = v29 - 1;
      v50 = a3 + 5;
      v51 = v47;
      do
      {
        v52 = *(v50 - 2) - *a5;
        v53 = *(v50 - 1) - a5[1];
        v54 = v52 * v52 + v53 * v53;
        v55 = *v50 - a5[2];
        v56 = v54 + v55 * v55;
        v46 += v56;
        v57 = sub_1003DC4E4(v56);
        if (v57 > v51)
        {
          v51 = v57;
        }

        if (v57 < v48)
        {
          v48 = v57;
        }

        v50 += 3;
        --v49;
      }

      while (v49);
    }

    v59 = 1;
    v61 = sub_1003DA344(1, v41);
    v62 = sub_1003DC4E4((((v61 >> 3) & 1) + (v61 >> 4)) * (((v46 >> 6) & 1) + (v46 >> 7)));
    v60 = 0;
    *v9 = ((v62 >> 1) & 1) + (v62 >> 2);
    v58 = v51 - v48;
    v11 = v88;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    a5[2] = 0;
    *a5 = 0;
    v60 = 1;
    *v9 = 0;
  }

  v63 = HIWORD(v91);
  v64 = v92;
  *a5 += v91;
  a5[1] += v63;
  a5[2] += v64;
  sub_1003DC798(a5, a2[1], 1, v11);
  if (v60)
  {
    goto LABEL_84;
  }

  v65 = *v9;
  if (a9)
  {
    *(a9 + 12) = *(a2 + 7);
    *(a9 + 16) = a2[9];
    *(a9 + 18) = v58;
  }

  if (!v59 || a2[8] >= v65 || a2[7] <= v65 || a2[9] * v65 <= v58 << 11)
  {
    goto LABEL_84;
  }

  v106 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  *&v109 = 0;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  sub_1003DC824(v11, a2[1], &v101, &v99, &v97, &v103);
  if (a9)
  {
    *(a9 + 2) = a2[1];
    *(a9 + 20) = v103;
    *(a9 + 24) = v104;
    v66 = a2[5];
    *(a9 + 8) = v66;
  }

  else
  {
    v66 = a2[5];
  }

  if (v103 >= v66 || SHIWORD(v103) >= v66 || v104 >= v66)
  {
    if (*v86 < 2)
    {
      goto LABEL_84;
    }

    v70 = v66;
    v71 = v66 > v103;
    v72 = v104 < v70 || v71;
    if (v104 >= v70)
    {
      v71 = 0;
    }

    v73 = SHIWORD(v103) < v70 ? v72 : 0;
    if ((v73 & 1) == 0 && !v71)
    {
LABEL_84:
      result = 0;
      goto LABEL_85;
    }
  }

  sub_1003DC824(a3, *a2, &v101, &v99, &v97, &v105);
  v67 = v105;
  if (a9)
  {
    *a9 = *a2;
    *(a9 + 26) = v105;
    *(a9 + 30) = v106;
    *(a9 + 6) = a2[4];
  }

  result = 0;
  v68 = a2[3];
  if (v67 > v68 && SHIWORD(v105) > v68 && v106 > v68)
  {
    if ((HIWORD(v105) + v67 + v106) >= a2[4])
    {
      v69 = sub_1003DAA68(a3, *a2, &v107, &v109, &v102 + 1);
      if (a9)
      {
        *(a9 + 10) = a2[6];
        *(a9 + 32) = HIWORD(v102);
      }

      if (v69 && SHIWORD(v102) > a2[6])
      {
        result = 2;
        goto LABEL_85;
      }
    }

    goto LABEL_84;
  }

LABEL_85:
  v74 = *a2;
  if (v74 < 1)
  {
    return result;
  }

  v75 = v91;
  v76 = HIWORD(v91);
  v77 = v92;
  if (v74 < 8)
  {
    v78 = 0;
LABEL_91:
    v84 = v74 - v78;
    v85 = &a3[3 * v78 + 2];
    do
    {
      *(v85 - 2) += v75;
      *(v85 - 1) += v76;
      *v85 += v77;
      v85 += 3;
      --v84;
    }

    while (v84);
    return result;
  }

  v78 = v74 & 0x7FF8;
  v79 = vdupq_n_s16(v91);
  v80 = vdupq_n_s16(HIWORD(v91));
  v81 = vdupq_n_s16(v92);
  v82 = v78;
  v83 = a3;
  do
  {
    v112 = vld3q_s16(v83);
    v114.val[0] = vaddq_s16(v112.val[0], v79);
    v114.val[1] = vaddq_s16(v112.val[1], v80);
    v114.val[2] = vaddq_s16(v112.val[2], v81);
    vst3q_s16(v83, v114);
    v83 += 24;
    v82 -= 8;
  }

  while (v82);
  if (v78 != v74)
  {
    goto LABEL_91;
  }

  return result;
}

uint64_t sub_1003DC4E4(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = a1 >> 30 != 0;
  v2 = ((a1 >> 28) & 0x3FFFFFFFFLL) + 4 * ((a1 >> 30) - v1);
  v3 = 4 * v1 >= v2;
  v4 = 4 * v1 < v2 && ~(4 * v1);
  v5 = v4 + v2;
  if (v3)
  {
    v6 = 8 * v1;
  }

  else
  {
    v6 = (8 * v1) | 4;
  }

  v7 = v6 >> 2;
  v8 = ((a1 >> 26) & 0x3FFFFFFFFLL) + 4 * v5;
  v9 = v6 >= v8;
  if (v6 < v8)
  {
    v10 = ~v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 + v8;
  v12 = 2 * v6;
  if (!v9)
  {
    v12 = (8 * (v7 & 3)) | 4;
  }

  v13 = ((a1 >> 24) & 0x3FFFFFFFFLL) + 4 * v11;
  v14 = v12 >= v13;
  if (v12 < v13)
  {
    v15 = ~v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 + v13;
  v17 = 2 * v12;
  if (!v14)
  {
    v17 |= 4uLL;
  }

  v18 = ((a1 >> 22) & 0x3FFFFFFFFLL) + 4 * v16;
  v19 = v17 >= v18;
  if (v17 < v18)
  {
    v20 = ~v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 + v18;
  v22 = 2 * v17;
  if (!v19)
  {
    v22 |= 4uLL;
  }

  v23 = ((a1 >> 20) & 0x3FFFFFFFFLL) + 4 * v21;
  v24 = v22 >= v23;
  if (v22 < v23)
  {
    v25 = ~v22;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 + v23;
  v27 = 2 * v22;
  if (!v24)
  {
    v27 |= 4uLL;
  }

  v28 = ((a1 >> 18) & 0x3FFFFFFFFLL) + 4 * v26;
  v29 = v27 >= v28;
  if (v27 < v28)
  {
    v30 = ~v27;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30 + v28;
  v32 = 2 * v27;
  if (!v29)
  {
    v32 |= 4uLL;
  }

  v33 = ((a1 >> 16) & 0x3FFFFFFFFLL) + 4 * v31;
  v34 = v32 >= v33;
  if (v32 < v33)
  {
    v35 = ~v32;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35 + v33;
  v37 = 2 * v32;
  if (!v34)
  {
    v37 |= 4uLL;
  }

  v38 = ((a1 >> 14) & 0x3FFFFFFFFLL) + 4 * v36;
  v39 = v37 >= v38;
  if (v37 < v38)
  {
    v40 = ~v37;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 + v38;
  v42 = 2 * v37;
  if (!v39)
  {
    v42 |= 4uLL;
  }

  v43 = ((a1 >> 12) & 0x3FFFFFFFFLL) + 4 * v41;
  v44 = v42 >= v43;
  if (v42 < v43)
  {
    v45 = ~v42;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = 2 * v42;
  if (!v44)
  {
    v47 |= 4uLL;
  }

  v48 = ((a1 >> 10) & 0x3FFFFFFFFLL) + 4 * v46;
  v49 = v47 >= v48;
  if (v47 < v48)
  {
    v50 = ~v47;
  }

  else
  {
    v50 = 0;
  }

  v51 = v50 + v48;
  v52 = 2 * v47;
  if (!v49)
  {
    v52 |= 4uLL;
  }

  v53 = ((a1 >> 8) & 0x3FFFFFFFFLL) + 4 * v51;
  v54 = v52 >= v53;
  if (v52 < v53)
  {
    v55 = ~v52;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = 2 * v52;
  if (!v54)
  {
    v57 |= 4uLL;
  }

  v58 = ((a1 >> 6) & 0x3FFFFFFFFLL) + 4 * v56;
  v59 = v57 >= v58;
  if (v57 < v58)
  {
    v60 = ~v57;
  }

  else
  {
    v60 = 0;
  }

  v61 = v60 + v58;
  v62 = 2 * v57;
  if (!v59)
  {
    v62 |= 4uLL;
  }

  v63 = ((a1 >> 4) & 0x3FFFFFFFFLL) + 4 * v61;
  v64 = v62 >= v63;
  if (v62 < v63)
  {
    v65 = ~v62;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = 2 * v62;
  if (!v64)
  {
    v67 |= 4uLL;
  }

  v68 = ((a1 >> 2) & 0x3FFFFFFFFLL) + 4 * v66;
  v69 = v67 >= v68;
  if (v67 < v68)
  {
    v70 = ~v67;
  }

  else
  {
    v70 = 0;
  }

  v71 = v70 + v68;
  v72 = 2 * v67;
  if (!v69)
  {
    v72 |= 4uLL;
  }

  return ((v72 >> 1) | (v72 < (a1 & 0x3FFFFFFFFLL) + 4 * v71));
}

uint64_t sub_1003DC6F0(int64_t a1, _WORD *a2)
{
  if (a1 < 1)
  {
    result = 0x40000000;
    *a2 = 0;
  }

  else
  {
    v4 = sub_1003DA4A8(a1);
    v5 = a1 << v4 >> (((30 - v4) & 1) == 0);
    v6 = ((30 - v4) << 16 >> 17) + 1;
    v7 = (v5 >> 10) & 0x7FFF;
    v8 = (&unk_101C75B7E + 2 * (((v5 << 23) - 0x10000000000000) >> 48));
    result = ((*v8 << 16) - 2 * (*v8 - v8[1]) * v7) >> (((30 - v4) << 16 >> 17) + 1);
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1003DC798(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 >= 1 && a2 >= a3)
  {
    for (i = (a2 - 1); i >= a3; i = (i - 1))
    {
      v5 = a4 + 6 * i;
      v6 = (a4 + 6 * (i - a3));
      v7 = *v6;
      *(v5 + 4) = *(v6 + 2);
      *v5 = v7;
    }

    v8 = 6 * (a3 - 1);
    do
    {
      v9 = a4 + v8;
      v10 = *(result + v8);
      *(v9 + 4) = *(result + v8 + 4);
      *v9 = v10;
      v8 -= 6;
    }

    while (v8 != -6);
  }

  return result;
}

__int16 *sub_1003DC824(__int16 *result, int a2, __int16 *a3, __int16 *a4, _WORD *a5, _WORD *a6)
{
  v6 = *result;
  *a4 = *result;
  *a3 = v6;
  if (a2 > 1)
  {
    v7 = result + 3;
    v8 = a2 - 1;
    v9 = v8;
    while (1)
    {
      v10 = *v7;
      if (v10 < *a4)
      {
        *a4 = v10;
        LOWORD(v10) = *v7;
        v6 = *a3;
        if (*v7 > *a3)
        {
LABEL_8:
          *a3 = v10;
          v6 = v10;
        }
      }

      else if (v10 > v6)
      {
        goto LABEL_8;
      }

      v7 += 3;
      if (!--v9)
      {
        v22 = (*a4 >> 1) + (v6 >> 1);
        *a5 = (*a4 >> 1) + (v6 >> 1);
        v23 = *a3;
        if (*a3 & 1) != 0 || (v24 = *a4, (*a4))
        {
          *a5 = v22 + 1;
          v23 = *a3;
          v24 = *a4;
        }

        v25 = (v23 - v24);
        if (v25 >= 0x7FFF)
        {
          LOWORD(v25) = 0x7FFF;
        }

        *a6 = v25;
        v26 = result[1];
        a4[1] = v26;
        a3[1] = v26;
        v27 = result + 4;
        v28 = a2 - 1;
        while (2)
        {
          v29 = *v27;
          if (v29 < a4[1])
          {
            a4[1] = v29;
            LOWORD(v29) = *v27;
            v26 = a3[1];
            if (*v27 > v26)
            {
              goto LABEL_32;
            }
          }

          else if (v29 > v26)
          {
LABEL_32:
            a3[1] = v29;
            v26 = v29;
          }

          v27 += 3;
          if (--v28)
          {
            continue;
          }

          break;
        }

        v30 = (a4[1] >> 1) + (v26 >> 1);
        a5[1] = (a4[1] >> 1) + (v26 >> 1);
        v31 = a3[1];
        if (v31 & 1) != 0 || (v32 = a4[1], (v32))
        {
          a5[1] = v30 + 1;
          v31 = a3[1];
          v32 = a4[1];
        }

        v33 = (v31 - v32);
        if (v33 >= 0x7FFF)
        {
          LOWORD(v33) = 0x7FFF;
        }

        a6[1] = v33;
        v34 = result[2];
        a4[2] = v34;
        a3[2] = v34;
        v35 = result + 5;
        while (2)
        {
          v36 = *v35;
          if (v36 < a4[2])
          {
            a4[2] = v36;
            LOWORD(v36) = *v35;
            v34 = a3[2];
            if (*v35 > v34)
            {
              goto LABEL_44;
            }
          }

          else if (v36 > v34)
          {
LABEL_44:
            a3[2] = v36;
            v34 = v36;
          }

          v35 += 3;
          if (!--v8)
          {
            v20 = (a4[2] >> 1) + (v34 >> 1);
            a5[2] = v20;
            v21 = a3[2];
            if ((v21 & 1) == 0)
            {
              goto LABEL_46;
            }

LABEL_47:
            a5[2] = v20 + 1;
            LOWORD(v21) = a3[2];
            v37 = a4[2];
            goto LABEL_48;
          }

          continue;
        }
      }
    }
  }

  v11 = (*a4 >> 1) + (v6 >> 1);
  *a5 = (*a4 >> 1) + (v6 >> 1);
  v12 = *a3;
  if (*a3 & 1) != 0 || (v13 = *a4, (*a4))
  {
    *a5 = v11 + 1;
    v12 = *a3;
    v13 = *a4;
  }

  v14 = (v12 - v13);
  if (v14 >= 0x7FFF)
  {
    LOWORD(v14) = 0x7FFF;
  }

  *a6 = v14;
  v15 = result[1];
  a4[1] = v15;
  a3[1] = v15;
  v16 = (a4[1] >> 1) + (v15 >> 1);
  a5[1] = (a4[1] >> 1) + (v15 >> 1);
  v17 = a3[1];
  if (v17 & 1) != 0 || (v18 = a4[1], (v18))
  {
    a5[1] = v16 + 1;
    v17 = a3[1];
    v18 = a4[1];
  }

  v19 = (v17 - v18);
  if (v19 >= 0x7FFF)
  {
    LOWORD(v19) = 0x7FFF;
  }

  a6[1] = v19;
  LODWORD(v21) = result[2];
  a4[2] = v21;
  a3[2] = v21;
  v20 = (a4[2] >> 1) + (v21 >> 1);
  a5[2] = (a4[2] >> 1) + (v21 >> 1);
  LOWORD(v21) = a3[2];
  if (v21)
  {
    goto LABEL_47;
  }

LABEL_46:
  v37 = a4[2];
  if (v37)
  {
    goto LABEL_47;
  }

LABEL_48:
  v38 = (v21 - v37);
  if (v38 >= 0x7FFF)
  {
    LOWORD(v38) = 0x7FFF;
  }

  a6[2] = v38;
  return result;
}

uint64_t sub_1003DCB18(const char *a1, const char *a2, double a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "fwd");
  v11 = sub_1003DCC28(__str, "AFKEndpointInterface", a3);
  *a5 = v11;
  if (v11)
  {
    result = 0;
  }

  else
  {
    result = 5;
  }

  if (a6 && v11)
  {
    snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "rev");
    v13 = sub_1003DCC28(__str, "AFKEndpointInterface", a3);
    *a6 = v13;
    if (v13)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t sub_1003DCC28(const char *a1, char *name, double a3)
{
  v5 = IOServiceMatching(name);
  if (v5)
  {
    v6 = v5;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
    CFRelease(v6);
    if (MutableCopy)
    {
      v8 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(MutableCopy, @"IONameMatch", v8);
      }

      else
      {
        v9 = MutableCopy;
        MutableCopy = 0;
      }

      CFRelease(v9);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  *notification = 0;
  Current = CFRunLoopGetCurrent();
  v11 = IONotificationPortCreate(kIOMainPortDefault);
  if (v11)
  {
    v12 = v11;
    RunLoopSource = IONotificationPortGetRunLoopSource(v11);
    if (RunLoopSource)
    {
      v14 = RunLoopSource;
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
      if (IOServiceAddMatchingNotification(v12, "IOServiceFirstMatch", MutableCopy, sub_1003DCE54, notification, &notification[1]))
      {
        v15 = 0;
        notification[0] = 0;
      }

      else
      {
        v16 = IOIteratorNext(notification[1]);
        v15 = 0;
        notification[0] = v16;
        if (a3 != 0.0 && !v16)
        {
          if (a3 >= 0.0)
          {
            v17 = CFAbsoluteTimeGetCurrent();
            v15 = CFRunLoopTimerCreate(kCFAllocatorDefault, v17 + a3, 0.0, 0, 0, sub_1003DCEA4, 0);
            CFRunLoopAddTimer(Current, v15, kCFRunLoopDefaultMode);
          }

          else
          {
            v15 = 0;
          }

          CFRunLoopRun();
        }
      }

      CFRunLoopRemoveSource(Current, v14, kCFRunLoopDefaultMode);
      if (notification[1])
      {
        IOObjectRelease(notification[1]);
      }

      IONotificationPortDestroy(v12);
      if (v15)
      {
        CFRunLoopRemoveTimer(Current, v15, kCFRunLoopDefaultMode);
        CFRunLoopTimerInvalidate(v15);
        CFRelease(v15);
      }
    }

    else
    {
      IONotificationPortDestroy(v12);
    }
  }

  return notification[0];
}

void sub_1003DCE54(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

void sub_1003DCEA4()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

uint64_t sub_1003DCED8(const char *a1, const char *a2, void ***a3)
{
  v13 = 0;
  if (pthread_mutex_lock(&stru_1025D5358))
  {
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v8 = qword_102656130;
    if (qword_102656130)
    {
      v9 = 0;
      do
      {
        v9 += sub_1003DD258(v8, a1, a2);
        v8 = *(v8 + 224);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v7 = sub_1003DD20C(8 * v9 + 8, &v13);
    v6 = v13;
    if (v7)
    {
LABEL_9:
      sub_1003DD008(v6);
      v6 = 0;
    }

    else
    {
      v7 = qword_102656130;
      if (qword_102656130)
      {
        v11 = 0;
        do
        {
          if (v11 >= v9)
          {
            v7 = 3;
            goto LABEL_9;
          }

          if (sub_1003DD258(v7, a1, a2))
          {
            v12 = strdup(v7);
            if (!v12)
            {
              v7 = 4;
              goto LABEL_9;
            }

            v6[v11++] = v12;
          }

          v7 = *(v7 + 224);
        }

        while (v7);
      }
    }

    pthread_mutex_unlock(&stru_1025D5358);
  }

  *a3 = v6;
  return v7;
}

void sub_1003DD008(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = 1;
      do
      {
        free(v2);
        v2 = a1[v3++];
      }

      while (v2);
    }

    free(a1);
  }
}

char *sub_1003DD060(const char *a1)
{
  v7 = 0;
  v2 = sub_1003DCED8(a1, 0, &v7);
  v3 = 0;
  v4 = v7;
  if (!v2)
  {
    v5 = *v7;
    if (!*v7)
    {
      v5 = a1;
    }

    v3 = strdup(v5);
  }

  sub_1003DD008(v4);
  return v3;
}

uint64_t sub_1003DD0CC(const char *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  if (!pthread_mutex_lock(&stru_1025D5358))
  {
    v13 = qword_102656130;
    if (!qword_102656130)
    {
      goto LABEL_7;
    }

    while (strcmp(v13, a1) || strcmp((v13 + 128), a2))
    {
      v13 = *(v13 + 224);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v12 = (*(v13 + 192))(*(v13 + 200), a3, a4, a5);
    if (v12 == 5)
    {
LABEL_7:
      v17 = 0;
      if (a5)
      {
        v14 = &v17;
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_1003DCB18(a1, a2, a6, a3, &v17 + 1, v14);
      if (v15)
      {
        return v15;
      }

      *a4 = tb_endpoint_create_with_data();
      if (a5)
      {
        *a5 = tb_endpoint_create_with_data();
      }

      v12 = 0;
    }

    pthread_mutex_unlock(&stru_1025D5358);
    return v12;
  }

  return 6;
}

uint64_t sub_1003DD20C(size_t a1, void *a2)
{
  v4 = malloc_type_malloc(a1, 0xF83BD267uLL);
  *a2 = v4;
  if (!v4)
  {
    return 4;
  }

  bzero(v4, a1);
  return 0;
}

uint64_t sub_1003DD258(char *__s1, const char *a2, const char *a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v6 | v5;
  }

  v5 = strcmp(__s1, a2) == 0;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = strcmp(__s1 + 64, a3) == 0;
  return v6 | v5;
}

void sub_1003DD2F0(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101873CF0();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:catch-all location unavailable timer fired}", v6, 0x12u);
  }

  [*(a1 + 664) setNextFireDelay:1.79769313e308];
  if (*(a1 + 160) == 255)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Location unavailable timer fired,required granularity is none,ignoring", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101873FB0();
    }
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")])
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Location unavailable fired while sleeping", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101873ED4();
    }
  }

  else
  {
    v6[0] = 9;
    sub_100E6ED50(a1, v6, 1);
    v6[0] = 2;
    if (sub_10000608C(a1, v6, 1) || (v6[0] = 1, sub_10000608C(a1, v6, 1)) || (v6[0] = 0, sub_10000608C(a1, v6, 1)))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v5 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v6[0]) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Location unavailable timer fired, restart with fine granularity as client still wants location", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101873DF8();
      }

      LOBYTE(v6[0]) = 1;
      sub_10010FB88(a1, v6);
    }
  }
}

void sub_1003DD5B0(uint64_t a1)
{
  [*(a1 + 664) invalidate];

  *(a1 + 664) = 0;
  v2 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = [*(a1 + 32) vendor];
  v7 = *(a1 + 256);
  if (v7 != (a1 + 264))
  {
    v8 = v6;
    do
    {
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v9 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v10 = sub_1003DD9F8(a1 + 232, v7 + 8);
        v13 = v10[1];
        v11 = v10 + 1;
        v12 = v13;
        if (*(v11 + 23) >= 0)
        {
          v12 = v11;
        }

        *buf = 136446210;
        v36 = v12;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "shutting down %{public}s location provider", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v25 = sub_1003DD9F8(a1 + 232, v7 + 8);
        v28 = v25[1];
        v26 = v25 + 1;
        v27 = v28;
        if (*(v26 + 23) >= 0)
        {
          v27 = v26;
        }

        v33 = 136446210;
        v34 = v27;
        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::shutdownProviders()", "%s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      v14 = sub_1003DD9F8(a1 + 232, v7 + 8);
      v17 = v14[4];
      v15 = v14 + 4;
      v16 = v17;
      if (*(v15 + 23) >= 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = v16;
      }

      v19 = [NSString stringWithUTF8String:v18];
      v20 = +[CLSilo main];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1003DDA50;
      v32[3] = &unk_1024473F0;
      v32[4] = v8;
      v32[5] = v19;
      [v20 async:v32];
      v21 = *(v7 + 5);
      *(v7 + 5) = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      v22 = *(v7 + 1);
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = *(v7 + 2);
          v24 = *v23 == v7;
          v7 = v23;
        }

        while (!v24);
      }

      v7 = v23;
    }

    while (v23 != (a1 + 264));
  }

  *(a1 + 656) = 0;
  v30 = *(a1 + 640);
  if (v30)
  {
    [*(v30 + 16) unregister:*(v30 + 8) forNotification:0];
    [*(*(a1 + 640) + 16) unregister:*(*(a1 + 640) + 8) forNotification:9];
    [objc_msgSend(*(a1 + 32) "vendor")];
    v31 = *(a1 + 640);
    *(a1 + 640) = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }
}

uint64_t *sub_1003DD9F8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000432E8("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

id sub_1003DDA5C(uint64_t a1)
{
  if ((*(a1 + 672) & 1) == 0)
  {
    *(a1 + 328) = [objc_msgSend(*(a1 + 32) "vendor")];
    sub_10001A3E8();
    if (sub_10071BA20())
    {
      if (qword_1025D4600 != -1)
      {
        sub_101873CF0();
      }

      v2 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CELL_LOC:choosing CLUnifiedCellLocationProvider", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187408C();
      }

      v151[0] = _NSConcreteStackBlock;
      v151[1] = 3221225472;
      v151[2] = sub_1003DF778;
      v151[3] = &unk_10244F910;
      v151[4] = a1;
      sub_100CF73C0(v151);
    }

    else
    {
      *(a1 + 332) = 0;
    }

    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_1003DF790;
    v150[3] = &unk_10244F910;
    v150[4] = a1;
    sub_1006F7434(v150);
    v149[0] = _NSConcreteStackBlock;
    v149[1] = 3221225472;
    v149[2] = sub_1003DF7A8;
    v149[3] = &unk_10244F910;
    v149[4] = a1;
    sub_100951BD8(v149);
  }

  v3 = [objc_msgSend(*(a1 + 32) "vendor")];
  *(a1 + 656) = v3;
  if (v3)
  {
    *(a1 + 336) = 4;
  }

  if (*(a1 + 328))
  {
    v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
    if (v4)
    {
      sub_10000EC00(&v139, [v4 UTF8String]);
      v5 = *(a1 + 328);
      sub_10000EC00(v147, "CLWifiLocationProvider");
      sub_1003DFC20(buf, v5, &v139, v147, 4, 1, 1);
      v146 = (a1 + 328);
      v6 = sub_100109DF4(a1 + 232, (a1 + 328));
      v7 = v6;
      *(v6 + 10) = *buf;
      if (*(v6 + 71) < 0)
      {
        operator delete(v6[6]);
      }

      v7[8] = v154;
      *(v7 + 3) = v153;
      HIBYTE(v154) = 0;
      LOBYTE(v153) = 0;
      if (*(v7 + 95) < 0)
      {
        operator delete(v7[9]);
      }

      *(v7 + 9) = __p;
      v7[11] = v156;
      HIBYTE(v156) = 0;
      LOBYTE(__p) = 0;
      v8 = v158;
      *(v7 + 6) = v157;
      *(v7 + 7) = v8;
      v9 = v162;
      *(v7 + 10) = v161;
      *(v7 + 11) = v9;
      *(v7 + 236) = *(v165 + 12);
      v10 = v165[0];
      v11 = v164;
      *(v7 + 12) = v163;
      *(v7 + 13) = v11;
      *(v7 + 14) = v10;
      v12 = v160;
      *(v7 + 8) = v159;
      *(v7 + 9) = v12;
      memcpy(v7 + 32, v166, 0x201uLL);
      v13 = v167;
      v167 = 0u;
      v14 = v7[98];
      *(v7 + 97) = v13;
      if (v14)
      {
        sub_100008080(v14);
        v15 = v170;
        v16 = v169;
        *(v7 + 99) = v168;
        v17 = *(v173 + 9);
        v18 = v173[0];
        v19 = v172;
        *(v7 + 105) = v171;
        *(v7 + 107) = v19;
        v20 = *(&v167 + 1);
        *(v7 + 109) = v18;
        *(v7 + 881) = v17;
        *(v7 + 101) = v16;
        *(v7 + 103) = v15;
        *(v7 + 113) = v174;
        if (v20)
        {
          sub_100008080(v20);
        }
      }

      else
      {
        v21 = v173[0];
        v22 = v170;
        v23 = v169;
        *(v7 + 99) = v168;
        *(v7 + 101) = v23;
        *(v7 + 103) = v22;
        v24 = *(v173 + 9);
        v25 = v172;
        *(v7 + 105) = v171;
        *(v7 + 107) = v25;
        *(v7 + 109) = v21;
        *(v7 + 881) = v24;
        *(v7 + 113) = v174;
      }

      if (SHIBYTE(v156) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v154) < 0)
      {
        operator delete(v153);
      }

      if (v148 < 0)
      {
        operator delete(v147[0]);
      }

      sub_10067D718();
    }
  }

  if (*(a1 + 332))
  {
    v26 = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
    if (v26)
    {
      sub_10000EC00(&v139, [v26 UTF8String]);
      v27 = *(a1 + 332);
      sub_10000EC00(v147, "CLUnifiedCellLocationProvider");
      sub_1003DFC20(buf, v27, &v139, v147, 6, 0, -1);
      v146 = (a1 + 332);
      v28 = sub_100109DF4(a1 + 232, (a1 + 332));
      v29 = v28;
      *(v28 + 10) = *buf;
      if (*(v28 + 71) < 0)
      {
        operator delete(v28[6]);
      }

      v29[8] = v154;
      *(v29 + 3) = v153;
      HIBYTE(v154) = 0;
      LOBYTE(v153) = 0;
      if (*(v29 + 95) < 0)
      {
        operator delete(v29[9]);
      }

      *(v29 + 9) = __p;
      v29[11] = v156;
      HIBYTE(v156) = 0;
      LOBYTE(__p) = 0;
      v30 = v158;
      *(v29 + 6) = v157;
      *(v29 + 7) = v30;
      v31 = v162;
      *(v29 + 10) = v161;
      *(v29 + 11) = v31;
      *(v29 + 236) = *(v165 + 12);
      v32 = v165[0];
      v33 = v164;
      *(v29 + 12) = v163;
      *(v29 + 13) = v33;
      *(v29 + 14) = v32;
      v34 = v160;
      *(v29 + 8) = v159;
      *(v29 + 9) = v34;
      memcpy(v29 + 32, v166, 0x201uLL);
      v35 = v167;
      v167 = 0u;
      v36 = v29[98];
      *(v29 + 97) = v35;
      if (v36)
      {
        sub_100008080(v36);
        v37 = v170;
        v38 = v169;
        *(v29 + 99) = v168;
        v39 = *(v173 + 9);
        v40 = v173[0];
        v41 = v172;
        *(v29 + 105) = v171;
        *(v29 + 107) = v41;
        v42 = *(&v167 + 1);
        *(v29 + 109) = v40;
        *(v29 + 881) = v39;
        *(v29 + 101) = v38;
        *(v29 + 103) = v37;
        *(v29 + 113) = v174;
        if (v42)
        {
          sub_100008080(v42);
        }
      }

      else
      {
        v43 = v173[0];
        v44 = v170;
        v45 = v169;
        *(v29 + 99) = v168;
        *(v29 + 101) = v45;
        *(v29 + 103) = v44;
        v46 = *(v173 + 9);
        v47 = v172;
        *(v29 + 105) = v171;
        *(v29 + 107) = v47;
        *(v29 + 109) = v43;
        *(v29 + 881) = v46;
        *(v29 + 113) = v174;
      }

      if (SHIBYTE(v156) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v154) < 0)
      {
        operator delete(v153);
      }

      if (v148 < 0)
      {
        operator delete(v147[0]);
      }

      sub_100CF72C4();
    }
  }

  v48 = *(a1 + 336);
  if (v48)
  {
    sub_10000EC00(&v139, "gps");
    sub_10000EC00(v147, "CLGnssProvider");
    sub_1003DFC20(buf, v48, &v139, v147, 1, 2, 2);
    v146 = (a1 + 336);
    v49 = sub_100109DF4(a1 + 232, (a1 + 336));
    v50 = v49;
    *(v49 + 10) = *buf;
    if (*(v49 + 71) < 0)
    {
      operator delete(v49[6]);
    }

    v50[8] = v154;
    *(v50 + 3) = v153;
    HIBYTE(v154) = 0;
    LOBYTE(v153) = 0;
    if (*(v50 + 95) < 0)
    {
      operator delete(v50[9]);
    }

    *(v50 + 9) = __p;
    v50[11] = v156;
    HIBYTE(v156) = 0;
    LOBYTE(__p) = 0;
    v51 = v158;
    *(v50 + 6) = v157;
    *(v50 + 7) = v51;
    v52 = v162;
    *(v50 + 10) = v161;
    *(v50 + 11) = v52;
    *(v50 + 236) = *(v165 + 12);
    v53 = v165[0];
    v54 = v164;
    *(v50 + 12) = v163;
    *(v50 + 13) = v54;
    *(v50 + 14) = v53;
    v55 = v160;
    *(v50 + 8) = v159;
    *(v50 + 9) = v55;
    memcpy(v50 + 32, v166, 0x201uLL);
    v56 = v167;
    v167 = 0u;
    v57 = v50[98];
    *(v50 + 97) = v56;
    if (v57)
    {
      sub_100008080(v57);
      v58 = v170;
      v59 = v169;
      *(v50 + 99) = v168;
      v60 = *(v173 + 9);
      v61 = v173[0];
      v62 = v172;
      *(v50 + 105) = v171;
      *(v50 + 107) = v62;
      v63 = *(&v167 + 1);
      *(v50 + 109) = v61;
      *(v50 + 881) = v60;
      *(v50 + 101) = v59;
      *(v50 + 103) = v58;
      *(v50 + 113) = v174;
      if (v63)
      {
        sub_100008080(v63);
      }
    }

    else
    {
      v64 = v173[0];
      v65 = v170;
      v66 = v169;
      *(v50 + 99) = v168;
      *(v50 + 101) = v66;
      *(v50 + 103) = v65;
      v67 = *(v173 + 9);
      v68 = v172;
      *(v50 + 105) = v171;
      *(v50 + 107) = v68;
      *(v50 + 109) = v64;
      *(v50 + 881) = v67;
      *(v50 + 113) = v174;
    }

    if (SHIBYTE(v156) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v154) < 0)
    {
      operator delete(v153);
    }

    if (v148 < 0)
    {
      operator delete(v147[0]);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    sub_100D64FE8();
  }

  *(a1 + 340) = 0;
  memset(&v139, 0, sizeof(v139));
  v69 = (a1 + 340);
  if ([objc_msgSend(*(a1 + 32) "vendor")])
  {
    v70 = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
    if (v70)
    {
      sub_100006044(&v139, [v70 UTF8String]);
      v71 = 5;
      *v69 = 5;
      goto LABEL_70;
    }
  }

  v71 = *v69;
  if (*v69)
  {
LABEL_70:
    sub_10000EC00(v147, "CLPipelineLocationProvider");
    sub_1003DFC20(buf, v71, &v139, v147, 10, 2, 4);
    v146 = (a1 + 340);
    v72 = sub_100109DF4(a1 + 232, (a1 + 340));
    v73 = v72;
    *(v72 + 10) = *buf;
    if (*(v72 + 71) < 0)
    {
      operator delete(v72[6]);
    }

    v73[8] = v154;
    *(v73 + 3) = v153;
    HIBYTE(v154) = 0;
    LOBYTE(v153) = 0;
    if (*(v73 + 95) < 0)
    {
      operator delete(v73[9]);
    }

    *(v73 + 9) = __p;
    v73[11] = v156;
    HIBYTE(v156) = 0;
    LOBYTE(__p) = 0;
    v74 = v158;
    *(v73 + 6) = v157;
    *(v73 + 7) = v74;
    v75 = v162;
    *(v73 + 10) = v161;
    *(v73 + 11) = v75;
    *(v73 + 236) = *(v165 + 12);
    v76 = v165[0];
    v77 = v164;
    *(v73 + 12) = v163;
    *(v73 + 13) = v77;
    *(v73 + 14) = v76;
    v78 = v160;
    *(v73 + 8) = v159;
    *(v73 + 9) = v78;
    memcpy(v73 + 32, v166, 0x201uLL);
    v79 = v167;
    v167 = 0u;
    v80 = v73[98];
    *(v73 + 97) = v79;
    if (v80)
    {
      sub_100008080(v80);
      v81 = v170;
      v82 = v169;
      *(v73 + 99) = v168;
      v83 = *(v173 + 9);
      v84 = v173[0];
      v85 = v172;
      *(v73 + 105) = v171;
      *(v73 + 107) = v85;
      v86 = *(&v167 + 1);
      *(v73 + 109) = v84;
      *(v73 + 881) = v83;
      *(v73 + 101) = v82;
      *(v73 + 103) = v81;
      *(v73 + 113) = v174;
      if (v86)
      {
        sub_100008080(v86);
      }
    }

    else
    {
      v87 = v173[0];
      v88 = v170;
      v89 = v169;
      *(v73 + 99) = v168;
      *(v73 + 101) = v89;
      *(v73 + 103) = v88;
      v90 = *(v173 + 9);
      v91 = v172;
      *(v73 + 105) = v171;
      *(v73 + 107) = v91;
      *(v73 + 109) = v87;
      *(v73 + 881) = v90;
      *(v73 + 113) = v174;
    }

    if (SHIBYTE(v156) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v154) < 0)
    {
      operator delete(v153);
    }

    if (v148 < 0)
    {
      operator delete(v147[0]);
    }

    sub_1010A6A78();
  }

  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 344))
  {
    v139.__r_.__value_.__r.__words[0] = 0;
    v139.__r_.__value_.__l.__size_ = &v139;
    v139.__r_.__value_.__r.__words[2] = 0x4812000000;
    v140 = sub_10004738C;
    v141 = sub_100048384;
    v142 = &unk_10238AE8B;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v138[0] = _NSConcreteStackBlock;
    v138[1] = 3221225472;
    v138[2] = sub_1003DF7C0;
    v138[3] = &unk_10244F938;
    v138[4] = &v139;
    sub_1006F7434(v138);
    v92 = *(a1 + 344);
    size = v139.__r_.__value_.__l.__size_;
    sub_10000EC00(v147, "CLAccessoryLocationProvider");
    sub_1003DFC20(buf, v92, (size + 48), v147, 3, 2, 5);
    v146 = (a1 + 344);
    v94 = sub_100109DF4(a1 + 232, (a1 + 344));
    v95 = v94;
    *(v94 + 10) = *buf;
    if (*(v94 + 71) < 0)
    {
      operator delete(v94[6]);
    }

    v95[8] = v154;
    *(v95 + 3) = v153;
    HIBYTE(v154) = 0;
    LOBYTE(v153) = 0;
    if (*(v95 + 95) < 0)
    {
      operator delete(v95[9]);
    }

    *(v95 + 9) = __p;
    v95[11] = v156;
    HIBYTE(v156) = 0;
    LOBYTE(__p) = 0;
    v96 = v158;
    *(v95 + 6) = v157;
    *(v95 + 7) = v96;
    v97 = v162;
    *(v95 + 10) = v161;
    *(v95 + 11) = v97;
    *(v95 + 236) = *(v165 + 12);
    v98 = v165[0];
    v99 = v164;
    *(v95 + 12) = v163;
    *(v95 + 13) = v99;
    *(v95 + 14) = v98;
    v100 = v160;
    *(v95 + 8) = v159;
    *(v95 + 9) = v100;
    memcpy(v95 + 32, v166, 0x201uLL);
    v101 = v167;
    v167 = 0u;
    v102 = v95[98];
    *(v95 + 97) = v101;
    if (v102)
    {
      sub_100008080(v102);
      v103 = v170;
      v104 = v169;
      *(v95 + 99) = v168;
      v105 = *(v173 + 9);
      v106 = v173[0];
      v107 = v172;
      *(v95 + 105) = v171;
      *(v95 + 107) = v107;
      v108 = *(&v167 + 1);
      *(v95 + 109) = v106;
      *(v95 + 881) = v105;
      *(v95 + 101) = v104;
      *(v95 + 103) = v103;
      *(v95 + 113) = v174;
      if (v108)
      {
        sub_100008080(v108);
      }
    }

    else
    {
      v109 = v173[0];
      v110 = v170;
      v111 = v169;
      *(v95 + 99) = v168;
      *(v95 + 101) = v111;
      *(v95 + 103) = v110;
      v112 = *(v173 + 9);
      v113 = v172;
      *(v95 + 105) = v171;
      *(v95 + 107) = v113;
      *(v95 + 109) = v109;
      *(v95 + 881) = v112;
      *(v95 + 113) = v174;
    }

    if (SHIBYTE(v156) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v154) < 0)
    {
      operator delete(v153);
    }

    if (v148 < 0)
    {
      operator delete(v147[0]);
    }

    sub_1006F7338();
  }

  if (*(a1 + 348))
  {
    v139.__r_.__value_.__r.__words[0] = 0;
    v139.__r_.__value_.__l.__size_ = &v139;
    v139.__r_.__value_.__r.__words[2] = 0x4812000000;
    v140 = sub_10004738C;
    v141 = sub_100048384;
    v142 = &unk_10238AE8B;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v137[0] = _NSConcreteStackBlock;
    v137[1] = 3221225472;
    v137[2] = sub_1003DF83C;
    v137[3] = &unk_10244F938;
    v137[4] = &v139;
    sub_100951BD8(v137);
    v114 = *(a1 + 348);
    v115 = v139.__r_.__value_.__l.__size_;
    sub_10000EC00(v147, "CLSimulatedLocationProvider");
    sub_1003DFC20(buf, v114, (v115 + 48), v147, 0, 0, -1);
    v146 = (a1 + 348);
    v116 = sub_100109DF4(a1 + 232, (a1 + 348));
    v117 = v116;
    *(v116 + 10) = *buf;
    if (*(v116 + 71) < 0)
    {
      operator delete(v116[6]);
    }

    v117[8] = v154;
    *(v117 + 3) = v153;
    HIBYTE(v154) = 0;
    LOBYTE(v153) = 0;
    if (*(v117 + 95) < 0)
    {
      operator delete(v117[9]);
    }

    *(v117 + 9) = __p;
    v117[11] = v156;
    HIBYTE(v156) = 0;
    LOBYTE(__p) = 0;
    v118 = v158;
    *(v117 + 6) = v157;
    *(v117 + 7) = v118;
    v119 = v162;
    *(v117 + 10) = v161;
    *(v117 + 11) = v119;
    *(v117 + 236) = *(v165 + 12);
    v120 = v165[0];
    v121 = v164;
    *(v117 + 12) = v163;
    *(v117 + 13) = v121;
    *(v117 + 14) = v120;
    v122 = v160;
    *(v117 + 8) = v159;
    *(v117 + 9) = v122;
    memcpy(v117 + 32, v166, 0x201uLL);
    v123 = v167;
    v167 = 0u;
    v124 = v117[98];
    *(v117 + 97) = v123;
    if (v124)
    {
      sub_100008080(v124);
      v125 = v170;
      v126 = v169;
      *(v117 + 99) = v168;
      v127 = *(v173 + 9);
      v128 = v173[0];
      v129 = v172;
      *(v117 + 105) = v171;
      *(v117 + 107) = v129;
      v130 = *(&v167 + 1);
      *(v117 + 109) = v128;
      *(v117 + 881) = v127;
      *(v117 + 101) = v126;
      *(v117 + 103) = v125;
      *(v117 + 113) = v174;
      if (v130)
      {
        sub_100008080(v130);
      }
    }

    else
    {
      v131 = v173[0];
      v132 = v170;
      v133 = v169;
      *(v117 + 99) = v168;
      *(v117 + 101) = v133;
      *(v117 + 103) = v132;
      v134 = *(v173 + 9);
      v135 = v172;
      *(v117 + 105) = v171;
      *(v117 + 107) = v135;
      *(v117 + 109) = v131;
      *(v117 + 881) = v134;
      *(v117 + 113) = v174;
    }

    if (SHIBYTE(v156) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v154) < 0)
    {
      operator delete(v153);
    }

    if (v148 < 0)
    {
      operator delete(v147[0]);
    }

    sub_100951AA8();
  }

  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  if (result)
  {
    sub_100E09B40();
  }

  return result;
}

void sub_1003DF59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003DF790(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  *(*(result + 32) + 344) = v2;
  return result;
}

uint64_t sub_1003DF7A8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  *(*(result + 32) + 348) = v2;
  return result;
}

double sub_1003DF7C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    sub_100007244(&v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
  }

  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 71) < 0)
  {
    operator delete(*(v3 + 48));
  }

  result = *&v5;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  return result;
}

double sub_1003DF83C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    sub_100007244(&v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
  }

  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 71) < 0)
  {
    operator delete(*(v3 + 48));
  }

  result = *&v5;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  return result;
}

void sub_1003DF8B8(unsigned int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onLoiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onLoiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100675FD8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1003DFA94(uint64_t result)
{
  v1 = *(result + 232);
  v2 = (result + 240);
  if (v1 != (result + 240))
  {
    v3 = result;
    do
    {
      v4 = *(v1 + 8);
      if (v4)
      {
        result = sub_10010FF14(v3, v4);
      }

      v5 = v1[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v1[2];
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v1 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

uint64_t sub_1003DFB20(uint64_t a1, char a2)
{
  if (a2 & 1) != 0 || (*(a1 + 681))
  {
    v2 = 1;
  }

  else
  {
    if (!off_1025D53B8)
    {
      operator new();
    }

    if (*(off_1025D53B8 + 1))
    {
      v2 = *off_1025D53B8;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1003DFC20(uint64_t a1, int a2, __int128 *a3, __int128 *a4, int a5, char a6, char a7)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100007244((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v12;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100007244((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v13;
  }

  *(a1 + 56) = 0xFFFF;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *(a1 + 76) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 92) = _Q0;
  *(a1 + 108) = _Q0;
  *(a1 + 124) = _Q0;
  *(a1 + 140) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0xBFF0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0xBFF0000000000000;
  *(a1 + 180) = 0x7FFFFFFF;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  sub_100021ED8(a1 + 216);
  *(a1 + 864) = a5;
  *(a1 + 868) = a6;
  *(a1 + 869) = a7;
  *(a1 + 870) = 1;
  *(a1 + 872) = 0;
  return a1;
}

void sub_1003DFD34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003DFD50(uint64_t a1)
{
  v2 = *(a1 + 744);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_1003DFE00(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_100D83C9C(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1003DFE80(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0xFFFF;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *(a1 + 76) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 92) = _Q0;
  *(a1 + 108) = _Q0;
  *(a1 + 124) = _Q0;
  *(a1 + 140) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0xBFF0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0xBFF0000000000000;
  *(a1 + 180) = 0x7FFFFFFF;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  sub_100021ED8(a1 + 216);
  *(a1 + 864) = 0;
  *(a1 + 868) = 1;
  *(a1 + 872) = 0;
  return a1;
}

void sub_1003DFF28()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_1003DFFEC()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_1003E00A4(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  if (*a3 > 0x38)
  {
LABEL_40:
    if (v5)
    {
      if ((*(a1 + 88) & 1) == 0)
      {
        v20 = sub_10000B1F8();
        v30 = 1;
        v21 = sub_10001A6B0(v20, &v30);
        *(a1 + 88) = 1;
        *(a1 + 96) = v21;
        if (qword_1025D4600 != -1)
        {
          sub_1018754B0();
        }

        v22 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v23 = *a3;
          v30 = 67240192;
          v31 = v23;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,fitness,%{public}d", &v30, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101876EB8(a3);
        }
      }

      *(a1 + 136) = 0;
      *(a1 + 144) = 0xBFF0000000000000;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0xBFF0000000000000;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0xBFF0000000000000;
      if (*(a1 + 520) > 0.0)
      {
        *(a1 + 466) = 1;
      }
    }

    goto LABEL_50;
  }

  if (((1 << v5) & 0x28E) == 0)
  {
    if (((1 << v5) & 0x110000000000C20) != 0)
    {
      if ((*(a1 + 104) & 1) == 0)
      {
        v6 = sub_10000B1F8();
        v30 = 1;
        v7 = sub_10001A6B0(v6, &v30);
        *(a1 + 104) = 1;
        *(a1 + 112) = v7;
        if (qword_1025D4600 != -1)
        {
          sub_1018754B0();
        }

        v8 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v9 = *a3;
          v30 = 67240192;
          v31 = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,driving,%{public}d", &v30, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101876BF4(a3);
        }
      }

      *(a1 + 136) = 0;
      *(a1 + 144) = 0xBFF0000000000000;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0xBFF0000000000000;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0xBFF0000000000000;
      if (*(a1 + 520) > 0.0)
      {
        *(a1 + 467) = 1;
      }

      goto LABEL_50;
    }

    if (((1 << v5) & 0x20000000010) != 0)
    {
      if ((*(a1 + 120) & 1) == 0)
      {
        v16 = sub_10000B1F8();
        v30 = 1;
        v17 = sub_10001A6B0(v16, &v30);
        *(a1 + 120) = 1;
        *(a1 + 128) = v17;
        if (qword_1025D4600 != -1)
        {
          sub_1018754B0();
        }

        v18 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v19 = *a3;
          v30 = 67240192;
          v31 = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,walking,%{public}d", &v30, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101876B08(a3);
        }
      }

      *(a1 + 136) = 0;
      *(a1 + 144) = 0xBFF0000000000000;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0xBFF0000000000000;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0xBFF0000000000000;
      goto LABEL_50;
    }

    goto LABEL_40;
  }

  if (CLMotionActivity::isTypeUnclassifiedMoving() && ((*(a1 + 104) & 1) != 0 || (*(a1 + 88) & 1) != 0 || *(a1 + 120) == 1))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018754D8();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v11 = *a3;
      v30 = 67240192;
      v31 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,moving_non_stationary,%{public}d", &v30, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101876DCC(a3);
    }
  }

  else
  {
    if ((*(a1 + 136) & 1) == 0)
    {
      v12 = sub_10000B1F8();
      v30 = 1;
      v13 = sub_10001A6B0(v12, &v30);
      *(a1 + 136) = 1;
      *(a1 + 144) = v13;
      *(a1 + 472) = 0;
      *(a1 + 480) = 0;
      *(a1 + 488) = 0;
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v14 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v15 = *a3;
        v30 = 67240192;
        v31 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,plausibly_stationary,%{public}d", &v30, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101876CE0(a3);
      }
    }

    *(a1 + 104) = 0;
    *(a1 + 112) = 0xBFF0000000000000;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0xBFF0000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0xBFF0000000000000;
  }

LABEL_50:
  if (*(a1 + 520) > 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018754B0();
    }

    v24 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v25 = *a3;
      v26 = *(a1 + 136);
      v27 = *(a1 + 467);
      v28 = *(a1 + 466);
      v29 = *(a1 + 120);
      v30 = 67241216;
      v31 = v25;
      v32 = 1026;
      v33 = v26;
      v34 = 1026;
      v35 = v27;
      v36 = 1026;
      v37 = v28;
      v38 = 1026;
      v39 = v29;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,raw,motion,%{public}d,fPlausiblyStationary,%{public}d,fWasDriving,%{public}d,fWasFitness,%{public}d,fIsWalking,%{public}d", &v30, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101876FA4();
    }
  }
}

void sub_1003E0614(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "#GPSPowerSavings,accessory connected", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018770D8();
  }

  *(a1 + 468) = 1;
}

void sub_1003E06B4(uint64_t a1, char a2)
{
  if ((atomic_load_explicit(&qword_102656140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656140))
  {
    sub_10001CAF4(buf);
    v9 = 0;
    v7 = sub_10001CB4C(*buf, "LocationControllerIgnoreCharging", &v9);
    v8 = v7 & v9;
    if (v11)
    {
      sub_100008080(v11);
    }

    byte_102656138 = v8;
    __cxa_guard_release(&qword_102656140);
  }

  *(a1 + 51) = (a2 | byte_102656138) & 1;
  v4 = (a1 + 51);
  if (qword_1025D4600 != -1)
  {
    sub_1018754B0();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v6 = *v4;
    *buf = 67240192;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,fIsBatteryNotCharging,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101877290(v4);
  }
}

void sub_1003E0818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  __cxa_guard_abort(&qword_102656140);
  _Unwind_Resume(a1);
}

void sub_1003E084C(uint64_t a1, char a2)
{
  *(a1 + 49) = a2;
  v2 = (a1 + 49);
  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *v2;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,emergency state,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101877384(v2);
  }
}

void sub_1003E0928(unsigned __int8 *a1, double *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 18);
    v6 = *a2;
    v7 = 0xBFF0000000000000;
    if (v5 <= 0.0)
    {
      v8 = -1.0;
    }

    else
    {
      v8 = *a2 - v5;
    }

    v9 = a1[464];
    v10 = a1[136];
    v11 = *(a1 + 98);
    if (v11)
    {
      v12 = *v11;
      LODWORD(v11) = v11[1];
    }

    else
    {
      v12 = 0;
    }

    v13 = ((*(a1 + 119) * *(a1 + 119)) + (*(a1 + 118) * *(a1 + 118))) + (*(a1 + 120) * *(a1 + 120));
    v14 = *(a1 + 121);
    v15 = *(a1 + 10);
    v33 = 134353152;
    v16 = v14 + sqrtf(v13);
    v17 = v6 - v15;
    v19 = *(a1 + 8);
    v18 = *(a1 + 9);
    v20 = v6 - v18;
    if (v15 <= 0.0)
    {
      v17 = -1.0;
    }

    v21 = v18 == 0.0;
    v22 = v18 < 0.0;
    v23 = *(a1 + 122);
    v24 = a1[466];
    v25 = a1[467];
    v26 = a1[468];
    v27 = a1[48];
    v28 = *a1;
    v29 = a1[49];
    v30 = a1[51];
    v31 = v16;
    if (v22 || v21)
    {
      v20 = -1.0;
    }

    v32 = v6 - v19;
    if (v19 > 0.0)
    {
      v7 = *&v32;
    }

    v34 = v8;
    v35 = 1026;
    v36 = v9;
    v37 = 1026;
    v38 = v10;
    v39 = 1026;
    v40 = v12;
    v41 = 1026;
    v42 = v11;
    v43 = 2050;
    v44 = v31;
    v45 = 2050;
    v46 = v17;
    v47 = 2050;
    v48 = v20;
    v49 = 2050;
    v50 = v7;
    v51 = 2050;
    v52 = v23;
    v53 = 1026;
    v54 = v24;
    v55 = 1026;
    v56 = v25;
    v57 = 1026;
    v58 = v26;
    v59 = 1026;
    v60 = v27;
    v61 = 1026;
    v62 = v28;
    v63 = 1026;
    v64 = v29;
    v65 = 1026;
    v66 = v30;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#GPSPowerSavings,reasons,stationaryTime,%{public}.0lf,startedStationary,%{public}d,fPlausiblyStationary,%{public}d,assocToAnyAP,%{public}d,assocToPersonalizedAP,%{public}d,IODisplacement,%{public}.1lf,ageOfGpsOn,%{public}.0lf,ageOfGpsFix,%{public}.0lf,ageOfWifiFix,%{public}.0lf,maxIOv,%{public}.1lf,fWasFitness,%{public}d,fWasDriving,%{public}d,fIsConVehicleFlag,%{public}d,fCanSafelyTurnOffGps,%{public}d,fFeatureEnabled,%{public}d,fInEmergencyState,%{public}d,fIsBatteryNotCharging,%{public}d", &v33, 0x80u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101877470(a1, a2);
  }
}

uint64_t sub_1003E0B84(uint64_t a1)
{
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 200) = xmmword_101C75CB0;
  v2 = (a1 + 200);
  *(a1 + 216) = xmmword_101C75CC0;
  v3 = (a1 + 216);
  *(a1 + 232) = 0xBFF0000000000000;
  sub_10001CAF4(buf);
  v4 = *(a1 + 208);
  v14 = 0.0;
  v5 = sub_1000B9370(*buf, "LCStatsSubmitMetricsThrSec", &v14);
  v6 = v14;
  if (!v5)
  {
    v6 = v4;
  }

  *v2 = v6;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  v7 = *(a1 + 224);
  v14 = 0.0;
  v8 = sub_1000B9370(*buf, "LCStatsSubmitMetricsThrSize", &v14);
  v9 = v14;
  if (!v8)
  {
    v9 = v7;
  }

  *v3 = v9;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018777D4();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11 = *v2;
    v12 = *v3;
    *buf = 134349312;
    *&buf[4] = v11;
    *&buf[12] = 2050;
    *&buf[14] = v12;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,CAStats,fMetricsCollectionDuration,%{public}.0lf,fMetricsMinimumSessionLength,%{public}.0lf", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018777FC(v2);
  }

  return a1;
}

void sub_1003E0D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E0D7C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (qword_1025D4600 != -1)
  {
    sub_101877918();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v6 = a3;
    if (*(a3 + 23) < 0)
    {
      v6 = *a3;
    }

    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[4];
    v12 = a2[5];
    v13 = a2[6];
    v14 = 136448002;
    v15 = v6;
    v16 = 1026;
    v17 = v7;
    v18 = 1026;
    v19 = v8;
    v20 = 1026;
    v21 = v9;
    v22 = 1026;
    v23 = v10;
    v24 = 1026;
    v25 = v11;
    v26 = 1026;
    v27 = v12;
    v28 = 1026;
    v29 = v13;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,submitCAStats,%{public}s,fCountsLT0,%{public}d,fCountsLT5,%{public}d,fCountsLT10,%{public}d,fCountsLT30,%{public}d,fCountsLT60,%{public}d,fCountsLT90,%{public}d,fCountsGE90,%{public}d", &v14, 0x36u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187792C(a3, a2);
  }
}

void sub_1003E0EC8(unsigned __int16 *a1, void *a2)
{
  if (*a2 - *(a1 + 29) >= *(a1 + 25))
  {
    v11 = a1 + 4;
    if (a1[4] && *(a1 + 3) && *(a1 + 4) && *(a1 + 5) && (v12 = (a1 + 20), *(a1 + 27) <= *(a1 + 10)))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101877918();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 4);
        *v148 = *(a1 + 3);
        v23 = *(a1 + 5);
        v22 = *(a1 + 6);
        *&v148[6] = v21;
        *(&v149 + 2) = v23;
        v24 = *(a1 + 8);
        *v150 = *(a1 + 7);
        v151 = v24;
        v25 = *(a1 + 10);
        v153 = *(a1 + 9);
        v155 = v25;
        v26 = *(a1 + 12);
        v157 = *(a1 + 11);
        v159 = v26;
        v27 = *(a1 + 14);
        v161 = *(a1 + 13);
        v163 = v27;
        v28 = *(a1 + 16);
        v165 = *(a1 + 15);
        v167 = v28;
        v29 = *(a1 + 18);
        v169 = *(a1 + 17);
        v171 = v29;
        v30 = *(a1 + 26);
        v173 = *(a1 + 25);
        v175 = v30;
        v31 = *(a1 + 28);
        v177 = *(a1 + 27);
        v179 = v31;
        v32 = *(a1 + 30);
        v181 = *(a1 + 29);
        v183 = v32;
        v33 = *(a1 + 32);
        v185 = *(a1 + 31);
        v187 = v33;
        v34 = *(a1 + 34);
        v189 = *(a1 + 33);
        v191 = v34;
        v193 = *a1;
        v195 = a1[1];
        v197 = a1[2];
        v199 = a1[3];
        v201 = a1[4];
        v203 = a1[5];
        v205 = v22;
        v35 = *(a1 + 20);
        v207 = *(a1 + 19);
        v209 = v35;
        v36 = *(a1 + 22);
        v211 = *(a1 + 21);
        v213 = v36;
        v37 = *(a1 + 24);
        v215 = *(a1 + 23);
        *&v148[4] = 1026;
        LOWORD(v149) = 1026;
        HIWORD(v149) = 1026;
        *&v150[4] = 1026;
        v152 = 1026;
        v154 = 1026;
        v156 = 1026;
        v158 = 1026;
        v160 = 1026;
        v162 = 1026;
        v164 = 1026;
        v166 = 1026;
        v168 = 1026;
        v170 = 1026;
        v172 = 1026;
        v174 = 1026;
        v176 = 1026;
        v178 = 1026;
        v180 = 1026;
        v182 = 1026;
        v184 = 1026;
        v186 = 1026;
        v188 = 1026;
        v190 = 1026;
        v192 = 1026;
        v194 = 1026;
        v196 = 1026;
        v198 = 1026;
        v200 = 1026;
        v202 = 1026;
        v204 = 1026;
        v206 = 1026;
        v208 = 1026;
        v210 = 1026;
        v212 = 1026;
        v214 = 1026;
        v216 = 1026;
        v217 = v37;
        *buf = 67249664;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,submitCAStats,fCountWifiAssociatedAndStaticAP,%{public}d,fCountWifiYieldingPersonalized,%{public}d,fCountStationaryWithPersonalizedWifiAP,%{public}d,fCountDMMostlyStationary,%{public}d,fCountDMnonStationary,%{public}d,fCountScreenOff,%{public}d,fCountTotalSeconds,%{public}d,fCountCanSafelyTurnOffGpsCount,%{public}d,fCountIOMotionFromStaticLT1m,%{public}d,fCountIOMotionFromStaticLT2m,%{public}d,fCountIOMotionFromStaticLT5m,%{public}d,fCountIOMotionFromStaticLT10m,%{public}d,fCountIOMotionFromStaticLT20m,%{public}d,fCountIOMotionFromStaticLT50m,%{public}d,fCountIOMotionFromStaticGE50m,%{public}d,fCountGpsWifiDistanceLT5m,%{public}d,fCountGpsWifiDistanceLT10m,%{public}d,fCountGpsWifiDistanceLT20m,%{public}d,fCountGpsWifiDistanceLT50m,%{public}d,fCountGpsWifiDistanceLT100m,%{public}d,fCountGpsWifiDistanceLT200m,%{public}d,fCountGpsWifiDistanceLT500m,%{public}d,fCountGpsWifiDistanceLT1000m,%{public}d,fCountGpsWifiDistanceGE1000m,%{public}d,fCountBestAccuracyWithoutGps,%{public}d,fCountStartedStatic,%{public}d,fCountIncludedFitness,%{public}d,fCountIncludedDriving,%{public}d,fCountIncludedConnectedVehicleFlag,%{public}d,fCountSessions,%{public}d,fCountSessionsStartedFromLC,%{public}d,fCountStationaryWithoutPersonalizedWifiAP,%{public}d,fCountIOMaxVelocityWhileStaticLT1ms,%{public}d,fCountIOMaxVelocityWhileStaticLT2ms,%{public}d,fCountIOMaxVelocityWhileStaticLT3ms,%{public}d,fCountIOMaxVelocityWhileStaticLT4ms,%{public}d,fCountIOMaxVelocityWhileStaticLT5ms,%{public}d,fCountIOMaxVelocityWhileStaticGE5ms,%{public}d,", buf, 0xE6u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018777D4();
        }

        v47 = *(a1 + 7);
        v46 = *(a1 + 8);
        v49 = *(a1 + 9);
        v48 = *(a1 + 10);
        v51 = *(a1 + 11);
        v50 = *(a1 + 12);
        v52 = *(a1 + 13);
        v53 = *(a1 + 14);
        v55 = *(a1 + 15);
        v54 = *(a1 + 16);
        *&v77[6] = *(a1 + 4);
        v56 = *(a1 + 17);
        v57 = *(a1 + 18);
        *v79 = v47;
        v82 = v49;
        v58 = *(a1 + 25);
        v59 = *(a1 + 26);
        v86 = v51;
        v90 = v52;
        v61 = *(a1 + 27);
        v60 = *(a1 + 28);
        v94 = v55;
        v98 = v56;
        v62 = *(a1 + 29);
        v63 = *(a1 + 30);
        v102 = v58;
        v106 = v61;
        v64 = *(a1 + 31);
        v65 = *(a1 + 32);
        v110 = v62;
        v114 = v64;
        v66 = *(a1 + 34);
        v118 = *(a1 + 33);
        v122 = *a1;
        v126 = a1[2];
        v130 = a1[4];
        v134 = *(a1 + 6);
        v138 = *(a1 + 20);
        v142 = *(a1 + 22);
        v146 = *(a1 + 24);
        *v77 = *(a1 + 3);
        *(&v78 + 2) = *(a1 + 5);
        v80 = v46;
        v84 = v48;
        v88 = v50;
        v92 = v53;
        v96 = v54;
        v100 = v57;
        v104 = v59;
        v108 = v60;
        v112 = v63;
        v116 = v65;
        v120 = v66;
        v124 = a1[1];
        v128 = a1[3];
        v132 = a1[5];
        v136 = *(a1 + 19);
        v140 = *(a1 + 21);
        v144 = *(a1 + 23);
        *&v77[4] = 1026;
        LOWORD(v78) = 1026;
        HIWORD(v78) = 1026;
        *&v79[4] = 1026;
        v81 = 1026;
        v83 = 1026;
        v85 = 1026;
        v87 = 1026;
        v89 = 1026;
        v91 = 1026;
        v93 = 1026;
        v95 = 1026;
        v97 = 1026;
        v99 = 1026;
        v101 = 1026;
        v103 = 1026;
        v105 = 1026;
        v107 = 1026;
        v109 = 1026;
        v111 = 1026;
        v113 = 1026;
        v115 = 1026;
        v117 = 1026;
        v119 = 1026;
        v121 = 1026;
        v123 = 1026;
        v125 = 1026;
        v127 = 1026;
        v129 = 1026;
        v131 = 1026;
        v133 = 1026;
        v135 = 1026;
        v137 = 1026;
        v139 = 1026;
        v141 = 1026;
        v143 = 1026;
        v145 = 1026;
        v76 = 67249664;
        v67 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGpsPowerSavingsMonitorCAStats::submitCAStats(const CFTimeInterval &)", "%s\n", v67);
        if (v67 != buf)
        {
          free(v67);
        }
      }

      v38 = sub_10000EC00(__p, "fThrottleStartToDriving");
      sub_1003E0D7C(v38, a1 + 70, __p);
      if (v75 < 0)
      {
        operator delete(__p[0]);
      }

      v39 = sub_10000EC00(v72, "fThrottleEndToDriving");
      sub_1003E0D7C(v39, a1 + 77, v72);
      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      v40 = sub_10000EC00(v70, "fThrottleStartToFitness");
      sub_1003E0D7C(v40, a1 + 84, v70);
      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      v41 = sub_10000EC00(v68, "fThrottleEndToFitness");
      sub_1003E0D7C(v41, a1 + 91, v68);
      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      if (*(a1 + 25) >= *(a1 + 26))
      {
        AnalyticsSendEventLazy();
        if (qword_1025D4600 != -1)
        {
          sub_1018777D4();
        }

        v43 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v44 = *v12;
          v45 = *v11;
          *buf = 67240448;
          *v148 = v44;
          *&v148[4] = 1026;
          *&v148[6] = v45;
          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_INFO, "#GPSPowerSavings,submitCAStats,complete,seconds,%{public}d,sessions,%{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101877A94(a1 + 20);
        }

        *(a1 + 48) = 0;
        *(a1 + 10) = 0u;
        *(a1 + 11) = 0u;
        *(a1 + 8) = 0u;
        *(a1 + 9) = 0u;
        *(a1 + 6) = 0u;
        *(a1 + 7) = 0u;
        *(a1 + 4) = 0u;
        *(a1 + 5) = 0u;
        *(a1 + 2) = 0u;
        *(a1 + 3) = 0u;
        *a1 = 0u;
        *(a1 + 1) = 0u;
        *(a1 + 29) = *a2;
      }

      else
      {
        *(a1 + 29) = *a2;
        if (qword_1025D4600 != -1)
        {
          sub_1018777D4();
        }

        v42 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,submitCAStats,skipping CA submission", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101877BB0();
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_101877918();
      }

      v13 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v14 = a1[4];
        v15 = *(a1 + 10);
        v16 = *(a1 + 3);
        v17 = *(a1 + 4);
        v18 = *(a1 + 5);
        *buf = 67241216;
        *v148 = v14;
        *&v148[4] = 1026;
        *&v148[6] = v15;
        LOWORD(v149) = 1026;
        *(&v149 + 2) = v16;
        HIWORD(v149) = 1024;
        *v150 = v17;
        *&v150[4] = 1026;
        v151 = v18;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,submitCAStats,small_or_invalid_sessions,%{public}d,%{public}d,%{public}d,%{[ublic}d,%{public}d", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101877CBC(a1 + 4);
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101877918();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 29);
      v5 = *(a1 + 25);
      v6 = *(a1 + 34);
      *buf = 134349568;
      *v148 = v4;
      *&v148[8] = 2050;
      v149 = v5;
      *v150 = 1026;
      *&v150[2] = v6;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,submitCAStats,less than threshold time to submit metrics,fLastAnalyticsSubmissionMctSeconds,%{public}.0lf,fMetricsCollectionDurationSeconds,%{public}.0lf,fCountBestAccuracyWithoutGps,%{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018777D4();
      }

      v7 = *(a1 + 29);
      v8 = *(a1 + 25);
      v9 = *(a1 + 34);
      v76 = 134349568;
      *v77 = v7;
      *&v77[8] = 2050;
      v78 = v8;
      *v79 = 1026;
      *&v79[2] = v9;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGpsPowerSavingsMonitorCAStats::submitCAStats(const CFTimeInterval &)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

void sub_1003E1844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1003E18A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = @"DailySessionStartedStaticCount";
  v4[0] = [NSNumber numberWithUnsignedShort:*v1];
  v3[1] = @"DailySessionIncludedFitnessCount";
  v4[1] = [NSNumber numberWithUnsignedShort:v1[1]];
  v3[2] = @"DailySessionIncludedDrivingCount";
  v4[2] = [NSNumber numberWithUnsignedShort:v1[2]];
  v3[3] = @"DailySessionIncludedConnectedVehicle";
  v4[3] = [NSNumber numberWithUnsignedShort:v1[3]];
  v3[4] = @"DailySessionCount";
  v4[4] = [NSNumber numberWithUnsignedShort:v1[4]];
  v3[5] = @"DailySessionCountStartedFromLC";
  v4[5] = [NSNumber numberWithUnsignedShort:v1[5]];
  v3[6] = @"DailyWifiAssociatedAndStaticAPSeconds";
  v4[6] = [NSNumber numberWithUnsignedInt:*(v1 + 3)];
  v3[7] = @"DailyWifiYieldingPersonalizedSeconds";
  v4[7] = [NSNumber numberWithUnsignedInt:*(v1 + 4)];
  v3[8] = @"DailyStationaryWithPersonalizedWifiAPSeconds";
  v4[8] = [NSNumber numberWithUnsignedInt:*(v1 + 5)];
  v3[9] = @"DailyStationaryWithoutPersonalizedWifiAPSeconds";
  v4[9] = [NSNumber numberWithUnsignedInt:*(v1 + 6)];
  v3[10] = @"DailyDMMostlyStationarySeconds";
  v4[10] = [NSNumber numberWithUnsignedInt:*(v1 + 7)];
  v3[11] = @"DailyDMnonStationarySeconds";
  v4[11] = [NSNumber numberWithUnsignedInt:*(v1 + 8)];
  v3[12] = @"DailyScreenOffSeconds";
  v4[12] = [NSNumber numberWithUnsignedInt:*(v1 + 9)];
  v3[13] = @"DailyTotalSeconds";
  v4[13] = [NSNumber numberWithUnsignedInt:*(v1 + 10)];
  v3[14] = @"DailyThrottleGpsSeconds";
  v4[14] = [NSNumber numberWithUnsignedInt:*(v1 + 11)];
  v3[15] = @"DailyIOMotionFromStaticLT1mSeconds";
  v4[15] = [NSNumber numberWithUnsignedInt:*(v1 + 12)];
  v3[16] = @"DailyIOMotionFromStaticLT2mSeconds";
  v4[16] = [NSNumber numberWithUnsignedInt:*(v1 + 13)];
  v3[17] = @"DailyIOMotionFromStaticLT5mSeconds";
  v4[17] = [NSNumber numberWithUnsignedInt:*(v1 + 14)];
  v3[18] = @"DailyIOMotionFromStaticLT10mSeconds";
  v4[18] = [NSNumber numberWithUnsignedInt:*(v1 + 15)];
  v3[19] = @"DailyIOMotionFromStaticLT20mSeconds";
  v4[19] = [NSNumber numberWithUnsignedInt:*(v1 + 16)];
  v3[20] = @"DailyIOMotionFromStaticLT50mSeconds";
  v4[20] = [NSNumber numberWithUnsignedInt:*(v1 + 17)];
  v3[21] = @"DailyIOMotionFromStaticGE50mSeconds";
  v4[21] = [NSNumber numberWithUnsignedInt:*(v1 + 18)];
  v3[22] = @"DailyGpsWifiDistanceLT5mSeconds";
  v4[22] = [NSNumber numberWithUnsignedInt:*(v1 + 25)];
  v3[23] = @"DailyGpsWifiDistanceLT10mSeconds";
  v4[23] = [NSNumber numberWithUnsignedInt:*(v1 + 26)];
  v3[24] = @"DailyGpsWifiDistanceLT20mSeconds";
  v4[24] = [NSNumber numberWithUnsignedInt:*(v1 + 27)];
  v3[25] = @"DailyGpsWifiDistanceLT50mSeconds";
  v4[25] = [NSNumber numberWithUnsignedInt:*(v1 + 28)];
  v3[26] = @"DailyGpsWifiDistanceLT100mSeconds";
  v4[26] = [NSNumber numberWithUnsignedInt:*(v1 + 29)];
  v3[27] = @"DailyGpsWifiDistanceLT200mSeconds";
  v4[27] = [NSNumber numberWithUnsignedInt:*(v1 + 30)];
  v3[28] = @"DailyGpsWifiDistanceLT500mSeconds";
  v4[28] = [NSNumber numberWithUnsignedInt:*(v1 + 31)];
  v3[29] = @"DailyGpsWifiDistanceLT1000mSeconds";
  v4[29] = [NSNumber numberWithUnsignedInt:*(v1 + 32)];
  v3[30] = @"DailyGpsWifiDistanceGE1000mSeconds";
  v4[30] = [NSNumber numberWithUnsignedInt:*(v1 + 33)];
  v3[31] = @"DailyGpsOnNotYieldingSeconds";
  v4[31] = [NSNumber numberWithUnsignedInt:*(v1 + 34)];
  v3[32] = @"DailyIOMaxVelocityWhileStaticLT1msSeconds";
  v4[32] = [NSNumber numberWithUnsignedInt:*(v1 + 19)];
  v3[33] = @"DailyIOMaxVelocityWhileStaticLT2msSeconds";
  v4[33] = [NSNumber numberWithUnsignedInt:*(v1 + 20)];
  v3[34] = @"DailyIOMaxVelocityWhileStaticLT3msSeconds";
  v4[34] = [NSNumber numberWithUnsignedInt:*(v1 + 21)];
  v3[35] = @"DailyIOMaxVelocityWhileStaticLT4msSeconds";
  v4[35] = [NSNumber numberWithUnsignedInt:*(v1 + 22)];
  v3[36] = @"DailyIOMaxVelocityWhileStaticLT5msSeconds";
  v4[36] = [NSNumber numberWithUnsignedInt:*(v1 + 23)];
  v3[37] = @"DailyIOMaxVelocityWhileStaticGE5msSeconds";
  v4[37] = [NSNumber numberWithUnsignedInt:*(v1 + 24)];
  v3[38] = @"DailyGpsThrottleStartToDrivingLT0Seconds";
  v4[38] = [NSNumber numberWithUnsignedShort:v1[70]];
  v3[39] = @"DailyGpsThrottleStartToDrivingLT5Seconds";
  v4[39] = [NSNumber numberWithUnsignedShort:v1[71]];
  v3[40] = @"DailyGpsThrottleStartToDrivingLT10Seconds";
  v4[40] = [NSNumber numberWithUnsignedShort:v1[72]];
  v3[41] = @"DailyGpsThrottleStartToDrivingLT30Seconds";
  v4[41] = [NSNumber numberWithUnsignedShort:v1[73]];
  v3[42] = @"DailyGpsThrottleStartToDrivingLT60Seconds";
  v4[42] = [NSNumber numberWithUnsignedShort:v1[74]];
  v3[43] = @"DailyGpsThrottleStartToDrivingLT90Seconds";
  v4[43] = [NSNumber numberWithUnsignedShort:v1[75]];
  v3[44] = @"DailyGpsThrottleStartToDrivingGE90Seconds";
  v4[44] = [NSNumber numberWithUnsignedShort:v1[76]];
  v3[45] = @"DailyGpsThrottleEndToDrivingsLT0Seconds";
  v4[45] = [NSNumber numberWithUnsignedShort:v1[77]];
  v3[46] = @"DailyGpsThrottleEndToDrivingLT5Seconds";
  v4[46] = [NSNumber numberWithUnsignedShort:v1[78]];
  v3[47] = @"DailyGpsThrottleEndToDrivingLT10Seconds";
  v4[47] = [NSNumber numberWithUnsignedShort:v1[79]];
  v3[48] = @"DailyGpsThrottleEndToDrivingLT30Seconds";
  v4[48] = [NSNumber numberWithUnsignedShort:v1[80]];
  v3[49] = @"DailyGpsThrottleEndToDrivingLT60Seconds";
  v4[49] = [NSNumber numberWithUnsignedShort:v1[81]];
  v3[50] = @"DailyGpsThrottleEndToDrivingLT90Seconds";
  v4[50] = [NSNumber numberWithUnsignedShort:v1[82]];
  v3[51] = @"DailyGpsThrottleEndToDrivingGE90Seconds";
  v4[51] = [NSNumber numberWithUnsignedShort:v1[83]];
  v3[52] = @"DailyGpsThrottleStartToFitnessLT0Seconds";
  v4[52] = [NSNumber numberWithUnsignedShort:v1[84]];
  v3[53] = @"DailyGpsThrottleStartToFitnessLT5Seconds";
  v4[53] = [NSNumber numberWithUnsignedShort:v1[85]];
  v3[54] = @"DailyGpsThrottleStartToFitnessLT10Seconds";
  v4[54] = [NSNumber numberWithUnsignedShort:v1[86]];
  v3[55] = @"DailyGpsThrottleStartToFitnessLT30Seconds";
  v4[55] = [NSNumber numberWithUnsignedShort:v1[87]];
  v3[56] = @"DailyGpsThrottleStartToFitnessLT60Seconds";
  v4[56] = [NSNumber numberWithUnsignedShort:v1[88]];
  v3[57] = @"DailyGpsThrottleStartToFitnessLT90Seconds";
  v4[57] = [NSNumber numberWithUnsignedShort:v1[89]];
  v3[58] = @"DailyGpsThrottleStartToFitnessGE90Seconds";
  v4[58] = [NSNumber numberWithUnsignedShort:v1[90]];
  v3[59] = @"DailyGpsThrottleEndToFitnessLT0Seconds";
  v4[59] = [NSNumber numberWithUnsignedShort:v1[91]];
  v3[60] = @"DailyGpsThrottleEndToFitnessLT5Seconds";
  v4[60] = [NSNumber numberWithUnsignedShort:v1[92]];
  v3[61] = @"DailyGpsThrottleEndToFitnessLT10Seconds";
  v4[61] = [NSNumber numberWithUnsignedShort:v1[93]];
  v3[62] = @"DailyGpsThrottleEndToFitnessLT30Seconds";
  v4[62] = [NSNumber numberWithUnsignedShort:v1[94]];
  v3[63] = @"DailyGpsThrottleEndToFitnessLT60Seconds";
  v4[63] = [NSNumber numberWithUnsignedShort:v1[95]];
  v3[64] = @"DailyGpsThrottleEndToFitnessLT90Seconds";
  v4[64] = [NSNumber numberWithUnsignedShort:v1[96]];
  v3[65] = @"DailyGpsThrottleEndToFitnessGE90Seconds";
  v4[65] = [NSNumber numberWithUnsignedShort:v1[97]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:66];
}

uint64_t sub_1003E2088(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 100) = 0u;
  *a1 = objc_alloc_init(HKHealthStore);
  *(a1 + 120) = dispatch_semaphore_create(0);
  return a1;
}

uint64_t sub_1003E211C(uint64_t a1)
{
  *a1 = 0;
  dispatch_release(*(a1 + 120));
  sub_1003C93BC(a1 + 32, *(a1 + 40));
  return a1;
}

uint64_t sub_1003E2168(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v18 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v19 = [NSDate dateWithTimeIntervalSinceReferenceDate:a10];
  v20 = [[HKStatisticsCollectionQuery alloc] initWithQuantityType:+[HKQuantityType quantityTypeForIdentifier:](HKQuantityType quantitySamplePredicate:"quantityTypeForIdentifier:" options:a3) anchorDate:+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate intervalComponents:{"andPredicateWithSubpredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[HKQuery predicateForSamplesWithStartDate:endDate:options:](HKQuery, "predicateForSamplesWithStartDate:endDate:options:", v18, v19, 3), a7, 0)), a6, v18, a5}];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1003E24A4;
  v28[3] = &unk_10244FAA8;
  v29 = a2;
  *&v28[12] = a10;
  v28[10] = &v30;
  v28[11] = a1;
  v28[4] = a3;
  v28[5] = v18;
  v28[13] = a6;
  v28[6] = v19;
  v28[7] = a4;
  v28[8] = a5;
  v28[9] = a8;
  [v20 setInitialResultsHandler:v28];
  [*a1 executeQuery:v20];
  v21 = *(a1 + 120);
  v22 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v21, v22))
  {
    [*a1 stopQuery:v20];
    if (qword_1025D44E0 != -1)
    {
      sub_101877DFC();
    }

    v23 = qword_1025D44E8;
    if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "HealthKit query timed out", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101877E24(buf);
      v26 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCardioChange::HealthKitQueryDelegate::performStatisticalCollectionQuery(HKFeatures, HKQuantityTypeIdentifier, HKUnit *, CFAbsoluteTime, CFAbsoluteTime, NSDateComponents *, HKStatisticsOptions, NSPredicate *, ProcessPeriodStatisticFunction)", "%s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  v24 = *(v31 + 24);
  _Block_object_dispose(&v30, 8);
  return v24;
}

intptr_t sub_1003E24A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 88);
  if (a4)
  {
    if ([a4 code] == 6)
    {
      if (qword_1025D44E0 != -1)
      {
        sub_101877E68();
      }

      v7 = qword_1025D44E8;
      if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "HealthKit query for %{public}@ failed due to device lock. Will resume query on next run. ", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101878080();
      }
    }

    else if ([a4 code] == 11)
    {
      v19 = *(a1 + 96);
      *buf = a1 + 112;
      sub_1003E3DEC(v5 + 32, (a1 + 112))[5] = v19;
      if (qword_1025D44E0 != -1)
      {
        sub_101877DFC();
      }

      v20 = qword_1025D44E8;
      if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "No data availability for HealthKit query collection for %{public}@. Continuing to next day.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101877F8C();
      }

      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    else
    {
      if (qword_1025D44E0 != -1)
      {
        sub_101877E68();
      }

      v22 = qword_1025D44E8;
      if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        *buf = 138543618;
        *&buf[4] = v23;
        v52 = 2114;
        *v53 = a4;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "HealthKit query for %{public}@ encountered error,%{public}@", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101877E7C();
      }

      *(v5 + 26) = 1;
    }
  }

  else
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x4812000000;
    v35 = sub_1000473A8;
    v36 = sub_100048398;
    v37 = &unk_10238AE8B;
    v39 = 0;
    v40 = 0;
    __p = 0;
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1003E2A18;
    v31[3] = &unk_10244FA80;
    v11 = *(a1 + 104);
    v31[5] = &v32;
    v31[6] = v11;
    v31[4] = *(a1 + 56);
    [a3 enumerateStatisticsFromDate:v10 toDate:v9 withBlock:v31];
    (*(*(a1 + 72) + 16))();
    *(*(*(a1 + 80) + 8) + 24) = 1;
    v12 = *(a1 + 96);
    *buf = a1 + 112;
    sub_1003E3DEC(v5 + 32, (a1 + 112))[5] = v12;
    if (qword_1025D44E0 != -1)
    {
      sub_101877DFC();
    }

    v13 = qword_1025D44E8;
    if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
    {
      v14 = (v33[7] - v33[6]) >> 3;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = *(a1 + 64);
      *buf = 138544386;
      *&buf[4] = v15;
      v52 = 1024;
      *v53 = v14;
      *&v53[4] = 2112;
      *&v53[6] = v16;
      v54 = 2112;
      v55 = v17;
      v56 = 2112;
      v57 = v18;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "HealthKit query for %{public}@ succeeded: samples %d, start %@, end %@, interval %@.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101877E24(buf);
      v25 = (v33[7] - v33[6]) >> 3;
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v29 = *(a1 + 64);
      v41 = 138544386;
      v42 = v26;
      v43 = 1024;
      v44 = v25;
      v45 = 2112;
      v46 = v27;
      v47 = 2112;
      v48 = v28;
      v49 = 2112;
      v50 = v29;
      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCardioChange::HealthKitQueryDelegate::performStatisticalCollectionQuery(HKFeatures, HKQuantityTypeIdentifier, HKUnit *, CFAbsoluteTime, CFAbsoluteTime, NSDateComponents *, HKStatisticsOptions, NSPredicate *, ProcessPeriodStatisticFunction)_block_invoke", "%s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    _Block_object_dispose(&v32, 8);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }
  }

  return dispatch_semaphore_signal(*(v5 + 120));
}

void sub_1003E29E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003E2A18(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[6];
    if (v3 == 16)
    {
      v4 = [a2 sumQuantity];
      if (!v4)
      {
        return;
      }
    }

    else
    {
      if (v3 != 2)
      {
        return;
      }

      v4 = [a2 averageQuantity];
      if (!v4)
      {
        return;
      }
    }

    [v4 doubleValueForUnit:a1[4]];
    v6 = *(a1[5] + 8);
    v8 = v6[7];
    v7 = v6[8];
    if (v8 >= v7)
    {
      v10 = v6[6];
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        sub_10028C64C();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
      v16 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v13;
      }

      if (v16)
      {
        sub_1000B9708((v6 + 6), v16);
      }

      v17 = (v8 - v10) >> 3;
      v18 = (8 * v12);
      v19 = (8 * v12 - 8 * v17);
      *v18 = v5;
      v9 = v18 + 1;
      memcpy(v19, v10, v11);
      v20 = v6[6];
      v6[6] = v19;
      v6[7] = v9;
      v6[8] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v8 = v5;
      v9 = v8 + 8;
    }

    v6[7] = v9;
  }
}

void sub_1003E2B3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (*(a1 + 24) == 1)
  {
    if (qword_1025D44E0 != -1)
    {
      sub_101877E68();
    }

    v7 = qword_1025D44E8;
    if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "queryCardioChangeInputs is already running.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101878374();
    }

    v36 = 0u;
    v37 = 0u;
    memset(buf, 0, sizeof(buf));
    (*(a3 + 16))(a3, 0, buf);
  }

  else
  {
    *(a1 + 24) = 1;
    if (*(a1 + 25) == 1 && vabdd_f64(*(a1 + 16), a6) < 86400.0 + 86400.0)
    {
      if (qword_1025D44E0 != -1)
      {
        sub_101877E68();
      }

      v13 = qword_1025D44E8;
      if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 8);
        v15 = *(a1 + 16);
        *buf = 134218240;
        *&buf[4] = v14;
        *&buf[12] = 2048;
        *&buf[14] = v15;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Resuming previously interrupted query startTime %f, endTime %f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101878274();
      }
    }

    else
    {
      *(a1 + 25) = 0;
      v16 = (a1 + 40);
      sub_1003C93BC(a1 + 32, *(a1 + 40));
      *(a1 + 32) = v16;
      *v16 = 0;
      *(a1 + 8) = a5;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 100) = 0u;
      *(a1 + 25) = 1;
      *(a1 + 16) = a6;
      if (qword_1025D44E0 != -1)
      {
        sub_101877E68();
      }

      v17 = qword_1025D44E8;
      if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 8);
        v19 = *(a1 + 16);
        *buf = 134218240;
        *&buf[4] = v18;
        *&buf[12] = 2048;
        *&buf[14] = v19;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Starting new query startTime %f, endTime %f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101878174();
      }
    }

    v20 = dispatch_group_create();
    v22 = a1 + 40;
    v21 = *(a1 + 40);
    if (!v21)
    {
      goto LABEL_30;
    }

    v23 = a1 + 40;
    do
    {
      v24 = *(v21 + 32);
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v21;
      }

      v21 = *(v21 + ((v24 >> 28) & 8));
    }

    while (v21);
    if (v23 == v22 || *(v23 + 32) >= 1)
    {
LABEL_30:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003E30E0;
      block[3] = &unk_102449A78;
      block[4] = a1;
      dispatch_group_async(v20, [a2 queue], block);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1003E3204;
    v33[3] = &unk_10244FAF0;
    v33[4] = a4;
    v33[5] = a1;
    dispatch_group_async(v20, [a2 queue], v33);
    v25 = *(a1 + 40);
    if (!v25)
    {
      goto LABEL_38;
    }

    v26 = a1 + 40;
    v27 = *(a1 + 40);
    do
    {
      if (*(v27 + 32) >= 2)
      {
        v26 = v27;
      }

      v27 = *(v27 + 8 * (*(v27 + 32) < 2));
    }

    while (v27);
    if (v26 == v22 || *(v26 + 32) >= 3)
    {
LABEL_38:
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1003E35A4;
      v32[3] = &unk_102449A78;
      v32[4] = a1;
      dispatch_group_async(v20, [a2 queue], v32);
      v25 = *(a1 + 40);
    }

    if (!v25)
    {
      goto LABEL_46;
    }

    v28 = a1 + 40;
    do
    {
      if (*(v25 + 32) >= 3)
      {
        v28 = v25;
      }

      v25 = *(v25 + 8 * (*(v25 + 32) < 3));
    }

    while (v25);
    if (v28 == v22 || *(v28 + 32) >= 4)
    {
LABEL_46:
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1003E36E8;
      v31[3] = &unk_102449A78;
      v31[4] = a1;
      dispatch_group_async(v20, [a2 queue], v31);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1003E380C;
    v30[3] = &unk_10244FAF0;
    v30[4] = a4;
    v30[5] = a1;
    dispatch_group_async(v20, [a2 queue], v30);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1003E3B00;
    v29[3] = &unk_10244FB18;
    v29[5] = a3;
    v29[6] = a1;
    v29[4] = v20;
    dispatch_group_notify(v20, [a2 queue], v29);
  }
}

void sub_1003E30E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setDay:1];
  v3 = +[HKUnit kilocalorieUnit];
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E31B4;
  v6[3] = &unk_10244FAC8;
  v6[4] = v1;
  sub_1003E2168(v1, 0, HKQuantityTypeIdentifierActiveEnergyBurned, v3, v2, 16, 0, v6, v4, v5);
}

uint64_t sub_1003E31B4(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 3;
    v6 = 0.0;
    do
    {
      v6 = v6 + *(*a2 + 8 * v4++);
    }

    while (v5 != v4);
    v7 = v6 / v5;
  }

  else
  {
    v7 = 0.0;
  }

  *(v2 + 96) = v3 >> 3;
  *(v2 + 56) = v7;
  return result;
}

void sub_1003E3204(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 90;
  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {
      if (*(v4 + 32) >= 1)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < 1));
    }

    while (v4);
    if (v5 != v2 + 40 && *(v5 + 32) <= 1)
    {
      v14 = 1;
      *buf = &v14;
      v6 = *(sub_1003E3DEC(v2 + 32, &v14) + 5);
      if (v6 > 0.0)
      {
        v3 = vcvtpd_s64_f64(*(v2 + 16) / 86400.0) - vcvtpd_s64_f64(v6 / 86400.0);
      }
    }
  }

  if (qword_1025D44E0 != -1)
  {
    sub_101877DFC();
  }

  v7 = qword_1025D44E8;
  if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Starting query for HKQuantityTypeIdentifierHeartRate for %d days", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101878478(v3);
  }

  v8 = objc_alloc_init(NSDateComponents);
  [v8 setMinute:{5, _NSConcreteStackBlock, 3221225472, sub_1003E348C, &unk_10244FAC8, v2}];
  if ((v3 & 0x80000000) == 0)
  {
    do
    {
      v9 = +[HKUnit _countPerSecondUnit];
      v10 = *(v2 + 16);
      v11 = 86400.0 * (floor(v10 / 86400.0) - v3);
      if (v11 + 86400.0 <= v10)
      {
        v10 = v11 + 86400.0;
      }

      if (!sub_1003E2168(v2, 1, HKQuantityTypeIdentifierHeartRate, v9, v8, 2, 0, &v13, v11, v10))
      {
        break;
      }

      v12 = (*(*(a1 + 32) + 16))();
      if (!v3)
      {
        break;
      }

      LODWORD(v3) = v3 - 1;
    }

    while (!v12);
  }
}

double sub_1003E348C(uint64_t a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v2 = *(a1 + 32);
    result = sub_1003E34E0(a2, 95) + *(v2 + 64);
    *(v2 + 64) = result;
    ++*(v2 + 100);
  }

  return result;
}

double sub_1003E34E0(uint64_t *a1, int a2)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_1002AD2D8(&__p, *a1, a1[1], (a1[1] - *a1) >> 3);
  v5 = ((((a1[1] - *a1) >> 3) - 1) * a2) / 100;
  v6 = __p;
  v7 = (__p + 8 * v5);
  if (v7 != v11)
  {
    sub_1003E3EC0(__p, v7, v11, v4);
    v6 = __p;
  }

  v8 = v6[v5];
  v11 = v6;
  operator delete(v6);
  return v8;
}

void sub_1003E3588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E35A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setDay:1];
  v3 = +[HKUnit _countPerMinuteUnit];
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E3698;
  v6[3] = &unk_10244FAC8;
  v6[4] = v1;
  sub_1003E2168(v1, 2, HKQuantityTypeIdentifierRestingHeartRate, v3, v2, 2, +[HKQuery _predicateForObjectsFromAppleWatches], v6, v4, v5);
}

uint64_t sub_1003E3698(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 3;
    v6 = 0.0;
    do
    {
      v6 = v6 + *(*a2 + 8 * v4++);
    }

    while (v5 != v4);
    v7 = v6 / v5;
  }

  else
  {
    v7 = 0.0;
  }

  *(v2 + 104) = v3 >> 3;
  *(v2 + 72) = v7;
  return result;
}

void sub_1003E36E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setDay:1];
  v3 = +[HKUnit meterUnit];
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E37BC;
  v6[3] = &unk_10244FAC8;
  v6[4] = v1;
  sub_1003E2168(v1, 3, HKQuantityTypeIdentifierSixMinuteWalkTestDistance, v3, v2, 2, 0, v6, v4, v5);
}

uint64_t sub_1003E37BC(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 3;
    v6 = 0.0;
    do
    {
      v6 = v6 + *(*a2 + 8 * v4++);
    }

    while (v5 != v4);
    v7 = v6 / v5;
  }

  else
  {
    v7 = 0.0;
  }

  *(v2 + 108) = v3 >> 3;
  *(v2 + 80) = v7;
  return result;
}

void sub_1003E380C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 90;
  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {
      if (*(v4 + 32) >= 4)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < 4));
    }

    while (v4);
    if (v5 != v2 + 40 && *(v5 + 32) <= 4)
    {
      v14 = 4;
      *buf = &v14;
      v6 = *(sub_1003E3DEC(v2 + 32, &v14) + 5);
      if (v6 > 0.0)
      {
        v3 = vcvtpd_s64_f64(*(v2 + 16) / 86400.0) - vcvtpd_s64_f64(v6 / 86400.0);
      }
    }
  }

  if (qword_1025D44E0 != -1)
  {
    sub_101877DFC();
  }

  v7 = qword_1025D44E8;
  if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Starting query for HKQuantityTypeIdentifierWalkingSpeed for %d days", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101878560(v3);
  }

  v8 = objc_alloc_init(NSDateComponents);
  [v8 setMinute:{5, _NSConcreteStackBlock, 3221225472, sub_1003E3AA8, &unk_10244FAC8, v2}];
  if ((v3 & 0x80000000) == 0)
  {
    do
    {
      v9 = [HKUnit unitFromString:@"m/s"];
      v10 = *(v2 + 16);
      v11 = 86400.0 * (floor(v10 / 86400.0) - v3);
      if (v11 + 86400.0 <= v10)
      {
        v10 = v11 + 86400.0;
      }

      if (!sub_1003E2168(v2, 4, HKQuantityTypeIdentifierWalkingSpeed, v9, v8, 2, 0, &v13, v11, v10))
      {
        break;
      }

      v12 = (*(*(a1 + 32) + 16))();
      if (!v3)
      {
        break;
      }

      LODWORD(v3) = v3 - 1;
    }

    while (!v12);
  }
}