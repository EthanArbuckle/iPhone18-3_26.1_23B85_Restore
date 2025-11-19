uint64_t sub_10009067C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100089DB8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100090750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100090768(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000907FC()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED450;
}

void sub_100090890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100090A18()
{
  v0 = sub_100092114();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_100092114(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009ED938 & 1) == 0)
  {
    byte_1009ED938 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPRoseCommunicationEvent.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_10054F24C, 0x68C6, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100092CD0()
{
  if (qword_1009F9980)
  {
    (*(*qword_1009F9980 + 8))(qword_1009F9980);
  }

  if (qword_1009ED5D8)
  {
    (*(*qword_1009ED5D8 + 8))(qword_1009ED5D8);
  }

  if (qword_1009F9988)
  {
    (*(*qword_1009F9988 + 8))(qword_1009F9988);
  }

  if (qword_1009ED5E8)
  {
    (*(*qword_1009ED5E8 + 8))(qword_1009ED5E8);
  }

  if (qword_1009F9990)
  {
    (*(*qword_1009F9990 + 8))(qword_1009F9990);
  }

  if (qword_1009ED5F8)
  {
    (*(*qword_1009ED5F8 + 8))(qword_1009ED5F8);
  }

  if (qword_1009F9998)
  {
    (*(*qword_1009F9998 + 8))(qword_1009F9998);
  }

  if (qword_1009ED608)
  {
    (*(*qword_1009ED608 + 8))(qword_1009ED608);
  }

  if (qword_1009F99A0)
  {
    (*(*qword_1009F99A0 + 8))(qword_1009F99A0);
  }

  if (qword_1009ED618)
  {
    (*(*qword_1009ED618 + 8))(qword_1009ED618);
  }

  if (qword_1009F99A8)
  {
    (*(*qword_1009F99A8 + 8))(qword_1009F99A8);
  }

  if (qword_1009ED628)
  {
    (*(*qword_1009ED628 + 8))(qword_1009ED628);
  }

  if (qword_1009F99B0)
  {
    (*(*qword_1009F99B0 + 8))(qword_1009F99B0);
  }

  if (qword_1009ED638)
  {
    (*(*qword_1009ED638 + 8))(qword_1009ED638);
  }

  if (qword_1009F99B8)
  {
    (*(*qword_1009F99B8 + 8))(qword_1009F99B8);
  }

  if (qword_1009ED648)
  {
    (*(*qword_1009ED648 + 8))(qword_1009ED648);
  }

  if (qword_1009F99C0)
  {
    (*(*qword_1009F99C0 + 8))(qword_1009F99C0);
  }

  if (qword_1009ED658)
  {
    (*(*qword_1009ED658 + 8))(qword_1009ED658);
  }

  if (qword_1009F99C8)
  {
    (*(*qword_1009F99C8 + 8))(qword_1009F99C8);
  }

  if (qword_1009ED668)
  {
    (*(*qword_1009ED668 + 8))(qword_1009ED668);
  }

  if (qword_1009F99D0)
  {
    (*(*qword_1009F99D0 + 8))(qword_1009F99D0);
  }

  if (qword_1009ED678)
  {
    (*(*qword_1009ED678 + 8))(qword_1009ED678);
  }

  if (qword_1009F99D8)
  {
    (*(*qword_1009F99D8 + 8))(qword_1009F99D8);
  }

  if (qword_1009ED688)
  {
    (*(*qword_1009ED688 + 8))(qword_1009ED688);
  }

  if (qword_1009F99E0)
  {
    (*(*qword_1009F99E0 + 8))(qword_1009F99E0);
  }

  if (qword_1009ED698)
  {
    (*(*qword_1009ED698 + 8))(qword_1009ED698);
  }

  if (qword_1009F99E8)
  {
    (*(*qword_1009F99E8 + 8))(qword_1009F99E8);
  }

  if (qword_1009ED6A8)
  {
    (*(*qword_1009ED6A8 + 8))(qword_1009ED6A8);
  }

  if (qword_1009F99F0)
  {
    (*(*qword_1009F99F0 + 8))(qword_1009F99F0);
  }

  if (qword_1009ED6B8)
  {
    (*(*qword_1009ED6B8 + 8))(qword_1009ED6B8);
  }

  if (qword_1009F99F8)
  {
    (*(*qword_1009F99F8 + 8))(qword_1009F99F8);
  }

  if (qword_1009ED6C8)
  {
    (*(*qword_1009ED6C8 + 8))(qword_1009ED6C8);
  }

  if (qword_1009F9A00)
  {
    (*(*qword_1009F9A00 + 8))(qword_1009F9A00);
  }

  if (qword_1009ED6D8)
  {
    (*(*qword_1009ED6D8 + 8))(qword_1009ED6D8);
  }

  if (qword_1009F9A08)
  {
    (*(*qword_1009F9A08 + 8))(qword_1009F9A08);
  }

  if (qword_1009ED6E8)
  {
    (*(*qword_1009ED6E8 + 8))(qword_1009ED6E8);
  }

  if (qword_1009F9A10)
  {
    (*(*qword_1009F9A10 + 8))(qword_1009F9A10);
  }

  if (qword_1009ED6F8)
  {
    (*(*qword_1009ED6F8 + 8))(qword_1009ED6F8);
  }

  if (qword_1009F9A18)
  {
    (*(*qword_1009F9A18 + 8))(qword_1009F9A18);
  }

  if (qword_1009ED708)
  {
    (*(*qword_1009ED708 + 8))(qword_1009ED708);
  }

  if (qword_1009F9A20)
  {
    (*(*qword_1009F9A20 + 8))(qword_1009F9A20);
  }

  if (qword_1009ED718)
  {
    (*(*qword_1009ED718 + 8))(qword_1009ED718);
  }

  if (qword_1009F9A28)
  {
    (*(*qword_1009F9A28 + 8))(qword_1009F9A28);
  }

  if (qword_1009ED728)
  {
    (*(*qword_1009ED728 + 8))(qword_1009ED728);
  }

  if (qword_1009F9A30)
  {
    (*(*qword_1009F9A30 + 8))(qword_1009F9A30);
  }

  if (qword_1009ED738)
  {
    (*(*qword_1009ED738 + 8))(qword_1009ED738);
  }

  if (qword_1009F9A38)
  {
    (*(*qword_1009F9A38 + 8))(qword_1009F9A38);
  }

  if (qword_1009ED748)
  {
    (*(*qword_1009ED748 + 8))(qword_1009ED748);
  }

  if (qword_1009F9A40)
  {
    (*(*qword_1009F9A40 + 8))(qword_1009F9A40);
  }

  if (qword_1009ED758)
  {
    (*(*qword_1009ED758 + 8))(qword_1009ED758);
  }

  if (qword_1009F9A48)
  {
    (*(*qword_1009F9A48 + 8))(qword_1009F9A48);
  }

  if (qword_1009ED768)
  {
    (*(*qword_1009ED768 + 8))(qword_1009ED768);
  }

  if (qword_1009F9A50)
  {
    (*(*qword_1009F9A50 + 8))(qword_1009F9A50);
  }

  if (qword_1009ED778)
  {
    (*(*qword_1009ED778 + 8))(qword_1009ED778);
  }

  if (qword_1009F9A58)
  {
    (*(*qword_1009F9A58 + 8))(qword_1009F9A58);
  }

  if (qword_1009ED788)
  {
    (*(*qword_1009ED788 + 8))(qword_1009ED788);
  }

  if (qword_1009F9A60)
  {
    (*(*qword_1009F9A60 + 8))(qword_1009F9A60);
  }

  if (qword_1009ED798)
  {
    (*(*qword_1009ED798 + 8))(qword_1009ED798);
  }

  if (qword_1009F9A68)
  {
    (*(*qword_1009F9A68 + 8))(qword_1009F9A68);
  }

  if (qword_1009ED7A8)
  {
    (*(*qword_1009ED7A8 + 8))(qword_1009ED7A8);
  }

  if (qword_1009F9A70)
  {
    (*(*qword_1009F9A70 + 8))(qword_1009F9A70);
  }

  if (qword_1009ED7B8)
  {
    (*(*qword_1009ED7B8 + 8))(qword_1009ED7B8);
  }

  if (qword_1009F9A78)
  {
    (*(*qword_1009F9A78 + 8))(qword_1009F9A78);
  }

  if (qword_1009ED7C8)
  {
    (*(*qword_1009ED7C8 + 8))(qword_1009ED7C8);
  }

  if (qword_1009F9A80)
  {
    (*(*qword_1009F9A80 + 8))(qword_1009F9A80);
  }

  if (qword_1009ED7D8)
  {
    (*(*qword_1009ED7D8 + 8))(qword_1009ED7D8);
  }

  if (qword_1009F9A88)
  {
    (*(*qword_1009F9A88 + 8))(qword_1009F9A88);
  }

  if (qword_1009ED7E8)
  {
    (*(*qword_1009ED7E8 + 8))(qword_1009ED7E8);
  }

  if (qword_1009F9A90)
  {
    (*(*qword_1009F9A90 + 8))(qword_1009F9A90);
  }

  if (qword_1009ED7F8)
  {
    (*(*qword_1009ED7F8 + 8))(qword_1009ED7F8);
  }

  if (qword_1009F9A98)
  {
    (*(*qword_1009F9A98 + 8))(qword_1009F9A98);
  }

  if (qword_1009ED808)
  {
    (*(*qword_1009ED808 + 8))(qword_1009ED808);
  }

  if (qword_1009F9AA0)
  {
    (*(*qword_1009F9AA0 + 8))(qword_1009F9AA0);
  }

  if (qword_1009ED818)
  {
    (*(*qword_1009ED818 + 8))(qword_1009ED818);
  }

  if (qword_1009F9AA8)
  {
    (*(*qword_1009F9AA8 + 8))(qword_1009F9AA8);
  }

  if (qword_1009ED828)
  {
    (*(*qword_1009ED828 + 8))(qword_1009ED828);
  }

  if (qword_1009F9AB0)
  {
    (*(*qword_1009F9AB0 + 8))(qword_1009F9AB0);
  }

  if (qword_1009ED838)
  {
    (*(*qword_1009ED838 + 8))(qword_1009ED838);
  }

  if (qword_1009F9AB8)
  {
    (*(*qword_1009F9AB8 + 8))(qword_1009F9AB8);
  }

  if (qword_1009ED848)
  {
    (*(*qword_1009ED848 + 8))(qword_1009ED848);
  }

  if (qword_1009F9AC0)
  {
    (*(*qword_1009F9AC0 + 8))(qword_1009F9AC0);
  }

  if (qword_1009ED858)
  {
    (*(*qword_1009ED858 + 8))(qword_1009ED858);
  }

  if (qword_1009F9AC8)
  {
    (*(*qword_1009F9AC8 + 8))(qword_1009F9AC8);
  }

  if (qword_1009ED868)
  {
    (*(*qword_1009ED868 + 8))(qword_1009ED868);
  }

  if (qword_1009F9AD0)
  {
    (*(*qword_1009F9AD0 + 8))(qword_1009F9AD0);
  }

  if (qword_1009ED878)
  {
    (*(*qword_1009ED878 + 8))(qword_1009ED878);
  }

  if (qword_1009F9AD8)
  {
    (*(*qword_1009F9AD8 + 8))(qword_1009F9AD8);
  }

  result = qword_1009ED888;
  if (qword_1009ED888)
  {
    v1 = *(*qword_1009ED888 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100093D78()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v45[1] = sub_100090A18;
    v46 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v45);
  }

  if (!qword_1009F9980)
  {
    (sub_100092114)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9988)
  {
    sub_100092114(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9990)
  {
    sub_100092114(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9998)
  {
    sub_100092114(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99A0)
  {
    sub_100092114(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99A8)
  {
    sub_100092114(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99B0)
  {
    sub_100092114(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99B8)
  {
    sub_100092114(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99C0)
  {
    sub_100092114(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99C8)
  {
    sub_100092114(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99D0)
  {
    sub_100092114(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99D8)
  {
    sub_100092114(v11);
  }

  v12 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99E0)
  {
    sub_100092114(v12);
  }

  v13 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99E8)
  {
    sub_100092114(v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99F0)
  {
    sub_100092114(v14);
  }

  v15 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F99F8)
  {
    sub_100092114(v15);
  }

  v16 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A00)
  {
    sub_100092114(v16);
  }

  v17 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A08)
  {
    sub_100092114(v17);
  }

  v18 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A10)
  {
    sub_100092114(v18);
  }

  v19 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A18)
  {
    sub_100092114(v19);
  }

  v20 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A20)
  {
    sub_100092114(v20);
  }

  v21 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A28)
  {
    sub_100092114(v21);
  }

  v22 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A30)
  {
    sub_100092114(v22);
  }

  v23 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A38)
  {
    sub_100092114(v23);
  }

  v24 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A40)
  {
    sub_100092114(v24);
  }

  v25 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A48)
  {
    sub_100092114(v25);
  }

  v26 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A50)
  {
    sub_100092114(v26);
  }

  v27 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A58)
  {
    sub_100092114(v27);
  }

  v28 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A60)
  {
    sub_100092114(v28);
  }

  v29 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A68)
  {
    sub_100092114(v29);
  }

  v30 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A70)
  {
    sub_100092114(v30);
  }

  v31 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A78)
  {
    sub_100092114(v31);
  }

  v32 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A80)
  {
    sub_100092114(v32);
  }

  v33 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A88)
  {
    sub_100092114(v33);
  }

  v34 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A90)
  {
    sub_100092114(v34);
  }

  v35 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9A98)
  {
    sub_100092114(v35);
  }

  v36 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9AA0)
  {
    sub_100092114(v36);
  }

  v37 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9AA8)
  {
    sub_100092114(v37);
  }

  v38 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9AB0)
  {
    sub_100092114(v38);
  }

  v39 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9AB8)
  {
    sub_100092114(v39);
  }

  v40 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9AC0)
  {
    sub_100092114(v40);
  }

  v41 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9AC8)
  {
    sub_100092114(v41);
  }

  v42 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9AD0)
  {
    sub_100092114(v42);
  }

  v43 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9AD8)
  {
    sub_100092114(v43);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_10009442C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100094488(uint64_t result)
{
  v1 = result;
  v2 = qword_1009F9998;
  if (!qword_1009F9998)
  {
    result = sub_100092114(result);
    v2 = qword_1009F9998;
  }

  v1[3] = v2;
  v3 = qword_1009F99A0;
  if (!qword_1009F99A0)
  {
    result = sub_100092114(result);
    v3 = qword_1009F99A0;
  }

  v1[4] = v3;
  v4 = qword_1009F99B0;
  if (!qword_1009F99B0)
  {
    result = sub_100092114(result);
    v4 = qword_1009F99B0;
  }

  v1[5] = v4;
  v5 = qword_1009F99B8;
  if (!qword_1009F99B8)
  {
    result = sub_100092114(result);
    v5 = qword_1009F99B8;
  }

  v1[6] = v5;
  v6 = qword_1009F99C0;
  if (!qword_1009F99C0)
  {
    result = sub_100092114(result);
    v6 = qword_1009F99C0;
  }

  v1[7] = v6;
  v7 = qword_1009F99C8;
  if (!qword_1009F99C8)
  {
    result = sub_100092114(result);
    v7 = qword_1009F99C8;
  }

  v1[8] = v7;
  v8 = qword_1009F99D0;
  if (!qword_1009F99D0)
  {
    result = sub_100092114(result);
    v8 = qword_1009F99D0;
  }

  v1[9] = v8;
  v9 = qword_1009F99D8;
  if (!qword_1009F99D8)
  {
    result = sub_100092114(result);
    v9 = qword_1009F99D8;
  }

  v1[10] = v9;
  v10 = qword_1009F99E0;
  if (!qword_1009F99E0)
  {
    result = sub_100092114(result);
    v10 = qword_1009F99E0;
  }

  v1[11] = v10;
  v11 = qword_1009F99F0;
  if (!qword_1009F99F0)
  {
    result = sub_100092114(result);
    v11 = qword_1009F99F0;
  }

  v1[12] = v11;
  v12 = qword_1009F99F8;
  if (!qword_1009F99F8)
  {
    result = sub_100092114(result);
    v12 = qword_1009F99F8;
  }

  v1[13] = v12;
  v13 = qword_1009F9A00;
  if (!qword_1009F9A00)
  {
    result = sub_100092114(result);
    v13 = qword_1009F9A00;
  }

  v1[14] = v13;
  v14 = qword_1009F9A08;
  if (!qword_1009F9A08)
  {
    result = sub_100092114(result);
    v14 = qword_1009F9A08;
  }

  v1[15] = v14;
  v15 = qword_1009F9A28;
  if (!qword_1009F9A28)
  {
    result = sub_100092114(result);
    v15 = qword_1009F9A28;
  }

  v1[16] = v15;
  v16 = qword_1009F9A30;
  if (!qword_1009F9A30)
  {
    result = sub_100092114(result);
    v16 = qword_1009F9A30;
  }

  v1[17] = v16;
  v17 = qword_1009F9A58;
  if (!qword_1009F9A58)
  {
    result = sub_100092114(result);
    v17 = qword_1009F9A58;
  }

  v1[18] = v17;
  v18 = qword_1009F9A60;
  if (!qword_1009F9A60)
  {
    result = sub_100092114(result);
    v18 = qword_1009F9A60;
  }

  v1[19] = v18;
  v19 = qword_1009F9A68;
  if (!qword_1009F9A68)
  {
    result = sub_100092114(result);
    v19 = qword_1009F9A68;
  }

  v1[20] = v19;
  v20 = qword_1009F9A70;
  if (!qword_1009F9A70)
  {
    result = sub_100092114(result);
    v20 = qword_1009F9A70;
  }

  v1[21] = v20;
  v21 = qword_1009F9A88;
  if (!qword_1009F9A88)
  {
    result = sub_100092114(result);
    v21 = qword_1009F9A88;
  }

  v1[22] = v21;
  v22 = qword_1009F9A90;
  if (!qword_1009F9A90)
  {
    result = sub_100092114(result);
    v22 = qword_1009F9A90;
  }

  v1[23] = v22;
  v23 = qword_1009F9AA8;
  if (!qword_1009F9AA8)
  {
    result = sub_100092114(result);
    v23 = qword_1009F9AA8;
  }

  v1[24] = v23;
  v24 = qword_1009F9AB0;
  if (!qword_1009F9AB0)
  {
    result = sub_100092114(result);
    v24 = qword_1009F9AB0;
  }

  v1[25] = v24;
  v25 = qword_1009F9AB8;
  if (!qword_1009F9AB8)
  {
    result = sub_100092114(result);
    v25 = qword_1009F9AB8;
  }

  v1[26] = v25;
  v26 = qword_1009F9A80;
  if (!qword_1009F9A80)
  {
    result = sub_100092114(result);
    v26 = qword_1009F9A80;
  }

  v1[27] = v26;
  v27 = qword_1009F9AC0;
  if (!qword_1009F9AC0)
  {
    result = sub_100092114(result);
    v27 = qword_1009F9AC0;
  }

  v1[28] = v27;
  v28 = qword_1009F9AC8;
  if (!qword_1009F9AC8)
  {
    result = sub_100092114(result);
    v28 = qword_1009F9AC8;
  }

  v1[29] = v28;
  v29 = qword_1009F9AA0;
  if (!qword_1009F9AA0)
  {
    result = sub_100092114(result);
    v29 = qword_1009F9AA0;
  }

  v1[30] = v29;
  v30 = qword_1009F9AD8;
  if (!qword_1009F9AD8)
  {
    result = sub_100092114(result);
    v30 = qword_1009F9AD8;
  }

  v1[31] = v30;
  return result;
}

uint64_t sub_100094788(unsigned int a1)
{
  result = 1;
  if (a1 >= 0x25)
  {
    v3 = a1 - 89;
    if (v3 > 8 || ((1 << v3) & 0x18F) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100094824(unsigned int a1)
{
  result = 1;
  if ((a1 - 224 > 0x1E || ((1 << (a1 + 32)) & 0x7FFF403F) == 0) && (a1 > 0x18 || ((1 << a1) & 0x116003F) == 0))
  {
    return 0;
  }

  return result;
}

uint64_t sub_100094878(uint64_t a1)
{
  *a1 = off_10098E258;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 1;
  *(a1 + 256) = 0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 240) = 0u;
  return a1;
}

uint64_t sub_10009491C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9A28;
  if (!qword_1009F9A28)
  {
    sub_100092114(0, a2, a3, a4);
    return qword_1009F9A28;
  }

  return result;
}

uint64_t sub_10009494C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9A80;
  if (!qword_1009F9A80)
  {
    sub_100092114(0, a2, a3, a4);
    return qword_1009F9A80;
  }

  return result;
}

uint64_t sub_10009497C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v66);
  }

  v4 = *(a2 + 260);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      if ((v5 - 1) >= 3)
      {
        sub_10049D8D4();
      }

      *(a1 + 260) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 260);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      if (v6 >= 0x15 && v6 - 22 >= 7)
      {
        sub_10049D900();
      }

      *(a1 + 260) |= 2u;
      *(a1 + 20) = v6;
      v4 = *(a2 + 260);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 260) |= 4u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9980 + 24);
      }

      sub_10009A9E8(v7, v8);
      v4 = *(a2 + 260);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 260) |= 8u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9980 + 32);
      }

      sub_10009AADC(v9, v10);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x10) != 0)
    {
      *(a1 + 260) |= 0x10u;
      v11 = *(a1 + 40);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 40);
      if (!v12)
      {
        v12 = *(qword_1009F9980 + 40);
      }

      sub_10009AD30(v11, v12);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x20) != 0)
    {
      *(a1 + 260) |= 0x20u;
      v13 = *(a1 + 48);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 48);
      if (!v14)
      {
        v14 = *(qword_1009F9980 + 48);
      }

      sub_10009AF78(v13, v14);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x40) != 0)
    {
      *(a1 + 260) |= 0x40u;
      v15 = *(a1 + 56);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 56);
      if (!v16)
      {
        v16 = *(qword_1009F9980 + 56);
      }

      sub_10009B088(v15, v16);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x80) != 0)
    {
      *(a1 + 260) |= 0x80u;
      v17 = *(a1 + 64);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 64);
      if (!v18)
      {
        v18 = *(qword_1009F9980 + 64);
      }

      sub_10009B1FC(v17, v18);
      v4 = *(a2 + 260);
    }
  }

  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 260) |= 0x100u;
      v19 = *(a1 + 72);
      if (!v19)
      {
        operator new();
      }

      v20 = *(a2 + 72);
      if (!v20)
      {
        v20 = *(qword_1009F9980 + 72);
      }

      sub_10009B30C(v19, v20);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 260) |= 0x200u;
      v21 = *(a1 + 80);
      if (!v21)
      {
        operator new();
      }

      v22 = *(a2 + 80);
      if (!v22)
      {
        v22 = *(qword_1009F9980 + 80);
      }

      sub_10009B448(v21, v22);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x400) != 0)
    {
      *(a1 + 260) |= 0x400u;
      v23 = *(a1 + 88);
      if (!v23)
      {
        operator new();
      }

      v24 = *(a2 + 88);
      if (!v24)
      {
        v24 = *(qword_1009F9980 + 88);
      }

      sub_10009B558(v23, v24);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x800) != 0)
    {
      *(a1 + 260) |= 0x800u;
      v25 = *(a1 + 96);
      if (!v25)
      {
        operator new();
      }

      v26 = *(a2 + 96);
      if (!v26)
      {
        v26 = *(qword_1009F9980 + 96);
      }

      sub_10009B630(v25, v26);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x1000) != 0)
    {
      *(a1 + 260) |= 0x1000u;
      v27 = *(a1 + 104);
      if (!v27)
      {
        operator new();
      }

      v28 = *(a2 + 104);
      if (!v28)
      {
        v28 = *(qword_1009F9980 + 104);
      }

      sub_10009B704(v27, v28);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x2000) != 0)
    {
      *(a1 + 260) |= 0x2000u;
      v29 = *(a1 + 112);
      if (!v29)
      {
        operator new();
      }

      v30 = *(a2 + 112);
      if (!v30)
      {
        v30 = *(qword_1009F9980 + 112);
      }

      sub_10009B7A4(v29, v30);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x4000) != 0)
    {
      *(a1 + 260) |= 0x4000u;
      v31 = *(a1 + 120);
      if (!v31)
      {
        operator new();
      }

      v32 = *(a2 + 120);
      if (!v32)
      {
        v32 = *(qword_1009F9980 + 120);
      }

      sub_10009B8A8(v31, v32);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x8000) != 0)
    {
      *(a1 + 260) |= 0x8000u;
      v33 = *(a1 + 128);
      if (!v33)
      {
        operator new();
      }

      v34 = *(a2 + 128);
      if (!v34)
      {
        v34 = *(qword_1009F9980 + 128);
      }

      sub_10009BA40(v33, v34);
      v4 = *(a2 + 260);
    }
  }

  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      *(a1 + 260) |= 0x10000u;
      v35 = *(a1 + 136);
      if (!v35)
      {
        operator new();
      }

      v36 = *(a2 + 136);
      if (!v36)
      {
        v36 = *(qword_1009F9980 + 136);
      }

      sub_10009C56C(v35, v36);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x20000) != 0)
    {
      *(a1 + 260) |= 0x20000u;
      v37 = *(a1 + 144);
      if (!v37)
      {
        operator new();
      }

      v38 = *(a2 + 144);
      if (!v38)
      {
        v38 = *(qword_1009F9980 + 144);
      }

      sub_10009C6AC(v37, v38);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x40000) != 0)
    {
      *(a1 + 260) |= 0x40000u;
      v39 = *(a1 + 152);
      if (!v39)
      {
        operator new();
      }

      v40 = *(a2 + 152);
      if (!v40)
      {
        v40 = *(qword_1009F9980 + 152);
      }

      sub_10009C8B4(v39, v40);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x80000) != 0)
    {
      *(a1 + 260) |= 0x80000u;
      v41 = *(a1 + 160);
      if (!v41)
      {
        operator new();
      }

      v42 = *(a2 + 160);
      if (!v42)
      {
        v42 = *(qword_1009F9980 + 160);
      }

      sub_10009CEC4(v41, v42);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x100000) != 0)
    {
      *(a1 + 260) |= 0x100000u;
      v43 = *(a1 + 168);
      if (!v43)
      {
        operator new();
      }

      v44 = *(a2 + 168);
      if (!v44)
      {
        v44 = *(qword_1009F9980 + 168);
      }

      sub_10009D0BC(v43, v44);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x200000) != 0)
    {
      *(a1 + 260) |= 0x200000u;
      v45 = *(a1 + 176);
      if (!v45)
      {
        operator new();
      }

      v46 = *(a2 + 176);
      if (!v46)
      {
        v46 = *(qword_1009F9980 + 176);
      }

      sub_10009D2E0(v45, v46);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x400000) != 0)
    {
      *(a1 + 260) |= 0x400000u;
      v47 = *(a1 + 184);
      if (!v47)
      {
        operator new();
      }

      v48 = *(a2 + 184);
      if (!v48)
      {
        v48 = *(qword_1009F9980 + 184);
      }

      sub_10009D968(v47, v48);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x800000) != 0)
    {
      *(a1 + 260) |= 0x800000u;
      v49 = *(a1 + 192);
      if (!v49)
      {
        operator new();
      }

      v50 = *(a2 + 192);
      if (!v50)
      {
        v50 = *(qword_1009F9980 + 192);
      }

      sub_10009DB24(v49, v50);
      v4 = *(a2 + 260);
    }
  }

  if (HIBYTE(v4))
  {
    if ((v4 & 0x1000000) != 0)
    {
      *(a1 + 260) |= 0x1000000u;
      v51 = *(a1 + 200);
      if (!v51)
      {
        operator new();
      }

      v52 = *(a2 + 200);
      if (!v52)
      {
        v52 = *(qword_1009F9980 + 200);
      }

      sub_10009DE78(v51, v52);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x2000000) != 0)
    {
      *(a1 + 260) |= 0x2000000u;
      v53 = *(a1 + 208);
      if (!v53)
      {
        operator new();
      }

      v54 = *(a2 + 208);
      if (!v54)
      {
        v54 = *(qword_1009F9980 + 208);
      }

      sub_10009E054(v53, v54);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x4000000) != 0)
    {
      *(a1 + 260) |= 0x4000000u;
      v55 = *(a1 + 216);
      if (!v55)
      {
        operator new();
      }

      v56 = *(a2 + 216);
      if (!v56)
      {
        v56 = *(qword_1009F9980 + 216);
      }

      sub_10009E24C(v55, v56);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x8000000) != 0)
    {
      *(a1 + 260) |= 0x8000000u;
      v57 = *(a1 + 224);
      if (!v57)
      {
        operator new();
      }

      v58 = *(a2 + 224);
      if (!v58)
      {
        v58 = *(qword_1009F9980 + 224);
      }

      sub_10009E410(v57, v58);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x10000000) != 0)
    {
      *(a1 + 260) |= 0x10000000u;
      v59 = *(a1 + 232);
      if (!v59)
      {
        operator new();
      }

      v60 = *(a2 + 232);
      if (!v60)
      {
        v60 = *(qword_1009F9980 + 232);
      }

      sub_10009E718(v59, v60);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x20000000) != 0)
    {
      *(a1 + 260) |= 0x20000000u;
      v61 = *(a1 + 240);
      if (!v61)
      {
        operator new();
      }

      v62 = *(a2 + 240);
      if (!v62)
      {
        v62 = *(qword_1009F9980 + 240);
      }

      sub_10009E828(v61, v62);
      v4 = *(a2 + 260);
    }

    if ((v4 & 0x40000000) != 0)
    {
      *(a1 + 260) |= 0x40000000u;
      v63 = *(a1 + 248);
      if (!v63)
      {
        operator new();
      }

      v64 = *(a2 + 248);
      if (!v64)
      {
        v64 = *(qword_1009F9980 + 248);
      }

      sub_10009EC50(v63, v64);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000955E8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  JUMPOUT(0x1000955E0);
}

void sub_1000955FC(void *a1)
{
  *a1 = off_10098E258;
  v2 = (a1 + 1);
  sub_10009565C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10009565C(void *result)
{
  if (qword_1009F9980 != result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[4];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[5];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[6];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[7];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[9];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[10];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[11];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[12];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[13];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[14];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[15];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[16];
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

    v23 = v1[24];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v1[25];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v1[26];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = v1[27];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = v1[28];
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v1[29];
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = v1[30];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    result = v1[31];
    if (result)
    {
      v30 = *(*result + 8);

      return v30();
    }
  }

  return result;
}

void sub_100095BA4(void *a1)
{
  sub_1000955FC(a1);

  operator delete();
}

uint64_t sub_100095BE4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9980;
  if (!qword_1009F9980)
  {
    sub_100092114(0, a2, a3, a4);
    return qword_1009F9980;
  }

  return result;
}

uint64_t sub_100095C78(uint64_t this)
{
  v1 = this;
  v2 = *(this + 260);
  if (v2)
  {
    *(this + 16) = 1;
    if ((v2 & 4) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = sub_100095F64(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_100095FB4(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = sub_100096058(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = sub_1000960E4(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = sub_100096144(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = sub_1000961AC(this);
        v2 = *(v1 + 260);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = sub_10009620C(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = sub_100096274(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      this = *(v1 + 88);
      if (this)
      {
        v3 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 28) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v2 = *(v1 + 260);
    if ((v2 & 0x800) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = sub_1000962EC(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x1000) != 0)
    {
      this = *(v1 + 104);
      if (this)
      {
        this = sub_10009634C(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x2000) != 0)
    {
      this = *(v1 + 112);
      if (this)
      {
        this = sub_1000963A0(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x4000) != 0)
    {
      this = *(v1 + 120);
      if (this)
      {
        this = sub_1000963C4(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      this = *(v1 + 128);
      if (this)
      {
        this = sub_100096434(this);
        v2 = *(v1 + 260);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      this = *(v1 + 136);
      if (this)
      {
        this = sub_100096618(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      this = *(v1 + 144);
      if (this)
      {
        this = sub_100096680(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x40000) != 0)
    {
      this = *(v1 + 152);
      if (this)
      {
        this = sub_100096738(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      this = *(v1 + 160);
      if (this)
      {
        this = sub_100096860(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      this = *(v1 + 168);
      if (this)
      {
        this = sub_1000968FC(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      this = *(v1 + 176);
      if (this)
      {
        this = sub_100096988(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      this = *(v1 + 184);
      if (this)
      {
        if (*(this + 68))
        {
          *(this + 32) = 0u;
          *(this + 48) = 0u;
          *(this + 16) = 0u;
        }

        v4 = *(this + 8);
        this += 8;
        *(this + 60) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v2 = *(v1 + 260);
    if ((v2 & 0x800000) != 0)
    {
      this = *(v1 + 192);
      if (this)
      {
        this = sub_100096A3C(this);
        v2 = *(v1 + 260);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      this = *(v1 + 200);
      if (this)
      {
        this = sub_100096A8C(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x2000000) != 0)
    {
      this = *(v1 + 208);
      if (this)
      {
        this = sub_100096B08(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x4000000) != 0)
    {
      this = *(v1 + 216);
      if (this)
      {
        this = sub_100096B88(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x8000000) != 0)
    {
      this = *(v1 + 224);
      if (this)
      {
        this = sub_100096C00(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x10000000) != 0)
    {
      this = *(v1 + 232);
      if (this)
      {
        this = sub_100096C90(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x20000000) != 0)
    {
      this = *(v1 + 240);
      if (this)
      {
        this = sub_100096CF0(this);
        v2 = *(v1 + 260);
      }
    }

    if ((v2 & 0x40000000) != 0)
    {
      this = *(v1 + 248);
      if (this)
      {
        this = sub_100096DD4(this);
      }
    }
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  *(v5 + 63) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100095F64(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v1 = *(a1 + 16);
    if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100095FB4(uint64_t a1)
{
  v1 = *(a1 + 68);
  if (v1)
  {
    if (v1)
    {
      v2 = *(a1 + 16);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if ((*(a1 + 68) & 0x20) != 0)
    {
      v3 = *(a1 + 40);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(a1 + 48) = 0;
    v1 = *(a1 + 68);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 15) = 0;
  if (v5)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100096058(uint64_t a1)
{
  v2 = *(a1 + 84);
  if (v2)
  {
    if (v2)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        sub_10009F580(v3);
        v2 = *(a1 + 84);
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 52) = 0;
  }

  result = sub_100077B98(a1 + 56);
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  *(v5 + 19) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000960E4(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = *(this + 2);
    if (this)
    {
      this = sub_10009FF34(this);
    }
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 5) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096144(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 44))
  {
    if (*(this + 44))
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_10009F580(this);
      }
    }

    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 9) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000961AC(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = *(this + 2);
    if (this)
    {
      this = sub_10009FF34(this);
    }
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 5) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009620C(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 32))
  {
    if (*(this + 32))
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_10009F580(this);
      }
    }

    *(v1 + 6) = 0;
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 6) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096274(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = *(this + 2);
    if (this)
    {
      this = sub_10009FF34(this);
    }
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 5) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000962D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000962EC(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(a1 + 40) = 0;
  }

  result = sub_100077B98(a1 + 16);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 10) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_10009634C(uint64_t a1)
{
  result = sub_100077B98(a1 + 16);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 9) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000963A0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000963C4(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 56);
  if (v2)
  {
    *(this + 12) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 2) = 0;
    if ((v2 & 0x10) != 0)
    {
      this = *(this + 5);
      if (this)
      {
        this = sub_1000A905C(this);
      }
    }
  }

  v4 = *(v1 + 1);
  v3 = (v1 + 8);
  *(v3 + 12) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_100096434(uint64_t a1)
{
  v2 = (a1 + 468);
  v3 = *(a1 + 468);
  if (v3)
  {
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        sub_10009FF34(v4);
        v3 = *v2;
      }
    }

    *(a1 + 48) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if ((v3 & 0x20) != 0)
    {
      v5 = *(a1 + 40);
      if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    *(a1 + 52) = 0;
    *(a1 + 56) = 0;
    v3 = *(a1 + 468);
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 60) = 0u;
    *(a1 + 76) = 0u;
    *(a1 + 92) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
  }

  if (HIBYTE(v3))
  {
    *(a1 + 140) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 216) = 0;
  }

  v6 = *(a1 + 472);
  if (v6)
  {
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 288) = 1;
  }

  if ((v6 & 0xFF00) != 0)
  {
    *(a1 + 304) = 0;
    *(a1 + 292) = 0;
    *(a1 + 295) = 0;
    if ((v6 & 0x2000) != 0)
    {
      v7 = *(a1 + 312);
      if (v7)
      {
        if (*(v7 + 52))
        {
          *(v7 + 16) = 0u;
          *(v7 + 32) = 0u;
        }

        v9 = *(v7 + 8);
        v8 = (v7 + 8);
        *(v8 + 11) = 0;
        if (v9)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v8);
        }
      }
    }

    *(a1 + 300) = 0;
    v6 = *(a1 + 472);
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 364) = 0u;
  }

  if (HIBYTE(v6))
  {
    *(a1 + 380) = 0u;
    *(a1 + 396) = 0u;
    *(a1 + 412) = &_mh_execute_header;
  }

  v10 = *(a1 + 476);
  if (v10)
  {
    *(a1 + 452) = 0;
    *(a1 + 420) = 0u;
    *(a1 + 436) = 0u;
  }

  if ((v10 & 0xFF00) != 0)
  {
    *(a1 + 460) = 0;
  }

  result = sub_100077B98(a1 + 192);
  v13 = *(a1 + 8);
  v12 = (a1 + 8);
  *(v12 + 80) = 0;
  *v2 = 0;
  v2[2] = 0;
  if (v13)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v12);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096618(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 32))
  {
    if (*(this + 32))
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_10009FF34(this);
      }
    }

    *(v1 + 6) = 0;
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 6) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t sub_100096680(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 96);
  if (v2)
  {
    if (*(a1 + 96))
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        sub_10009F580(v3);
        v2 = *(a1 + 96);
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 88) = 0;
    if ((v2 & 0x10) != 0)
    {
      v4 = *(a1 + 32);
      if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }
  }

  sub_100077B98(a1 + 40);
  result = sub_100077B98(a1 + 64);
  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  *(v6 + 22) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096738(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = (this + 300);
  v3 = *(this + 75);
  if (v3)
  {
    if (v3)
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_10009F580(this);
        v3 = *v2;
      }
    }

    *(v1 + 3) = 0;
    *(v1 + 30) = 0;
    if ((v3 & 0x10) != 0)
    {
      v4 = *(v1 + 4);
      if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(v1 + 5) = 0;
    *(v1 + 6) = 0;
    *(v1 + 7) = 0;
    v3 = *(v1 + 75);
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(v1 + 16) = 0;
    *(v1 + 4) = 0u;
    *(v1 + 5) = 0u;
    *(v1 + 6) = 0u;
    *(v1 + 14) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(v1 + 184) = 0u;
    *(v1 + 168) = 0u;
    *(v1 + 152) = 0u;
    *(v1 + 136) = 0u;
  }

  if (HIBYTE(v3))
  {
    *(v1 + 31) = 0;
    *(v1 + 200) = 0u;
    *(v1 + 216) = 0u;
    *(v1 + 232) = 0u;
    *(v1 + 31) = 0;
  }

  if (*(v1 + 304))
  {
    *(v1 + 36) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 17) = 0u;
  }

  *v2 = 0;
  v6 = *(v1 + 1);
  v5 = (v1 + 8);
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_100096860(uint64_t a1)
{
  v2 = *(a1 + 132);
  if (v2)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        sub_10009F580(v3);
        v2 = *(a1 + 132);
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 40) = 0;
  }

  if ((v2 & 0x1FE00) != 0)
  {
    *(a1 + 76) = 0;
  }

  sub_100077B98(a1 + 48);
  sub_100077B98(a1 + 80);
  result = sub_100077B98(a1 + 104);
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  *(v5 + 31) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return result;
}

uint64_t sub_1000968FC(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        sub_10009F580(v3);
        v2 = *(a1 + 96);
      }
    }

    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  if ((v2 & 0x1FE00) != 0)
  {
    *(a1 + 88) = 0;
  }

  result = sub_100077B98(a1 + 64);
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  *(v5 + 22) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096988(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
  }

  v2 = *(a1 + 236);
  if (v2)
  {
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 28) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096A14(uint64_t a1)
{
  if (*(a1 + 68))
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 15) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096A3C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    *(a1 + 44) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *(a1 + 40) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 24) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100096A8C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 72) = 0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 76) = 0;
    *(a1 + 80) = 0;
  }

  result = sub_100077B98(a1 + 16);
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  *(v4 + 20) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096B08(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    *(this + 2) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 3);
      if (this)
      {
        this = sub_1000B2058(this);
        v2 = *(v1 + 13);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 4);
      if (this)
      {
        this = sub_1000B2058(this);
      }
    }

    *(v1 + 5) = 0;
  }

  v4 = *(v1 + 1);
  v3 = (v1 + 8);
  *(v3 + 11) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_100096B88(uint64_t a1)
{
  v2 = *(a1 + 76);
  if (v2)
  {
    *(a1 + 40) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if ((v2 & 0x10) != 0)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        sub_10009F580(v3);
      }
    }

    *(a1 + 44) = 0;
  }

  result = sub_100077B98(a1 + 48);
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  *(v5 + 17) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096C00(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 22);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_10009F580(this);
        v2 = *(v1 + 22);
      }
    }

    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
    *(v1 + 12) = 0;
    *(v1 + 5) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 60) = 0;
    *(v1 + 52) = 0;
    *(v1 + 73) = 0;
    *(v1 + 68) = 0;
  }

  v4 = *(v1 + 1);
  v3 = (v1 + 8);
  *(v3 + 20) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096C90(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = *(this + 2);
    if (this)
    {
      this = sub_10009FF34(this);
    }
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 5) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t sub_100096CF0(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if ((v2 & 0x10) != 0)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        sub_10009F580(v3);
        v2 = *(a1 + 160);
      }
    }

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v4 = *(a1 + 64);
      if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(a1 + 104) = 0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    v2 = *(a1 + 160);
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(a1 + 152) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  result = sub_100077B98(a1 + 128);
  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  *(v6 + 38) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return result;
}

uint64_t sub_100096DD4(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    *(a1 + 44) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 76) = 0u;
    *(a1 + 60) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(a1 + 140) = 0;
    *(a1 + 124) = 0u;
    *(a1 + 108) = 0u;
    *(a1 + 92) = 0u;
  }

  if (HIBYTE(v2))
  {
    *(a1 + 192) = 0;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 144) = 0u;
  }

  if (*(a1 + 244))
  {
    *(a1 + 200) = 0;
    *(a1 + 232) = 0;
  }

  result = sub_100077B98(a1 + 208);
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  *(v4 + 29) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return result;
}

uint64_t sub_100096E98(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (2)
  {
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v307 = 0;
        v9 = *(this + 1);
        if (v9 < *(this + 2))
        {
          v10 = *v9;
          if ((v10 & 0x80000000) == 0)
          {
            *(this + 1) = v9 + 1;
            goto LABEL_75;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307);
        if (result)
        {
          v10 = v307;
LABEL_75:
          if ((v10 - 1) > 2)
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v10);
          }

          else
          {
            *(a1 + 260) |= 1u;
            *(a1 + 16) = v10;
          }

          v14 = *(this + 1);
          v11 = *(this + 2);
          if (v14 < v11 && *v14 == 16)
          {
            v12 = v14 + 1;
            *(this + 1) = v12;
            goto LABEL_81;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
LABEL_81:
        v307 = 0;
        if (v12 >= v11 || (v15 = *v12, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307);
          if (!result)
          {
            return result;
          }

          v15 = v307;
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v15 >= 0x15 && v15 - 22 > 6)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v15);
        }

        else
        {
          if (v15 >= 0x15 && v15 - 22 >= 7)
          {
            sub_10049D900();
          }

          *(a1 + 260) |= 2u;
          *(a1 + 20) = v15;
        }

        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 != 26)
        {
          continue;
        }

        *(this + 1) = v16 + 1;
LABEL_94:
        *(a1 + 260) |= 4u;
        v17 = *(a1 + 24);
        if (!v17)
        {
          operator new();
        }

        v307 = 0;
        v18 = *(this + 1);
        if (v18 >= *(this + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v18;
          *(this + 1) = v18 + 1;
        }

        v19 = *(this + 14);
        v20 = *(this + 15);
        *(this + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A0810(v17, this, v22, v23) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v21);
        v24 = *(this + 14);
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v26 < 0 == v25)
        {
          *(this + 14) = v26;
        }

        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 34)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_108:
        *(a1 + 260) |= 8u;
        v28 = *(a1 + 32);
        if (!v28)
        {
          operator new();
        }

        v307 = 0;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v29;
          *(this + 1) = v29 + 1;
        }

        v30 = *(this + 14);
        v31 = *(this + 15);
        *(this + 14) = v30 + 1;
        if (v30 >= v31)
        {
          return 0;
        }

        v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A0FB8(v28, this, v33, v34) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
        v35 = *(this + 14);
        v25 = __OFSUB__(v35, 1);
        v36 = v35 - 1;
        if (v36 < 0 == v25)
        {
          *(this + 14) = v36;
        }

        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 != 42)
        {
          continue;
        }

        *(this + 1) = v37 + 1;
LABEL_122:
        *(a1 + 260) |= 0x10u;
        v38 = *(a1 + 40);
        if (!v38)
        {
          operator new();
        }

        v307 = 0;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v39;
          *(this + 1) = v39 + 1;
        }

        v40 = *(this + 14);
        v41 = *(this + 15);
        *(this + 14) = v40 + 1;
        if (v40 >= v41)
        {
          return 0;
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A2720(v38, this, v43, v44) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v42);
        v45 = *(this + 14);
        v25 = __OFSUB__(v45, 1);
        v46 = v45 - 1;
        if (v46 < 0 == v25)
        {
          *(this + 14) = v46;
        }

        v47 = *(this + 1);
        if (v47 >= *(this + 2) || *v47 != 50)
        {
          continue;
        }

        *(this + 1) = v47 + 1;
LABEL_136:
        *(a1 + 260) |= 0x20u;
        v48 = *(a1 + 48);
        if (!v48)
        {
          operator new();
        }

        v307 = 0;
        v49 = *(this + 1);
        if (v49 >= *(this + 2) || *v49 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v49;
          *(this + 1) = v49 + 1;
        }

        v50 = *(this + 14);
        v51 = *(this + 15);
        *(this + 14) = v50 + 1;
        if (v50 >= v51)
        {
          return 0;
        }

        v52 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A3A48(v48, this, v53, v54) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v52);
        v55 = *(this + 14);
        v25 = __OFSUB__(v55, 1);
        v56 = v55 - 1;
        if (v56 < 0 == v25)
        {
          *(this + 14) = v56;
        }

        v57 = *(this + 1);
        if (v57 >= *(this + 2) || *v57 != 58)
        {
          continue;
        }

        *(this + 1) = v57 + 1;
LABEL_150:
        *(a1 + 260) |= 0x40u;
        v58 = *(a1 + 56);
        if (!v58)
        {
          operator new();
        }

        v307 = 0;
        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v59;
          *(this + 1) = v59 + 1;
        }

        v60 = *(this + 14);
        v61 = *(this + 15);
        *(this + 14) = v60 + 1;
        if (v60 >= v61)
        {
          return 0;
        }

        v62 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A4198(v58, this, v63, v64) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v62);
        v65 = *(this + 14);
        v25 = __OFSUB__(v65, 1);
        v66 = v65 - 1;
        if (v66 < 0 == v25)
        {
          *(this + 14) = v66;
        }

        v67 = *(this + 1);
        if (v67 >= *(this + 2) || *v67 != 66)
        {
          continue;
        }

        *(this + 1) = v67 + 1;
LABEL_164:
        *(a1 + 260) |= 0x80u;
        v68 = *(a1 + 64);
        if (!v68)
        {
          operator new();
        }

        v307 = 0;
        v69 = *(this + 1);
        if (v69 >= *(this + 2) || *v69 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v69;
          *(this + 1) = v69 + 1;
        }

        v70 = *(this + 14);
        v71 = *(this + 15);
        *(this + 14) = v70 + 1;
        if (v70 >= v71)
        {
          return 0;
        }

        v72 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A4BBC(v68, this, v73, v74) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v72);
        v75 = *(this + 14);
        v25 = __OFSUB__(v75, 1);
        v76 = v75 - 1;
        if (v76 < 0 == v25)
        {
          *(this + 14) = v76;
        }

        v77 = *(this + 1);
        if (v77 >= *(this + 2) || *v77 != 74)
        {
          continue;
        }

        *(this + 1) = v77 + 1;
LABEL_178:
        *(a1 + 260) |= 0x100u;
        v78 = *(a1 + 72);
        if (!v78)
        {
          operator new();
        }

        v307 = 0;
        v79 = *(this + 1);
        if (v79 >= *(this + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v79;
          *(this + 1) = v79 + 1;
        }

        v80 = *(this + 14);
        v81 = *(this + 15);
        *(this + 14) = v80 + 1;
        if (v80 >= v81)
        {
          return 0;
        }

        v82 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A530C(v78, this, v83, v84) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v82);
        v85 = *(this + 14);
        v25 = __OFSUB__(v85, 1);
        v86 = v85 - 1;
        if (v86 < 0 == v25)
        {
          *(this + 14) = v86;
        }

        v87 = *(this + 1);
        if (v87 >= *(this + 2) || *v87 != 82)
        {
          continue;
        }

        *(this + 1) = v87 + 1;
LABEL_192:
        *(a1 + 260) |= 0x200u;
        v88 = *(a1 + 80);
        if (!v88)
        {
          operator new();
        }

        v307 = 0;
        v89 = *(this + 1);
        if (v89 >= *(this + 2) || *v89 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v89;
          *(this + 1) = v89 + 1;
        }

        v90 = *(this + 14);
        v91 = *(this + 15);
        *(this + 14) = v90 + 1;
        if (v90 >= v91)
        {
          return 0;
        }

        v92 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A5B9C(v88, this, v93, v94) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v92);
        v95 = *(this + 14);
        v25 = __OFSUB__(v95, 1);
        v96 = v95 - 1;
        if (v96 < 0 == v25)
        {
          *(this + 14) = v96;
        }

        v97 = *(this + 1);
        if (v97 >= *(this + 2) || *v97 != 90)
        {
          continue;
        }

        *(this + 1) = v97 + 1;
LABEL_206:
        *(a1 + 260) |= 0x400u;
        v98 = *(a1 + 88);
        if (!v98)
        {
          operator new();
        }

        v307 = 0;
        v99 = *(this + 1);
        if (v99 >= *(this + 2) || *v99 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v99;
          *(this + 1) = v99 + 1;
        }

        v100 = *(this + 14);
        v101 = *(this + 15);
        *(this + 14) = v100 + 1;
        if (v100 >= v101)
        {
          return 0;
        }

        v102 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A62CC(v98, this, v103, v104) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v102);
        v105 = *(this + 14);
        v25 = __OFSUB__(v105, 1);
        v106 = v105 - 1;
        if (v106 < 0 == v25)
        {
          *(this + 14) = v106;
        }

        v107 = *(this + 1);
        if (v107 >= *(this + 2) || *v107 != 98)
        {
          continue;
        }

        *(this + 1) = v107 + 1;
LABEL_220:
        *(a1 + 260) |= 0x800u;
        v108 = *(a1 + 96);
        if (!v108)
        {
          operator new();
        }

        v307 = 0;
        v109 = *(this + 1);
        if (v109 >= *(this + 2) || *v109 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v109;
          *(this + 1) = v109 + 1;
        }

        v110 = *(this + 14);
        v111 = *(this + 15);
        *(this + 14) = v110 + 1;
        if (v110 >= v111)
        {
          return 0;
        }

        v112 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A750C(v108, this, v113, v114) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v112);
        v115 = *(this + 14);
        v25 = __OFSUB__(v115, 1);
        v116 = v115 - 1;
        if (v116 < 0 == v25)
        {
          *(this + 14) = v116;
        }

        v117 = *(this + 1);
        if (v117 >= *(this + 2) || *v117 != 106)
        {
          continue;
        }

        *(this + 1) = v117 + 1;
LABEL_234:
        *(a1 + 260) |= 0x1000u;
        v118 = *(a1 + 104);
        if (!v118)
        {
          operator new();
        }

        v307 = 0;
        v119 = *(this + 1);
        if (v119 >= *(this + 2) || *v119 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v119;
          *(this + 1) = v119 + 1;
        }

        v120 = *(this + 14);
        v121 = *(this + 15);
        *(this + 14) = v120 + 1;
        if (v120 >= v121)
        {
          return 0;
        }

        v122 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A7F10(v118, this, v123, v124) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v122);
        v125 = *(this + 14);
        v25 = __OFSUB__(v125, 1);
        v126 = v125 - 1;
        if (v126 < 0 == v25)
        {
          *(this + 14) = v126;
        }

        v127 = *(this + 1);
        if (v127 >= *(this + 2) || *v127 != 114)
        {
          continue;
        }

        *(this + 1) = v127 + 1;
LABEL_248:
        *(a1 + 260) |= 0x2000u;
        v128 = *(a1 + 112);
        if (!v128)
        {
          operator new();
        }

        v307 = 0;
        v129 = *(this + 1);
        if (v129 >= *(this + 2) || *v129 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v129;
          *(this + 1) = v129 + 1;
        }

        v130 = *(this + 14);
        v131 = *(this + 15);
        *(this + 14) = v130 + 1;
        if (v130 >= v131)
        {
          return 0;
        }

        v132 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A86B0(v128, this, v133, v134) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v132);
        v135 = *(this + 14);
        v25 = __OFSUB__(v135, 1);
        v136 = v135 - 1;
        if (v136 < 0 == v25)
        {
          *(this + 14) = v136;
        }

        v137 = *(this + 1);
        if (v137 >= *(this + 2) || *v137 != 122)
        {
          continue;
        }

        *(this + 1) = v137 + 1;
LABEL_262:
        *(a1 + 260) |= 0x4000u;
        v138 = *(a1 + 120);
        if (!v138)
        {
          operator new();
        }

        v307 = 0;
        v139 = *(this + 1);
        if (v139 >= *(this + 2) || *v139 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v139;
          *(this + 1) = v139 + 1;
        }

        v140 = *(this + 14);
        v141 = *(this + 15);
        *(this + 14) = v140 + 1;
        if (v140 >= v141)
        {
          return 0;
        }

        v142 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000A9ABC(v138, this, v143, v144) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v142);
        v145 = *(this + 14);
        v25 = __OFSUB__(v145, 1);
        v146 = v145 - 1;
        if (v146 < 0 == v25)
        {
          *(this + 14) = v146;
        }

        v147 = *(this + 1);
        if (*(this + 4) - v147 <= 1 || *v147 != 130 || v147[1] != 1)
        {
          continue;
        }

        *(this + 1) = v147 + 2;
LABEL_277:
        *(a1 + 260) |= 0x8000u;
        v148 = *(a1 + 128);
        if (!v148)
        {
          operator new();
        }

        v307 = 0;
        v149 = *(this + 1);
        if (v149 >= *(this + 2) || *v149 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v149;
          *(this + 1) = v149 + 1;
        }

        v150 = *(this + 14);
        v151 = *(this + 15);
        *(this + 14) = v150 + 1;
        if (v150 >= v151)
        {
          return 0;
        }

        v152 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000AC4D4(v148, this, v153, v154) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v152);
        v155 = *(this + 14);
        v25 = __OFSUB__(v155, 1);
        v156 = v155 - 1;
        if (v156 < 0 == v25)
        {
          *(this + 14) = v156;
        }

        v157 = *(this + 1);
        if (*(this + 4) - v157 <= 1 || *v157 != 138 || v157[1] != 1)
        {
          continue;
        }

        *(this + 1) = v157 + 2;
LABEL_292:
        *(a1 + 260) |= 0x10000u;
        v158 = *(a1 + 136);
        if (!v158)
        {
          operator new();
        }

        v307 = 0;
        v159 = *(this + 1);
        if (v159 >= *(this + 2) || *v159 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v159;
          *(this + 1) = v159 + 1;
        }

        v160 = *(this + 14);
        v161 = *(this + 15);
        *(this + 14) = v160 + 1;
        if (v160 >= v161)
        {
          return 0;
        }

        v162 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000B1708(v158, this, v163, v164) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v162);
        v165 = *(this + 14);
        v25 = __OFSUB__(v165, 1);
        v166 = v165 - 1;
        if (v166 < 0 == v25)
        {
          *(this + 14) = v166;
        }

        v167 = *(this + 1);
        if (*(this + 4) - v167 <= 1 || *v167 != 146 || v167[1] != 1)
        {
          continue;
        }

        *(this + 1) = v167 + 2;
LABEL_307:
        *(a1 + 260) |= 0x20000u;
        v168 = *(a1 + 144);
        if (!v168)
        {
          operator new();
        }

        v307 = 0;
        v169 = *(this + 1);
        if (v169 >= *(this + 2) || *v169 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v169;
          *(this + 1) = v169 + 1;
        }

        v170 = *(this + 14);
        v171 = *(this + 15);
        *(this + 14) = v170 + 1;
        if (v170 >= v171)
        {
          return 0;
        }

        v172 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000B5888(v168, this, v173, v174) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v172);
        v175 = *(this + 14);
        v25 = __OFSUB__(v175, 1);
        v176 = v175 - 1;
        if (v176 < 0 == v25)
        {
          *(this + 14) = v176;
        }

        v177 = *(this + 1);
        if (*(this + 4) - v177 <= 1 || *v177 != 154 || v177[1] != 1)
        {
          continue;
        }

        *(this + 1) = v177 + 2;
LABEL_322:
        *(a1 + 260) |= 0x40000u;
        v178 = *(a1 + 152);
        if (!v178)
        {
          operator new();
        }

        v307 = 0;
        v179 = *(this + 1);
        if (v179 >= *(this + 2) || *v179 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v179;
          *(this + 1) = v179 + 1;
        }

        v180 = *(this + 14);
        v181 = *(this + 15);
        *(this + 14) = v180 + 1;
        if (v180 >= v181)
        {
          return 0;
        }

        v182 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000B6B64(v178, this, v183, v184) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v182);
        v185 = *(this + 14);
        v25 = __OFSUB__(v185, 1);
        v186 = v185 - 1;
        if (v186 < 0 == v25)
        {
          *(this + 14) = v186;
        }

        v187 = *(this + 1);
        if (*(this + 4) - v187 <= 1 || *v187 != 162 || v187[1] != 1)
        {
          continue;
        }

        *(this + 1) = v187 + 2;
LABEL_337:
        *(a1 + 260) |= 0x80000u;
        v188 = *(a1 + 160);
        if (!v188)
        {
          operator new();
        }

        v307 = 0;
        v189 = *(this + 1);
        if (v189 >= *(this + 2) || *v189 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v189;
          *(this + 1) = v189 + 1;
        }

        v190 = *(this + 14);
        v191 = *(this + 15);
        *(this + 14) = v190 + 1;
        if (v190 >= v191)
        {
          return 0;
        }

        v192 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000B9370(v188, this, v193, v194) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v192);
        v195 = *(this + 14);
        v25 = __OFSUB__(v195, 1);
        v196 = v195 - 1;
        if (v196 < 0 == v25)
        {
          *(this + 14) = v196;
        }

        v197 = *(this + 1);
        if (*(this + 4) - v197 <= 1 || *v197 != 170 || v197[1] != 1)
        {
          continue;
        }

        *(this + 1) = v197 + 2;
LABEL_352:
        *(a1 + 260) |= 0x100000u;
        v198 = *(a1 + 168);
        if (!v198)
        {
          operator new();
        }

        v307 = 0;
        v199 = *(this + 1);
        if (v199 >= *(this + 2) || *v199 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v199;
          *(this + 1) = v199 + 1;
        }

        v200 = *(this + 14);
        v201 = *(this + 15);
        *(this + 14) = v200 + 1;
        if (v200 >= v201)
        {
          return 0;
        }

        v202 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000BA6E8(v198, this, v203, v204) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v202);
        v205 = *(this + 14);
        v25 = __OFSUB__(v205, 1);
        v206 = v205 - 1;
        if (v206 < 0 == v25)
        {
          *(this + 14) = v206;
        }

        v207 = *(this + 1);
        if (*(this + 4) - v207 <= 1 || *v207 != 178 || v207[1] != 1)
        {
          continue;
        }

        *(this + 1) = v207 + 2;
LABEL_367:
        *(a1 + 260) |= 0x200000u;
        v208 = *(a1 + 176);
        if (!v208)
        {
          operator new();
        }

        v307 = 0;
        v209 = *(this + 1);
        if (v209 >= *(this + 2) || *v209 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v209;
          *(this + 1) = v209 + 1;
        }

        v210 = *(this + 14);
        v211 = *(this + 15);
        *(this + 14) = v210 + 1;
        if (v210 >= v211)
        {
          return 0;
        }

        v212 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000BD460(v208, this, v213, v214) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v212);
        v215 = *(this + 14);
        v25 = __OFSUB__(v215, 1);
        v216 = v215 - 1;
        if (v216 < 0 == v25)
        {
          *(this + 14) = v216;
        }

        v217 = *(this + 1);
        if (*(this + 4) - v217 <= 1 || *v217 != 186 || v217[1] != 1)
        {
          continue;
        }

        *(this + 1) = v217 + 2;
LABEL_382:
        *(a1 + 260) |= 0x400000u;
        v218 = *(a1 + 184);
        if (!v218)
        {
          operator new();
        }

        v307 = 0;
        v219 = *(this + 1);
        if (v219 >= *(this + 2) || *v219 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v219;
          *(this + 1) = v219 + 1;
        }

        v220 = *(this + 14);
        v221 = *(this + 15);
        *(this + 14) = v220 + 1;
        if (v220 >= v221)
        {
          return 0;
        }

        v222 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000C06A8(v218, this, v223, v224) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v222);
        v225 = *(this + 14);
        v25 = __OFSUB__(v225, 1);
        v226 = v225 - 1;
        if (v226 < 0 == v25)
        {
          *(this + 14) = v226;
        }

        v227 = *(this + 1);
        if (*(this + 4) - v227 <= 1 || *v227 != 202 || v227[1] != 1)
        {
          continue;
        }

        *(this + 1) = v227 + 2;
LABEL_397:
        *(a1 + 260) |= 0x800000u;
        v228 = *(a1 + 192);
        if (!v228)
        {
          operator new();
        }

        v307 = 0;
        v229 = *(this + 1);
        if (v229 >= *(this + 2) || *v229 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v229;
          *(this + 1) = v229 + 1;
        }

        v230 = *(this + 14);
        v231 = *(this + 15);
        *(this + 14) = v230 + 1;
        if (v230 >= v231)
        {
          return 0;
        }

        v232 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000C3AEC(v228, this, v233, v234) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v232);
        v235 = *(this + 14);
        v25 = __OFSUB__(v235, 1);
        v236 = v235 - 1;
        if (v236 < 0 == v25)
        {
          *(this + 14) = v236;
        }

        v237 = *(this + 1);
        if (*(this + 4) - v237 <= 1 || *v237 != 210 || v237[1] != 1)
        {
          continue;
        }

        *(this + 1) = v237 + 2;
LABEL_412:
        *(a1 + 260) |= 0x1000000u;
        v238 = *(a1 + 200);
        if (!v238)
        {
          operator new();
        }

        v307 = 0;
        v239 = *(this + 1);
        if (v239 >= *(this + 2) || *v239 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v239;
          *(this + 1) = v239 + 1;
        }

        v240 = *(this + 14);
        v241 = *(this + 15);
        *(this + 14) = v240 + 1;
        if (v240 >= v241)
        {
          return 0;
        }

        v242 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000C53F4(v238, this, v243, v244) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v242);
        v245 = *(this + 14);
        v25 = __OFSUB__(v245, 1);
        v246 = v245 - 1;
        if (v246 < 0 == v25)
        {
          *(this + 14) = v246;
        }

        v247 = *(this + 1);
        if (*(this + 4) - v247 <= 1 || *v247 != 218 || v247[1] != 1)
        {
          continue;
        }

        *(this + 1) = v247 + 2;
LABEL_427:
        *(a1 + 260) |= 0x2000000u;
        v248 = *(a1 + 208);
        if (!v248)
        {
          operator new();
        }

        v307 = 0;
        v249 = *(this + 1);
        if (v249 >= *(this + 2) || *v249 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v249;
          *(this + 1) = v249 + 1;
        }

        v250 = *(this + 14);
        v251 = *(this + 15);
        *(this + 14) = v250 + 1;
        if (v250 >= v251)
        {
          return 0;
        }

        v252 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000C64CC(v248, this, v253, v254) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v252);
        v255 = *(this + 14);
        v25 = __OFSUB__(v255, 1);
        v256 = v255 - 1;
        if (v256 < 0 == v25)
        {
          *(this + 14) = v256;
        }

        v257 = *(this + 1);
        if (*(this + 4) - v257 <= 1 || *v257 != 226 || v257[1] != 1)
        {
          continue;
        }

        *(this + 1) = v257 + 2;
LABEL_442:
        *(a1 + 260) |= 0x4000000u;
        v258 = *(a1 + 216);
        if (!v258)
        {
          operator new();
        }

        v307 = 0;
        v259 = *(this + 1);
        if (v259 >= *(this + 2) || *v259 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v259;
          *(this + 1) = v259 + 1;
        }

        v260 = *(this + 14);
        v261 = *(this + 15);
        *(this + 14) = v260 + 1;
        if (v260 >= v261)
        {
          return 0;
        }

        v262 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000BC4C8(v258, this, v263, v264) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v262);
        v265 = *(this + 14);
        v25 = __OFSUB__(v265, 1);
        v266 = v265 - 1;
        if (v266 < 0 == v25)
        {
          *(this + 14) = v266;
        }

        v267 = *(this + 1);
        if (*(this + 4) - v267 <= 1 || *v267 != 234 || v267[1] != 1)
        {
          continue;
        }

        *(this + 1) = v267 + 2;
LABEL_457:
        *(a1 + 260) |= 0x8000000u;
        v268 = *(a1 + 224);
        if (!v268)
        {
          operator new();
        }

        v307 = 0;
        v269 = *(this + 1);
        if (v269 >= *(this + 2) || *v269 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v269;
          *(this + 1) = v269 + 1;
        }

        v270 = *(this + 14);
        v271 = *(this + 15);
        *(this + 14) = v270 + 1;
        if (v270 >= v271)
        {
          return 0;
        }

        v272 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000C7230(v268, this, v273, v274) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v272);
        v275 = *(this + 14);
        v25 = __OFSUB__(v275, 1);
        v276 = v275 - 1;
        if (v276 < 0 == v25)
        {
          *(this + 14) = v276;
        }

        v277 = *(this + 1);
        if (*(this + 4) - v277 <= 1 || *v277 != 242 || v277[1] != 1)
        {
          continue;
        }

        *(this + 1) = v277 + 2;
LABEL_472:
        *(a1 + 260) |= 0x10000000u;
        v278 = *(a1 + 232);
        if (!v278)
        {
          operator new();
        }

        v307 = 0;
        v279 = *(this + 1);
        if (v279 >= *(this + 2) || *v279 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v279;
          *(this + 1) = v279 + 1;
        }

        v280 = *(this + 14);
        v281 = *(this + 15);
        *(this + 14) = v280 + 1;
        if (v280 >= v281)
        {
          return 0;
        }

        v282 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000C8754(v278, this, v283, v284) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v282);
        v285 = *(this + 14);
        v25 = __OFSUB__(v285, 1);
        v286 = v285 - 1;
        if (v286 < 0 == v25)
        {
          *(this + 14) = v286;
        }

        v287 = *(this + 1);
        if (*(this + 4) - v287 <= 1 || *v287 != 250 || v287[1] != 1)
        {
          continue;
        }

        *(this + 1) = v287 + 2;
LABEL_487:
        *(a1 + 260) |= 0x20000000u;
        v288 = *(a1 + 240);
        if (!v288)
        {
          operator new();
        }

        v307 = 0;
        v289 = *(this + 1);
        if (v289 >= *(this + 2) || *v289 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v289;
          *(this + 1) = v289 + 1;
        }

        v290 = *(this + 14);
        v291 = *(this + 15);
        *(this + 14) = v290 + 1;
        if (v290 >= v291)
        {
          return 0;
        }

        v292 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000C1CF4(v288, this, v293, v294) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v292);
        v295 = *(this + 14);
        v25 = __OFSUB__(v295, 1);
        v296 = v295 - 1;
        if (v296 < 0 == v25)
        {
          *(this + 14) = v296;
        }

        v297 = *(this + 1);
        if (*(this + 4) - v297 <= 1 || *v297 != 130 || v297[1] != 2)
        {
          continue;
        }

        *(this + 1) = v297 + 2;
LABEL_502:
        *(a1 + 260) |= 0x40000000u;
        v298 = *(a1 + 248);
        if (!v298)
        {
          operator new();
        }

        v307 = 0;
        v299 = *(this + 1);
        if (v299 >= *(this + 2) || *v299 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v307))
          {
            return 0;
          }
        }

        else
        {
          v307 = *v299;
          *(this + 1) = v299 + 1;
        }

        v300 = *(this + 14);
        v301 = *(this + 15);
        *(this + 14) = v300 + 1;
        if (v300 >= v301)
        {
          return 0;
        }

        v302 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v307);
        if (!sub_1000CA5FC(v298, this, v303, v304) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v302);
        v305 = *(this + 14);
        v25 = __OFSUB__(v305, 1);
        v306 = v305 - 1;
        if (v306 < 0 == v25)
        {
          *(this + 14) = v306;
        }

        if (*(this + 1) != *(this + 2) || !*(this + 11) && *(this + 6) != *(this + 10))
        {
          continue;
        }

        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      case 3u:
        if (v8 == 2)
        {
          goto LABEL_94;
        }

        goto LABEL_70;
      case 4u:
        if (v8 == 2)
        {
          goto LABEL_108;
        }

        goto LABEL_70;
      case 5u:
        if (v8 == 2)
        {
          goto LABEL_122;
        }

        goto LABEL_70;
      case 6u:
        if (v8 == 2)
        {
          goto LABEL_136;
        }

        goto LABEL_70;
      case 7u:
        if (v8 == 2)
        {
          goto LABEL_150;
        }

        goto LABEL_70;
      case 8u:
        if (v8 == 2)
        {
          goto LABEL_164;
        }

        goto LABEL_70;
      case 9u:
        if (v8 == 2)
        {
          goto LABEL_178;
        }

        goto LABEL_70;
      case 0xAu:
        if (v8 == 2)
        {
          goto LABEL_192;
        }

        goto LABEL_70;
      case 0xBu:
        if (v8 == 2)
        {
          goto LABEL_206;
        }

        goto LABEL_70;
      case 0xCu:
        if (v8 == 2)
        {
          goto LABEL_220;
        }

        goto LABEL_70;
      case 0xDu:
        if (v8 == 2)
        {
          goto LABEL_234;
        }

        goto LABEL_70;
      case 0xEu:
        if (v8 == 2)
        {
          goto LABEL_248;
        }

        goto LABEL_70;
      case 0xFu:
        if (v8 == 2)
        {
          goto LABEL_262;
        }

        goto LABEL_70;
      case 0x10u:
        if (v8 == 2)
        {
          goto LABEL_277;
        }

        goto LABEL_70;
      case 0x11u:
        if (v8 == 2)
        {
          goto LABEL_292;
        }

        goto LABEL_70;
      case 0x12u:
        if (v8 == 2)
        {
          goto LABEL_307;
        }

        goto LABEL_70;
      case 0x13u:
        if (v8 == 2)
        {
          goto LABEL_322;
        }

        goto LABEL_70;
      case 0x14u:
        if (v8 == 2)
        {
          goto LABEL_337;
        }

        goto LABEL_70;
      case 0x15u:
        if (v8 == 2)
        {
          goto LABEL_352;
        }

        goto LABEL_70;
      case 0x16u:
        if (v8 == 2)
        {
          goto LABEL_367;
        }

        goto LABEL_70;
      case 0x17u:
        if (v8 == 2)
        {
          goto LABEL_382;
        }

        goto LABEL_70;
      case 0x19u:
        if (v8 == 2)
        {
          goto LABEL_397;
        }

        goto LABEL_70;
      case 0x1Au:
        if (v8 == 2)
        {
          goto LABEL_412;
        }

        goto LABEL_70;
      case 0x1Bu:
        if (v8 == 2)
        {
          goto LABEL_427;
        }

        goto LABEL_70;
      case 0x1Cu:
        if (v8 != 2)
        {
          goto LABEL_70;
        }

        goto LABEL_442;
      case 0x1Du:
        if (v8 == 2)
        {
          goto LABEL_457;
        }

        goto LABEL_70;
      case 0x1Eu:
        if (v8 == 2)
        {
          goto LABEL_472;
        }

        goto LABEL_70;
      case 0x1Fu:
        if (v8 == 2)
        {
          goto LABEL_487;
        }

        goto LABEL_70;
      case 0x20u:
        if (v8 == 2)
        {
          goto LABEL_502;
        }

        goto LABEL_70;
      default:
LABEL_70:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }

        continue;
    }

    return result;
  }
}

uint64_t sub_100098F08(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 260);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 260);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_35:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(qword_1009F9980 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v7, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_38:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(qword_1009F9980 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v8, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_41:
  v9 = *(v5 + 40);
  if (!v9)
  {
    v9 = *(qword_1009F9980 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v9, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_44:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(qword_1009F9980 + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v10, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_47:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(qword_1009F9980 + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v11, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_50:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(qword_1009F9980 + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v12, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_53:
  v13 = *(v5 + 72);
  if (!v13)
  {
    v13 = *(qword_1009F9980 + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v13, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_56:
  v14 = *(v5 + 80);
  if (!v14)
  {
    v14 = *(qword_1009F9980 + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v14, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_59:
  v15 = *(v5 + 88);
  if (!v15)
  {
    v15 = *(qword_1009F9980 + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xB, v15, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_62:
  v16 = *(v5 + 96);
  if (!v16)
  {
    v16 = *(qword_1009F9980 + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xC, v16, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_65:
  v17 = *(v5 + 104);
  if (!v17)
  {
    v17 = *(qword_1009F9980 + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xD, v17, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_71;
  }

LABEL_68:
  v18 = *(v5 + 112);
  if (!v18)
  {
    v18 = *(qword_1009F9980 + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xE, v18, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_74;
  }

LABEL_71:
  v19 = *(v5 + 120);
  if (!v19)
  {
    v19 = *(qword_1009F9980 + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xF, v19, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_77;
  }

LABEL_74:
  v20 = *(v5 + 128);
  if (!v20)
  {
    v20 = *(qword_1009F9980 + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x10, v20, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_80;
  }

LABEL_77:
  v21 = *(v5 + 136);
  if (!v21)
  {
    v21 = *(qword_1009F9980 + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x11, v21, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_83;
  }

LABEL_80:
  v22 = *(v5 + 144);
  if (!v22)
  {
    v22 = *(qword_1009F9980 + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x12, v22, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_86;
  }

LABEL_83:
  v23 = *(v5 + 152);
  if (!v23)
  {
    v23 = *(qword_1009F9980 + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x13, v23, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_89;
  }

LABEL_86:
  v24 = *(v5 + 160);
  if (!v24)
  {
    v24 = *(qword_1009F9980 + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x14, v24, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_92;
  }

LABEL_89:
  v25 = *(v5 + 168);
  if (!v25)
  {
    v25 = *(qword_1009F9980 + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x15, v25, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_95;
  }

LABEL_92:
  v26 = *(v5 + 176);
  if (!v26)
  {
    v26 = *(qword_1009F9980 + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x16, v26, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_98;
  }

LABEL_95:
  v27 = *(v5 + 184);
  if (!v27)
  {
    v27 = *(qword_1009F9980 + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x17, v27, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_101;
  }

LABEL_98:
  v28 = *(v5 + 192);
  if (!v28)
  {
    v28 = *(qword_1009F9980 + 192);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x19, v28, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_104;
  }

LABEL_101:
  v29 = *(v5 + 200);
  if (!v29)
  {
    v29 = *(qword_1009F9980 + 200);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1A, v29, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_107;
  }

LABEL_104:
  v30 = *(v5 + 208);
  if (!v30)
  {
    v30 = *(qword_1009F9980 + 208);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1B, v30, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_110;
  }

LABEL_107:
  v31 = *(v5 + 216);
  if (!v31)
  {
    v31 = *(qword_1009F9980 + 216);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1C, v31, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_113;
  }

LABEL_110:
  v32 = *(v5 + 224);
  if (!v32)
  {
    v32 = *(qword_1009F9980 + 224);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1D, v32, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_116;
  }

LABEL_113:
  v33 = *(v5 + 232);
  if (!v33)
  {
    v33 = *(qword_1009F9980 + 232);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1E, v33, a2, a4);
  v6 = *(v5 + 260);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_119;
  }

LABEL_116:
  v34 = *(v5 + 240);
  if (!v34)
  {
    v34 = *(qword_1009F9980 + 240);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1F, v34, a2, a4);
  if ((*(v5 + 260) & 0x40000000) != 0)
  {
LABEL_119:
    v35 = *(v5 + 248);
    if (!v35)
    {
      v35 = *(qword_1009F9980 + 248);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x20, v35, a2, a4);
  }

LABEL_122:
  v38 = *(v5 + 8);
  v37 = (v5 + 8);
  v36 = v38;
  if (v38 && *v36 != v36[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v37, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100099498(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 260))
  {
    v6 = *(this + 4);
    *a2 = 8;
    v7 = a2 + 1;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, v7, a3);
    }

    else
    {
      if (v6 <= 0x7F)
      {
        *(v4 + 1) = v6;
        v4 = (v4 + 2);
        goto LABEL_8;
      }

      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v7, a3);
    }

    v4 = v8;
  }

LABEL_8:
  if ((*(this + 260) & 2) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(this + 5);
  *v4 = 16;
  v10 = v4 + 1;
  if ((v9 & 0x80000000) != 0)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, v10, a3);
  }

  else
  {
    if (v9 <= 0x7F)
    {
      *(v4 + 1) = v9;
      v4 = (v4 + 2);
      goto LABEL_15;
    }

    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v10, a3);
  }

  v4 = v11;
LABEL_15:
  v12 = *(this + 65);
  if ((v12 & 4) != 0)
  {
    v13 = *(this + 3);
    if (!v13)
    {
      v13 = *(qword_1009F9980 + 24);
    }

    *v4 = 26;
    v14 = v13[6];
    if (v14 > 0x7F)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v14;
      v15 = (v4 + 2);
    }

    v4 = sub_1000A09D8(v13, v15, a3);
    v12 = *(this + 65);
    if ((v12 & 8) == 0)
    {
LABEL_17:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_57;
    }
  }

  else if ((v12 & 8) == 0)
  {
    goto LABEL_17;
  }

  v16 = *(this + 4);
  if (!v16)
  {
    v16 = *(qword_1009F9980 + 32);
  }

  *v4 = 34;
  v17 = v16[16];
  if (v17 > 0x7F)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v17;
    v18 = (v4 + 2);
  }

  v4 = sub_1000A16CC(v16, v18, a3);
  v12 = *(this + 65);
  if ((v12 & 0x10) == 0)
  {
LABEL_18:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_57:
  v19 = *(this + 5);
  if (!v19)
  {
    v19 = *(qword_1009F9980 + 40);
  }

  *v4 = 42;
  v20 = v19[20];
  if (v20 > 0x7F)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v20;
    v21 = (v4 + 2);
  }

  v4 = sub_1000A2FF4(v19, v21, a3);
  v12 = *(this + 65);
  if ((v12 & 0x20) == 0)
  {
LABEL_19:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_63:
  v22 = *(this + 6);
  if (!v22)
  {
    v22 = *(qword_1009F9980 + 48);
  }

  *v4 = 50;
  v23 = v22[6];
  if (v23 > 0x7F)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v23;
    v24 = (v4 + 2);
  }

  v4 = sub_1000A3C90(v22, v24, a3);
  v12 = *(this + 65);
  if ((v12 & 0x40) == 0)
  {
LABEL_20:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_75;
  }

LABEL_69:
  v25 = *(this + 7);
  if (!v25)
  {
    v25 = *(qword_1009F9980 + 56);
  }

  *v4 = 58;
  v26 = v25[10];
  if (v26 > 0x7F)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v26;
    v27 = (v4 + 2);
  }

  v4 = sub_1000A45A0(v25, v27, a3);
  v12 = *(this + 65);
  if ((v12 & 0x80) == 0)
  {
LABEL_21:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_81;
  }

LABEL_75:
  v28 = *(this + 8);
  if (!v28)
  {
    v28 = *(qword_1009F9980 + 64);
  }

  *v4 = 66;
  v29 = v28[6];
  if (v29 > 0x7F)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v29;
    v30 = (v4 + 2);
  }

  v4 = sub_1000A4E04(v28, v30, a3);
  v12 = *(this + 65);
  if ((v12 & 0x100) == 0)
  {
LABEL_22:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_87;
  }

LABEL_81:
  v31 = *(this + 9);
  if (!v31)
  {
    v31 = *(qword_1009F9980 + 72);
  }

  *v4 = 74;
  v32 = v31[7];
  if (v32 > 0x7F)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v32;
    v33 = (v4 + 2);
  }

  v4 = sub_1000A5610(v31, v33, a3);
  v12 = *(this + 65);
  if ((v12 & 0x200) == 0)
  {
LABEL_23:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_93;
  }

LABEL_87:
  v34 = *(this + 10);
  if (!v34)
  {
    v34 = *(qword_1009F9980 + 80);
  }

  *v4 = 82;
  v35 = v34[6];
  if (v35 > 0x7F)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v35, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v35;
    v36 = (v4 + 2);
  }

  v4 = sub_1000A5DE4(v34, v36, a3);
  v12 = *(this + 65);
  if ((v12 & 0x400) == 0)
  {
LABEL_24:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_99;
  }

LABEL_93:
  v37 = *(this + 11);
  if (!v37)
  {
    v37 = *(qword_1009F9980 + 88);
  }

  *v4 = 90;
  v38 = v37[8];
  if (v38 > 0x7F)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v38, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v38;
    v39 = (v4 + 2);
  }

  v4 = sub_1000A66F8(v37, v39, a3);
  v12 = *(this + 65);
  if ((v12 & 0x800) == 0)
  {
LABEL_25:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_105;
  }

LABEL_99:
  v40 = *(this + 12);
  if (!v40)
  {
    v40 = *(qword_1009F9980 + 96);
  }

  *v4 = 98;
  v41 = v40[11];
  if (v41 > 0x7F)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v41;
    v42 = (v4 + 2);
  }

  v4 = sub_1000A784C(v40, v42, a3, a4);
  v12 = *(this + 65);
  if ((v12 & 0x1000) == 0)
  {
LABEL_26:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_111;
  }

LABEL_105:
  v43 = *(this + 13);
  if (!v43)
  {
    v43 = *(qword_1009F9980 + 104);
  }

  *v4 = 106;
  v44 = v43[10];
  if (v44 > 0x7F)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v44;
    v45 = (v4 + 2);
  }

  v4 = sub_1000A8194(v43, v45, a3, a4);
  v12 = *(this + 65);
  if ((v12 & 0x2000) == 0)
  {
LABEL_27:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_117;
  }

LABEL_111:
  v46 = *(this + 14);
  if (!v46)
  {
    v46 = *(qword_1009F9980 + 112);
  }

  *v4 = 114;
  v47 = v46[7];
  if (v47 > 0x7F)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v47, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v47;
    v48 = (v4 + 2);
  }

  v4 = sub_1000A8988(v46, v48, a3);
  v12 = *(this + 65);
  if ((v12 & 0x4000) == 0)
  {
LABEL_28:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_123;
  }

LABEL_117:
  v49 = *(this + 15);
  if (!v49)
  {
    v49 = *(qword_1009F9980 + 120);
  }

  *v4 = 122;
  v50 = v49[13];
  if (v50 > 0x7F)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v50, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v50;
    v51 = v4 + 2;
  }

  v4 = sub_1000A9F28(v49, v51, a3);
  v12 = *(this + 65);
  if ((v12 & 0x8000) == 0)
  {
LABEL_29:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_129;
  }

LABEL_123:
  v52 = *(this + 16);
  if (!v52)
  {
    v52 = *(qword_1009F9980 + 128);
  }

  *v4 = 386;
  v53 = v52[116];
  if (v53 > 0x7F)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v53, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v53;
    v54 = (v4 + 3);
  }

  v4 = sub_1000AF484(v52, v54, a3, a4);
  v12 = *(this + 65);
  if ((v12 & 0x10000) == 0)
  {
LABEL_30:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_135;
  }

LABEL_129:
  v55 = *(this + 17);
  if (!v55)
  {
    v55 = *(qword_1009F9980 + 136);
  }

  *v4 = 394;
  v56 = v55[7];
  if (v56 > 0x7F)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v56, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v56;
    v57 = (v4 + 3);
  }

  v4 = sub_1000B1A10(v55, v57, a3);
  v12 = *(this + 65);
  if ((v12 & 0x20000) == 0)
  {
LABEL_31:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_141;
  }

LABEL_135:
  v58 = *(this + 18);
  if (!v58)
  {
    v58 = *(qword_1009F9980 + 144);
  }

  *v4 = 402;
  v59 = v58[23];
  if (v59 > 0x7F)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v59, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v59;
    v60 = (v4 + 3);
  }

  v4 = sub_1000B60B8(v58, v60, a3, a4);
  v12 = *(this + 65);
  if ((v12 & 0x40000) == 0)
  {
LABEL_32:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_147;
  }

LABEL_141:
  v61 = *(this + 19);
  if (!v61)
  {
    v61 = *(qword_1009F9980 + 152);
  }

  *v4 = 410;
  v62 = v61[74];
  if (v62 > 0x7F)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v62, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v62;
    v63 = (v4 + 3);
  }

  v4 = sub_1000B80B4(v61, v63, a3, a4);
  v12 = *(this + 65);
  if ((v12 & 0x80000) == 0)
  {
LABEL_33:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_153;
  }

LABEL_147:
  v64 = *(this + 20);
  if (!v64)
  {
    v64 = *(qword_1009F9980 + 160);
  }

  *v4 = 418;
  v65 = v64[32];
  if (v65 > 0x7F)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v65, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v65;
    v66 = (v4 + 3);
  }

  v4 = sub_1000B9D40(v64, v66, a3);
  v12 = *(this + 65);
  if ((v12 & 0x100000) == 0)
  {
LABEL_34:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_159;
  }

LABEL_153:
  v67 = *(this + 21);
  if (!v67)
  {
    v67 = *(qword_1009F9980 + 168);
  }

  *v4 = 426;
  v68 = v67[23];
  if (v68 > 0x7F)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v68, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v68;
    v69 = (v4 + 3);
  }

  v4 = sub_1000BAEEC(v67, v69, a3);
  v12 = *(this + 65);
  if ((v12 & 0x200000) == 0)
  {
LABEL_35:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_165;
  }

LABEL_159:
  v70 = *(this + 22);
  if (!v70)
  {
    v70 = *(qword_1009F9980 + 176);
  }

  *v4 = 434;
  v71 = v70[57];
  if (v71 > 0x7F)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v71, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v71;
    v72 = (v4 + 3);
  }

  v4 = sub_1000BF01C(v70, v72, a3);
  v12 = *(this + 65);
  if ((v12 & 0x400000) == 0)
  {
LABEL_36:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_171;
  }

LABEL_165:
  v73 = *(this + 23);
  if (!v73)
  {
    v73 = *(qword_1009F9980 + 184);
  }

  *v4 = 442;
  v74 = v73[16];
  if (v74 > 0x7F)
  {
    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v74, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v74;
    v75 = (v4 + 3);
  }

  v4 = sub_1000C0C50(v73, v75, a3);
  v12 = *(this + 65);
  if ((v12 & 0x800000) == 0)
  {
LABEL_37:
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_177;
  }

LABEL_171:
  v76 = *(this + 24);
  if (!v76)
  {
    v76 = *(qword_1009F9980 + 192);
  }

  *v4 = 458;
  v77 = v76[25];
  if (v77 > 0x7F)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v77, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v77;
    v78 = (v4 + 3);
  }

  v4 = sub_1000C4794(v76, v78, a3);
  v12 = *(this + 65);
  if ((v12 & 0x1000000) == 0)
  {
LABEL_38:
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_183;
  }

LABEL_177:
  v79 = *(this + 25);
  if (!v79)
  {
    v79 = *(qword_1009F9980 + 200);
  }

  *v4 = 466;
  v80 = v79[21];
  if (v80 > 0x7F)
  {
    v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v80, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v80;
    v81 = (v4 + 3);
  }

  v4 = sub_1000C5B7C(v79, v81, a3);
  v12 = *(this + 65);
  if ((v12 & 0x2000000) == 0)
  {
LABEL_39:
    if ((v12 & 0x4000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_189;
  }

LABEL_183:
  v82 = *(this + 26);
  if (!v82)
  {
    v82 = *(qword_1009F9980 + 208);
  }

  *v4 = 474;
  v83 = v82[12];
  if (v83 > 0x7F)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v83, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v83;
    v84 = (v4 + 3);
  }

  v4 = sub_1000C6AB8(v82, v84, a3);
  v12 = *(this + 65);
  if ((v12 & 0x4000000) == 0)
  {
LABEL_40:
    if ((v12 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_195;
  }

LABEL_189:
  v85 = *(this + 27);
  if (!v85)
  {
    v85 = *(qword_1009F9980 + 216);
  }

  *v4 = 482;
  v86 = v85[18];
  if (v86 > 0x7F)
  {
    v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v86, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v86;
    v87 = (v4 + 3);
  }

  v4 = sub_1000BCB5C(v85, v87, a3);
  v12 = *(this + 65);
  if ((v12 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v12 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_201;
  }

LABEL_195:
  v88 = *(this + 28);
  if (!v88)
  {
    v88 = *(qword_1009F9980 + 224);
  }

  *v4 = 490;
  v89 = v88[21];
  if (v89 > 0x7F)
  {
    v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v89, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v89;
    v90 = (v4 + 3);
  }

  v4 = sub_1000C7CB0(v88, v90, a3);
  v12 = *(this + 65);
  if ((v12 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_207;
  }

LABEL_201:
  v91 = *(this + 29);
  if (!v91)
  {
    v91 = *(qword_1009F9980 + 232);
  }

  *v4 = 498;
  v92 = v91[6];
  if (v92 > 0x7F)
  {
    v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v92, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v92;
    v93 = (v4 + 3);
  }

  v4 = sub_1000C899C(v91, v93, a3);
  v12 = *(this + 65);
  if ((v12 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_213;
  }

LABEL_207:
  v94 = *(this + 30);
  if (!v94)
  {
    v94 = *(qword_1009F9980 + 240);
  }

  *v4 = 506;
  v95 = v94[39];
  if (v95 > 0x7F)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v95, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v95;
    v96 = (v4 + 3);
  }

  v4 = sub_1000C2BB8(v94, v96, a3, a4);
  if ((*(this + 65) & 0x40000000) != 0)
  {
LABEL_213:
    v97 = *(this + 31);
    if (!v97)
    {
      v97 = *(qword_1009F9980 + 248);
    }

    *v4 = 642;
    v98 = v97[59];
    if (v98 > 0x7F)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v98, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v98;
      v99 = (v4 + 3);
    }

    v4 = sub_1000CBA80(v97, v99, a3);
  }

LABEL_219:
  v102 = *(this + 1);
  v101 = (this + 8);
  v100 = v102;
  if (!v102 || *v100 == v100[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v101, v4, a3);
}

uint64_t sub_100099F70(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 260);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_62;
  }

  if (v3)
  {
    v5 = *(a1 + 16);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 260);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 20);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 260);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9980 + 24);
    }

    v9 = sub_1000A0AC0(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v4 = (v4 + v10 + v11 + 1);
    v3 = *(a1 + 260);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_38;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(a1 + 32);
  if (!v12)
  {
    v12 = *(qword_1009F9980 + 32);
  }

  v13 = sub_1000A19D0(v12, a2);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
  }

  else
  {
    v15 = 1;
  }

  v4 = (v4 + v14 + v15 + 1);
  v3 = *(a1 + 260);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_38:
  v16 = *(a1 + 40);
  if (!v16)
  {
    v16 = *(qword_1009F9980 + 40);
  }

  v17 = sub_1000A32CC(v16, a2);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
  }

  else
  {
    v19 = 1;
  }

  v4 = (v4 + v18 + v19 + 1);
  v3 = *(a1 + 260);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_44:
  v20 = *(a1 + 48);
  if (!v20)
  {
    v20 = *(qword_1009F9980 + 48);
  }

  v21 = sub_1000A3D40(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
  }

  else
  {
    v23 = 1;
  }

  v4 = (v4 + v22 + v23 + 1);
  v3 = *(a1 + 260);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

LABEL_50:
  v24 = *(a1 + 56);
  if (!v24)
  {
    v24 = *(qword_1009F9980 + 56);
  }

  v25 = sub_1000A46E8(v24, a2);
  v26 = v25;
  if (v25 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
  }

  else
  {
    v27 = 1;
  }

  v4 = (v4 + v26 + v27 + 1);
  v3 = *(a1 + 260);
  if ((v3 & 0x80) != 0)
  {
LABEL_56:
    v28 = *(a1 + 64);
    if (!v28)
    {
      v28 = *(qword_1009F9980 + 64);
    }

    v29 = sub_1000A4EB4(v28, a2);
    v30 = v29;
    if (v29 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
    }

    else
    {
      v31 = 1;
    }

    v4 = (v4 + v30 + v31 + 1);
    v3 = *(a1 + 260);
  }

LABEL_62:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_120;
  }

  if ((v3 & 0x100) != 0)
  {
    v32 = *(a1 + 72);
    if (!v32)
    {
      v32 = *(qword_1009F9980 + 72);
    }

    v33 = sub_1000A5704(v32, a2);
    v34 = v33;
    if (v33 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2);
    }

    else
    {
      v35 = 1;
    }

    v4 = (v4 + v34 + v35 + 1);
    v3 = *(a1 + 260);
    if ((v3 & 0x200) == 0)
    {
LABEL_65:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_84;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_65;
  }

  v36 = *(a1 + 80);
  if (!v36)
  {
    v36 = *(qword_1009F9980 + 80);
  }

  v37 = sub_1000A5E94(v36, a2);
  v38 = v37;
  if (v37 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2);
  }

  else
  {
    v39 = 1;
  }

  v4 = (v4 + v38 + v39 + 1);
  v3 = *(a1 + 260);
  if ((v3 & 0x400) == 0)
  {
LABEL_66:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_90;
  }

LABEL_84:
  v40 = *(a1 + 88);
  if (!v40)
  {
    v40 = *(qword_1009F9980 + 88);
  }

  v41 = sub_1000A67B4(v40, a2);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2);
  }

  else
  {
    v43 = 1;
  }

  v4 = (v4 + v42 + v43 + 1);
  v3 = *(a1 + 260);
  if ((v3 & 0x800) == 0)
  {
LABEL_67:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_96;
  }

LABEL_90:
  v44 = *(a1 + 96);
  if (!v44)
  {
    v44 = *(qword_1009F9980 + 96);
  }

  v45 = sub_1000A7958(v44, a2);
  v46 = v45;
  if (v45 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45, a2);
  }

  else
  {
    v47 = 1;
  }

  v4 = (v4 + v46 + v47 + 1);
  v3 = *(a1 + 260);
  if ((v3 & 0x1000) == 0)
  {
LABEL_68:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_102;
  }

LABEL_96:
  v48 = *(a1 + 104);
  if (!v48)
  {
    v48 = *(qword_1009F9980 + 104);
  }

  v49 = sub_1000A8260(v48, a2);
  v50 = v49;
  if (v49 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49, a2);
  }

  else
  {
    v51 = 1;
  }

  v4 = (v4 + v50 + v51 + 1);
  v3 = *(a1 + 260);
  if ((v3 & 0x2000) == 0)
  {
LABEL_69:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_108;
  }

LABEL_102:
  v52 = *(a1 + 112);
  if (!v52)
  {
    v52 = *(qword_1009F9980 + 112);
  }

  v53 = sub_1000A8A90(v52, a2);
  v54 = v53;
  if (v53 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53, a2);
  }

  else
  {
    v55 = 1;
  }

  v4 = (v4 + v54 + v55 + 1);
  v3 = *(a1 + 260);
  if ((v3 & 0x4000) == 0)
  {
LABEL_70:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_114;
  }

LABEL_108:
  v56 = *(a1 + 120);
  if (!v56)
  {
    v56 = *(qword_1009F9980 + 120);
  }

  v57 = sub_1000AA0E4(v56, a2);
  v58 = v57;
  if (v57 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57, a2);
  }

  else
  {
    v59 = 1;
  }

  v4 = (v4 + v58 + v59 + 1);
  v3 = *(a1 + 260);
  if ((v3 & 0x8000) != 0)
  {
LABEL_114:
    v60 = *(a1 + 128);
    if (!v60)
    {
      v60 = *(qword_1009F9980 + 128);
    }

    v61 = sub_1000B07FC(v60, a2);
    v62 = v61;
    if (v61 >= 0x80)
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61, a2);
    }

    else
    {
      v63 = 1;
    }

    v4 = (v4 + v62 + v63 + 2);
    v3 = *(a1 + 260);
  }

LABEL_120:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_178;
  }

  if ((v3 & 0x10000) != 0)
  {
    v64 = *(a1 + 136);
    if (!v64)
    {
      v64 = *(qword_1009F9980 + 136);
    }

    v65 = sub_1000B1B04(v64, a2);
    v66 = v65;
    if (v65 >= 0x80)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65, a2);
    }

    else
    {
      v67 = 1;
    }

    v4 = (v4 + v66 + v67 + 2);
    v3 = *(a1 + 260);
    if ((v3 & 0x20000) == 0)
    {
LABEL_123:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_142;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_123;
  }

  v68 = *(a1 + 144);
  if (!v68)
  {
    v68 = *(qword_1009F9980 + 144);
  }

  v69 = sub_1000B6344(v68, a2);
  v70 = v69;
  if (v69 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69, a2);
  }

  else
  {
    v71 = 1;
  }

  v4 = (v4 + v70 + v71 + 2);
  v3 = *(a1 + 260);
  if ((v3 & 0x40000) == 0)
  {
LABEL_124:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_148;
  }

LABEL_142:
  v72 = *(a1 + 152);
  if (!v72)
  {
    v72 = *(qword_1009F9980 + 152);
  }

  v73 = sub_1000B8B84(v72, a2);
  v74 = v73;
  if (v73 >= 0x80)
  {
    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73, a2);
  }

  else
  {
    v75 = 1;
  }

  v4 = (v4 + v74 + v75 + 2);
  v3 = *(a1 + 260);
  if ((v3 & 0x80000) == 0)
  {
LABEL_125:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_154;
  }

LABEL_148:
  v76 = *(a1 + 160);
  if (!v76)
  {
    v76 = *(qword_1009F9980 + 160);
  }

  v77 = sub_1000BA098(v76, a2);
  v78 = v77;
  if (v77 >= 0x80)
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77, a2);
  }

  else
  {
    v79 = 1;
  }

  v4 = (v4 + v78 + v79 + 2);
  v3 = *(a1 + 260);
  if ((v3 & 0x100000) == 0)
  {
LABEL_126:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_160;
  }

LABEL_154:
  v80 = *(a1 + 168);
  if (!v80)
  {
    v80 = *(qword_1009F9980 + 168);
  }

  v81 = sub_1000BB20C(v80, a2);
  v82 = v81;
  if (v81 >= 0x80)
  {
    v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81, a2);
  }

  else
  {
    v83 = 1;
  }

  v4 = (v4 + v82 + v83 + 2);
  v3 = *(a1 + 260);
  if ((v3 & 0x200000) == 0)
  {
LABEL_127:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_166;
  }

LABEL_160:
  v84 = *(a1 + 176);
  if (!v84)
  {
    v84 = *(qword_1009F9980 + 176);
  }

  v85 = sub_1000BFA70(v84, a2);
  v86 = v85;
  if (v85 >= 0x80)
  {
    v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85, a2);
  }

  else
  {
    v87 = 1;
  }

  v4 = (v4 + v86 + v87 + 2);
  v3 = *(a1 + 260);
  if ((v3 & 0x400000) == 0)
  {
LABEL_128:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_172;
  }

LABEL_166:
  v88 = *(a1 + 184);
  if (!v88)
  {
    v88 = *(qword_1009F9980 + 184);
  }

  v89 = sub_1000C0E8C(v88, a2);
  v90 = v89;
  if (v89 >= 0x80)
  {
    v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89, a2);
  }

  else
  {
    v91 = 1;
  }

  v4 = (v4 + v90 + v91 + 2);
  v3 = *(a1 + 260);
  if ((v3 & 0x800000) != 0)
  {
LABEL_172:
    v92 = *(a1 + 192);
    if (!v92)
    {
      v92 = *(qword_1009F9980 + 192);
    }

    v93 = sub_1000C4C44(v92, a2);
    v94 = v93;
    if (v93 >= 0x80)
    {
      v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93, a2);
    }

    else
    {
      v95 = 1;
    }

    v4 = (v4 + v94 + v95 + 2);
    v3 = *(a1 + 260);
  }

LABEL_178:
  if (!HIBYTE(v3))
  {
    goto LABEL_229;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v96 = *(a1 + 200);
    if (!v96)
    {
      v96 = *(qword_1009F9980 + 200);
    }

    v97 = sub_1000C5E80(v96, a2);
    v98 = v97;
    if (v97 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97, a2);
    }

    else
    {
      v99 = 1;
    }

    v4 = (v4 + v98 + v99 + 2);
    v3 = *(a1 + 260);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_181:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_182;
      }

      goto LABEL_199;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_181;
  }

  v100 = *(a1 + 208);
  if (!v100)
  {
    v100 = *(qword_1009F9980 + 208);
  }

  v101 = sub_1000C6CA8(v100, a2);
  v102 = v101;
  if (v101 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101, a2);
  }

  else
  {
    v103 = 1;
  }

  v4 = (v4 + v102 + v103 + 2);
  v3 = *(a1 + 260);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_182:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_205;
  }

LABEL_199:
  v104 = *(a1 + 216);
  if (!v104)
  {
    v104 = *(qword_1009F9980 + 216);
  }

  v105 = sub_1000BCDA0(v104, a2);
  v106 = v105;
  if (v105 >= 0x80)
  {
    v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105, a2);
  }

  else
  {
    v107 = 1;
  }

  v4 = (v4 + v106 + v107 + 2);
  v3 = *(a1 + 260);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_183:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_211;
  }

LABEL_205:
  v108 = *(a1 + 224);
  if (!v108)
  {
    v108 = *(qword_1009F9980 + 224);
  }

  v109 = sub_1000C8064(v108, a2);
  v110 = v109;
  if (v109 >= 0x80)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109, a2);
  }

  else
  {
    v111 = 1;
  }

  v4 = (v4 + v110 + v111 + 2);
  v3 = *(a1 + 260);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_184:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_217;
  }

LABEL_211:
  v112 = *(a1 + 232);
  if (!v112)
  {
    v112 = *(qword_1009F9980 + 232);
  }

  v113 = sub_1000C8A4C(v112, a2);
  v114 = v113;
  if (v113 >= 0x80)
  {
    v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113, a2);
  }

  else
  {
    v115 = 1;
  }

  v4 = (v4 + v114 + v115 + 2);
  v3 = *(a1 + 260);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_185:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_223;
  }

LABEL_217:
  v116 = *(a1 + 240);
  if (!v116)
  {
    v116 = *(qword_1009F9980 + 240);
  }

  v117 = sub_1000C321C(v116, a2);
  v118 = v117;
  if (v117 >= 0x80)
  {
    v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117, a2);
  }

  else
  {
    v119 = 1;
  }

  v4 = (v4 + v118 + v119 + 2);
  if ((*(a1 + 260) & 0x40000000) != 0)
  {
LABEL_223:
    v120 = *(a1 + 248);
    if (!v120)
    {
      v120 = *(qword_1009F9980 + 248);
    }

    v121 = sub_1000CC46C(v120, a2);
    v122 = v121;
    if (v121 >= 0x80)
    {
      v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121, a2);
    }

    else
    {
      v123 = 1;
    }

    v4 = (v4 + v122 + v123 + 2);
  }

LABEL_229:
  v124 = *(a1 + 8);
  if (v124 && *v124 != v124[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 256) = v4;
  return v4;
}

uint64_t sub_10009A8FC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10009497C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10009A9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009A9E8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 28))
  {
    v4 = *(a2 + 16);
    *(a1 + 28) |= 1u;
    v5 = *(a1 + 16);
    if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009AAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009AADC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 68);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 16);
    *(a1 + 68) |= 1u;
    v10 = *(a1 + 16);
    if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a2 + 24);
  *(a1 + 68) |= 2u;
  *(a1 + 24) = v11;
  v4 = *(a2 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 28);
  *(a1 + 68) |= 4u;
  *(a1 + 28) = v12;
  v4 = *(a2 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 32);
  *(a1 + 68) |= 8u;
  *(a1 + 32) = v13;
  v4 = *(a2 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v15 = *(a2 + 40);
    *(a1 + 68) |= 0x20u;
    v16 = *(a1 + 40);
    if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v4 = *(a2 + 68);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_25:
  v14 = *(a2 + 36);
  *(a1 + 68) |= 0x10u;
  *(a1 + 36) = v14;
  v4 = *(a2 + 68);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v17 = *(a2 + 48);
  *(a1 + 68) |= 0x40u;
  *(a1 + 48) = v17;
  v4 = *(a2 + 68);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 52);
    *(a1 + 68) |= 0x80u;
    *(a1 + 52) = v5;
    v4 = *(a2 + 68);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 56);
      *(a1 + 68) |= 0x100u;
      *(a1 + 56) = v6;
      v4 = *(a2 + 68);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 60);
      *(a1 + 68) |= 0x200u;
      *(a1 + 60) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009AD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009AD30(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  sub_1000A3634((a1 + 56), a2 + 56);
  v4 = *(a2 + 84);
  if (!v4)
  {
    goto LABEL_23;
  }

  if (v4)
  {
    *(a1 + 84) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_1009F99B0 + 16);
    }

    sub_10009F2F0(v5, v6);
    v4 = *(a2 + 84);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    if (v7 > 0x1B || ((1 << v7) & 0xDDB54EF) == 0)
    {
      sub_10049D92C();
    }

    *(a1 + 84) |= 2u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 84);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 28);
    if (v8 >= 2)
    {
      sub_10049D958();
    }

    *(a1 + 84) |= 4u;
    *(a1 + 28) = v8;
    v4 = *(a2 + 84);
  }

  if ((v4 & 8) != 0)
  {
    v12 = *(a2 + 32);
    *(a1 + 84) |= 8u;
    *(a1 + 32) = v12;
    v4 = *(a2 + 84);
    if ((v4 & 0x10) == 0)
    {
LABEL_19:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_20;
      }

LABEL_28:
      v14 = *(a2 + 40);
      *(a1 + 84) |= 0x20u;
      *(a1 + 40) = v14;
      v4 = *(a2 + 84);
      if ((v4 & 0x40) == 0)
      {
LABEL_21:
        if ((v4 & 0x80) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_19;
  }

  v13 = *(a2 + 36);
  *(a1 + 84) |= 0x10u;
  *(a1 + 36) = v13;
  v4 = *(a2 + 84);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_29:
  v15 = *(a2 + 44);
  *(a1 + 84) |= 0x40u;
  *(a1 + 44) = v15;
  v4 = *(a2 + 84);
  if ((v4 & 0x80) != 0)
  {
LABEL_22:
    v9 = *(a2 + 48);
    *(a1 + 84) |= 0x80u;
    *(a1 + 48) = v9;
    v4 = *(a2 + 84);
  }

LABEL_23:
  if ((v4 & 0x100) != 0)
  {
    v10 = *(a2 + 52);
    *(a1 + 84) |= 0x100u;
    *(a1 + 52) = v10;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009AF78(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 28))
  {
    *(a1 + 28) |= 1u;
    v4 = *(a1 + 16);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F99B8 + 16);
    }

    sub_10009FCB8(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009B088(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 44))
  {
    *(a1 + 44) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_1009F99C0 + 16);
    }

    sub_10009F2F0(v5, v6);
    v4 = *(a2 + 44);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v10;
    if ((*(a2 + 44) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_13;
  }

  v9 = *(a2 + 24);
  *(a1 + 44) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v4 & 8) != 0)
  {
LABEL_13:
    v7 = *(a2 + 36);
    *(a1 + 44) |= 8u;
    *(a1 + 36) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009B1FC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 28))
  {
    *(a1 + 28) |= 1u;
    v4 = *(a1 + 16);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F99C8 + 16);
    }

    sub_10009FCB8(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009B30C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      *(a1 + 32) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F99D0 + 16);
      }

      sub_10009F2F0(v5, v6);
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      if (v7 >= 2)
      {
        sub_10049D984();
      }

      *(a1 + 32) |= 2u;
      *(a1 + 24) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009B448(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 28))
  {
    *(a1 + 28) |= 1u;
    v4 = *(a1 + 16);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F99D8 + 16);
    }

    sub_10009FCB8(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009B558(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    sub_100077844((a1 + 16), *(a1 + 24) + v4);
    memcpy((*(a1 + 16) + 4 * *(a1 + 24)), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009B618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B630(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  sub_1000A7B20((a1 + 4), a2 + 16);
  if (*(a2 + 48))
  {
    v4 = *(a2 + 40);
    if ((sub_100094788(v4) & 1) == 0)
    {
      sub_10049D9B0();
    }

    a1[12] |= 1u;
    a1[10] = v4;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10009B6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B704(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_1000A7B20((a1 + 16), a2 + 16);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009B78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B7A4(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 16);
      if ((sub_100094788(v5) & 1) == 0)
      {
        sub_10049D9DC();
      }

      a1[8] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[8] |= 2u;
      a1[5] = v6;
      v4 = *(a2 + 32);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 24);
      a1[8] |= 4u;
      a1[6] = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10009B890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B8A8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (v4)
  {
    if (*(a2 + 56))
    {
      v5 = *(a2 + 48);
      *(a1 + 56) |= 1u;
      *(a1 + 48) = v5;
      v4 = *(a2 + 56);
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

    else if ((*(a2 + 56) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 56) |= 2u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 56);
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
    v7 = *(a2 + 24);
    *(a1 + 56) |= 4u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 56);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

LABEL_14:
      *(a1 + 56) |= 0x10u;
      v9 = *(a1 + 40);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 40);
      if (!v10)
      {
        v10 = *(qword_1009F9A08 + 40);
      }

      sub_1000A8E04(v9, v10);
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

LABEL_13:
    v8 = *(a2 + 32);
    *(a1 + 56) |= 8u;
    *(a1 + 32) = v8;
    if ((*(a2 + 56) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_14;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009BA40(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v83);
  }

  sub_1000B12F0((a1 + 192), a2 + 192);
  v4 = *(a2 + 328);
  if (v4)
  {
    sub_1000778F4((a1 + 320), *(a1 + 328) + v4);
    memcpy((*(a1 + 320) + 8 * *(a1 + 328)), *(a2 + 320), 8 * *(a2 + 328));
    *(a1 + 328) += *(a2 + 328);
  }

  v5 = *(a2 + 468);
  if (!v5)
  {
    goto LABEL_23;
  }

  if (v5)
  {
    *(a1 + 468) |= 1u;
    v6 = *(a1 + 16);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9A28 + 16);
    }

    sub_10009FCB8(v6, v7);
    v5 = *(a2 + 468);
  }

  if ((v5 & 2) != 0)
  {
    v8 = *(a2 + 32);
    if (v8 > 0x1B || ((1 << v8) & 0xDDB54EF) == 0)
    {
      sub_10049DA08();
    }

    *(a1 + 468) |= 2u;
    *(a1 + 32) = v8;
    v5 = *(a2 + 468);
  }

  if ((v5 & 4) != 0)
  {
    v29 = *(a2 + 24);
    *(a1 + 468) |= 4u;
    *(a1 + 24) = v29;
    v5 = *(a2 + 468);
    if ((v5 & 8) == 0)
    {
LABEL_18:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_82;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_18;
  }

  v30 = *(a2 + 36);
  *(a1 + 468) |= 8u;
  *(a1 + 36) = v30;
  v5 = *(a2 + 468);
  if ((v5 & 0x10) == 0)
  {
LABEL_19:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_83:
    v32 = *(a2 + 40);
    *(a1 + 468) |= 0x20u;
    v33 = *(a1 + 40);
    if (v33 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v33, v32);
    v5 = *(a2 + 468);
    if ((v5 & 0x40) == 0)
    {
LABEL_21:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_86;
  }

LABEL_82:
  v31 = *(a2 + 48);
  *(a1 + 468) |= 0x10u;
  *(a1 + 48) = v31;
  v5 = *(a2 + 468);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_83;
  }

LABEL_20:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_86:
  v34 = *(a2 + 52);
  *(a1 + 468) |= 0x40u;
  *(a1 + 52) = v34;
  v5 = *(a2 + 468);
  if ((v5 & 0x80) != 0)
  {
LABEL_22:
    v9 = *(a2 + 56);
    *(a1 + 468) |= 0x80u;
    *(a1 + 56) = v9;
    v5 = *(a2 + 468);
  }

LABEL_23:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v5 & 0x100) != 0)
  {
    v15 = *(a2 + 60);
    *(a1 + 468) |= 0x100u;
    *(a1 + 60) = v15;
    v5 = *(a2 + 468);
    if ((v5 & 0x200) == 0)
    {
LABEL_26:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_66;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v16 = *(a2 + 64);
  *(a1 + 468) |= 0x200u;
  *(a1 + 64) = v16;
  v5 = *(a2 + 468);
  if ((v5 & 0x400) == 0)
  {
LABEL_27:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  v17 = *(a2 + 72);
  *(a1 + 468) |= 0x400u;
  *(a1 + 72) = v17;
  v5 = *(a2 + 468);
  if ((v5 & 0x800) == 0)
  {
LABEL_28:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  v18 = *(a2 + 80);
  *(a1 + 468) |= 0x800u;
  *(a1 + 80) = v18;
  v5 = *(a2 + 468);
  if ((v5 & 0x1000) == 0)
  {
LABEL_29:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  v19 = *(a2 + 84);
  *(a1 + 468) |= 0x1000u;
  *(a1 + 84) = v19;
  v5 = *(a2 + 468);
  if ((v5 & 0x2000) == 0)
  {
LABEL_30:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  v20 = *(a2 + 88);
  *(a1 + 468) |= 0x2000u;
  *(a1 + 88) = v20;
  v5 = *(a2 + 468);
  if ((v5 & 0x4000) == 0)
  {
LABEL_31:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_70:
  v21 = *(a2 + 92);
  *(a1 + 468) |= 0x4000u;
  *(a1 + 92) = v21;
  v5 = *(a2 + 468);
  if ((v5 & 0x8000) != 0)
  {
LABEL_32:
    v10 = *(a2 + 136);
    *(a1 + 468) |= 0x8000u;
    *(a1 + 136) = v10;
    v5 = *(a2 + 468);
  }

LABEL_33:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_43;
  }

  if ((v5 & 0x10000) != 0)
  {
    v22 = *(a2 + 96);
    *(a1 + 468) |= 0x10000u;
    *(a1 + 96) = v22;
    v5 = *(a2 + 468);
    if ((v5 & 0x20000) == 0)
    {
LABEL_36:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_74;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_36;
  }

  v23 = *(a2 + 104);
  *(a1 + 468) |= 0x20000u;
  *(a1 + 104) = v23;
  v5 = *(a2 + 468);
  if ((v5 & 0x40000) == 0)
  {
LABEL_37:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_75;
  }

LABEL_74:
  v24 = *(a2 + 112);
  *(a1 + 468) |= 0x40000u;
  *(a1 + 112) = v24;
  v5 = *(a2 + 468);
  if ((v5 & 0x80000) == 0)
  {
LABEL_38:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_76;
  }

LABEL_75:
  v25 = *(a2 + 120);
  *(a1 + 468) |= 0x80000u;
  *(a1 + 120) = v25;
  v5 = *(a2 + 468);
  if ((v5 & 0x100000) == 0)
  {
LABEL_39:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_77;
  }

LABEL_76:
  v26 = *(a2 + 128);
  *(a1 + 468) |= 0x100000u;
  *(a1 + 128) = v26;
  v5 = *(a2 + 468);
  if ((v5 & 0x200000) == 0)
  {
LABEL_40:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_78;
  }

LABEL_77:
  v27 = *(a2 + 144);
  *(a1 + 468) |= 0x200000u;
  *(a1 + 144) = v27;
  v5 = *(a2 + 468);
  if ((v5 & 0x400000) == 0)
  {
LABEL_41:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_78:
  v28 = *(a2 + 152);
  *(a1 + 468) |= 0x400000u;
  *(a1 + 152) = v28;
  v5 = *(a2 + 468);
  if ((v5 & 0x800000) != 0)
  {
LABEL_42:
    v11 = *(a2 + 160);
    *(a1 + 468) |= 0x800000u;
    *(a1 + 160) = v11;
    v5 = *(a2 + 468);
  }

LABEL_43:
  if (!HIBYTE(v5))
  {
    goto LABEL_51;
  }

  if ((v5 & 0x1000000) != 0)
  {
    v57 = *(a2 + 168);
    *(a1 + 468) |= 0x1000000u;
    *(a1 + 168) = v57;
    v5 = *(a2 + 468);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_46:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_145;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_46;
  }

  v58 = *(a2 + 176);
  *(a1 + 468) |= 0x2000000u;
  *(a1 + 176) = v58;
  v5 = *(a2 + 468);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_146;
  }

LABEL_145:
  v59 = *(a2 + 140);
  *(a1 + 468) |= 0x4000000u;
  *(a1 + 140) = v59;
  v5 = *(a2 + 468);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_48:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_147;
  }

LABEL_146:
  v60 = *(a2 + 184);
  *(a1 + 468) |= 0x8000000u;
  *(a1 + 184) = v60;
  v5 = *(a2 + 468);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_49:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_148:
    v62 = *(a2 + 224);
    *(a1 + 468) |= 0x40000000u;
    *(a1 + 224) = v62;
    if ((*(a2 + 468) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_149;
  }

LABEL_147:
  v61 = *(a2 + 216);
  *(a1 + 468) |= 0x20000000u;
  *(a1 + 216) = v61;
  v5 = *(a2 + 468);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_148;
  }

LABEL_50:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_149:
  v63 = *(a2 + 232);
  *(a1 + 468) |= 0x80000000;
  *(a1 + 232) = v63;
LABEL_51:
  v12 = *(a2 + 472);
  if (!v12)
  {
    goto LABEL_95;
  }

  if (v12)
  {
    v13 = *(a2 + 240);
    *(a1 + 472) |= 1u;
    *(a1 + 240) = v13;
    v12 = *(a2 + 472);
  }

  if ((v12 & 2) != 0)
  {
    v14 = *(a2 + 244);
    if (v14 >= 2)
    {
      sub_10049DA34();
    }

    *(a1 + 472) |= 2u;
    *(a1 + 244) = v14;
    v12 = *(a2 + 472);
  }

  if ((v12 & 4) != 0)
  {
    v35 = *(a2 + 248);
    *(a1 + 472) |= 4u;
    *(a1 + 248) = v35;
    v12 = *(a2 + 472);
    if ((v12 & 8) == 0)
    {
LABEL_59:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_90;
    }
  }

  else if ((v12 & 8) == 0)
  {
    goto LABEL_59;
  }

  v36 = *(a2 + 256);
  *(a1 + 472) |= 8u;
  *(a1 + 256) = v36;
  v12 = *(a2 + 472);
  if ((v12 & 0x10) == 0)
  {
LABEL_60:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_91;
  }

LABEL_90:
  v37 = *(a2 + 264);
  *(a1 + 472) |= 0x10u;
  *(a1 + 264) = v37;
  v12 = *(a2 + 472);
  if ((v12 & 0x20) == 0)
  {
LABEL_61:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_92;
  }

LABEL_91:
  v38 = *(a2 + 272);
  *(a1 + 472) |= 0x20u;
  *(a1 + 272) = v38;
  v12 = *(a2 + 472);
  if ((v12 & 0x40) == 0)
  {
LABEL_62:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_93;
  }

LABEL_92:
  v39 = *(a2 + 280);
  *(a1 + 472) |= 0x40u;
  *(a1 + 280) = v39;
  v12 = *(a2 + 472);
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_95;
  }

LABEL_93:
  v40 = *(a2 + 288);
  if ((v40 - 1) >= 2)
  {
    sub_10049DA60();
  }

  *(a1 + 472) |= 0x80u;
  *(a1 + 288) = v40;
  v12 = *(a2 + 472);
LABEL_95:
  if ((v12 & 0xFF00) == 0)
  {
    goto LABEL_104;
  }

  if ((v12 & 0x100) != 0)
  {
    v43 = *(a2 + 292);
    *(a1 + 472) |= 0x100u;
    *(a1 + 292) = v43;
    v12 = *(a2 + 472);
    if ((v12 & 0x200) == 0)
    {
LABEL_98:
      if ((v12 & 0x400) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_126;
    }
  }

  else if ((v12 & 0x200) == 0)
  {
    goto LABEL_98;
  }

  v44 = *(a2 + 296);
  *(a1 + 472) |= 0x200u;
  *(a1 + 296) = v44;
  v12 = *(a2 + 472);
  if ((v12 & 0x400) == 0)
  {
LABEL_99:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_127;
  }

LABEL_126:
  v45 = *(a2 + 297);
  *(a1 + 472) |= 0x400u;
  *(a1 + 297) = v45;
  v12 = *(a2 + 472);
  if ((v12 & 0x800) == 0)
  {
LABEL_100:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_128;
  }

LABEL_127:
  v46 = *(a2 + 298);
  *(a1 + 472) |= 0x800u;
  *(a1 + 298) = v46;
  v12 = *(a2 + 472);
  if ((v12 & 0x1000) == 0)
  {
LABEL_101:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_129;
  }

LABEL_128:
  v47 = *(a2 + 304);
  *(a1 + 472) |= 0x1000u;
  *(a1 + 304) = v47;
  v12 = *(a2 + 472);
  if ((v12 & 0x2000) == 0)
  {
LABEL_102:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

LABEL_129:
  *(a1 + 472) |= 0x2000u;
  v48 = *(a1 + 312);
  if (!v48)
  {
    operator new();
  }

  v49 = *(a2 + 312);
  if (!v49)
  {
    v49 = *(qword_1009F9A28 + 312);
  }

  sub_1000AB160(v48, v49);
  v12 = *(a2 + 472);
  if ((v12 & 0x4000) != 0)
  {
LABEL_103:
    v41 = *(a2 + 300);
    *(a1 + 472) |= 0x4000u;
    *(a1 + 300) = v41;
    v12 = *(a2 + 472);
  }

LABEL_104:
  if ((v12 & 0xFF0000) == 0)
  {
    goto LABEL_114;
  }

  if ((v12 & 0x10000) != 0)
  {
    v50 = *(a2 + 336);
    *(a1 + 472) |= 0x10000u;
    *(a1 + 336) = v50;
    v12 = *(a2 + 472);
    if ((v12 & 0x20000) == 0)
    {
LABEL_107:
      if ((v12 & 0x40000) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_137;
    }
  }

  else if ((v12 & 0x20000) == 0)
  {
    goto LABEL_107;
  }

  v51 = *(a2 + 340);
  *(a1 + 472) |= 0x20000u;
  *(a1 + 340) = v51;
  v12 = *(a2 + 472);
  if ((v12 & 0x40000) == 0)
  {
LABEL_108:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_138;
  }

LABEL_137:
  v52 = *(a2 + 344);
  *(a1 + 472) |= 0x40000u;
  *(a1 + 344) = v52;
  v12 = *(a2 + 472);
  if ((v12 & 0x80000) == 0)
  {
LABEL_109:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_139;
  }

LABEL_138:
  v53 = *(a2 + 348);
  *(a1 + 472) |= 0x80000u;
  *(a1 + 348) = v53;
  v12 = *(a2 + 472);
  if ((v12 & 0x100000) == 0)
  {
LABEL_110:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_140;
  }

LABEL_139:
  v54 = *(a2 + 376);
  *(a1 + 472) |= 0x100000u;
  *(a1 + 376) = v54;
  v12 = *(a2 + 472);
  if ((v12 & 0x200000) == 0)
  {
LABEL_111:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_141;
  }

LABEL_140:
  v55 = *(a2 + 352);
  *(a1 + 472) |= 0x200000u;
  *(a1 + 352) = v55;
  v12 = *(a2 + 472);
  if ((v12 & 0x400000) == 0)
  {
LABEL_112:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_141:
  v56 = *(a2 + 360);
  *(a1 + 472) |= 0x400000u;
  *(a1 + 360) = v56;
  v12 = *(a2 + 472);
  if ((v12 & 0x800000) != 0)
  {
LABEL_113:
    v42 = *(a2 + 368);
    *(a1 + 472) |= 0x800000u;
    *(a1 + 368) = v42;
    v12 = *(a2 + 472);
  }

LABEL_114:
  if (!HIBYTE(v12))
  {
    goto LABEL_159;
  }

  if ((v12 & 0x1000000) != 0)
  {
    v64 = *(a2 + 384);
    *(a1 + 472) |= 0x1000000u;
    *(a1 + 384) = v64;
    v12 = *(a2 + 472);
    if ((v12 & 0x2000000) == 0)
    {
LABEL_117:
      if ((v12 & 0x4000000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_152;
    }
  }

  else if ((v12 & 0x2000000) == 0)
  {
    goto LABEL_117;
  }

  v65 = *(a2 + 392);
  *(a1 + 472) |= 0x2000000u;
  *(a1 + 392) = v65;
  v12 = *(a2 + 472);
  if ((v12 & 0x4000000) == 0)
  {
LABEL_118:
    if ((v12 & 0x8000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_153;
  }

LABEL_152:
  v66 = *(a2 + 380);
  *(a1 + 472) |= 0x4000000u;
  *(a1 + 380) = v66;
  v12 = *(a2 + 472);
  if ((v12 & 0x8000000) == 0)
  {
LABEL_119:
    if ((v12 & 0x10000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_154;
  }

LABEL_153:
  v67 = *(a2 + 400);
  *(a1 + 472) |= 0x8000000u;
  *(a1 + 400) = v67;
  v12 = *(a2 + 472);
  if ((v12 & 0x10000000) == 0)
  {
LABEL_120:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_155;
  }

LABEL_154:
  v68 = *(a2 + 404);
  *(a1 + 472) |= 0x10000000u;
  *(a1 + 404) = v68;
  v12 = *(a2 + 472);
  if ((v12 & 0x20000000) == 0)
  {
LABEL_121:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_122;
    }

LABEL_156:
    v70 = *(a2 + 412);
    *(a1 + 472) |= 0x40000000u;
    *(a1 + 412) = v70;
    if ((*(a2 + 472) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_157;
  }

LABEL_155:
  v69 = *(a2 + 408);
  *(a1 + 472) |= 0x20000000u;
  *(a1 + 408) = v69;
  v12 = *(a2 + 472);
  if ((v12 & 0x40000000) != 0)
  {
    goto LABEL_156;
  }

LABEL_122:
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_159;
  }

LABEL_157:
  v71 = *(a2 + 416);
  if ((v71 - 1) >= 6)
  {
    sub_10049DA8C();
  }

  *(a1 + 472) |= 0x80000000;
  *(a1 + 416) = v71;
LABEL_159:
  v72 = *(a2 + 476);
  if (!v72)
  {
    goto LABEL_169;
  }

  if (v72)
  {
    v76 = *(a2 + 420);
    *(a1 + 476) |= 1u;
    *(a1 + 420) = v76;
    v72 = *(a2 + 476);
    if ((v72 & 2) == 0)
    {
LABEL_162:
      if ((v72 & 4) == 0)
      {
        goto LABEL_163;
      }

      goto LABEL_174;
    }
  }

  else if ((v72 & 2) == 0)
  {
    goto LABEL_162;
  }

  v77 = *(a2 + 424);
  *(a1 + 476) |= 2u;
  *(a1 + 424) = v77;
  v72 = *(a2 + 476);
  if ((v72 & 4) == 0)
  {
LABEL_163:
    if ((v72 & 8) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_175;
  }

LABEL_174:
  v78 = *(a2 + 428);
  *(a1 + 476) |= 4u;
  *(a1 + 428) = v78;
  v72 = *(a2 + 476);
  if ((v72 & 8) == 0)
  {
LABEL_164:
    if ((v72 & 0x10) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_176;
  }

LABEL_175:
  v79 = *(a2 + 432);
  *(a1 + 476) |= 8u;
  *(a1 + 432) = v79;
  v72 = *(a2 + 476);
  if ((v72 & 0x10) == 0)
  {
LABEL_165:
    if ((v72 & 0x20) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_177;
  }

LABEL_176:
  v80 = *(a2 + 440);
  *(a1 + 476) |= 0x10u;
  *(a1 + 440) = v80;
  v72 = *(a2 + 476);
  if ((v72 & 0x20) == 0)
  {
LABEL_166:
    if ((v72 & 0x40) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_178;
  }

LABEL_177:
  v81 = *(a2 + 448);
  *(a1 + 476) |= 0x20u;
  *(a1 + 448) = v81;
  v72 = *(a2 + 476);
  if ((v72 & 0x40) == 0)
  {
LABEL_167:
    if ((v72 & 0x80) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

LABEL_178:
  v82 = *(a2 + 452);
  *(a1 + 476) |= 0x40u;
  *(a1 + 452) = v82;
  v72 = *(a2 + 476);
  if ((v72 & 0x80) != 0)
  {
LABEL_168:
    v73 = *(a2 + 456);
    *(a1 + 476) |= 0x80u;
    *(a1 + 456) = v73;
    v72 = *(a2 + 476);
  }

LABEL_169:
  if ((v72 & 0x100) != 0)
  {
    v74 = *(a2 + 460);
    *(a1 + 476) |= 0x100u;
    *(a1 + 460) = v74;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}