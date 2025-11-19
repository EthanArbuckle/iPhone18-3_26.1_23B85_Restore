uint64_t proto::gpsd::Indication::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 216);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 216);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_34:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gpsd::Indication::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_37:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(proto::gpsd::Indication::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_40:
  v9 = *(v5 + 40);
  if (!v9)
  {
    v9 = *(proto::gpsd::Indication::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_43:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(proto::gpsd::Indication::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v10, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_46:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(proto::gpsd::Indication::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v11, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_49:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(proto::gpsd::Indication::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v12, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_52:
  v13 = *(v5 + 72);
  if (!v13)
  {
    v13 = *(proto::gpsd::Indication::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v13, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_55:
  v14 = *(v5 + 80);
  if (!v14)
  {
    v14 = *(proto::gpsd::Indication::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v14, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_58:
  v15 = *(v5 + 88);
  if (!v15)
  {
    v15 = *(proto::gpsd::Indication::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v15, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 100), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x1000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 96), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_63:
  v16 = *(v5 + 104);
  if (!v16)
  {
    v16 = *(proto::gpsd::Indication::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v16, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_66:
  v17 = *(v5 + 112);
  if (!v17)
  {
    v17 = *(proto::gpsd::Indication::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v17, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_69:
  v18 = *(v5 + 120);
  if (!v18)
  {
    v18 = *(proto::gpsd::Indication::default_instance_ + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v18, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_73;
  }

LABEL_72:
  v19 = *(v5 + 128);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 216);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_76;
  }

LABEL_73:
  v20 = *(v5 + 136);
  if (!v20)
  {
    v20 = *(proto::gpsd::Indication::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x28, v20, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_79;
  }

LABEL_76:
  v21 = *(v5 + 144);
  if (!v21)
  {
    v21 = *(proto::gpsd::Indication::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x29, v21, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_82;
  }

LABEL_79:
  v22 = *(v5 + 152);
  if (!v22)
  {
    v22 = *(proto::gpsd::Indication::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2A, v22, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_85;
  }

LABEL_82:
  v23 = *(v5 + 160);
  if (!v23)
  {
    v23 = *(proto::gpsd::Indication::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2B, v23, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_88;
  }

LABEL_85:
  v24 = *(v5 + 168);
  if (!v24)
  {
    v24 = *(proto::gpsd::Indication::default_instance_ + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2C, v24, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_91;
  }

LABEL_88:
  v25 = *(v5 + 176);
  if (!v25)
  {
    v25 = *(proto::gpsd::Indication::default_instance_ + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v25, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_94;
  }

LABEL_91:
  v26 = *(v5 + 184);
  if (!v26)
  {
    v26 = *(proto::gpsd::Indication::default_instance_ + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x33, v26, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_95;
  }

LABEL_94:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 192), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_96:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 208), a2, a4);
    if ((*(v5 + 216) & 0x10000000) == 0)
    {
      return this;
    }

    goto LABEL_97;
  }

LABEL_95:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x35, *(v5 + 196), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_96;
  }

LABEL_29:
  if ((v6 & 0x10000000) == 0)
  {
    return this;
  }

LABEL_97:
  v27 = *(v5 + 200);
  if (!v27)
  {
    v27 = *(proto::gpsd::Indication::default_instance_ + 200);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x37, v27, a2, a4);
}

uint64_t std::__function::__func<instanceDaemon(void)::$_0,std::allocator<instanceDaemon(void)::$_0>,void ()(std::vector<unsigned char> &&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  type metadata accessor for GpsdClientManagerSingleton();
  return static GpsdClientManagerSingleton.indicationCallback(data:size:)(v2, v3);
}

uint64_t static GpsdClientManagerSingleton.indicationCallback(data:size:)(_BYTE *a1, unsigned int a2)
{
  result = swift_beginAccess();
  if (static GpsdClientManagerSingleton._instance)
  {

    GpsdClientManagerSingleton.handleIndication(data:size:)(a1, a2);
  }

  return result;
}

void GpsdClientManagerSingleton.handleIndication(data:size:)(_BYTE *a1, unsigned int a2)
{
  if (one-time initialization token for corelog != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, corelog);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "#cm,handleIndication,%u", v8, 8u);
  }

  if (a1)
  {
    v9 = specialized Data.init(bytes:count:)(a1, a2);
    v11 = v10;
    swift_beginAccess();
    v12 = *(v2 + 24);
    if (v12)
    {
      v13 = *(*v12 + 200);

      v13(v9, v11);
      outlined consume of Data._Representation(v9, v11);
    }

    else
    {
      outlined consume of Data._Representation(v9, v11);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "#cm,handleIndication,data,nil", v15, 2u);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
}

void GpsdIndicationHandler::sendIndication(uint64_t a1, unsigned int *a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    ProtobufUtil::stringify(a2[2], __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v11 = v5;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#gdm,sendIndication,%s", buf, 0xCu);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  GpsdPerformanceSummary::appendIndication(*(a1 + 16), a2);
  __p[0] = 0;
  __p[1] = __p;
  v7 = 0x3002000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  operator new();
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
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

void proto::gpsd::Indication::~Indication(proto::gpsd::Indication *this)
{
  *this = off_100179D00;
  proto::gpsd::Indication::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100179D00;
  proto::gpsd::Indication::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179D00;
  proto::gpsd::Indication::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t ProtobufUtil::toProtobuf(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 36);
  *(a2 + 8) = *(result + 8);
  *(a2 + 24) = *(result + 24);
  if ((*result - 1) > 3u)
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_100145AC0[(*result - 1)];
  }

  *(a2 + 36) = v2 | 0xF;
  *(a2 + 28) = v3;
  return result;
}

{
  v2 = *(a2 + 52);
  *(a2 + 8) = *result;
  v3 = *(result + 2);
  *(a2 + 52) = v2 | 7;
  v4 = *(result + 4);
  *(a2 + 12) = v3;
  *(a2 + 16) = v4;
  v5 = *(result + 8);
  *(a2 + 52) = v2 | 0xF;
  v6 = *(result + 12);
  *(a2 + 20) = v5;
  *(a2 + 24) = v6;
  v7 = *(result + 18);
  *(a2 + 28) = *(result + 16);
  *(a2 + 32) = v7;
  *(a2 + 52) = v2 | 0xFF;
  v8 = *(result + 20);
  *(a2 + 52) = v2 | 0x1FF;
  *(a2 + 36) = *(result + 19);
  *(a2 + 40) = v8;
  v9 = *(result + 24);
  *(a2 + 52) = v2 | 0x3FF;
  *(a2 + 44) = v9;
  return result;
}

{
  v2 = *(a2 + 32);
  *(a2 + 8) = *result;
  v3 = *(result + 2);
  *(a2 + 32) = v2 | 7;
  v4 = *(result + 4);
  *(a2 + 12) = v3;
  *(a2 + 16) = v4;
  v5 = *(result + 8);
  *(a2 + 32) = v2 | 0xF;
  v6 = *(result + 12);
  *(a2 + 32) = v2 | 0x1F;
  *(a2 + 20) = v5;
  *(a2 + 24) = v6;
  return result;
}

{
  v2 = *(a2 + 44);
  *(a2 + 8) = *result;
  v3 = *(result + 2);
  *(a2 + 44) = v2 | 7;
  v4 = *(result + 4);
  *(a2 + 12) = v3;
  *(a2 + 16) = v4;
  v5 = *(result + 8);
  *(a2 + 44) = v2 | 0xF;
  v6 = *(result + 12);
  *(a2 + 20) = v5;
  *(a2 + 24) = v6;
  v7 = *(result + 16);
  *(a2 + 44) = v2 | 0x7F;
  v8 = *(result + 24);
  v9 = *(result + 28);
  if (v8 < 3)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 28) = v7;
  *(a2 + 32) = v10;
  *(a2 + 44) = v2 | 0xFF;
  *(a2 + 36) = v9;
  return result;
}

{
  v2 = *(a2 + 32);
  *(a2 + 8) = *result;
  v3 = *(result + 2);
  *(a2 + 12) = *(result + 1);
  *(a2 + 16) = v3;
  v4 = *(result + 4);
  v5 = *(result + 6);
  *(a2 + 32) = v2 | 0x1F;
  *(a2 + 20) = v4;
  *(a2 + 24) = v5;
  return result;
}

{
  v2 = *(a2 + 48);
  *(a2 + 8) = *result;
  *(a2 + 24) = *(result + 16);
  v3 = *(result + 32) == 0;
  *(a2 + 48) = v2 | 0x1F;
  *(a2 + 40) = v3;
  return result;
}

{
  v2 = *(a2 + 24);
  *(a2 + 8) = *result;
  v3 = *(result + 8);
  *(a2 + 24) = v2 | 3;
  *(a2 + 16) = v3;
  return result;
}

void proto::gnss::DecodedExtendedEphemeris::MergeFrom(proto::gnss::DecodedExtendedEphemeris *this, const proto::gnss::DecodedExtendedEphemeris *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(this + 9) |= 2u;
    *(this + 24) = v6;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

LABEL_12:
      v8 = *(a2 + 7);
      if (v8 >= 7)
      {
        __assert_rtn("set_assistance_file_type", "GnssTypes.pb.h", 3334, "::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
      }

      *(this + 9) |= 8u;
      *(this + 7) = v8;
      return;
    }

LABEL_11:
    v7 = *(a2 + 2);
    *(this + 9) |= 4u;
    *(this + 2) = v7;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}

void sub_10001CA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::DecodedExtendedEphemeris::~DecodedExtendedEphemeris(proto::gnss::DecodedExtendedEphemeris *this)
{
  *this = off_100179A78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100179A78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179A78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void proto::gnss::Fix::MergeFrom(proto::gnss::Fix *this, const proto::gnss::Fix *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(this + 12) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gnss::Fix::default_instance_ + 8);
      }

      proto::gnss::Time::MergeFrom(v5, v6);
      v4 = *(a2 + 12);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 12) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Fix::default_instance_ + 16);
    }

    proto::gnss::Position::MergeFrom(v7, v8);
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_20:
    *(this + 12) |= 4u;
    v9 = *(this + 3);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 3);
    if (!v10)
    {
      v10 = *(proto::gnss::Fix::default_instance_ + 24);
    }

    proto::gnss::Velocity::MergeFrom(v9, v10);
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_26:
      v12 = *(a2 + 10);
      if (v12 >= 5)
      {
        __assert_rtn("set_estimation_technology", "GnssTypes.pb.h", 2533, "::proto::gnss::EstimationTechnology_IsValid(value)");
      }

      *(this + 12) |= 0x10u;
      *(this + 10) = v12;
      return;
    }

LABEL_25:
    v11 = *(a2 + 4);
    *(this + 12) |= 8u;
    *(this + 4) = v11;
    if ((*(a2 + 12) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_26;
  }
}

void sub_10001CE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Time::MergeFrom(proto::gnss::Time *this, const proto::gnss::Time *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 18);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 18) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 18);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 4);
  *(this + 18) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 18);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 20);
  *(this + 18) |= 4u;
  *(this + 20) = v9;
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 16);
  *(this + 18) |= 8u;
  *(this + 16) = v10;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 4);
    *(this + 18) |= 0x20u;
    *(this + 4) = v12;
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 3);
  *(this + 18) |= 0x10u;
  *(this + 3) = v11;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 5);
  *(this + 18) |= 0x40u;
  *(this + 5) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 6);
    *(this + 18) |= 0x80u;
    *(this + 6) = v5;
    v4 = *(a2 + 18);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 7);
    *(this + 18) |= 0x100u;
    *(this + 7) = v6;
  }
}

void sub_10001CFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Position::MergeFrom(proto::gnss::Position *this, const proto::gnss::Position *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v10 = *(a2 + 1);
    *(this + 24) |= 1u;
    *(this + 1) = v10;
    v4 = *(a2 + 24);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a2 + 2);
  *(this + 24) |= 2u;
  *(this + 2) = v11;
  v4 = *(a2 + 24);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 3);
  *(this + 24) |= 4u;
  *(this + 3) = v12;
  v4 = *(a2 + 24);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 4);
  *(this + 24) |= 8u;
  *(this + 4) = v13;
  v4 = *(a2 + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    v15 = *(a2 + 6);
    *(this + 24) |= 0x20u;
    *(this + 6) = v15;
    v4 = *(a2 + 24);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_29:
  v14 = *(a2 + 5);
  *(this + 24) |= 0x10u;
  *(this + 5) = v14;
  v4 = *(a2 + 24);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  v16 = *(a2 + 7);
  *(this + 24) |= 0x40u;
  *(this + 7) = v16;
  v4 = *(a2 + 24);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 8);
    *(this + 24) |= 0x80u;
    *(this + 8) = v5;
    v4 = *(a2 + 24);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 18);
      *(this + 24) |= 0x100u;
      *(this + 18) = v6;
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 19);
      if (!proto::gnss::Reliability_IsValid(v7))
      {
        __assert_rtn("set_reliability", "GnssTypes.pb.h", 1975, "::proto::gnss::Reliability_IsValid(value)");
      }

      *(this + 24) |= 0x200u;
      *(this + 19) = v7;
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x400) != 0)
    {
      v8 = *(a2 + 10);
      *(this + 24) |= 0x400u;
      *(this + 10) = v8;
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x800) != 0)
    {
      v9 = *(a2 + 22);
      if (v9 >= 6)
      {
        __assert_rtn("set_gnss_content_in_fix", "GnssTypes.pb.h", 2020, "::proto::gnss::GnssContent_IsValid(value)");
      }

      *(this + 24) |= 0x800u;
      *(this + 22) = v9;
    }
  }
}

void sub_10001D22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double proto::gnss::Velocity::MergeFrom(proto::gnss::Velocity *this, const proto::gnss::Velocity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      result = *(a2 + 1);
      *(this + 15) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 15);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 15) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = *(a2 + 3);
    *(this + 15) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 4);
    *(this + 15) |= 8u;
    *(this + 4) = result;
    v5 = *(a2 + 15);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_16:
    result = *(a2 + 5);
    *(this + 15) |= 0x10u;
    *(this + 5) = result;
    if ((*(a2 + 15) & 0x20) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 6);
    *(this + 15) |= 0x20u;
    *(this + 6) = result;
  }

  return result;
}

void sub_10001D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *proto::gnss::Fix::SharedDtor(void *this)
{
  if (proto::gnss::Fix::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

void proto::gnss::Fix::~Fix(proto::gnss::Fix *this)
{
  *this = off_1001796B8;
  proto::gnss::Fix::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_1001796B8;
  proto::gnss::Fix::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001796B8;
  proto::gnss::Fix::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void proto::gnss::Time::~Time(proto::gnss::Time *this)
{
  *this = off_100179640;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100179640;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179640;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t GnssDeviceCommon::powerReportCallback(uint64_t a1, uint64_t *a2)
{
  NonAsicPowerAdder = GnssDeviceCommon::getNonAsicPowerAdder(a1, (a1 + 184));
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v11 = NonAsicPowerAdder;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#gdm,powerReportCallback,adding non-asic power for platform, %{public}.1f", buf, 0xCu);
  }

  v6 = *a2;
  if (*a2)
  {
    *(v6 + 24) = NonAsicPowerAdder + *(v6 + 24);
  }

  v7 = *(a1 + 216);
  *a2 = 0;
  v9 = v6;
  (*(*v7 + 72))(v7, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10001D648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

double GnssDeviceCommon::getNonAsicPowerAdder(uint64_t a1, double *a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v8 = *a2;
    if (*(a1 + 242))
    {
      v9 = *(a2 + 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a2 + 3);
    if (*(a1 + 243))
    {
      v11 = *(a2 + 2);
    }

    else
    {
      v11 = 0;
    }

    v12 = 134349824;
    v13 = v8;
    v14 = 2050;
    v15 = v10;
    v16 = 2050;
    v17 = v9;
    v18 = 2050;
    v19 = v11;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#gdm,getNonAsicPowerAdder,base,%{public}.1f,osc,%{public}.1f,l1_lna,%{public}.1f,l5_lna,%{public}.1f", &v12, 0x2Au);
  }

  v5 = a2[1];
  v6 = 0.0;
  if (!*(a1 + 242))
  {
    v5 = 0.0;
  }

  if (*(a1 + 243))
  {
    v6 = a2[2];
  }

  return *a2 + a2[3] + v5 + v6;
}

uint64_t ___ZZN21GpsdGnssDeviceManager14setPowerReportENSt3__18functionIFvN4gnss6ResultEEEEENK3__0clENS0_10unique_ptrINS2_14PwrMeasurementENS0_14default_deleteIS8_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  v5 = v3;
  GnssDeviceCommon::powerReportCallback(v1 + 8, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10001D7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void GpsdIndicationHandler::send(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v2 = off_100179D00;
    v3 = 0u;
    v4 = 0u;
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    v11 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    memset(v15, 0, sizeof(v15));
    LODWORD(v3) = 3;
    v16 = 0x2100000000;
    operator new();
  }
}

void proto::gnss::PwrMeasurement::MergeFrom(proto::gnss::PwrMeasurement *this, const proto::gnss::PwrMeasurement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v5 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 12);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 12) |= 2u;
    *(this + 2) = v6;
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    v7 = *(a2 + 3);
    *(this + 12) |= 4u;
    *(this + 3) = v7;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_14:
      v9 = *(a2 + 10);
      if (v9 >= 2)
      {
        __assert_rtn("set_status", "GnssTypes.pb.h", 3193, "::proto::gnss::PwrMeasurement_PowerLoggingStatus_IsValid(value)");
      }

      *(this + 12) |= 0x10u;
      *(this + 10) = v9;
      return;
    }

LABEL_13:
    v8 = *(a2 + 4);
    *(this + 12) |= 8u;
    *(this + 4) = v8;
    if ((*(a2 + 12) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_14;
  }
}

void sub_10001DABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::PwrMeasurement::~PwrMeasurement(proto::gnss::PwrMeasurement *this)
{
  *this = off_100179988;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100179988;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179988;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

unint64_t gpsd::util::getMachAbsoluteTimeNs(gpsd::util *this)
{
  {
    getTickToNsInfo();
  }

  v1 = mach_absolute_time();
  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((v1 >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

double ReceiverClockConversion::feedPvtmCallback(ReceiverClockConversion *this, unint64_t a2, double a3)
{
  ReceiverClockConversion::checkRxClockForHwReset(this, a2);
  ReceiverClockConversion::usePvtmReceiptTime(this, a2, a3);
  result = *this + a2 * 0.000000001;
  v7 = *(this + 2) + vabdd_f64(a3, *(this + 1)) * 0.00002;
  return result;
}

void ReceiverClockConversion::checkRxClockForHwReset(ReceiverClockConversion *this, uint64_t a2)
{
  v4 = *(this + 3);
  if (a2 + 2000000000 < v4)
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134349312;
      v7 = v4;
      v8 = 2050;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#rxClockConv,reset detected,lastNs,%{public}llu,currNs,%{public}llu", &v6, 0x16u);
    }

    *(this + 32) = 0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  *(this + 3) = a2;
}

void ReceiverClockConversion::usePvtmReceiptTime(ReceiverClockConversion *this, unint64_t a2, double a3)
{
  if ((*(this + 32) & 1) == 0)
  {
    v3 = a3 + a2 * -0.000000001 + -0.166;
    *this = v3;
    *(this + 1) = a3;
    *(this + 2) = 0x3FD3333333333333;
    *(this + 32) = 1;
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134349312;
      v6 = v3;
      v7 = 2050;
      v8 = 0x3FD3333333333333;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#rxClockConv,method,receipt,rxClockToMct,%{public}.4f,uncSec,%{public}.4f", &v5, 0x16u);
    }
  }
}

uint64_t gnss::MeasurementData::fillIsUsableFlag(gnss::MeasurementData *this)
{
  result = GpsdPlatformInfo::instance(0);
  v3 = *(result + 8) - 103;
  v4 = v3 > 4;
  v5 = (1 << v3) & 0x19;
  if (!v4 && v5 != 0)
  {
    v7 = *(this + 19);
    for (i = *(this + 20); v7 != i; v7 += 176)
    {
      v9 = *(v7 + 56);
      if (v9 >= 5000.0)
      {
        *(v7 + 56) = -1082130432;
        v9 = -1.0;
      }

      v10 = *(v7 + 72);
      if (v10 >= 50.0)
      {
        *(v7 + 72) = 0xBFF0000000000000;
        v10 = -1.0;
      }

      v11 = v9 > 0.0 && *(v7 + 48) >= 0.0 || (*(v7 + 64) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10 > 0.0;
      *(v7 + 173) = v11;
    }
  }

  return result;
}

void GpsdIndicationHandler::send(GpsdIndicationHandler *this, const gnss::MeasurementData *a2)
{
  GpsdPerformanceSummary::appendPvtmCallbackContents(*(this + 2), 0, a2 + 40);
  v2 = off_100179D00;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  LODWORD(v3) = 1;
  v16 = 0x1100000000;
  operator new();
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result, a2);
    }

    std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void GpsdPerformanceSummary::Session::recordClockFrequency(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v3 = *(a2 + 104);
    v4 = (LODWORD(v3) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
    v5 = v3 < 0.0 && ((LODWORD(v3) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
    if (v3 >= 0.0)
    {
      v4 = 0;
    }

    v6 = (LODWORD(v3) & 0x7FFFFFFF) == 0x7F800000 || v4;
    if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F800000)
    {
      v6 = 1;
    }

    if (((v6 | v5) & 1) == 0)
    {
      if (*(a1 + 176) == 1)
      {
        v7 = v3;
        if (*(a1 + 168) <= v3)
        {
          return;
        }

        v8 = v2 + *(a2 + 96);
        *(a1 + 160) = v8;
        *(a1 + 168) = v7;
      }

      else
      {
        v8 = v2 + *(a2 + 96);
        v7 = v3;
        *(a1 + 160) = v8;
        *(a1 + 168) = v3;
        *(a1 + 176) = 1;
      }

      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        v10 = 134349312;
        v11 = v8;
        v12 = 2050;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#clk,updateSavedOffset,ppb,%{public}.2f,unc,%{public}.2f", &v10, 0x16u);
      }
    }
  }
}

float CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 32))
  {
    v6 = *(a2 + 4);
    if (v6 >= 0xD)
    {
      __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 11445, "::CLP::LogEntry::PrivateData::Band_IsValid(value)");
    }

    *(this + 8) |= 1u;
    *(this + 4) = v6;
    v5 = *(a2 + 8);
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    LODWORD(v4) = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = v4;
    if ((*(a2 + 8) & 8) == 0)
    {
      return *&v4;
    }

    goto LABEL_10;
  }

  v4 = *(a2 + 1);
  *(this + 8) |= 2u;
  *(this + 1) = v4;
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v5 & 8) != 0)
  {
LABEL_10:
    LODWORD(v4) = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = v4;
  }

  return *&v4;
}

void sub_10001E36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_10001E458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::Clock::MergeFrom(CLP::LogEntry::PrivateData::Clock *this, const CLP::LogEntry::PrivateData::Clock *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(this + 11) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
    }

    *&result = CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(v7, v8);
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v6 = *(a2 + 1);
  *(this + 11) |= 1u;
  *(this + 1) = v6;
  v5 = *(a2 + 11);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(this + 11) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  result = CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(v9, v10);
  if ((*(a2 + 11) & 8) != 0)
  {
LABEL_20:
    *(this + 11) |= 8u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(v11, v12);
  }

  return result;
}

void sub_10001E680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      result = *(a2 + 2);
      *(this + 8) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 8) |= 2u;
    *(this + 3) = result;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 4);
    *(this + 8) |= 4u;
    *(this + 4) = result;
    v5 = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 5);
    *(this + 8) |= 8u;
    *(this + 5) = result;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 24);
    *(this + 8) |= 0x10u;
    *(this + 24) = v6;
  }

  return result;
}

void sub_10001E7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(CLP::LogEntry::PrivateData::TimeConversionInfo *this, const CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    *(this + 13) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(v5, v6);
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_20:
      *(this + 13) |= 4u;
      v9 = *(this + 3);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 3);
      if (!v10)
      {
        v10 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 24);
      }

      CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(v9, v10);
      v4 = *(a2 + 13);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_30;
      }

      goto LABEL_25;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 13) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 16);
  }

  CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(v7, v8);
  v4 = *(a2 + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  *(this + 13) |= 8u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 32);
  }

  CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(v11, v12);
  if ((*(a2 + 13) & 0x10) != 0)
  {
LABEL_30:
    *(this + 13) |= 0x10u;
    v13 = *(this + 5);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 5);
    if (!v14)
    {
      v14 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 40);
    }

    CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(v13, v14);
  }
}

void sub_10001EAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void GpsdIndicationHandler::send(uint64_t a1, _BYTE *a2, double a3)
{
  if (*a2 == 4)
  {
    v3 = *(a1 + 16);
    v4 = a2[24];
    *(v3 + 80) = a3;
    *(v3 + 96) = v4;
  }

  v5 = off_100179D00;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  LODWORD(v6) = 18;
  v19 = 0x40100000000;
  operator new();
}

void NSXPCConnection.onData(_:)()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in NSXPCConnection.onData(_:);
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor;
  v2 = _Block_copy(aBlock);
  v3 = v0;

  v4 = [v3 remoteObjectProxyWithErrorHandler:v2];
  _Block_release(v2);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6GPSXPC14GPSXPCProtocol_pMd, &_s6GPSXPC14GPSXPCProtocol_pMR);
  if (swift_dynamicCast())
  {
    v5.super.isa = Data._bridgeToObjectiveC()().super.isa;
    [v9 onData:v5.super.isa];
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for xpclog != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, xpclog);
    v5.super.isa = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5.super.isa, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5.super.isa, v7, "Invalid proxy", v8, 2u);
    }
  }
}

uint64_t sub_10001EE60()
{

  return _swift_deallocObject(v0, 24, 7);
}

void proto::gpsd::Indication::MergeFrom(proto::gpsd::Indication *this, const proto::gpsd::Indication *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v56);
  }

  v4 = *(a2 + 54);
  if (!v4)
  {
    goto LABEL_46;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    if (v5 > 0x1B || ((1 << v5) & 0xFDFFE3F) == 0)
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 7746, "::proto::gpsd::Indication_Type_IsValid(value)");
    }

    *(this + 54) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 54);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 3);
    if (!proto::gpsd::Request_Type_IsValid(v7))
    {
      __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7769, "::proto::gpsd::Request_Type_IsValid(value)");
    }

    *(this + 54) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 54);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 54) |= 4u;
    *(this + 2) = v8;
    v4 = *(a2 + 54);
    if ((v4 & 8) == 0)
    {
LABEL_15:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_15;
  }

  *(this + 54) |= 8u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    v10 = *(proto::gpsd::Indication::default_instance_ + 24);
  }

  proto::gnss::Fix::MergeFrom(v9, v10);
  v4 = *(a2 + 54);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_31:
    *(this + 54) |= 0x20u;
    v13 = *(this + 5);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 5);
    if (!v14)
    {
      v14 = *(proto::gpsd::Indication::default_instance_ + 40);
    }

    proto::gnss::PwrMeasurement::MergeFrom(v13, v14);
    v4 = *(a2 + 54);
    if ((v4 & 0x40) == 0)
    {
LABEL_18:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(this + 54) |= 0x10u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    v12 = *(proto::gpsd::Indication::default_instance_ + 32);
  }

  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(v11, v12);
  v4 = *(a2 + 54);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_36:
  *(this + 54) |= 0x40u;
  v15 = *(this + 6);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 6);
  if (!v16)
  {
    v16 = *(proto::gpsd::Indication::default_instance_ + 48);
  }

  proto::gpsd::Status::MergeFrom(v15, v16);
  v4 = *(a2 + 54);
  if ((v4 & 0x80) != 0)
  {
LABEL_41:
    *(this + 54) |= 0x80u;
    v17 = *(this + 7);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 7);
    if (!v18)
    {
      v18 = *(proto::gpsd::Indication::default_instance_ + 56);
    }

    proto::gnss::TimeTransferDataExtend::MergeFrom(v17, v18);
    v4 = *(a2 + 54);
  }

LABEL_46:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_90;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 54) |= 0x100u;
    v19 = *(this + 8);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 8);
    if (!v20)
    {
      v20 = *(proto::gpsd::Indication::default_instance_ + 64);
    }

    proto::gpsd::RecoveryStatistics::MergeFrom(v19, v20);
    v4 = *(a2 + 54);
    if ((v4 & 0x200) == 0)
    {
LABEL_49:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  *(this + 54) |= 0x200u;
  v21 = *(this + 9);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 9);
  if (!v22)
  {
    v22 = *(proto::gpsd::Indication::default_instance_ + 72);
  }

  proto::gpsd::LtlInfoRequest::MergeFrom(v21, v22);
  v4 = *(a2 + 54);
  if ((v4 & 0x400) == 0)
  {
LABEL_50:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(this + 54) |= 0x400u;
  v23 = *(this + 10);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 10);
  if (!v24)
  {
    v24 = *(proto::gpsd::Indication::default_instance_ + 80);
  }

  proto::gnss::DecodedExtendedEphemeris::MergeFrom(v23, v24);
  v4 = *(a2 + 54);
  if ((v4 & 0x800) == 0)
  {
LABEL_51:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(this + 54) |= 0x800u;
  v25 = *(this + 11);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 11);
  if (!v26)
  {
    v26 = *(proto::gpsd::Indication::default_instance_ + 88);
  }

  proto::gnss::DecodedRti::MergeFrom(v25, v26);
  v4 = *(a2 + 54);
  if ((v4 & 0x1000) == 0)
  {
LABEL_52:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_78;
  }

LABEL_76:
  v27 = *(a2 + 24);
  if (v27 >= 0xA)
  {
    __assert_rtn("set_start_status", "GpsdProtocol.pb.h", 0x2000, "::proto::gnss::Result_IsValid(value)");
  }

  *(this + 54) |= 0x1000u;
  *(this + 24) = v27;
  v4 = *(a2 + 54);
  if ((v4 & 0x2000) == 0)
  {
LABEL_53:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_80;
  }

LABEL_78:
  v28 = *(a2 + 25);
  if (v28 >= 0xA)
  {
    __assert_rtn("set_stop_status", "GpsdProtocol.pb.h", 8215, "::proto::gnss::Result_IsValid(value)");
  }

  *(this + 54) |= 0x2000u;
  *(this + 25) = v28;
  v4 = *(a2 + 54);
  if ((v4 & 0x4000) == 0)
  {
LABEL_54:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

LABEL_80:
  *(this + 54) |= 0x4000u;
  v29 = *(this + 13);
  if (!v29)
  {
    operator new();
  }

  v30 = *(a2 + 13);
  if (!v30)
  {
    v30 = *(proto::gpsd::Indication::default_instance_ + 104);
  }

  proto::gpsd::Exception::MergeFrom(v29, v30);
  v4 = *(a2 + 54);
  if ((v4 & 0x8000) != 0)
  {
LABEL_85:
    *(this + 54) |= 0x8000u;
    v31 = *(this + 14);
    if (!v31)
    {
      operator new();
    }

    v32 = *(a2 + 14);
    if (!v32)
    {
      v32 = *(proto::gpsd::Indication::default_instance_ + 112);
    }

    proto::gpsd::AskBasebandReset::MergeFrom(v31, v32);
    v4 = *(a2 + 54);
  }

LABEL_90:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_138;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(this + 54) |= 0x10000u;
    v33 = *(this + 15);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 15);
    if (!v34)
    {
      v34 = *(proto::gpsd::Indication::default_instance_ + 120);
    }

    proto::gnss::Emergency::SummaryReport::MergeFrom(v33, v34);
    v4 = *(a2 + 54);
    if ((v4 & 0x20000) == 0)
    {
LABEL_93:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_108;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_93;
  }

  v35 = *(a2 + 16);
  *(this + 54) |= 0x20000u;
  v36 = *(this + 16);
  if (v36 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v36, v35);
  v4 = *(a2 + 54);
  if ((v4 & 0x40000) == 0)
  {
LABEL_94:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_113;
  }

LABEL_108:
  *(this + 54) |= 0x40000u;
  v37 = *(this + 17);
  if (!v37)
  {
    operator new();
  }

  v38 = *(a2 + 17);
  if (!v38)
  {
    v38 = *(proto::gpsd::Indication::default_instance_ + 136);
  }

  proto::gnss::Emergency::PositionReport::MergeFrom(v37, v38);
  v4 = *(a2 + 54);
  if ((v4 & 0x80000) == 0)
  {
LABEL_95:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_118;
  }

LABEL_113:
  *(this + 54) |= 0x80000u;
  v39 = *(this + 18);
  if (!v39)
  {
    operator new();
  }

  v40 = *(a2 + 18);
  if (!v40)
  {
    v40 = *(proto::gpsd::Indication::default_instance_ + 144);
  }

  proto::gnss::Emergency::MeasurementReport::MergeFrom(v39, v40);
  v4 = *(a2 + 54);
  if ((v4 & 0x100000) == 0)
  {
LABEL_96:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_123;
  }

LABEL_118:
  *(this + 54) |= 0x100000u;
  v41 = *(this + 19);
  if (!v41)
  {
    operator new();
  }

  v42 = *(a2 + 19);
  if (!v42)
  {
    v42 = *(proto::gpsd::Indication::default_instance_ + 152);
  }

  proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(v41, v42);
  v4 = *(a2 + 54);
  if ((v4 & 0x200000) == 0)
  {
LABEL_97:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_128;
  }

LABEL_123:
  *(this + 54) |= 0x200000u;
  v43 = *(this + 20);
  if (!v43)
  {
    operator new();
  }

  v44 = *(a2 + 20);
  if (!v44)
  {
    v44 = *(proto::gpsd::Indication::default_instance_ + 160);
  }

  proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(v43, v44);
  v4 = *(a2 + 54);
  if ((v4 & 0x400000) == 0)
  {
LABEL_98:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_133;
  }

LABEL_128:
  *(this + 54) |= 0x400000u;
  v45 = *(this + 21);
  if (!v45)
  {
    operator new();
  }

  v46 = *(a2 + 21);
  if (!v46)
  {
    v46 = *(proto::gpsd::Indication::default_instance_ + 168);
  }

  proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(v45, v46);
  v4 = *(a2 + 54);
  if ((v4 & 0x800000) != 0)
  {
LABEL_133:
    *(this + 54) |= 0x800000u;
    v47 = *(this + 22);
    if (!v47)
    {
      operator new();
    }

    v48 = *(a2 + 22);
    if (!v48)
    {
      v48 = *(proto::gpsd::Indication::default_instance_ + 176);
    }

    proto::gnss::Emergency::SessionStatus::MergeFrom(v47, v48);
    v4 = *(a2 + 54);
  }

LABEL_138:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(this + 54) |= 0x1000000u;
    v52 = *(this + 23);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 23);
    if (!v53)
    {
      v53 = *(proto::gpsd::Indication::default_instance_ + 184);
    }

    proto::gnss::Emergency::Init::MergeFrom(v52, v53);
    v4 = *(a2 + 54);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_141:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_157;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_141;
  }

  v54 = *(a2 + 48);
  *(this + 54) |= 0x2000000u;
  *(this + 48) = v54;
  v4 = *(a2 + 54);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_142:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

LABEL_157:
  v55 = *(a2 + 49);
  if (v55 >= 3 && v55 != 4)
  {
    __assert_rtn("set_supl_init_decode_result", "GpsdProtocol.pb.h", 8750, "::proto::gpsd::SuplInitDecodeResult_IsValid(value)");
  }

  *(this + 54) |= 0x4000000u;
  *(this + 49) = v55;
  v4 = *(a2 + 54);
  if ((v4 & 0x8000000) == 0)
  {
    goto LABEL_144;
  }

LABEL_143:
  v49 = *(a2 + 52);
  *(this + 54) |= 0x8000000u;
  *(this + 52) = v49;
  v4 = *(a2 + 54);
LABEL_144:
  if ((v4 & 0x10000000) != 0)
  {
    *(this + 54) |= 0x10000000u;
    v50 = *(this + 25);
    if (!v50)
    {
      operator new();
    }

    v51 = *(a2 + 25);
    if (!v51)
    {
      v51 = *(proto::gpsd::Indication::default_instance_ + 200);
    }

    proto::gnss::Emergency::WlanMeasurementRequest::MergeFrom(v50, v51);
  }
}

void sub_10001FB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

proto::gpsd::Indication *proto::gpsd::Indication::Indication(proto::gpsd::Indication *this, const proto::gpsd::Indication *a2)
{
  *this = off_100179D00;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  proto::gpsd::Indication::MergeFrom(this, a2);
  return this;
}

void *proto::gpsd::Indication::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[16];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (proto::gpsd::Indication::default_instance_ != this)
  {
    v4 = this[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[13];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[14];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[15];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[17];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[18];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[19];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[20];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[21];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[22];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[23];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    this = v1[25];
    if (this)
    {
      v23 = *(*this + 8);

      return v23();
    }
  }

  return this;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t GnssDeviceCommon::decodedEphemerisCallback(uint64_t a1, unsigned __int8 *a2)
{
  v13 = 0;
  PossiblyAccurateGpsTimeSeconds = GnssDeviceCommon::getPossiblyAccurateGpsTimeSeconds(a1, &v13);
  v5 = *(a2 + 1);
  v6 = PossiblyAccurateGpsTimeSeconds - v5;
  v7 = a2[24];
  v8 = GpsdLogObjectGeneral;
  if ((v7 & (v6 * 0.0000115740741 < 7.0)) != 0)
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, v9))
  {
    v10 = *a2;
    *buf = 67241472;
    v15 = v10;
    v16 = 1026;
    v17 = v7;
    v18 = 2050;
    v19 = v5;
    v20 = 2050;
    v21 = v6;
    v22 = 2050;
    v23 = v6 * 0.0000115740741;
    v24 = 1026;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "#gdm,#ee,decodedEphemeris,type,%{public}d,integrityValid,%{public}d,dataTimeGpsSec,%{public}llu,ageSecs,%{public}.1f,ageDays,%{public}.2f,isAgeAccurate,%{public}d", buf, 0x32u);
  }

  if ((*a2 & 0xFB) == 0)
  {
    if (a2[24])
    {
      v11 = *(a2 + 1);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 24) = v11;
  }

  return (*(**(a1 + 216) + 56))(*(a1 + 216), a2, v6 * 0.0000115740741);
}

CFAbsoluteTime GnssDeviceCommon::getPossiblyAccurateGpsTimeSeconds(GnssDeviceCommon *this, BOOL *a2)
{
  if (*(this + 232) == 1)
  {
    *a2 = 1;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(this);
    if ((*(this + 232) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    return (*(this + 28) + MachContinuousTimeNs) * 0.000000001;
  }

  else
  {
    *a2 = 0;
    return CFAbsoluteTimeGetCurrent() + -5.0 + 662342413.0;
  }
}

uint64_t proto::gnss::DecodedExtendedEphemeris::ByteSize(proto::gnss::DecodedExtendedEphemeris *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (v3)
  {
    if (*(this + 36))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v4 = 0;
    }

    v5 = (v3 & 2u) + v4;
    if ((v3 & 4) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2), a2) + 1;
      v3 = *(this + 9);
    }

    if ((v3 & 8) != 0)
    {
      v6 = *(this + 7);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 8) = v5;
  return v5;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t GpsdClientManager.handleIndication(data:)()
{
  v1 = (*(*v0 + 112))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      outlined init with copy of DataClient(v3, v7);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        NSXPCConnection.onData(_:)();
      }

      outlined destroy of DataClient(v7);
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

uint64_t GpsdClientManager._clientsIndication.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

void *CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

void proto::gnss::Velocity::~Velocity(proto::gnss::Velocity *this)
{
  *this = off_1001795C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_1001795C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001795C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void std::default_delete<cproto::gpsd::SetAssistanceGyro>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<gnss::SvInfo>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,float *,true>(uint64_t result, float *a2, uint64_t a3, char a4, double a5)
{
  v7 = result;
  v8 = "ceMotionActivityContextE";
  v9 = xmmword_100149490;
  v10 = xmmword_1001494A0;
LABEL_2:
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v149 = v11[1];
          v150 = *(a2 - 1);
          if (v149 > v150)
          {
            v151 = *(v11 + 1);
          }

          else
          {
            v151 = *(a2 - 1);
          }

          if (v149 > v150)
          {
            v149 = *(a2 - 1);
          }

          *(a2 - 1) = v149;
          *(v11 + 1) = v151;
          v152 = *(a2 - 1);
          if (v152 > *v11)
          {
            v153 = *(a2 - 1);
          }

          else
          {
            v153 = *v11;
          }

          if (v152 > *v11)
          {
            v152 = *v11;
          }

          *(a2 - 1) = v152;
          v155 = *v11;
          v154 = v11[1];
          if (v153 <= v154)
          {
            v155 = v11[1];
            v154 = v153;
          }

          *v11 = v155;
          v11[1] = v154;
          return result;
        case 4:
          v157 = v11[1];
          v156 = v11[2];
          if (*v11 > v156)
          {
            v158 = *v11;
          }

          else
          {
            v158 = v11[2];
          }

          if (*v11 <= v156)
          {
            v156 = *v11;
          }

          v11[2] = v156;
          *v11 = v158;
          v159 = *(a2 - 1);
          if (v157 > v159)
          {
            v160 = v157;
          }

          else
          {
            v160 = *(a2 - 1);
          }

          if (v157 <= v159)
          {
            v159 = v157;
          }

          *(a2 - 1) = v159;
          v161 = *v11;
          if (*v11 > v160)
          {
            v162 = *v11;
          }

          else
          {
            v162 = v160;
          }

          if (*v11 > v160)
          {
            v161 = v160;
          }

          *v11 = v162;
          v11[1] = v161;
          v163 = v11[2];
          v164 = *(a2 - 1);
          if (v163 > v164)
          {
            v165 = v11[2];
          }

          else
          {
            v165 = *(a2 - 1);
          }

          if (v163 > v164)
          {
            v163 = *(a2 - 1);
          }

          *(a2 - 1) = v163;
          v166 = v11[1];
          if (v166 > v165)
          {
            v167 = v11[1];
          }

          else
          {
            v167 = v165;
          }

          if (v166 > v165)
          {
            v166 = v165;
          }

          v11[1] = v167;
          v11[2] = v166;
          return result;
        case 5:
          v127 = *v11;
          v128 = v11[1];
          if (*v11 > v128)
          {
            v129 = *v11;
          }

          else
          {
            v129 = v11[1];
          }

          if (*v11 > v128)
          {
            v127 = v11[1];
          }

          *v11 = v129;
          v11[1] = v127;
          v130 = v11[3];
          v131 = *(a2 - 1);
          if (v130 > v131)
          {
            v132 = *(v11 + 3);
          }

          else
          {
            v132 = *(a2 - 1);
          }

          if (v130 > v131)
          {
            v130 = *(a2 - 1);
          }

          *(a2 - 1) = v130;
          *(v11 + 3) = v132;
          v133 = *(a2 - 1);
          v134 = v11[2];
          if (v133 > v134)
          {
            v135 = *(a2 - 1);
          }

          else
          {
            v135 = v11[2];
          }

          if (v133 > v134)
          {
            v133 = v11[2];
          }

          *(a2 - 1) = v133;
          v137 = *(v11 + 2);
          v136 = v11[3];
          v138 = v11[1];
          if (v135 <= v136)
          {
            v137 = *(v11 + 3);
            v136 = v135;
          }

          *(v11 + 2) = v137;
          v11[3] = v136;
          v139 = *(a2 - 1);
          if (v138 > v139)
          {
            v140 = v138;
          }

          else
          {
            v140 = *(a2 - 1);
          }

          if (v138 <= v139)
          {
            v139 = v138;
          }

          *(a2 - 1) = v139;
          v141 = *v11;
          v143 = v11[2];
          v142 = v11[3];
          if (v142 > *v11)
          {
            v144 = v11[3];
          }

          else
          {
            v144 = *v11;
          }

          if (v142 > *v11)
          {
            v142 = *v11;
          }

          if (v144 <= v143)
          {
            v141 = v11[2];
            v143 = v144;
          }

          if (v142 > v140)
          {
            v145 = v142;
          }

          else
          {
            v145 = v140;
          }

          if (v142 > v140)
          {
            v142 = v140;
          }

          if (v145 <= v143)
          {
            v140 = v143;
          }

          *v11 = v141;
          v11[1] = v140;
          if (v145 > v143)
          {
            v146 = v143;
          }

          else
          {
            v146 = v145;
          }

          v11[2] = v146;
          v11[3] = v142;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v147 = *(a2 - 1);
        v148 = *v11;
        if (v147 > *v11)
        {
          *v11 = v147;
          *(a2 - 1) = v148;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v178 = (v12 - 2) >> 1;
      v179 = v178;
      do
      {
        v180 = v179;
        if (v178 >= v179)
        {
          v181 = (2 * v179) | 1;
          v182 = &v11[v181];
          if (2 * v180 + 2 < v12 && *v182 > v182[1])
          {
            ++v182;
            v181 = 2 * v180 + 2;
          }

          v183 = &v11[v180];
          v184 = *v182;
          v185 = *v183;
          if (*v182 <= *v183)
          {
            do
            {
              *v183 = v184;
              v183 = v182;
              if (v178 < v181)
              {
                break;
              }

              v186 = 2 * v181;
              v181 = (2 * v181) | 1;
              v182 = &v11[v181];
              v187 = v186 + 2;
              if (v187 < v12 && *v182 > v182[1])
              {
                ++v182;
                v181 = v187;
              }

              v184 = *v182;
            }

            while (*v182 <= v185);
            *v183 = v185;
          }
        }

        v179 = v180 - 1;
      }

      while (v180);
      while (2)
      {
        v188 = 0;
        v189 = *v11;
        v190 = v11;
        do
        {
          v191 = v190;
          v192 = &v190[v188];
          v190 = v192 + 1;
          v193 = 2 * v188;
          v188 = (2 * v188) | 1;
          v194 = v193 + 2;
          if (v194 < v12)
          {
            v196 = v192[2];
            v195 = v192 + 2;
            if (*(v195 - 1) > v196)
            {
              v190 = v195;
              v188 = v194;
            }
          }

          *v191 = *v190;
        }

        while (v188 <= ((v12 - 2) >> 1));
        if (v190 == --a2)
        {
LABEL_307:
          *v190 = v189;
        }

        else
        {
          *v190 = *a2;
          *a2 = v189;
          v197 = (v190 - v11 + 4) >> 2;
          v20 = v197 < 2;
          v198 = v197 - 2;
          if (!v20)
          {
            v199 = v198 >> 1;
            v200 = &v11[v199];
            v201 = *v200;
            v189 = *v190;
            if (*v200 > *v190)
            {
              do
              {
                *v190 = v201;
                v190 = v200;
                if (!v199)
                {
                  break;
                }

                v199 = (v199 - 1) >> 1;
                v200 = &v11[v199];
                v201 = *v200;
              }

              while (*v200 > v189);
              goto LABEL_307;
            }
          }
        }

        v20 = v12-- <= 2;
        if (v20)
        {
          return result;
        }

        continue;
      }
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      if (*v11 > v14)
      {
        v47 = *v11;
      }

      else
      {
        v47 = *(a2 - 1);
      }

      if (*v11 <= v14)
      {
        v14 = *v11;
      }

      *(a2 - 1) = v14;
      *v11 = v47;
      v48 = *(a2 - 1);
      v49 = v11[v13];
      if (v48 > v49)
      {
        v50 = *(a2 - 1);
      }

      else
      {
        v50 = v11[v13];
      }

      if (v48 > v49)
      {
        v48 = v11[v13];
      }

      *(a2 - 1) = v48;
      v51 = *v11;
      v52 = v50 <= *v11;
      if (v50 > *v11)
      {
        v51 = v11[v13];
      }

      v11[v13] = v51;
      *&a5 = *v11;
      if (v52)
      {
        *&a5 = v50;
      }

      *v11 = *&a5;
    }

    else
    {
      v15 = &v11[v13];
      if (*v15 > v14)
      {
        v16 = *v15;
      }

      else
      {
        v16 = *(a2 - 1);
      }

      if (*v15 <= v14)
      {
        v14 = *v15;
      }

      *(a2 - 1) = v14;
      *v15 = v16;
      v17 = *(a2 - 1);
      if (v17 > *v11)
      {
        v18 = *(a2 - 1);
      }

      else
      {
        v18 = *v11;
      }

      if (v17 > *v11)
      {
        v17 = *v11;
      }

      *(a2 - 1) = v17;
      v19 = *v15;
      v20 = v18 <= *v15;
      if (v18 > *v15)
      {
        v19 = *v11;
      }

      *v11 = v19;
      v22 = *(v15 - 1);
      v21 = *v15;
      if (v20)
      {
        v21 = v18;
      }

      *v15 = v21;
      v23 = *(a2 - 2);
      if (v22 > v23)
      {
        v24 = v22;
      }

      else
      {
        v24 = *(a2 - 2);
      }

      if (v22 <= v23)
      {
        v23 = v22;
      }

      *(a2 - 2) = v23;
      *(v15 - 1) = v24;
      v25 = *(a2 - 2);
      v26 = v11[1];
      if (v25 > v26)
      {
        v27 = *(a2 - 2);
      }

      else
      {
        v27 = v11[1];
      }

      if (v25 > v26)
      {
        v25 = v11[1];
      }

      *(a2 - 2) = v25;
      v28 = *(v15 - 1);
      v29 = v27 <= v28;
      if (v27 > v28)
      {
        v28 = v11[1];
      }

      v11[1] = v28;
      v30 = *(v15 - 1);
      if (v29)
      {
        v30 = v27;
      }

      *(v15 - 1) = v30;
      v31 = v15[1];
      v32 = *(a2 - 3);
      if (v31 > v32)
      {
        v33 = *(v15 + 1);
      }

      else
      {
        v33 = *(a2 - 3);
      }

      if (v31 > v32)
      {
        v31 = *(a2 - 3);
      }

      *(a2 - 3) = v31;
      *(v15 + 1) = v33;
      v34 = *(a2 - 3);
      v35 = v11[2];
      if (v34 > v35)
      {
        v36 = *(a2 - 3);
      }

      else
      {
        v36 = v11[2];
      }

      if (v34 > v35)
      {
        v34 = v11[2];
      }

      *(a2 - 3) = v34;
      v37 = v15[1];
      v38 = v36 <= v37;
      if (v36 > v37)
      {
        v37 = v11[2];
      }

      v11[2] = v37;
      v40 = *v15;
      v39 = v15[1];
      if (v38)
      {
        v39 = v36;
      }

      v41 = *(v15 - 1);
      if (v40 > v39)
      {
        v42 = *v15;
      }

      else
      {
        v42 = v39;
      }

      if (v40 <= v39)
      {
        v39 = *v15;
      }

      if (v39 > v41)
      {
        v43 = v39;
      }

      else
      {
        v43 = *(v15 - 1);
      }

      if (v39 > v41)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v39;
      }

      if (v43 > v42)
      {
        v45 = *(v15 - 1);
      }

      else
      {
        v45 = v42;
      }

      if (v43 > v42)
      {
        v43 = v42;
      }

      *(v15 - 1) = v45;
      *v15 = v43;
      v15[1] = v44;
      v46 = *v11;
      *v11 = v43;
      *v15 = v46;
      *&a5 = *v11;
    }

    --a3;
    if ((a4 & 1) == 0 && *(v11 - 1) <= *&a5)
    {
      if (*&a5 <= *(a2 - 1))
      {
        v119 = v11 + 1;
        do
        {
          v11 = v119;
          if (v119 >= a2)
          {
            break;
          }

          ++v119;
        }

        while (*&a5 <= *v11);
      }

      else
      {
        do
        {
          v118 = v11[1];
          ++v11;
        }

        while (*&a5 <= v118);
      }

      v120 = a2;
      if (v11 < a2)
      {
        v120 = a2;
        do
        {
          v121 = *--v120;
        }

        while (*&a5 > v121);
      }

      if (v11 < v120)
      {
        v122 = *v11;
        v123 = *v120;
        do
        {
          *v11 = v123;
          *v120 = v122;
          do
          {
            v124 = v11[1];
            ++v11;
            v122 = v124;
          }

          while (*&a5 <= v124);
          do
          {
            v125 = *--v120;
            v123 = v125;
          }

          while (*&a5 > v125);
        }

        while (v11 < v120);
      }

      v126 = v11 - 1;
      if (v11 - 1 != v7)
      {
        *v7 = *v126;
      }

      a4 = 0;
      *v126 = *&a5;
      continue;
    }

    if (*&a5 <= *(a2 - 1))
    {
      v55 = v11 + 1;
      do
      {
        v53 = v55;
        if (v55 >= a2)
        {
          break;
        }

        ++v55;
      }

      while (*&a5 <= *v53);
    }

    else
    {
      v53 = v11;
      do
      {
        v54 = v53[1];
        ++v53;
      }

      while (*&a5 <= v54);
    }

    v56 = a2;
    if (v53 < a2)
    {
      v56 = a2;
      do
      {
        v57 = *--v56;
      }

      while (*&a5 > v57);
    }

    v58 = v53;
    if (v53 < v56)
    {
      v59 = *v53;
      *v53 = *v56;
      v58 = v53 + 1;
      *v56 = v59;
    }

    v60 = v56 - 1;
    v61 = (v56 - 1) - v58;
    if (v61 < 505)
    {
      v62 = 0;
      v92 = v61 >> 2;
      v90 = 1;
LABEL_125:
      v96 = v92 + 1;
      v93 = (v92 + 1) / 2;
      v94 = v96 - v96 / 2;
      goto LABEL_126;
    }

    v62 = 0;
    v63 = 0;
    v64 = vdupq_lane_s32(*&a5, 0);
    do
    {
      if (v63)
      {
        if (v62)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v65 = 0uLL;
        v66 = v10;
        v67 = v9;
        v68 = 0uLL;
        do
        {
          v69 = vmvnq_s8(vcgtq_f32(*(v58 + v63), v64));
          v70.i64[0] = v69.u32[2];
          v70.i64[1] = v69.u32[3];
          v71 = vdupq_n_s64(1uLL);
          v72 = vandq_s8(v70, v71);
          v70.i64[0] = v69.u32[0];
          v70.i64[1] = v69.u32[1];
          v68 = vorrq_s8(vshlq_u64(v72, v67), v68);
          v65 = vorrq_s8(vshlq_u64(vandq_s8(v70, v71), v66), v65);
          v73 = vdupq_n_s64(4uLL);
          v67 = vaddq_s64(v67, v73);
          v66 = vaddq_s64(v66, v73);
          v63 += 16;
        }

        while (v63 != 256);
        v74 = vorrq_s8(v65, v68);
        v63 = vorr_s8(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
        if (v62)
        {
LABEL_105:
          if (!v63)
          {
            goto LABEL_116;
          }

          goto LABEL_113;
        }
      }

      v75 = *(v8 + 73);
      v76 = xmmword_1001494A0;
      v77 = 0uLL;
      v78 = 0x3FFFFFFFFFFFFFFDLL;
      v79 = 0uLL;
      do
      {
        v80 = vrev64q_s32(*&v60[v78]);
        v81 = vcgtq_f32(vextq_s8(v80, v80, 8uLL), v64);
        v82.i64[0] = v81.u32[2];
        v82.i64[1] = v81.u32[3];
        v83 = vdupq_n_s64(1uLL);
        v84 = vandq_s8(v82, v83);
        v82.i64[0] = v81.u32[0];
        v82.i64[1] = v81.u32[1];
        v79 = vorrq_s8(vshlq_u64(v84, v75), v79);
        v77 = vorrq_s8(vshlq_u64(vandq_s8(v82, v83), v76), v77);
        v85 = vdupq_n_s64(4uLL);
        v75 = vaddq_s64(v75, v85);
        v76 = vaddq_s64(v76, v85);
        v78 -= 4;
      }

      while (v78 != -67);
      v86 = vorrq_s8(v77, v79);
      v62 = vorr_s8(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
      if (!v63)
      {
        goto LABEL_116;
      }

LABEL_113:
      if (v62)
      {
        do
        {
          v87 = __clz(__rbit64(v63));
          v63 &= v63 - 1;
          v88 = &v60[-__clz(__rbit64(v62))];
          v89 = v58[v87];
          v58[v87] = *v88;
          *v88 = v89;
          v62 &= v62 - 1;
        }

        while (v62 && v63);
      }

LABEL_116:
      v58 += 64 * (v63 == 0);
      v90 = v62 == 0;
      if (v62)
      {
        v91 = 0;
      }

      else
      {
        v91 = -256;
      }

      v60 = (v60 + v91);
    }

    while (v60 - v58 > 504);
    v92 = v60 - v58;
    if (!(v62 | v63))
    {
      goto LABEL_125;
    }

    v93 = v92 - 63;
    v94 = 64;
    v95 = 64;
    if (v63)
    {
      if (v62)
      {
        goto LABEL_135;
      }

LABEL_132:
      if (v93 >= 1)
      {
        v98 = 0;
        v62 = 0;
        v99 = v60;
        do
        {
          v100 = *v99--;
          v62 |= (v100 > *&a5) << v98++;
        }

        while (v93 != v98);
        goto LABEL_135;
      }

      if (v63)
      {
        v108 = 0;
      }

      else
      {
        v108 = v95;
      }

      v11 = &v58[v108];
LABEL_152:
      if (v63)
      {
        v60 -= v93;
        goto LABEL_154;
      }

      goto LABEL_158;
    }

LABEL_126:
    if (v93 < 1)
    {
      v63 = 0;
    }

    else
    {
      v97 = 0;
      v63 = 0;
      do
      {
        v63 |= (v58[v97] <= *&a5) << v97;
        ++v97;
      }

      while (v93 != v97);
    }

    v95 = v93;
    v93 = v94;
    if (v90)
    {
      goto LABEL_132;
    }

LABEL_135:
    if (v63 && v62)
    {
      do
      {
        v101 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v102 = &v60[-__clz(__rbit64(v62))];
        v103 = v58[v101];
        v58[v101] = *v102;
        *v102 = v103;
        v62 &= v62 - 1;
      }

      while (v62 && v63);
    }

    if (v63)
    {
      v104 = 0;
    }

    else
    {
      v104 = v95;
    }

    v11 = &v58[v104];
    if (!v62)
    {
      goto LABEL_152;
    }

    if (v63)
    {
      do
      {
LABEL_154:
        v109 = __clz(v63) ^ 0x3F;
        v110 = &v11[v109];
        if (v60 != v110)
        {
          v111 = *v110;
          *v110 = *v60;
          *v60 = v111;
        }

        v63 &= ~(-1 << v109);
        --v60;
      }

      while (v63);
      v11 = v60 + 1;
    }

    else
    {
      do
      {
        v105 = __clz(v62) ^ 0x3F;
        v106 = &v60[-v105];
        if (v11 != v106)
        {
          v107 = *v106;
          *v106 = *v11;
          *v11 = v107;
        }

        v62 &= ~(-1 << v105);
        ++v11;
      }

      while (v62);
    }

LABEL_158:
    v112 = v11 - 1;
    if (v11 - 1 != v7)
    {
      *v7 = *v112;
    }

    *v112 = *&a5;
    if (v53 < v56)
    {
LABEL_163:
      v116 = v7;
      v117 = v8;
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,float *,true>(v116, v11 - 1, a3, a4 & 1);
      v10 = xmmword_1001494A0;
      v9 = xmmword_100149490;
      v8 = v117;
      a4 = 0;
    }

    else
    {
      v113 = a3;
      v114 = v8;
      v115 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,float *>(v7, v11 - 1);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,float *>(v11, a2);
      if (result)
      {
        a2 = v11 - 1;
        v8 = v114;
        a3 = v113;
        v10 = xmmword_1001494A0;
        v9 = xmmword_100149490;
        if (v115)
        {
          return result;
        }

        goto LABEL_2;
      }

      v8 = v114;
      a3 = v113;
      v10 = xmmword_1001494A0;
      v9 = xmmword_100149490;
      if (!v115)
      {
        goto LABEL_163;
      }
    }
  }

  v168 = v11 + 1;
  v170 = v11 == a2 || v168 == a2;
  if (a4)
  {
    if (!v170)
    {
      v171 = 4;
      v172 = v11;
      do
      {
        v174 = *v172;
        v173 = v172[1];
        v172 = v168;
        if (v173 > v174)
        {
          v175 = v171;
          while (1)
          {
            *(v11 + v175) = v174;
            v176 = v175 - 4;
            if (v175 == 4)
            {
              break;
            }

            v174 = *(v11 + v175 - 8);
            v175 -= 4;
            if (v173 <= v174)
            {
              v177 = (v11 + v176);
              goto LABEL_280;
            }
          }

          v177 = v11;
LABEL_280:
          *v177 = v173;
        }

        v168 = v172 + 1;
        v171 += 4;
      }

      while (v172 + 1 != a2);
    }
  }

  else if (!v170)
  {
    do
    {
      v203 = *v7;
      v202 = v7[1];
      v7 = v168;
      if (v202 > v203)
      {
        v204 = v168;
        do
        {
          *v204 = v203;
          v203 = *(v204 - 2);
          --v204;
        }

        while (v202 > v203);
        *v204 = v202;
      }

      ++v168;
    }

    while (v7 + 1 != a2);
  }

  return result;
}

BOOL gnss::Convert::toProtobuf(gnss::Convert *this, const gnss::MeasurementData *a2, CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a3)
{
  if (!a2)
  {
    return a2 != 0;
  }

  *(a2 + 33) |= 1u;
  v5 = *(a2 + 1);
  if (!v5)
  {
    operator new();
  }

  v6 = *(v5 + 36);
  *(v5 + 8) = *this;
  v7 = *(this + 2);
  *(v5 + 36) = v6 | 7;
  *(v5 + 24) = v7;
  v8 = *(a2 + 33);
  *(a2 + 5) = *(this + 24);
  *(a2 + 33) = v8 | 0x70;
  v9 = *(a2 + 9);
  if (!v9)
  {
    operator new();
  }

  v10 = *(this + 28);
  if (v10 && gnss::GpsTimeInfo::isValid(*(this + 28)))
  {
    *(v9 + 52) |= 1u;
    v11 = *(v9 + 8);
    if (!v11)
    {
      operator new();
    }

    v12 = *v10;
    v13 = *(v11 + 32);
    *(v11 + 32) = v13 | 1;
    *(v11 + 24) = v12;
    if (!gnss::GpsTimeInfo::isValid(v10))
    {
      goto LABEL_26;
    }

    v14 = *(v10 + 4);
    if (v14 == 0x8000)
    {
      goto LABEL_26;
    }

    v15 = *(v10 + 10);
    if (*(v10 + 2))
    {
      if ((v15 != 2) == (*(v10 + 12) != -32768))
      {
        goto LABEL_26;
      }
    }

    else if (v15 == 2)
    {
LABEL_26:
      v24 = *(this + 28);
      if (gnss::GpsTimeInfo::isValid(v24) && *(v24 + 32) && (*(v24 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v24 + 48) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v24 + 56) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        *(v11 + 32) |= 4u;
        v25 = *(v11 + 16);
        if (!v25)
        {
          operator new();
        }

        v26 = *(v25 + 44);
        *(v25 + 8) = *(v24 + 32);
        *(v25 + 16) = *(v24 + 40);
        v27 = *(v24 + 56);
        *(v25 + 44) = v26 | 0xF;
        *(v25 + 32) = v27;
      }

      goto LABEL_34;
    }

    *(v11 + 32) = v13 | 3;
    v16 = *(v11 + 8);
    if (!v16)
    {
      operator new();
    }

    v17 = *(v16 + 28);
    v18 = v17 | 1;
    *(v16 + 28) = v17 | 1;
    *(v16 + 8) = v14;
    v19 = *(v10 + 2);
    if (v19)
    {
      if (*(v10 + 10) == 2)
      {
        v20 = *(v10 + 12);
        if (v20 != 0x8000)
        {
          *(v16 + 28) = v17 | 5;
          v21 = *(v16 + 16);
          if (!v21)
          {
            operator new();
          }

          v22 = *(v21 + 24);
          *(v21 + 8) = v19;
          *(v21 + 24) = v22 | 3;
          *(v21 + 16) = v20;
          v18 = *(v16 + 28);
        }
      }
    }

    *(v16 + 28) = v18 | 2;
    *(v16 + 12) = 1;
    v23 = *(v10 + 10);
    if (v23 <= 2)
    {
      *(v16 + 12) = v23 + 2;
    }

    goto LABEL_26;
  }

LABEL_34:
  v28 = *(this + 29);
  if (v28)
  {
    if ((v29 = *v28) != 0 && v28[1] - 1 < 0x5B5 || *(v28 + 1) && (*(v28 + 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      *(v9 + 52) |= 2u;
      v30 = *(v9 + 16);
      if (!v30)
      {
        operator new();
      }

      v31 = *(v30 + 40);
      v32 = v28[1];
      *(v30 + 40) = v31 | 3;
      *(v30 + 8) = v29;
      *(v30 + 12) = v32;
      v33 = *(v28 + 1);
      if (v29 && (v32 - 1) < 0x5B5)
      {
        if (!v33)
        {
          goto LABEL_51;
        }

        v34 = *(v28 + 2);
      }

      else
      {
        if (!v33)
        {
          goto LABEL_51;
        }

        v34 = *(v28 + 2);
        if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_51;
        }
      }

      if (fabs(v34) != INFINITY)
      {
        *(v30 + 40) = v31 | 0xB;
        v35 = *(v30 + 16);
        if (!v35)
        {
          operator new();
        }

        v36 = *(v35 + 28);
        *(v35 + 16) = *(v28 + 2);
        v37 = *(v28 + 1);
        *(v35 + 28) = v36 | 3;
        *(v35 + 8) = v37;
      }
    }
  }

LABEL_51:
  v38 = *(this + 30);
  if (v38)
  {
    v39 = *v38;
    if (*v38 || *(v38 + 1) && (*(v38 + 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v38 + 3) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      *(v9 + 52) |= 4u;
      v40 = *(v9 + 24);
      if (!v40)
      {
        operator new();
      }

      v41 = *(v40 + 56);
      *(v40 + 56) = v41 | 1;
      *(v40 + 48) = v39;
      v42 = *(v38 + 1);
      if (v39)
      {
        if (!v42 || (*(v38 + 2) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_70;
        }

        v43 = *(v38 + 3);
      }

      else
      {
        if (!v42)
        {
          goto LABEL_70;
        }

        if ((*(v38 + 2) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_70;
        }

        v43 = *(v38 + 3);
        if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_70;
        }
      }

      if (fabs(v43) != INFINITY)
      {
        *(v40 + 56) = v41 | 5;
        v44 = *(v40 + 16);
        if (!v44)
        {
          operator new();
        }

        v45 = *(v44 + 36);
        *(v44 + 8) = *(v38 + 1);
        *(v44 + 36) = v45 | 7;
        *(v44 + 16) = *(v38 + 1);
      }
    }
  }

LABEL_70:
  v46 = *(this + 31);
  if (v46)
  {
    v47 = *v46;
    if (*v46 || *(v46 + 1) && (*(v46 + 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v46 + 3) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      *(v9 + 52) |= 8u;
      v48 = *(v9 + 32);
      if (!v48)
      {
        operator new();
      }

      v49 = *(v48 + 40);
      *(v48 + 40) = v49 | 1;
      *(v48 + 32) = v47;
      v50 = *(v46 + 1);
      if (v47)
      {
        if (!v50 || (*(v46 + 2) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_89;
        }

        v51 = *(v46 + 3);
      }

      else
      {
        if (!v50)
        {
          goto LABEL_89;
        }

        if ((*(v46 + 2) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_89;
        }

        v51 = *(v46 + 3);
        if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_89;
        }
      }

      if (fabs(v51) != INFINITY)
      {
        *(v48 + 40) = v49 | 5;
        v52 = *(v48 + 16);
        if (!v52)
        {
          operator new();
        }

        v53 = *(v52 + 36);
        *(v52 + 8) = *(v46 + 1);
        *(v52 + 36) = v53 | 7;
        *(v52 + 16) = *(v46 + 1);
      }
    }
  }

LABEL_89:
  v54 = *(this + 32);
  if (v54 && *(v54 + 1) && (*(v54 + 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v54 + 3) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    *(v9 + 52) |= 0x10u;
    v55 = *(v9 + 40);
    if (!v55)
    {
      operator new();
    }

    v56 = *v54;
    v57 = *(v55 + 24);
    *(v55 + 24) = v57 | 2;
    *(v55 + 16) = v56;
    if ((*(v54 + 3) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      *(v55 + 24) = v57 | 3;
      v58 = *(v55 + 8);
      if (!v58)
      {
        operator new();
      }

      v59 = *(v58 + 36);
      *(v58 + 8) = *(v54 + 1);
      *(v58 + 36) = v59 | 7;
      *(v58 + 16) = *(v54 + 1);
    }
  }

  v60 = *(this + 22);
  v299 = *(this + 23);
  while (v60 != v299)
  {
    v61 = *(a2 + 9);
    v62 = *(a2 + 8);
    if (v62 >= v61)
    {
      if (v61 == *(a2 + 10))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v61 + 1);
        v61 = *(a2 + 9);
      }

      *(a2 + 9) = v61 + 1;
      operator new();
    }

    v63 = *(a2 + 3);
    *(a2 + 8) = v62 + 1;
    v64 = *(v63 + 8 * v62);
    *(v64 + 172) |= 1u;
    v65 = *(v64 + 8);
    if (!v65)
    {
      operator new();
    }

    v66 = (v65 + 24);
    v67 = *(v65 + 8);
    v68 = *(v65 + 24) | 2;
    *(v65 + 24) = v68;
    if (!v67)
    {
      operator new();
    }

    v69 = *v60;
    v70 = v68 | 1;
    *v66 = v70;
    *(v65 + 16) = v69;
    if (v69 > 3)
    {
      if (v69 > 15)
      {
        if (v69 == 16)
        {
          *v66 = v70;
          *(v65 + 16) = 16;
          v81 = *(v60 + 4);
          *(v67 + 44) |= 0x10u;
          *(v67 + 28) = v81;
        }

        else if (v69 == 32)
        {
          *v66 = v70;
          *(v65 + 16) = 64;
          v79 = *(v60 + 4);
          *(v67 + 44) |= 0x40u;
          *(v67 + 36) = v79;
        }
      }

      else if (v69 == 4)
      {
        *v66 = v70;
        *(v65 + 16) = 4;
        v80 = *(v60 + 4);
        *(v67 + 44) |= 4u;
        *(v67 + 20) = v80;
      }

      else if (v69 == 8)
      {
        *v66 = v70;
        *(v65 + 16) = 8;
        v71 = *(v60 + 4);
        *(v67 + 44) |= 8u;
        *(v67 + 24) = v71;
      }

      goto LABEL_136;
    }

    if (v69)
    {
      if (v69 == 1)
      {
        *v66 = v70;
        *(v65 + 16) = 1;
        v82 = *(v60 + 4);
        *(v67 + 44) |= 1u;
        *(v67 + 16) = v82;
      }

      else
      {
        if (v69 != 2)
        {
          goto LABEL_136;
        }

        *v66 = v70;
        *(v65 + 16) = 2;
        *(v67 + 44) |= 2u;
        v72 = *(v67 + 8);
        if (!v72)
        {
          operator new();
        }

        v73 = *(v60 + 6);
        v74 = *(v72 + 24);
        *(v72 + 24) = v74 | 1;
        *(v72 + 16) = v73;
        if (*(v60 + 4) - 1 > 0x17)
        {
          goto LABEL_136;
        }

        *(v72 + 24) = v74 | 3;
        v75 = *(v72 + 8);
        if (!v75)
        {
          operator new();
        }

        v76 = *(v60 + 4);
        v75[5] |= 3u;
        v75[2] = v76;
        v75[3] = 1;
        v77 = *(v60 + 5);
        switch(v77)
        {
          case 3:
            v78 = 4;
            goto LABEL_135;
          case 2:
            v78 = 3;
            goto LABEL_135;
          case 1:
            v78 = 2;
LABEL_135:
            v75[3] = v78;
            break;
        }
      }
    }

    else
    {
      *v66 = v70;
      *(v65 + 16) = 0;
    }

LABEL_136:
    if ((*(v60 + 16) - 1) > 3u)
    {
      v83 = 1;
    }

    else
    {
      v83 = dword_100145AC0[(*(v60 + 16) - 1)];
    }

    v84 = *(v64 + 172) | 4;
    *(v64 + 172) = v84;
    *(v64 + 56) = v83;
    v86 = *(v60 + 24);
    v85 = *(v60 + 32);
    if (v86 != v85)
    {
      do
      {
        v87 = *(v64 + 36);
        v88 = *(v64 + 32);
        if (v88 >= v87)
        {
          if (v87 == *(v64 + 40))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v64 + 24), v87 + 1);
            v87 = *(v64 + 36);
          }

          *(v64 + 36) = v87 + 1;
          operator new();
        }

        v89 = *(v64 + 24);
        *(v64 + 32) = v88 + 1;
        v90 = *(v89 + 8 * v88);
        v91 = *(v90 + 28);
        *(v90 + 8) = *v86;
        *(v90 + 28) = v91 | 3;
        v92 = *(v90 + 16);
        if (!v92)
        {
          operator new();
        }

        v93 = *(v92 + 36);
        *(v92 + 8) = *(v86 + 8);
        v94 = *(v86 + 24);
        *(v92 + 36) = v93 | 7;
        *(v92 + 24) = v94;
        v86 += 32;
      }

      while (v86 != v85);
      v84 = *(v64 + 172);
    }

    v95 = *(v60 + 48);
    if (v95)
    {
      *(v64 + 172) = v84 | 0x8000;
      v96 = *(v64 + 128);
      if (!v96)
      {
        operator new();
      }

      v97 = 0;
      *(v96 + 76) |= 3u;
      *(v96 + 8) = *v95;
      do
      {
        v98 = *(v60 + 48);
        v99 = *(v98 + v97 + 16);
        v100 = *(v96 + 32);
        if (v100 == *(v96 + 36))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve((v96 + 24), v100 + 1);
          v100 = *(v96 + 32);
          v98 = *(v60 + 48);
        }

        *(*(v96 + 24) + 8 * v100) = v99;
        *(v96 + 32) = v100 + 1;
        v101 = *(v98 + v97 + 48);
        v102 = *(v96 + 48);
        if (v102 == *(v96 + 52))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve((v96 + 40), v102 + 1);
          v102 = *(v96 + 48);
          v98 = *(v60 + 48);
        }

        *(*(v96 + 40) + 8 * v102) = v101;
        *(v96 + 48) = v102 + 1;
        v103 = *(v98 + v97 + 80);
        v104 = *(v96 + 64);
        if (v104 == *(v96 + 68))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve((v96 + 56), v104 + 1);
          v104 = *(v96 + 64);
        }

        v105 = *(v96 + 56);
        *(v96 + 64) = v104 + 1;
        *(v105 + 8 * v104) = v103;
        v97 += 8;
      }

      while (v97 != 32);
      v84 = *(v64 + 172);
    }

    *(v64 + 16) = *(v60 + 8);
    *(v64 + 48) = *(v60 + 56);
    *(v64 + 64) = *(v60 + 64);
    *(v64 + 152) = *(v60 + 80);
    v106 = *(v60 + 92);
    *(v64 + 60) = *(v60 + 88);
    *(v64 + 80) = v106;
    v107 = *(v60 + 96);
    if (v107 >= 3)
    {
      v108 = 1;
    }

    else
    {
      v108 = v107 + 2;
    }

    *(v64 + 172) = v84 | 0x2003F2;
    v109 = *(v60 + 97);
    if (v109 >= 3)
    {
      v110 = 1;
    }

    else
    {
      v110 = v109 + 2;
    }

    v111 = *(v60 + 98);
    v112 = v111 >= 3;
    v113 = v111 + 2;
    if (v112)
    {
      v113 = 1;
    }

    *(v64 + 84) = v108;
    *(v64 + 88) = v113;
    v114 = *(v60 + 99);
    if (v114 >= 3)
    {
      v115 = 1;
    }

    else
    {
      v115 = v114 + 2;
    }

    *(v64 + 136) = v110;
    *(v64 + 140) = v115;
    v116 = *(v60 + 100);
    if (v116 >= 3)
    {
      v117 = 1;
    }

    else
    {
      v117 = v116 + 2;
    }

    v118 = *(v60 + 101);
    if (v118 >= 3)
    {
      v119 = 1;
    }

    else
    {
      v119 = v118 + 2;
    }

    v120 = *(v60 + 102);
    v112 = v120 >= 3;
    v121 = v120 + 2;
    if (v112)
    {
      v121 = 1;
    }

    *(v64 + 92) = v117;
    *(v64 + 96) = v121;
    v122 = *(v60 + 103);
    v112 = v122 >= 3;
    v123 = v122 + 2;
    if (v112)
    {
      v123 = 1;
    }

    *(v64 + 144) = v119;
    *(v64 + 148) = v123;
    v124 = *(v60 + 104);
    if (v124 >= 3)
    {
      v125 = 1;
    }

    else
    {
      v125 = v124 + 2;
    }

    *(v64 + 100) = v125;
    v126 = *(v60 + 105);
    if (v126 >= 3)
    {
      v127 = 1;
    }

    else
    {
      v127 = v126 + 2;
    }

    *(v64 + 172) = v84 | 0x3F3FF2;
    *(v64 + 160) = v127;
    v128 = *(v60 + 112);
    v129 = *(v60 + 120);
    while (v128 != v129)
    {
      v130 = *(v64 + 116);
      v131 = *(v64 + 112);
      if (v131 >= v130)
      {
        if (v130 == *(v64 + 120))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v64 + 104), v130 + 1);
          v130 = *(v64 + 116);
        }

        *(v64 + 116) = v130 + 1;
        operator new();
      }

      v132 = *(v64 + 104);
      *(v64 + 112) = v131 + 1;
      v133 = *(v132 + 8 * v131);
      v134 = *(v133 + 44);
      *(v133 + 24) = 1;
      if (*v128 - 1 <= 9)
      {
        *(v133 + 24) = dword_100145E3C[(*v128 - 1)];
      }

      *(v133 + 8) = *(v128 + 8);
      v135 = *(v128 + 3);
      *(v133 + 44) = v134 | 0xF;
      *(v133 + 32) = v135;
      v136 = *(v128 + 1);
      if (v136 <= 2)
      {
        *(v133 + 44) = v134 | 0x1F;
        *(v133 + 28) = v136;
      }

      v128 += 32;
    }

    v60 += 136;
  }

  v137 = *(this + 25);
  v138 = *(this + 26);
  while (v137 != v138)
  {
    v139 = *(a2 + 15);
    v140 = *(a2 + 14);
    if (v140 >= v139)
    {
      if (v139 == *(a2 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 48), v139 + 1);
        v139 = *(a2 + 15);
      }

      *(a2 + 15) = v139 + 1;
      operator new();
    }

    v141 = *(a2 + 6);
    *(a2 + 14) = v140 + 1;
    v142 = *(v141 + 8 * v140);
    if (*(v137 + 16) - 1 > 9)
    {
      v143 = 1;
    }

    else
    {
      v143 = dword_100145E3C[(*(v137 + 16) - 1)];
    }

    v144 = *(v142 + 32);
    *(v142 + 16) = v143;
    v145 = *v137;
    v146 = v137[1];
    v137 += 3;
    *(v142 + 8) = v145;
    *(v142 + 32) = v144 | 0xF;
    *(v142 + 20) = v146;
  }

  v147 = *(this + 33);
  v148 = *(a2 + 33);
  if (v147)
  {
    *(a2 + 33) = v148 | 0x80;
    v149 = *(a2 + 12);
    if (!v149)
    {
      operator new();
    }

    v150 = *(v149 + 52);
    *(v149 + 8) = *v147;
    *(v149 + 16) = *(v147 + 8);
    *(v149 + 52) = v150 | 0x1FF;
    *(v149 + 32) = *(v147 + 24);
    v148 = *(a2 + 33);
  }

  *(a2 + 33) = v148 | 2;
  v151 = *(a2 + 2);
  if (!v151)
  {
    operator new();
  }

  v152 = *(v151 + 8);
  *(v151 + 44) |= 1u;
  if (!v152)
  {
    operator new();
  }

  v153 = *(v152 + 44);
  *(v152 + 8) = *(this + 5);
  *(v152 + 44) = v153 | 5;
  v154 = *(v152 + 24);
  if (!v154)
  {
    operator new();
  }

  v155 = *(v154 + 52);
  *(v154 + 8) = *(this + 88);
  *(v154 + 24) = vcvtq_f64_f32(*(this + 104));
  v156 = *(this + 28);
  *(v154 + 52) = v155 | 0x1F;
  *(v154 + 40) = v156;
  if (*(this + 5) != -1)
  {
    v157 = *(this + 15);
    if (v157 != 0x8000000000000000)
    {
      v158 = *(this + 16);
      if (fabsf(*&v158) <= 0.5 && *(&v158 + 1) > 0.0)
      {
        v159 = *(this + 17);
        if ((v159 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v160 = *(this + 36);
          if (v160 > 0.5)
          {
            *(v152 + 44) |= 8u;
            v161 = *(v152 + 32);
            if (!v161)
            {
              operator new();
            }

            v162 = *(v161 + 40);
            *(v161 + 8) = v157;
            *(v161 + 16) = v158;
            *(v161 + 24) = v159;
            *(v161 + 40) = v162 | 0x1F;
            *(v161 + 32) = v160;
          }
        }
      }
    }
  }

  *(v152 + 44) |= 2u;
  v163 = *(v152 + 16);
  if (!v163)
  {
    operator new();
  }

  v164 = *(v163 + 32);
  *(v163 + 32) = v164 | 0xF;
  *(v163 + 8) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 3)), *(this + 4));
  if (*(this + 81) == 1)
  {
    v165 = *(this + 80);
    *(v163 + 32) = v164 | 0x1F;
    *(v163 + 24) = v165;
  }

  v166 = *(this + 19);
  for (i = *(this + 20); v166 != i; v166 += 176)
  {
    v167 = *(v151 + 28);
    v168 = *(v151 + 24);
    if (v168 >= v167)
    {
      if (v167 == *(v151 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v151 + 16), v167 + 1);
        v167 = *(v151 + 28);
      }

      *(v151 + 28) = v167 + 1;
      operator new();
    }

    v169 = *(v151 + 16);
    *(v151 + 24) = v168 + 1;
    v170 = *(v169 + 8 * v168);
    *(v170 + 112) |= 1u;
    v171 = *(v170 + 8);
    if (!v171)
    {
      operator new();
    }

    v172 = (v171 + 24);
    v173 = *(v171 + 8);
    v174 = *(v171 + 24) | 2;
    *(v171 + 24) = v174;
    if (!v173)
    {
      operator new();
    }

    v175 = *v166;
    v176 = v174 | 1;
    *v172 = v176;
    *(v171 + 16) = v175;
    if (v175 <= 3)
    {
      if (v175)
      {
        if (v175 == 1)
        {
          *v172 = v176;
          *(v171 + 16) = 1;
          v188 = *(v166 + 4);
          *(v173 + 44) |= 1u;
          *(v173 + 16) = v188;
        }

        else if (v175 == 2)
        {
          *v172 = v176;
          *(v171 + 16) = 2;
          *(v173 + 44) |= 2u;
          v178 = *(v173 + 8);
          if (!v178)
          {
            operator new();
          }

          v179 = *(v166 + 6);
          v180 = *(v178 + 24);
          *(v178 + 24) = v180 | 1;
          *(v178 + 16) = v179;
          if (*(v166 + 4) - 1 <= 0x17)
          {
            *(v178 + 24) = v180 | 3;
            v181 = *(v178 + 8);
            if (!v181)
            {
              operator new();
            }

            v182 = *(v166 + 4);
            v181[5] |= 3u;
            v181[2] = v182;
            v181[3] = 1;
            v183 = *(v166 + 5);
            switch(v183)
            {
              case 3:
                v184 = 4;
                break;
              case 2:
                v184 = 3;
                break;
              case 1:
                v184 = 2;
                break;
              default:
                goto LABEL_276;
            }

            v181[3] = v184;
          }
        }
      }

      else
      {
        *v172 = v176;
        *(v171 + 16) = 0;
      }
    }

    else if (v175 > 15)
    {
      if (v175 == 16)
      {
        *v172 = v176;
        *(v171 + 16) = 16;
        v187 = *(v166 + 4);
        *(v173 + 44) |= 0x10u;
        *(v173 + 28) = v187;
      }

      else if (v175 == 32)
      {
        *v172 = v176;
        *(v171 + 16) = 64;
        v185 = *(v166 + 4);
        *(v173 + 44) |= 0x40u;
        *(v173 + 36) = v185;
      }
    }

    else if (v175 == 4)
    {
      *v172 = v176;
      *(v171 + 16) = 4;
      v186 = *(v166 + 4);
      *(v173 + 44) |= 4u;
      *(v173 + 20) = v186;
    }

    else if (v175 == 8)
    {
      *v172 = v176;
      *(v171 + 16) = 8;
      v177 = *(v166 + 4);
      *(v173 + 44) |= 8u;
      *(v173 + 24) = v177;
    }

LABEL_276:
    *(v170 + 112) |= 2u;
    v189 = *(v170 + 16);
    if (!v189)
    {
      operator new();
    }

    v190 = *(v189 + 96);
    *(v189 + 96) = v190 | 1;
    *(v189 + 88) = 1;
    v191 = *(v166 + 8);
    if (v191 > 5)
    {
      if (*(v166 + 8) <= 7u)
      {
        if (v191 == 6)
        {
          *(v189 + 88) = 11;
          *(v189 + 96) = v190 | 0x21;
          v192 = *(v189 + 40);
          if (!v192)
          {
            operator new();
          }

          goto LABEL_305;
        }

        if (v191 == 7)
        {
          *(v189 + 88) = 7;
          *(v189 + 96) = v190 | 0x41;
          v192 = *(v189 + 48);
          if (!v192)
          {
            operator new();
          }

          goto LABEL_305;
        }
      }

      else
      {
        switch(v191)
        {
          case 8u:
            *(v189 + 88) = 8;
            *(v189 + 96) = v190 | 0x81;
            v212 = *(v189 + 56);
            if (!v212)
            {
              operator new();
            }

            v213 = *(v166 + 12);
            v214 = *(v212 + 16);
            *(v212 + 16) = v214 | 8;
            *(v212 + 11) = v213;
            v215 = *(v166 + 11);
            *(v212 + 16) = v214 | 0xC;
            *(v212 + 10) = v215;
            v216 = *(v166 + 9);
            *(v212 + 16) = v214 | 0xD;
            *(v212 + 8) = v216;
            v217 = *(v166 + 10);
            *(v212 + 16) = v214 | 0xF;
            *(v212 + 9) = v217;
            break;
          case 9u:
            *(v189 + 88) = 9;
            *(v189 + 96) = v190 | 0x101;
            v220 = *(v189 + 64);
            if (!v220)
            {
              operator new();
            }

            v221 = *(v220 + 24);
            v232 = *(v166 + 18);
            *(v220 + 24) = v221 | 0x200;
            *(v220 + 17) = v232;
            v233 = *(v166 + 13);
            *(v220 + 24) = v221 | 0x210;
            *(v220 + 12) = v233;
            v234 = *(v166 + 12);
            *(v220 + 24) = v221 | 0x218;
            *(v220 + 11) = v234;
            v235 = *(v166 + 17);
            *(v220 + 24) = v221 | 0x318;
            *(v220 + 16) = v235;
            v236 = *(v166 + 16);
            *(v220 + 24) = v221 | 0x398;
            *(v220 + 15) = v236;
            v237 = *(v166 + 15);
            *(v220 + 24) = v221 | 0x3D8;
            *(v220 + 14) = v237;
            v238 = *(v166 + 14);
            *(v220 + 24) = v221 | 0x3F8;
            *(v220 + 13) = v238;
            v239 = *(v166 + 10);
            *(v220 + 24) = v221 | 0x3FA;
            *(v220 + 9) = v239;
            v240 = *(v166 + 9);
            *(v220 + 24) = v221 | 0x3FB;
            *(v220 + 8) = v240;
            v241 = *(v166 + 11);
            *(v220 + 24) = v221 | 0x3FF;
            *(v220 + 10) = v241;
            break;
          case 0xAu:
            *(v189 + 88) = 12;
            *(v189 + 96) = v190 | 0x401;
            v193 = *(v189 + 80);
            if (!v193)
            {
              operator new();
            }

LABEL_302:
            v196 = *(v166 + 10);
            v197 = *(v193 + 16);
            *(v193 + 16) = v197 | 2;
            *(v193 + 9) = v196;
            v198 = *(v166 + 11);
            *(v193 + 16) = v197 | 6;
            *(v193 + 10) = v198;
            v199 = *(v166 + 9);
            *(v193 + 16) = v197 | 7;
            *(v193 + 8) = v199;
            v200 = *(v166 + 12);
            *(v193 + 16) = v197 | 0xF;
            *(v193 + 11) = v200;
            break;
        }
      }
    }

    else
    {
      if (*(v166 + 8) <= 2u)
      {
        if (v191 != 1)
        {
          if (v191 == 2)
          {
            *(v189 + 88) = 3;
            *(v189 + 96) = v190 | 5;
            v194 = *(v189 + 16);
            if (!v194)
            {
              operator new();
            }

            v195 = *(v194 + 20);
            v222 = *(v166 + 13);
            *(v194 + 20) = v195 | 0x10;
            *(v194 + 12) = v222;
            v223 = *(v166 + 11);
            *(v194 + 20) = v195 | 0x14;
            *(v194 + 10) = v223;
            v224 = *(v166 + 12);
            *(v194 + 20) = v195 | 0x1C;
            *(v194 + 11) = v224;
            v225 = *(v166 + 10);
            *(v194 + 20) = v195 | 0x1E;
            *(v194 + 9) = v225;
            v226 = *(v166 + 9);
            *(v194 + 20) = v195 | 0x1F;
            *(v194 + 8) = v226;
          }

          goto LABEL_319;
        }

        *(v189 + 88) = 2;
        *(v189 + 96) = v190 | 3;
        v193 = *(v189 + 8);
        if (!v193)
        {
          operator new();
        }

        goto LABEL_302;
      }

      switch(v191)
      {
        case 3u:
          *(v189 + 88) = 4;
          *(v189 + 96) = v190 | 9;
          v206 = *(v189 + 24);
          if (!v206)
          {
            operator new();
          }

          v207 = *(v166 + 11);
          v208 = *(v206 + 16);
          *(v206 + 16) = v208 | 4;
          *(v206 + 10) = v207;
          v209 = *(v166 + 11);
          *(v206 + 16) = v208 | 6;
          *(v206 + 9) = v209;
          v210 = *(v166 + 12);
          *(v206 + 16) = v208 | 0xE;
          *(v206 + 11) = v210;
          v211 = *(v166 + 9);
          *(v206 + 16) = v208 | 0xF;
          *(v206 + 8) = v211;
          break;
        case 4u:
          *(v189 + 88) = 5;
          *(v189 + 96) = v190 | 0x11;
          v218 = *(v189 + 32);
          if (!v218)
          {
            operator new();
          }

          v219 = *(v218 + 20);
          v227 = *(v166 + 9);
          *(v218 + 20) = v219 | 1;
          *(v218 + 8) = v227;
          v228 = *(v166 + 11);
          *(v218 + 20) = v219 | 5;
          *(v218 + 10) = v228;
          v229 = *(v166 + 12);
          *(v218 + 20) = v219 | 0xD;
          *(v218 + 11) = v229;
          v230 = *(v166 + 10);
          *(v218 + 20) = v219 | 0xF;
          *(v218 + 9) = v230;
          v231 = *(v166 + 13);
          *(v218 + 20) = v219 | 0x1F;
          *(v218 + 12) = v231;
          break;
        case 5u:
          *(v189 + 88) = 6;
          *(v189 + 96) = v190 | 0x21;
          v192 = *(v189 + 40);
          if (!v192)
          {
            operator new();
          }

LABEL_305:
          v201 = *(v166 + 10);
          v202 = *(v192 + 16);
          *(v192 + 16) = v202 | 2;
          *(v192 + 9) = v201;
          v203 = *(v166 + 9);
          *(v192 + 16) = v202 | 3;
          *(v192 + 8) = v203;
          v204 = *(v166 + 12);
          *(v192 + 16) = v202 | 0xB;
          *(v192 + 11) = v204;
          v205 = *(v166 + 11);
          *(v192 + 16) = v202 | 0xF;
          *(v192 + 10) = v205;
          break;
      }
    }

LABEL_319:
    v242 = *(v170 + 112);
    *(v170 + 24) = *(v166 + 24);
    *(v170 + 40) = *(v166 + 40);
    *(v170 + 80) = *(v166 + 168);
    *(v170 + 104) = *(v166 + 173);
    *(v170 + 112) = v242 | 0x161C;
    *(v170 + 84) = 1;
    v243 = *(v166 + 172);
    if (v243 <= 2)
    {
      *(v170 + 84) = v243 + 2;
    }

    if (*(v166 + 48) >= 0.0)
    {
      v244 = *(v166 + 56);
      if (v244 > 0.0)
      {
        *(v170 + 112) = v242 | 0x163C;
        v245 = *(v170 + 48);
        if (!v245)
        {
          operator new();
        }

        v246 = *(v166 + 48);
        *(v245 + 32) |= 3u;
        *(v245 + 8) = v246;
        *(v245 + 16) = v244;
      }
    }

    if ((*(v166 + 64) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v247 = *(v166 + 72);
      if (v247 > 0.0)
      {
        *(v170 + 112) |= 0x40u;
        v248 = *(v170 + 56);
        if (!v248)
        {
          operator new();
        }

        v249 = *(v166 + 64);
        *(v248 + 32) |= 3u;
        *(v248 + 8) = v249;
        *(v248 + 16) = v247;
      }
    }

    if ((*(v166 + 80) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v250 = *(v166 + 88);
      if (v250 > 0.0)
      {
        *(v170 + 112) |= 0x800u;
        v251 = *(v170 + 88);
        if (!v251)
        {
          operator new();
        }

        v252 = *(v166 + 80);
        *(v251 + 32) |= 3u;
        *(v251 + 8) = v252;
        *(v251 + 16) = v250;
      }
    }

    if ((*(v166 + 96) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v253 = *(v166 + 104);
      if (v253 > 0.0)
      {
        *(v170 + 112) |= 0x2000u;
        v254 = *(v170 + 96);
        if (!v254)
        {
          operator new();
        }

        v255 = *(v254 + 32) | 7;
        *(v254 + 8) = *(v166 + 96);
        *(v254 + 16) = v253;
        v256 = *(v166 + 112);
        *(v254 + 32) = v255;
        *(v254 + 24) = v256;
      }
    }

    v257 = *(v166 + 120);
    if (v257 != -1)
    {
      v258 = *(v166 + 128);
      if (v258 != -1 && v257 <= v258)
      {
        v259 = *(v166 + 136);
        if ((v259 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v260 = *(v166 + 144);
          if (v260 > 0.0)
          {
            *(v170 + 112) |= 0x80u;
            v261 = *(v170 + 64);
            if (!v261)
            {
              operator new();
            }

            v262 = *(v261 + 48) | 0x1F;
            *(v261 + 8) = *(v166 + 120);
            *(v261 + 16) = v258;
            *(v261 + 24) = v259;
            *(v261 + 32) = v260;
            v263 = *(v166 + 152);
            *(v261 + 48) = v262;
            *(v261 + 40) = v263;
          }
        }
      }
    }

    v264 = *(v166 + 160);
    if (v264)
    {
      *(v170 + 112) |= 0x100u;
      v265 = *(v170 + 72);
      if (!v265)
      {
        operator new();
      }

      v266 = *(v265 + 116);
      if ((*v264 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v266 |= 1u;
        *(v265 + 8) = *v264;
      }

      v267 = *(v264 + 4);
      *(v265 + 116) = v266 | 2;
      *(v265 + 12) = v267;
      if ((*(v264 + 8) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v264 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v264 + 24))
      {
        *(v265 + 116) = v266 | 6;
        v268 = *(v265 + 16);
        if (!v268)
        {
          operator new();
        }

        v269 = *(v268 + 32);
        *(v268 + 8) = *(v264 + 8);
        *(v268 + 32) = v269 | 7;
        *(v268 + 24) = 1;
        v270 = *(v264 + 24);
        if ((v270 - 1) <= 3)
        {
          *(v268 + 24) = v270 + 1;
        }
      }

      v271 = *(v265 + 116);
      *(v265 + 64) = *(v264 + 68);
      v272 = *(v264 + 72);
      *(v265 + 48) = *(v264 + 70);
      *(v265 + 52) = v272;
      v273 = *(v264 + 92);
      if (v273 >= 5)
      {
        v274 = 1;
      }

      else
      {
        v274 = v273 + 2;
      }

      v275 = *(v264 + 93);
      v112 = v275 >= 5;
      v276 = v275 + 2;
      if (v112)
      {
        v276 = 1;
      }

      *(v265 + 56) = v274;
      *(v265 + 60) = v276;
      *(v265 + 116) = v271 | 0x7C8;
      v277 = *(v265 + 24);
      if (!v277)
      {
        operator new();
      }

      gnss::Convert::TranslateMeasurementUsage(v277, (v264 + 32));
      *(v265 + 116) |= 0x10u;
      v278 = *(v265 + 32);
      if (!v278)
      {
        operator new();
      }

      gnss::Convert::TranslateMeasurementUsage(v278, (*(v166 + 160) + 44));
      *(v265 + 116) |= 0x20u;
      v279 = *(v265 + 40);
      if (!v279)
      {
        operator new();
      }

      gnss::Convert::TranslateMeasurementUsage(v279, (*(v166 + 160) + 56));
      v280 = *(v166 + 160);
      if (*(v280 + 80) == 1)
      {
        v281 = *(v280 + 76);
        *(v265 + 116) |= 0x800u;
        *(v265 + 68) = v281;
      }

      if (*(v280 + 88) == 1)
      {
        v282 = *(v280 + 84);
        *(v265 + 116) |= 0x1000u;
        *(v265 + 72) = v282;
      }

      if (*(v280 + 124) == 1)
      {
        v283 = *(v265 + 116);
        *(v265 + 76) = *(v280 + 120);
        v284 = *(v280 + 96);
        v285 = *(v280 + 104);
        *(v265 + 116) = v283 | 0x6000;
        v286 = *(v265 + 80);
        if (v286 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::assign(v286, v284, v285 - v284);
        v280 = *(v166 + 160);
      }

      v288 = *(v280 + 128);
      v287 = *(v280 + 136);
      while (v288 != v287)
      {
        v289 = *(v265 + 100);
        v290 = *(v265 + 96);
        if (v290 >= v289)
        {
          if (v289 == *(v265 + 104))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v265 + 88), v289 + 1);
            v289 = *(v265 + 100);
          }

          *(v265 + 100) = v289 + 1;
          operator new();
        }

        v291 = *(v265 + 88);
        *(v265 + 96) = v290 + 1;
        v292 = *(v291 + 8 * v290);
        *(v292 + 32) |= 1u;
        v293 = *(v292 + 8);
        if (!v293)
        {
          operator new();
        }

        v294 = *v288;
        v295 = v288[2];
        *(v293 + 32) |= 3u;
        *(v293 + 8) = v294;
        *(v293 + 16) = v295;
        *(v292 + 32) |= 2u;
        v296 = *(v292 + 16);
        if (!v296)
        {
          operator new();
        }

        *(v296 + 32) |= 3u;
        *(v296 + 8) = *(v288 + 1);
        v297 = *(v288 + 8);
        *(v292 + 32) |= 4u;
        *(v292 + 24) = v297;
        v288 += 10;
      }
    }
  }

  return a2 != 0;
}

float CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), *(a2 + 8) + *(this + 8));
  LODWORD(v4) = *(a2 + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
      }

      v6 = *(*(a2 + 3) + 8 * v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v7 + 1);
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        operator new();
      }

      v9 = *(this + 3);
      *(this + 8) = v8 + 1;
      CLP::LogEntry::PrivateData::SvInfo::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), *(a2 + 14) + *(this + 14));
  LODWORD(v10) = *(a2 + 14);
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if (v11 >= v10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
      }

      v12 = *(*(a2 + 6) + 8 * v11);
      v13 = *(this + 15);
      v14 = *(this + 14);
      if (v14 >= v13)
      {
        if (v13 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v13 + 1);
          v13 = *(this + 15);
        }

        *(this + 15) = v13 + 1;
        operator new();
      }

      v15 = *(this + 6);
      *(this + 14) = v14 + 1;
      CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(*(v15 + 8 * v14), v12);
      ++v11;
      v10 = *(a2 + 14);
    }

    while (v11 < v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104), *(a2 + 28) + *(this + 28));
  LODWORD(v17) = *(a2 + 28);
  if (v17 >= 1)
  {
    v18 = 0;
    do
    {
      if (v18 >= v17)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
      }

      v19 = *(*(a2 + 13) + 8 * v18);
      v20 = *(this + 29);
      v21 = *(this + 28);
      if (v21 >= v20)
      {
        if (v20 == *(this + 30))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104), v20 + 1);
          v20 = *(this + 29);
        }

        *(this + 29) = v20 + 1;
        operator new();
      }

      v22 = *(this + 13);
      *(this + 28) = v21 + 1;
      v16 = CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(*(v22 + 8 * v21), v19);
      ++v18;
      v17 = *(a2 + 28);
    }

    while (v18 < v17);
  }

  LOBYTE(v23) = *(a2 + 132);
  if (v23)
  {
    if (*(a2 + 132))
    {
      *(this + 33) |= 1u;
      v24 = *(this + 1);
      if (!v24)
      {
        operator new();
      }

      v25 = *(a2 + 1);
      if (!v25)
      {
        v25 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
      }

      v16 = CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(v24, v25);
      v23 = *(a2 + 33);
      if ((v23 & 2) == 0)
      {
LABEL_36:
        if ((v23 & 0x10) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_51;
      }
    }

    else if ((*(a2 + 132) & 2) == 0)
    {
      goto LABEL_36;
    }

    *(this + 33) |= 2u;
    v26 = *(this + 2);
    if (!v26)
    {
      operator new();
    }

    v27 = *(a2 + 2);
    if (!v27)
    {
      v27 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    v16 = CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(v26, v27);
    v23 = *(a2 + 33);
    if ((v23 & 0x10) == 0)
    {
LABEL_37:
      if ((v23 & 0x20) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_56;
    }

LABEL_51:
    *(this + 33) |= 0x10u;
    v28 = *(this + 9);
    if (!v28)
    {
      operator new();
    }

    v29 = *(a2 + 9);
    if (!v29)
    {
      v29 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(v28, v29);
    v23 = *(a2 + 33);
    if ((v23 & 0x20) == 0)
    {
LABEL_38:
      if ((v23 & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_57;
    }

LABEL_56:
    v16 = *(a2 + 10);
    *(this + 33) |= 0x20u;
    *(this + 10) = v16;
    v23 = *(a2 + 33);
    if ((v23 & 0x40) == 0)
    {
LABEL_39:
      if ((v23 & 0x80) == 0)
      {
        return *&v16;
      }

LABEL_58:
      *(this + 33) |= 0x80u;
      v30 = *(this + 12);
      if (!v30)
      {
        operator new();
      }

      v31 = *(a2 + 12);
      if (!v31)
      {
        v31 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
      }

      *&v16 = CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(v30, v31);
      return *&v16;
    }

LABEL_57:
    v16 = *(a2 + 11);
    *(this + 33) |= 0x40u;
    *(this + 11) = v16;
    if ((*(a2 + 33) & 0x80) == 0)
    {
      return *&v16;
    }

    goto LABEL_58;
  }

  return *&v16;
}

void sub_100024370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(CLP::LogEntry::PrivateData::MeasurementReport *this, const CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), *(a2 + 6) + *(this + 6));
  LODWORD(v5) = *(a2 + 6);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
      }

      v7 = *(*(a2 + 2) + 8 * v6);
      v8 = *(this + 7);
      v9 = *(this + 6);
      if (v9 >= v8)
      {
        if (v8 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), v8 + 1);
          v8 = *(this + 7);
        }

        *(this + 7) = v8 + 1;
        operator new();
      }

      v10 = *(this + 2);
      *(this + 6) = v9 + 1;
      CLP::LogEntry::PrivateData::Measurement::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 6);
    }

    while (v6 < v5);
  }

  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v11 = *(this + 1);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 1);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    return CLP::LogEntry::PrivateData::Clock::MergeFrom(v11, v12);
  }

  return result;
}

void sub_1000245EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (v5)
  {
    if (*(a2 + 52))
    {
      result = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 13);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 13) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 13);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 3);
    *(this + 13) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 13);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 4);
    *(this + 13) |= 8u;
    *(this + 4) = result;
    if ((*(a2 + 13) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = result;
  }

  return result;
}

void sub_100024720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void GpsdSessionMonitor::autoRelease(GpsdSessionMonitor *this)
{
  if (*(this + 8) == 1)
  {
    v1 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v16) = 0;
    v2 = "GpsdSessionMonitor,autoRelease,inSession,return";
    v3 = v1;
    v4 = 2;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v2, &v16, v4);
    return;
  }

  v6 = *(this + 2);
  if (!v6 || (v7 = *(this + 3)) == 0)
  {
    v13 = GpsdLogObjectWarning;
    if (!os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = *(this + 3);
    v15 = *(this + 8);
    v16 = 134349568;
    *v17 = v6;
    *&v17[8] = 2050;
    v18 = v14;
    v19 = 1026;
    v20 = v15;
    v2 = "GpsdSessionMonitor,autoRelease,nullptr,os,%{public}p,timer,%{public}p,inactive,%{public}d";
    v3 = v13;
    v4 = 28;
    goto LABEL_12;
  }

  v8 = *(this + 8);
  *(this + 8) = v8 + 1;
  v9 = GpsdLogObjectGeneral;
  v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v8 > 1)
  {
    if (v10)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,autoRelease,confirmed", &v16, 2u);
    }

    GpsdSessionMonitor::stop(this);
  }

  else
  {
    if (v10)
    {
      v16 = 67240448;
      *v17 = v8 + 1;
      *&v17[4] = 1026;
      *&v17[6] = 3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,autoRelease,confirming,%{public}d/%{public}d", &v16, 0xEu);
      v7 = *(this + 3);
    }

    v11 = *(v7 + 8);
    v12 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }
}

void GnssQueueWatchdog::tick(GnssQueueWatchdog *this)
{
  MachContinuousTimeMs = gpsd::util::getMachContinuousTimeMs(this);
  v3 = atomic_load(this + 2);
  if (MachContinuousTimeMs <= v3 + 10000)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 6) + 1;
  }

  *(this + 6) = v4;
  v5 = GpsdLogObjectGeneral;
  v6 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    *buf = 134349824;
    v10 = MachContinuousTimeMs;
    v11 = 2050;
    v12 = v3;
    v13 = 1026;
    v14 = v4;
    v15 = 1026;
    v16 = 6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#dqwdt,tick,now,%{public}llu,ms,kick,%{public}llu,ms,missed,%{public}d/%{public}d", buf, 0x22u);
    v4 = *(this + 6);
  }

  if (v4 >= 6)
  {
    v7 = gnss::Exception::instance(v6);
    gnss::Exception::set(v7, 8);
  }

  if (v4 >= 2)
  {
    v8 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349824;
      v10 = MachContinuousTimeMs;
      v11 = 2050;
      v12 = v3;
      v13 = 1026;
      v14 = v4;
      v15 = 1026;
      v16 = 6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#dqwdt,mayHang,now,%{public}llu,ms,kick,%{public}llu,ms,missed,%{public}d/%{public}d", buf, 0x22u);
    }
  }
}

void sub_100024C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22GpsdPerformanceSummary7onStartEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1 + 13);
  GpsdPerformanceSummary::printSummary(v1);

  std::mutex::unlock(v1 + 13);
}

void GpsdPerformanceSummary::printSummary(GpsdPerformanceSummary *this)
{
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(this);
  if ((*(this + 109) & 1) == 0)
  {
    v55 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 0;
    v56 = "PerfWarning,not in session";
    v57 = v55;
    v58 = 2;
LABEL_32:
    _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, v56, buf, v58);
    return;
  }

  v3 = *(this + 23);
  v4 = MachContinuousTimeNs * 0.000000001 - v3;
  if (v3 < 0.1 || v4 < 0.9)
  {
    v59 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 134349312;
    v120 = v3;
    v121 = 2050;
    v122 = v4;
    v56 = "PerfWarning,spurious printSummary,%{public}.3f,%{public}.3f";
    v57 = v59;
    v58 = 22;
    goto LABEL_32;
  }

  v5 = *(this + 98);
  v6 = 0uLL;
  if (*&v5 > 0.1)
  {
    v6 = vdivq_f64(*(this + 792), vdupq_lane_s64(v5, 0));
  }

  v118 = v6;
  v7 = GpsdLogObjectGeneral;
  v8 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v9 = *(this + 1);
    v10 = (v9 - *this) * 0.000001;
    v11 = *(this + 2);
    v12 = *(this + 3);
    v13 = *this - 1;
    v14 = v13 >= v9;
    v15 = -1.0;
    if (v14)
    {
      v10 = -1.0;
    }

    v116 = v10;
    v16 = (v11 - *this) * 0.000001;
    if (v13 >= v11)
    {
      v16 = -1.0;
    }

    if (v13 < v12)
    {
      v15 = (v12 - *this) * 0.000001;
    }

    v114 = v15;
    v115 = v16;
    v17 = *(this + 180);
    v18 = 0.0;
    v19 = 0.0;
    if (v17 >= 1)
    {
      v19 = *(this + 91) / v17;
    }

    v20 = *(this + 156);
    if (v20 >= 1)
    {
      v18 = *(this + 79) / v20;
    }

    v21 = *(this + 160);
    v22 = 0.0;
    v23 = 0.0;
    if (v21 >= 1)
    {
      v23 = *(this + 81) / v21;
    }

    v24 = *(this + 164);
    if (v24 >= 1)
    {
      v22 = *(this + 83) / v24;
    }

    v25 = *(this + 168);
    v26 = 0.0;
    v27 = 0.0;
    if (v25 >= 1)
    {
      v27 = *(this + 85) / v25;
    }

    log = v7;
    v28 = *(this + 172);
    if (v28 >= 1)
    {
      v26 = *(this + 87) / v28;
    }

    v29 = *(this + 96);
    v30 = *(this + 11);
    v31 = *(this + 10);
    v32 = *(this + 11);
    v33 = *(this + 97);
    v34 = *(this + 25);
    v35 = *(this + 26);
    v37 = *(this + 16);
    v36 = *(this + 17);
    v38 = *(this + 12);
    v103 = *(this + 13);
    v39 = *(this + 15);
    v98 = *(this + 18);
    v108 = *(this + 19);
    v110 = *(this + 14);
    v41 = *(this + 48);
    v40 = *(this + 49);
    v105 = *(this + 59);
    v106 = *(this + 58);
    v42 = *(this + 59);
    v104 = *(this + 60);
    v43 = *(this + 50);
    v44 = *(this + 51);
    v101 = *(this + 61);
    v102 = *(this + 60);
    v46 = *(this + 52);
    v45 = *(this + 53);
    v99 = *(this + 63);
    v100 = *(this + 62);
    v47 = *(this + 54);
    v48 = *(this + 55);
    v49 = *(this + 64);
    v51 = *(this + 56);
    v50 = *(this + 57);
    v52 = *(this + 65);
    v112 = *(this + 69);
    v113 = *(this + 140);
    v53 = *(this + 176);
    if (v53 < 1)
    {
      v54 = 0.0;
    }

    else
    {
      v54 = *(this + 89) / v53;
    }

    v126 = *(this + 10);
    v128 = v39;
    v130 = v31;
    v132 = v29;
    v134 = v34;
    v136 = v30;
    v138 = v37;
    v140 = v32;
    v142 = v33;
    v144 = v35;
    v146 = v38;
    v148 = v36;
    v158 = v41;
    v60 = *(this + 146);
    v162 = v40;
    v61 = *(this + 147);
    v166 = v43;
    v62 = *(this + 148);
    v170 = v42;
    v63 = *(this + 149);
    v174 = v44;
    v64 = *(this + 150);
    v178 = v46;
    v65 = *(this + 141);
    v182 = v45;
    v66 = *(this + 142);
    v186 = v47;
    v67 = *(this + 143);
    v190 = v48;
    v68 = *(this + 144);
    v194 = v51;
    v96 = *(this + 145);
    v97 = v68;
    v124 = v118.f64[1];
    v69 = *(this + 151);
    v150 = v103;
    v70 = *(this + 152);
    v152 = v98;
    v71 = *(this + 153);
    v154 = v110;
    v72 = *(this + 154);
    v156 = v108;
    v109 = *(this + 184);
    v111 = v72;
    v160 = v50;
    v73 = *(this + 185);
    v164 = v106;
    v107 = *(this + 186);
    v168 = v105;
    v74 = *(this + 187);
    v172 = v104;
    v75 = *(this + 188);
    v176 = v102;
    v76 = *(this + 189);
    v180 = v101;
    v77 = *(this + 190);
    v184 = v100;
    v78 = *(this + 191);
    v188 = v99;
    v79 = *(this + 192);
    v192 = v49;
    v80 = *(this + 193);
    v196 = v52;
    v81 = *(this + 194);
    v198 = v116;
    v82 = *(this + 195);
    v200 = v115;
    v83 = *(this + 133);
    v202 = v114;
    v84 = *(this + 134);
    v204 = v112;
    v85 = *(this + 135);
    v206 = v113;
    v86 = *(this + 136);
    v222 = v60;
    v224 = v61;
    v88 = *(this + 61);
    v87 = *(this + 62);
    v226 = v62;
    v228 = v63;
    v90 = *(this + 63);
    v89 = *(this + 64);
    v230 = v64;
    v91 = *(this + 65);
    v232 = v65;
    v92 = *(this + 132);
    *buf = 134371072;
    v120 = v4;
    v234 = v66;
    v121 = 2050;
    v122 = v118.f64[0];
    v123 = 2050;
    v236 = v67;
    v125 = 1026;
    v127 = 1026;
    v129 = 2050;
    v131 = 1026;
    v133 = 1026;
    v135 = 1026;
    v137 = 1026;
    v139 = 2050;
    v141 = 1026;
    v143 = 1026;
    v145 = 1026;
    v147 = 1026;
    v149 = 1026;
    v151 = 1026;
    v153 = 1026;
    v155 = 1026;
    v157 = 1026;
    v159 = 1026;
    v161 = 1026;
    v163 = 1026;
    v165 = 1026;
    v167 = 1026;
    v169 = 2050;
    v171 = 2050;
    v173 = 1026;
    v175 = 1026;
    v177 = 1026;
    v179 = 1026;
    v181 = 1026;
    v183 = 1026;
    v185 = 1026;
    v187 = 1026;
    v189 = 1026;
    v191 = 1026;
    v193 = 1026;
    v195 = 1026;
    v197 = 2050;
    v199 = 2050;
    v201 = 2050;
    v203 = 2050;
    v205 = 1026;
    v207 = 2050;
    v208 = v19;
    v209 = 2050;
    v210 = v18;
    v211 = 2050;
    v212 = v23;
    v213 = 2050;
    v214 = v22;
    v215 = 2050;
    v216 = v27;
    v217 = 2050;
    v218 = v26;
    v219 = 2050;
    v220 = v54;
    v221 = 1026;
    v223 = 1026;
    v225 = 1026;
    v227 = 1026;
    v229 = 1026;
    v231 = 1026;
    v233 = 1026;
    v235 = 1026;
    v237 = 1026;
    v238 = v97;
    v239 = 1026;
    v240 = v96;
    v241 = 1026;
    v242 = v69;
    v243 = 1026;
    v244 = v70;
    v245 = 1026;
    v246 = v71;
    v247 = 1026;
    v248 = v111;
    v249 = 1026;
    v250 = v109;
    v251 = 1026;
    v252 = v73;
    v253 = 1026;
    v254 = v107;
    v255 = 1026;
    v256 = v74;
    v257 = 1026;
    v258 = v75;
    v259 = 1026;
    v260 = v76;
    v261 = 1026;
    v262 = v77;
    v263 = 1026;
    v264 = v78;
    v265 = 1026;
    v266 = v79;
    v267 = 1026;
    v268 = v80;
    v269 = 1026;
    v270 = v81;
    v271 = 1026;
    v272 = v82;
    v273 = 1026;
    v274 = v83;
    v275 = 1026;
    v276 = v84;
    v277 = 1026;
    v278 = v85;
    v279 = 1026;
    v280 = v86;
    v281 = 2050;
    v282 = v88;
    v283 = 2050;
    v284 = v87;
    v285 = 2050;
    v286 = v90;
    v287 = 2050;
    v288 = v89;
    v289 = 2050;
    v290 = v91;
    v291 = 1026;
    v292 = v92;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "PerfReport,i,%{public}.1f,w,%{public}.2f,%{public}.1f,e,%{public}d,%{public}d,%{public}.2f,%{public}d,0x%{public}X,r,%{public}d,%{public}d,%{public}.2f,%{public}d,0x%{public}X,x,%{public}d,%{public}d,t,%{public}d,%{public}d,p,%{public}d,%{public}d,a,%{public}d,%{public}d,g,%{public}d,%{public}d,d,%{public}d,%{public}d,%{public}.1f,%{public}.3f,v,%{public}d,%{public}d,c,%{public}d,%{public}d,L,%{public}d,%{public}d,m,%{public}d,%{public}d,s,%{public}d,%{public}d,E,%{public}d,%{public}d,T,%{public}.1f,%{public}.1f,%{public}.1f,u,0x%{public}llX,%{public}d,F,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,y,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,C,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,D,%{public}d,%{public}d,%{public}d,%{public}d,n,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,N,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,R,%{public}d,%{public}d,%{public}d,%{public}d,P,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.3f,%{public}.3f,%{public}d", buf, 0x268u);
  }

  v93 = gpsd::util::getMachContinuousTimeNs(v8);
  v94 = 0;
  *(this + 23) = v93 * 0.000000001;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 136) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 154) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 32) = 0;
  do
  {
    v95 = this + v94 + 624;
    *v95 = 0;
    *(v95 + 1) = 0;
    v94 += 16;
  }

  while (v94 != 112);
  *(this + 100) = 0;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
}

void ___ZN21GpsdGnssDeviceManager23createPvtmWatchdogTimerEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = gpsd::util::getMachContinuousTimeNs(a1) * 0.000000001;
  v4 = v3 - *(v2 + 1352);
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v2 + 1345);
    v8[0] = 67240448;
    v8[1] = v6;
    v9 = 2050;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gdm,pvtWatchdog,isKicked,%{public}d,actualInterval,%{public}.3f", v8, 0x12u);
  }

  if (vabdd_f64(v4, *(a1 + 40)) <= 2.0)
  {
    if ((*(v2 + 1345) & 1) == 0)
    {
      (*(*v2 + 64))(v2, 6);
    }
  }

  else
  {
    v7 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#gdm,pvtWatchdog,ignoring due to timer interval discrepancy", v8, 2u);
    }
  }

  *(v2 + 1345) = 0;
  *(v2 + 1352) = v3;
}

void CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::~MeasurementReportCallbackContents(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::~MeasurementReportCallbackContents(this);

  operator delete();
}

{
  *this = off_100179028;
  v2 = (this + 104);
  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[9];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[12];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

void CLP::LogEntry::PrivateData::ReceivedTimeStamp::~ReceivedTimeStamp(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  *this = off_100178FB0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178FB0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178FB0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::MeasurementReport::~MeasurementReport(CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  CLP::LogEntry::PrivateData::MeasurementReport::~MeasurementReport(this);

  operator delete();
}

{
  *this = off_1001785D8;
  if (CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::Clock::~Clock(CLP::LogEntry::PrivateData::Clock *this)
{
  *this = off_100178560;
  CLP::LogEntry::PrivateData::Clock::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178560;
  CLP::LogEntry::PrivateData::Clock::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178560;
  CLP::LogEntry::PrivateData::Clock::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::ReceiverClockModel::~ReceiverClockModel(CLP::LogEntry::PrivateData::ReceiverClockModel *this)
{
  *this = off_1001783F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_1001783F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001783F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *CLP::LogEntry::PrivateData::Clock::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::Clock::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[4];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

BOOL gnss::GpsTimeInfo::isValid(gnss::GpsTimeInfo *this)
{
  if (*this)
  {
    return 1;
  }

  if (*(this + 4) != -32768)
  {
    v2 = *(this + 10);
    if (*(this + 2))
    {
      if ((v2 != 2) == (*(this + 12) != -32768))
      {
        return *(this + 4) && (*(this + 5) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 6) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 7) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      }

      return 1;
    }

    if (v2 != 2)
    {
      return 1;
    }
  }

  return *(this + 4) && (*(this + 5) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 6) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 7) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

double CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(CLP::LogEntry::PrivateData::GpsTimeInfo *this, const CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 8) |= 2u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(v7, v8);
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_14:
      *(this + 8) |= 4u;
      v9 = *(this + 2);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 2);
      if (!v10)
      {
        v10 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 16);
      }

      return CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(v9, v10);
    }
  }

  return result;
}

void sub_100025C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(CLP::LogEntry::PrivateData::LeapSecondInfo *this, const CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 5)
      {
        __assert_rtn("set_change_knowledge", "CLPGnssMeasApi.pb.h", 11608, "::CLP::LogEntry::PrivateData::LeapSecondChangeKnowledge_IsValid(value)");
      }

      *(this + 7) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      *(this + 7) |= 4u;
      v7 = *(this + 2);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 2);
      if (!v8)
      {
        v8 = *(CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 16);
      }

      CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(v7, v8);
    }
  }
}

void sub_100025DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = result;
  }

  return result;
}

void sub_100025EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 40))
  {
    v6 = *(a2 + 2);
    *(this + 10) |= 1u;
    *(this + 2) = v6;
    v5 = *(a2 + 10);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v8 = *(a2 + 8);
      if (v8 >= 6)
      {
        __assert_rtn("set_leap_second_deprecated", "CLPGnssMeasApi.pb.h", 11971, "::CLP::LogEntry::PrivateData::GlonassLeapSecondDeprecated_IsValid(value)");
      }

      *(this + 10) |= 4u;
      *(this + 8) = v8;
      v5 = *(a2 + 10);
      if ((v5 & 8) == 0)
      {
LABEL_8:
        if ((v5 & 0x10) == 0)
        {
          return result;
        }

        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 3);
  *(this + 10) |= 2u;
  *(this + 3) = v7;
  v5 = *(a2 + 10);
  if ((v5 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v5 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  *(this + 10) |= 8u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 16);
  }

  result = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(v9, v10);
  if ((*(a2 + 10) & 0x10) != 0)
  {
LABEL_19:
    *(this + 10) |= 0x10u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 24);
    }

    return CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(v11, v12);
  }

  return result;
}

void sub_1000260E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1000261A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v5) = *(a2 + 56);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 56))
  {
    v6 = *(a2 + 12);
    *(this + 14) |= 1u;
    *(this + 12) = v6;
    v5 = *(a2 + 14);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 14) |= 2u;
  v7 = *(this + 1);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 1);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8);
  }

  CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(v7, v8);
  v5 = *(a2 + 14);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    *(this + 14) |= 8u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 24);
    }

    result = CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v11, v12);
    v5 = *(a2 + 14);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_17:
  *(this + 14) |= 4u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 16);
  }

  result = CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v9, v10);
  v5 = *(a2 + 14);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  *(this + 14) |= 0x10u;
  v13 = *(this + 4);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 4);
  if (!v14)
  {
    v14 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 32);
  }

  result = CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v13, v14);
  if ((*(a2 + 14) & 0x20) != 0)
  {
LABEL_32:
    *(this + 14) |= 0x20u;
    v15 = *(this + 5);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 5);
    if (!v16)
    {
      v16 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 40);
    }

    return CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v15, v16);
  }

  return result;
}

void sub_1000264B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(CLP::LogEntry::PrivateData::SubSecondConversion *this, const CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_1000265A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceiverClockCorrections::~ReceiverClockCorrections(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  *this = off_100178470;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178470;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178470;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::TimeConversionInfo::~TimeConversionInfo(CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  *this = off_100178DD0;
  CLP::LogEntry::PrivateData::TimeConversionInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178DD0;
  CLP::LogEntry::PrivateData::TimeConversionInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178DD0;
  CLP::LogEntry::PrivateData::TimeConversionInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *CLP::LogEntry::PrivateData::TimeConversionInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    this = v1[5];
    if (this)
    {
      v6 = *(*this + 8);

      return v6();
    }
  }

  return this;
}

void CLP::LogEntry::PrivateData::ReceiverBandCorrections::~ReceiverBandCorrections(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this)
{
  *this = off_1001788A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_1001788A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001788A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    operator delete[]();
  }

  return result;
}

void gnss::MeasurementData::~MeasurementData(gnss::MeasurementData *this)
{
  v2 = *(this + 33);
  *(this + 33) = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = *(this + 32);
  *(this + 32) = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *(this + 31);
  *(this + 31) = 0;
  if (v4)
  {
    operator delete();
  }

  v5 = *(this + 30);
  *(this + 30) = 0;
  if (v5)
  {
    operator delete();
  }

  v6 = *(this + 29);
  *(this + 29) = 0;
  if (v6)
  {
    operator delete();
  }

  v7 = *(this + 28);
  *(this + 28) = 0;
  if (v7)
  {
    operator delete();
  }

  v8 = *(this + 25);
  if (v8)
  {
    *(this + 26) = v8;
    operator delete(v8);
  }

  v9 = (this + 176);
  std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 152);
  std::vector<gnss::Measurement>::__destroy_vector::operator()[abi:ne200100](&v9);
}

double CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(this + 10) |= 2u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(v7, v8);
    v5 = *(a2 + 10);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v6 = *(a2 + 8);
  *(this + 10) |= 1u;
  *(this + 8) = v6;
  v5 = *(a2 + 10);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(this + 10) |= 4u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 16);
  }

  result = CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v9, v10);
  if ((*(a2 + 10) & 8) != 0)
  {
LABEL_20:
    *(this + 10) |= 8u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 24);
    }

    return CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v11, v12);
  }

  return result;
}

void sub_100026B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceCommon::setTimeTransferPulseHelper(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  if (*(a1 + 136) == 1)
  {
    *(a1 + 136) = 0;
  }

  v2 = *(a1 + 8);
  v6[0] = off_1001733B8;
  v6[1] = a1;
  v6[3] = v6;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v5, a2);
  v4[0] = off_1001734C8;
  v4[3] = v4;
  (*(*v2 + 120))(v2, v6, v5, v4);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v4);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v5);
  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v6);
}

void sub_100026CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result,gnss::TimeTransferData)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001733B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

float CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  v5 = *(a2 + 13);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    v6 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v6;
    v5 = *(a2 + 13);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 4);
  *(this + 13) |= 2u;
  *(this + 4) = result;
  v5 = *(a2 + 13);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 5);
  *(this + 13) |= 4u;
  *(this + 5) = result;
  v5 = *(a2 + 13);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 6);
  *(this + 13) |= 8u;
  *(this + 6) = result;
  v5 = *(a2 + 13);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    result = *(a2 + 8);
    *(this + 13) |= 0x20u;
    *(this + 8) = result;
    v5 = *(a2 + 13);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  result = *(a2 + 7);
  *(this + 13) |= 0x10u;
  *(this + 7) = result;
  v5 = *(a2 + 13);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  result = *(a2 + 9);
  *(this + 13) |= 0x40u;
  *(this + 9) = result;
  v5 = *(a2 + 13);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 10);
    *(this + 13) |= 0x80u;
    *(this + 10) = result;
    v5 = *(a2 + 13);
  }

LABEL_13:
  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 11);
    *(this + 13) |= 0x100u;
    *(this + 11) = result;
  }

  return result;
}

void sub_100026F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnss::Fix::ByteSize(proto::gnss::Fix *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(proto::gnss::Fix::default_instance_ + 8);
  }

  v6 = proto::gnss::Time::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(this + 12);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(proto::gnss::Fix::default_instance_ + 16);
    }

    v10 = proto::gnss::Position::ByteSize(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(this + 12);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4), a2) + 1;
    if ((*(this + 12) & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v13 = *(this + 3);
  if (!v13)
  {
    v13 = *(proto::gnss::Fix::default_instance_ + 24);
  }

  v4 = v4 + proto::gnss::Velocity::ByteSize(v13) + 2;
  v3 = *(this + 12);
  if ((v3 & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v14 = *(this + 10);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
LABEL_32:
  *(this + 11) = v4;
  return v4;
}

uint64_t proto::gnss::Time::ByteSize(proto::gnss::Time *this, unint64_t a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    v6 = v4 + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v7 = *(this + 16);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = *(this + 18);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
      v3 = *(this + 18);
    }

    v9 = v6 + 9;
    if ((v3 & 0x20) == 0)
    {
      v9 = v6;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 = v9 + 9;
    }

    else
    {
      v5 = v9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6), a2) + 1;
      v3 = *(this + 18);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0x100) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7), a2) + 1;
  }

  *(this + 17) = v5;
  return v5;
}

void std::__function::__func<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_1,std::allocator<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_1>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#tt,onCompleted,%{public}d", v5, 8u);
  }
}

void std::vector<gnss::Measurement>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<gnss::Measurement>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(CLP::LogEntry::PrivateData::NavicTimeInfo *this, const CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      *(this + 6) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8);
      }

      CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v5, v6);
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v7;
    }
  }
}

void sub_1000273A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnss::Position::ByteSize(proto::gnss::Position *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v6 = *(this + 18);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(this + 24);
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
      if ((v3 & 0x200) == 0)
      {
LABEL_21:
        if ((v3 & 0x400) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }
    }

    else if ((v3 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    v8 = *(this + 19);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 24);
    }

    else
    {
      v9 = 2;
    }

    v5 = (v9 + v5);
    if ((v3 & 0x400) == 0)
    {
LABEL_22:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_41;
      }

LABEL_35:
      v10 = *(this + 22);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      }

      else
      {
        v11 = 2;
      }

      v5 = (v11 + v5);
      goto LABEL_41;
    }

LABEL_34:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10), a2) + 1;
    if ((*(this + 24) & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_41:
  *(this + 23) = v5;
  return v5;
}

uint64_t proto::gnss::Velocity::ByteSize(proto::gnss::Velocity *this)
{
  v1 = *(this + 60);
  if (*(this + 60))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 14) = v1;
  return v1;
}

void CLP::LogEntry::PrivateData::GpsTimeInfo::~GpsTimeInfo(CLP::LogEntry::PrivateData::GpsTimeInfo *this)
{
  *this = off_100178A88;
  CLP::LogEntry::PrivateData::GpsTimeInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178A88;
  CLP::LogEntry::PrivateData::GpsTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178A88;
  CLP::LogEntry::PrivateData::GpsTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gnss::Fix::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Fix::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(proto::gnss::Fix::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(proto::gnss::Fix::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_17:
  v10 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v10, a2, a4);
}

void CLP::LogEntry::PrivateData::LeapSecondInfo::~LeapSecondInfo(CLP::LogEntry::PrivateData::LeapSecondInfo *this)
{
  CLP::LogEntry::PrivateData::LeapSecondInfo::~LeapSecondInfo(this);

  operator delete();
}

{
  *this = off_100178998;
  if (CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gnss::Time::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 48), a2, a4);
    if ((*(v5 + 72) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, v7, a2, a4);
}

void *CLP::LogEntry::PrivateData::GpsTimeInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[2];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

void CLP::LogEntry::PrivateData::GpsToUtcConversion::~GpsToUtcConversion(CLP::LogEntry::PrivateData::GpsToUtcConversion *this)
{
  *this = off_100178A10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178A10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178A10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gnss::Position::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 72), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(v5 + 80), a2, a4);
    if ((*(v5 + 96) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 76), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:
  v7 = *(v5 + 88);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, v7, a2, a4);
}