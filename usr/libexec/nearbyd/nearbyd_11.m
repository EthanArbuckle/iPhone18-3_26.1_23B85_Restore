uint64_t sub_1000B07FC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 468);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_51;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_1009F9A28 + 16);
  }

  v6 = sub_1000A0394(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = v7 + v8 + 1;
  v3 = *(a1 + 468);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 32);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 468);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    v3 = *(a1 + 468);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v11 = *(a1 + 36);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 468);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(a1 + 48);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 468);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_34:
  v15 = *(a1 + 40);
  v16 = *(v15 + 23);
  v17 = v16;
  v18 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    v16 = *(v15 + 23);
    v18 = *(v15 + 8);
    v3 = *(a1 + 468);
    v17 = *(v15 + 23);
  }

  else
  {
    v20 = 1;
  }

  if (v17 < 0)
  {
    v16 = v18;
  }

  v4 += v20 + v16 + 1;
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

LABEL_43:
  v21 = *(a1 + 52);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
    v3 = *(a1 + 468);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x80) != 0)
  {
LABEL_47:
    v23 = *(a1 + 56);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      v3 = *(a1 + 468);
    }

    else
    {
      v24 = 2;
    }

    v4 += v24;
  }

LABEL_51:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v3 & 0x100) != 0)
  {
    v25 = *(a1 + 60);
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
      v3 = *(a1 + 468);
    }

    else
    {
      v26 = 2;
    }

    v4 += v26;
  }

  v27 = v4 + 9;
  if ((v3 & 0x200) == 0)
  {
    v27 = v4;
  }

  if ((v3 & 0x400) != 0)
  {
    v4 = v27 + 9;
  }

  else
  {
    v4 = v27;
  }

  if ((v3 & 0x800) != 0)
  {
    v28 = *(a1 + 80);
    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
      v3 = *(a1 + 468);
    }

    else
    {
      v29 = 2;
    }

    v4 += v29;
    if ((v3 & 0x1000) == 0)
    {
LABEL_64:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_76;
    }
  }

  else if ((v3 & 0x1000) == 0)
  {
    goto LABEL_64;
  }

  v30 = *(a1 + 84);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
    v3 = *(a1 + 468);
  }

  else
  {
    v31 = 2;
  }

  v4 += v31;
  if ((v3 & 0x2000) == 0)
  {
LABEL_65:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_80;
  }

LABEL_76:
  v32 = *(a1 + 88);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 1;
    v3 = *(a1 + 468);
  }

  else
  {
    v33 = 2;
  }

  v4 += v33;
  if ((v3 & 0x4000) == 0)
  {
LABEL_66:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_84;
  }

LABEL_80:
  v34 = *(a1 + 92);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 1;
    v3 = *(a1 + 468);
  }

  else
  {
    v35 = 2;
  }

  v4 += v35;
  if ((v3 & 0x8000) != 0)
  {
LABEL_84:
    v36 = *(a1 + 136);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 2;
      v3 = *(a1 + 468);
    }

    else
    {
      v37 = 3;
    }

    v4 += v37;
  }

LABEL_88:
  if ((v3 & 0xFF0000) != 0)
  {
    v38 = v4 + 10;
    if ((v3 & 0x10000) == 0)
    {
      v38 = v4;
    }

    if ((v3 & 0x20000) != 0)
    {
      v38 += 10;
    }

    if ((v3 & 0x40000) != 0)
    {
      v38 += 10;
    }

    if ((v3 & 0x80000) != 0)
    {
      v38 += 10;
    }

    if ((v3 & 0x100000) != 0)
    {
      v38 += 10;
    }

    if ((v3 & 0x200000) != 0)
    {
      v38 += 10;
    }

    if ((v3 & 0x400000) != 0)
    {
      v38 += 10;
    }

    if ((v3 & 0x800000) != 0)
    {
      v4 = v38 + 10;
    }

    else
    {
      v4 = v38;
    }
  }

  if (HIBYTE(v3))
  {
    v39 = v4 + 10;
    if ((v3 & 0x1000000) == 0)
    {
      v39 = v4;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v40 = v39 + 10;
    }

    else
    {
      v40 = v39;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v41 = *(a1 + 140);
      if (v41 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2) + 2;
        v3 = *(a1 + 468);
      }

      else
      {
        v42 = 3;
      }

      v40 += v42;
    }

    v43 = v40 + 10;
    if ((v3 & 0x8000000) == 0)
    {
      v43 = v40;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v43 += 10;
    }

    if ((v3 & 0x40000000) != 0)
    {
      v43 += 10;
    }

    if (v3 >= 0)
    {
      v4 = v43;
    }

    else
    {
      v4 = v43 + 10;
    }
  }

  v44 = *(a1 + 472);
  if (v44)
  {
    if (v44)
    {
      v45 = *(a1 + 240);
      if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45, a2) + 2;
        v44 = *(a1 + 472);
      }

      else
      {
        v46 = 3;
      }

      v4 += v46;
    }

    if ((v44 & 2) != 0)
    {
      v47 = *(a1 + 244);
      if ((v47 & 0x80000000) != 0)
      {
        v48 = 12;
      }

      else if (v47 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47, a2) + 2;
        v44 = *(a1 + 472);
      }

      else
      {
        v48 = 3;
      }

      v4 += v48;
    }

    v49 = v4 + 10;
    if ((v44 & 4) == 0)
    {
      v49 = v4;
    }

    if ((v44 & 8) != 0)
    {
      v49 += 10;
    }

    if ((v44 & 0x10) != 0)
    {
      v49 += 10;
    }

    if ((v44 & 0x20) != 0)
    {
      v49 += 10;
    }

    if ((v44 & 0x40) != 0)
    {
      v4 = v49 + 10;
    }

    else
    {
      v4 = v49;
    }

    if ((v44 & 0x80) != 0)
    {
      v50 = *(a1 + 288);
      if ((v50 & 0x80000000) != 0)
      {
        v51 = 12;
      }

      else if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2) + 2;
        v44 = *(a1 + 472);
      }

      else
      {
        v51 = 3;
      }

      v4 += v51;
    }
  }

  if ((v44 & 0xFF00) != 0)
  {
    if ((v44 & 0x100) != 0)
    {
      v52 = *(a1 + 292);
      if (v52 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2) + 2;
        v44 = *(a1 + 472);
      }

      else
      {
        v53 = 3;
      }

      v4 += v53;
    }

    v54 = v4 + 3;
    if ((v44 & 0x200) == 0)
    {
      v54 = v4;
    }

    if ((v44 & 0x400) != 0)
    {
      v54 += 3;
    }

    if ((v44 & 0x800) != 0)
    {
      v54 += 3;
    }

    if ((v44 & 0x1000) != 0)
    {
      v4 = v54 + 10;
    }

    else
    {
      v4 = v54;
    }

    if ((v44 & 0x2000) != 0)
    {
      v55 = *(a1 + 312);
      if (!v55)
      {
        v55 = *(qword_1009F9A28 + 312);
      }

      v56 = sub_1000ABD80(v55, a2);
      v57 = v56;
      if (v56 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56, a2);
      }

      else
      {
        v58 = 1;
      }

      v4 += v57 + v58 + 2;
      v44 = *(a1 + 472);
    }

    if ((v44 & 0x4000) != 0)
    {
      v59 = *(a1 + 300);
      if (v59 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59, a2) + 2;
        v44 = *(a1 + 472);
      }

      else
      {
        v60 = 3;
      }

      v4 += v60;
    }
  }

  if ((v44 & 0xFF0000) == 0)
  {
    goto LABEL_194;
  }

  if ((v44 & 0x10000) != 0)
  {
    v61 = *(a1 + 336);
    if (v61 >= 0x80)
    {
      v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61, a2) + 2;
      v44 = *(a1 + 472);
    }

    else
    {
      v62 = 3;
    }

    v4 += v62;
    if ((v44 & 0x20000) == 0)
    {
LABEL_187:
      if ((v44 & 0x40000) == 0)
      {
        goto LABEL_188;
      }

      goto LABEL_239;
    }
  }

  else if ((v44 & 0x20000) == 0)
  {
    goto LABEL_187;
  }

  v65 = *(a1 + 340);
  if ((v65 & 0x80000000) != 0)
  {
    v66 = 12;
  }

  else if (v65 >= 0x80)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65, a2) + 2;
    v44 = *(a1 + 472);
  }

  else
  {
    v66 = 3;
  }

  v4 += v66;
  if ((v44 & 0x40000) == 0)
  {
LABEL_188:
    if ((v44 & 0x80000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_245;
  }

LABEL_239:
  v77 = *(a1 + 344);
  if ((v77 & 0x80000000) != 0)
  {
    v78 = 12;
  }

  else if (v77 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77, a2) + 2;
    v44 = *(a1 + 472);
  }

  else
  {
    v78 = 3;
  }

  v4 += v78;
  if ((v44 & 0x80000) == 0)
  {
LABEL_189:
    if ((v44 & 0x100000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_251;
  }

LABEL_245:
  v79 = *(a1 + 348);
  if ((v79 & 0x80000000) != 0)
  {
    v80 = 12;
  }

  else if (v79 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79, a2) + 2;
    v44 = *(a1 + 472);
  }

  else
  {
    v80 = 3;
  }

  v4 += v80;
  if ((v44 & 0x100000) == 0)
  {
LABEL_190:
    if ((v44 & 0x200000) == 0)
    {
      goto LABEL_191;
    }

LABEL_255:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 352), a2) + 2;
    v44 = *(a1 + 472);
    if ((v44 & 0x400000) == 0)
    {
LABEL_192:
      if ((v44 & 0x800000) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_193;
    }

    goto LABEL_256;
  }

LABEL_251:
  v81 = *(a1 + 376);
  if (v81 >= 0x80)
  {
    v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81, a2) + 2;
    v44 = *(a1 + 472);
  }

  else
  {
    v82 = 3;
  }

  v4 += v82;
  if ((v44 & 0x200000) != 0)
  {
    goto LABEL_255;
  }

LABEL_191:
  if ((v44 & 0x400000) == 0)
  {
    goto LABEL_192;
  }

LABEL_256:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 360), a2) + 2;
  v44 = *(a1 + 472);
  if ((v44 & 0x800000) != 0)
  {
LABEL_193:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 368), a2) + 2;
    v44 = *(a1 + 472);
  }

LABEL_194:
  if (!HIBYTE(v44))
  {
    goto LABEL_261;
  }

  if ((v44 & 0x1000000) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 384), a2) + 2;
    v44 = *(a1 + 472);
  }

  if ((v44 & 0x2000000) != 0)
  {
    v4 += 10;
  }

  if ((v44 & 0x4000000) != 0)
  {
    v63 = *(a1 + 380);
    if (v63 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63, a2) + 2;
      v44 = *(a1 + 472);
    }

    else
    {
      v64 = 3;
    }

    v4 += v64;
    if ((v44 & 0x8000000) == 0)
    {
LABEL_201:
      if ((v44 & 0x10000000) == 0)
      {
        goto LABEL_202;
      }

      goto LABEL_221;
    }
  }

  else if ((v44 & 0x8000000) == 0)
  {
    goto LABEL_201;
  }

  v67 = *(a1 + 400);
  if (v67 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67, a2) + 2;
    v44 = *(a1 + 472);
  }

  else
  {
    v68 = 3;
  }

  v4 += v68;
  if ((v44 & 0x10000000) == 0)
  {
LABEL_202:
    if ((v44 & 0x20000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_225;
  }

LABEL_221:
  v69 = *(a1 + 404);
  if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69, a2) + 2;
    v44 = *(a1 + 472);
  }

  else
  {
    v70 = 3;
  }

  v4 += v70;
  if ((v44 & 0x20000000) == 0)
  {
LABEL_203:
    if ((v44 & 0x40000000) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_229;
  }

LABEL_225:
  v71 = *(a1 + 408);
  if (v71 >= 0x80)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71, a2) + 2;
    v44 = *(a1 + 472);
  }

  else
  {
    v72 = 3;
  }

  v4 += v72;
  if ((v44 & 0x40000000) == 0)
  {
LABEL_204:
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_261;
    }

    goto LABEL_233;
  }

LABEL_229:
  v73 = *(a1 + 412);
  if (v73 >= 0x80)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73, a2) + 2;
    v44 = *(a1 + 472);
  }

  else
  {
    v74 = 3;
  }

  v4 += v74;
  if ((v44 & 0x80000000) != 0)
  {
LABEL_233:
    v75 = *(a1 + 416);
    if ((v75 & 0x80000000) != 0)
    {
      v76 = 12;
    }

    else if (v75 >= 0x80)
    {
      v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75, a2) + 2;
    }

    else
    {
      v76 = 3;
    }

    v4 += v76;
  }

LABEL_261:
  v83 = *(a1 + 476);
  if (!v83)
  {
    goto LABEL_286;
  }

  if (v83)
  {
    v84 = *(a1 + 420);
    if (v84 >= 0x80)
    {
      v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84, a2) + 2;
      v83 = *(a1 + 476);
    }

    else
    {
      v85 = 3;
    }

    v4 += v85;
    if ((v83 & 2) == 0)
    {
LABEL_264:
      if ((v83 & 4) == 0)
      {
        goto LABEL_278;
      }

      goto LABEL_274;
    }
  }

  else if ((v83 & 2) == 0)
  {
    goto LABEL_264;
  }

  v86 = *(a1 + 424);
  if (v86 >= 0x80)
  {
    v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86, a2) + 2;
    v83 = *(a1 + 476);
  }

  else
  {
    v87 = 3;
  }

  v4 += v87;
  if ((v83 & 4) != 0)
  {
LABEL_274:
    v88 = *(a1 + 428);
    if (v88 >= 0x80)
    {
      v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88, a2) + 2;
      v83 = *(a1 + 476);
    }

    else
    {
      v89 = 3;
    }

    v4 += v89;
  }

LABEL_278:
  v90 = v4 + 10;
  if ((v83 & 8) == 0)
  {
    v90 = v4;
  }

  if ((v83 & 0x10) != 0)
  {
    v4 = v90 + 10;
  }

  else
  {
    v4 = v90;
  }

  if ((v83 & 0x20) != 0)
  {
    v91 = *(a1 + 448);
    if (v91 >= 0x80)
    {
      v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91, a2) + 2;
      v83 = *(a1 + 476);
    }

    else
    {
      v92 = 3;
    }

    v4 += v92;
    if ((v83 & 0x40) == 0)
    {
LABEL_285:
      if ((v83 & 0x80) == 0)
      {
        goto LABEL_286;
      }

      goto LABEL_296;
    }
  }

  else if ((v83 & 0x40) == 0)
  {
    goto LABEL_285;
  }

  v93 = *(a1 + 452);
  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93, a2) + 2;
    v83 = *(a1 + 476);
  }

  else
  {
    v94 = 3;
  }

  v4 += v94;
  if ((v83 & 0x80) == 0)
  {
LABEL_286:
    if ((v83 & 0x100) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_300;
  }

LABEL_296:
  v95 = *(a1 + 456);
  if (v95 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95, a2) + 2;
    v83 = *(a1 + 476);
  }

  else
  {
    v96 = 3;
  }

  v4 += v96;
  if ((v83 & 0x100) != 0)
  {
LABEL_300:
    v97 = *(a1 + 460);
    if (v97 >= 0x80)
    {
      v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97, a2) + 2;
    }

    else
    {
      v98 = 3;
    }

    v4 += v98;
  }

LABEL_304:
  v99 = *(a1 + 200);
  v100 = v4 + 2 * v99;
  if (v99 >= 1)
  {
    v101 = 0;
    do
    {
      v102 = sub_1000AAE28(*(*(a1 + 192) + 8 * v101), a2);
      v103 = v102;
      if (v102 >= 0x80)
      {
        v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102, a2);
      }

      else
      {
        v104 = 1;
      }

      v100 += v103 + v104;
      ++v101;
    }

    while (v101 < *(a1 + 200));
  }

  v105 = *(a1 + 8);
  v106 = (v100 + 10 * *(a1 + 328));
  if (v105 && *v105 != v105[1])
  {
    v106 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v106;
  }

  *(a1 + 464) = v106;
  return v106;
}

uint64_t sub_1000B1204(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009BA40(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B12D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B12F0(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_1000CCEC8();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000AA478(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000B1418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B1430(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B14C4()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED720;
}

void sub_1000B1558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B156C(uint64_t a1)
{
  *a1 = off_10098F178;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void sub_1000B15CC(void *a1)
{
  *a1 = off_10098F178;
  if (qword_1009F9A30 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000B1664(void *a1)
{
  sub_1000B15CC(a1);

  operator delete();
}

uint64_t sub_1000B1708(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
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
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_28;
      }

LABEL_15:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (TagFallback >> 3 != 1 || v8 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 32) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v25 = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
      {
        return 0;
      }
    }

    else
    {
      v25 = *v10;
      *(this + 1) = v10 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
    if (!sub_10009FF9C(v9, this, v16, v17) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
    v18 = *(this + 14);
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v20 < 0 == v19)
    {
      *(this + 14) = v20;
    }

    v21 = *(this + 1);
    v11 = *(this + 2);
    if (v21 < v11 && *v21 == 16)
    {
      v12 = v21 + 1;
      *(this + 1) = v12;
LABEL_28:
      v24 = 0;
      if (v12 >= v11 || (v22 = *v12, v22 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
        if (!result)
        {
          return result;
        }

        v22 = v24;
      }

      else
      {
        *(this + 1) = v12 + 1;
      }

      if (sub_100094788(v22))
      {
        *(a1 + 32) |= 2u;
        *(a1 + 24) = v22;
      }

      else
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v22);
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t sub_1000B1974(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9A30 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 32);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B1A10(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 8);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9A30 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = v6[7];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = (v3 + 2);
    }

    v3 = sub_1000A02A0(v6, v9, a3);
    v5 = *(this + 8);
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(this + 6);
    *v3 = 16;
    v11 = v3 + 1;
    if ((v10 & 0x80000000) != 0)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v11, a3);
    }

    else
    {
      if (v10 <= 0x7F)
      {
        *(v3 + 1) = v10;
        v3 = (v3 + 2);
        goto LABEL_15;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v11, a3);
    }

    v3 = v12;
  }

LABEL_15:
  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, v3, a3);
}

uint64_t sub_1000B1B04(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 32))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      v3 = 0;
      if ((*(a1 + 32) & 2) == 0)
      {
        goto LABEL_18;
      }

LABEL_12:
      v8 = *(a1 + 24);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      }

      else
      {
        v9 = 2;
      }

      v3 = (v9 + v3);
      goto LABEL_18;
    }

    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F9A30 + 16);
    }

    v5 = sub_1000A0394(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v7 + 1);
    if ((*(a1 + 32) & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_18:
  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 28) = v3;
  return v3;
}

uint64_t sub_1000B1BDC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009C56C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B1CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B1CC8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B1D5C()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED730;
}

void sub_1000B1DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000B1E04(void *a1)
{
  *a1 = off_10098F228;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_1000B1E60(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1000B1F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B1F30(uint64_t a1)
{
  *a1 = off_10098F228;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000B1F84(uint64_t a1)
{
  *a1 = off_10098F228;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B2058(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000B2078(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v17 = 0;
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v17);
        if (!result)
        {
          return result;
        }

        v10 = v17;
        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      a1[4] = v10;
      a1[7] |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
LABEL_22:
        v16 = 0;
        if (v12 >= v8 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
          if (!result)
          {
            return result;
          }

          v13 = v16;
          v14 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        a1[5] = v13;
        a1[7] |= 2u;
        if (v14 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000B2210(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 20), a2, a4);
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B229C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v4 = *(this + 4);
    *a2 = 8;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v4, a2 + 1, a3);
    }

    else
    {
      if (v4 <= 0x7F)
      {
        *(a2 + 1) = v4;
        a2 = (a2 + 2);
        goto LABEL_8;
      }

      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    a2 = v5;
  }

LABEL_8:
  if ((*(this + 28) & 2) != 0)
  {
    v6 = *(this + 5);
    *a2 = 16;
    if ((v6 & 0x80000000) != 0)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, a2 + 1, a3);
    }

    else
    {
      if (v6 <= 0x7F)
      {
        *(a2 + 1) = v6;
        a2 = (a2 + 2);
        goto LABEL_15;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    a2 = v7;
  }

LABEL_15:
  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_1000B2384(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  if (v3)
  {
    if ((*(a1 + 28) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 28) & 2) == 0)
      {
        goto LABEL_19;
      }

LABEL_13:
      v6 = *(a1 + 20);
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

      v4 = (v7 + v4);
      goto LABEL_19;
    }

    v5 = *(a1 + 16);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (v5 < 0x80)
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    if ((*(a1 + 28) & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_1000B2450(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B1E60(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B2524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B253C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B25D0()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED740;
}

void sub_1000B2664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B2678(uint64_t a1)
{
  *a1 = off_10098F2D8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

uint64_t sub_1000B26F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_1000B3264((a1 + 16), a2 + 16);
  sub_1000B3264((a1 + 40), a2 + 40);
  sub_1000B3264((a1 + 64), a2 + 64);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000B2794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B27AC(uint64_t *a1)
{
  *a1 = off_10098F2D8;
  sub_100077C08(a1 + 8);
  sub_100077C08(a1 + 5);
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000B2828(uint64_t *a1)
{
  sub_1000B27AC(a1);

  operator delete();
}

uint64_t sub_1000B28CC(uint64_t a1)
{
  sub_100077B98(a1 + 16);
  sub_100077B98(a1 + 40);
  result = sub_100077B98(a1 + 64);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 21) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_1000B2930(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
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

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_33;
          }

          while (1)
          {
            v38 = a1[19];
            v39 = a1[18];
            if (v39 >= v38)
            {
              if (v38 == a1[20])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v38 + 1);
                v38 = a1[19];
              }

              a1[19] = v38 + 1;
              sub_1000CCF2C();
            }

            v40 = *(a1 + 8);
            a1[18] = v39 + 1;
            v41 = *(v40 + 8 * v39);
            v54 = 0;
            v42 = *(this + 1);
            if (v42 >= *(this + 2) || *v42 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
              {
                return 0;
              }
            }

            else
            {
              v54 = *v42;
              *(this + 1) = v42 + 1;
            }

            v43 = *(this + 14);
            v44 = *(this + 15);
            *(this + 14) = v43 + 1;
            if (v43 >= v44)
            {
              return 0;
            }

            v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v54);
            if (!sub_1000B2078(v41, this, v46, v47) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
            v48 = *(this + 14);
            v21 = __OFSUB__(v48, 1);
            v49 = v48 - 1;
            if (v49 < 0 == v21)
            {
              *(this + 14) = v49;
            }

            v23 = *(this + 1);
            v50 = *(this + 2);
            if (v23 >= v50 || *v23 != 26)
            {
              break;
            }

LABEL_71:
            *(this + 1) = v23 + 1;
          }

          if (v23 == v50 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        if (v8 != 2)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_33;
        }

        while (1)
        {
          v25 = a1[13];
          v26 = a1[12];
          if (v26 >= v25)
          {
            if (v25 == a1[14])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 10), v25 + 1);
              v25 = a1[13];
            }

            a1[13] = v25 + 1;
            sub_1000CCF2C();
          }

          v27 = *(a1 + 5);
          a1[12] = v26 + 1;
          v28 = *(v27 + 8 * v26);
          v53 = 0;
          v29 = *(this + 1);
          if (v29 >= *(this + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v53))
            {
              return 0;
            }
          }

          else
          {
            v53 = *v29;
            *(this + 1) = v29 + 1;
          }

          v30 = *(this + 14);
          v31 = *(this + 15);
          *(this + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v53);
          if (!sub_1000B2078(v28, this, v33, v34) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
          v35 = *(this + 14);
          v21 = __OFSUB__(v35, 1);
          v36 = v35 - 1;
          if (v36 < 0 == v21)
          {
            *(this + 14) = v36;
          }

          v23 = *(this + 1);
          if (v23 >= *(this + 2))
          {
            break;
          }

          v37 = *v23;
          if (v37 != 18)
          {
            if (v37 == 26)
            {
              goto LABEL_71;
            }

            goto LABEL_1;
          }

LABEL_54:
          *(this + 1) = v23 + 1;
        }
      }

      if (v8 != 1 || v9 != 2)
      {
        break;
      }

      while (1)
      {
        v10 = a1[7];
        v11 = a1[6];
        if (v11 >= v10)
        {
          if (v10 == a1[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v10 + 1);
            v10 = a1[7];
          }

          a1[7] = v10 + 1;
          sub_1000CCF2C();
        }

        v12 = *(a1 + 2);
        a1[6] = v11 + 1;
        v13 = *(v12 + 8 * v11);
        v52 = 0;
        v14 = *(this + 1);
        if (v14 >= *(this + 2) || *v14 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52))
          {
            return 0;
          }
        }

        else
        {
          v52 = *v14;
          *(this + 1) = v14 + 1;
        }

        v15 = *(this + 14);
        v16 = *(this + 15);
        *(this + 14) = v15 + 1;
        if (v15 >= v16)
        {
          return 0;
        }

        v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v52);
        if (!sub_1000B2078(v13, this, v18, v19) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
        v20 = *(this + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(this + 14) = v22;
        }

        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          break;
        }

        v24 = *v23;
        if (v24 != 10)
        {
          if (v24 != 18)
          {
            goto LABEL_1;
          }

          goto LABEL_54;
        }

        *(this + 1) = v23 + 1;
      }
    }

LABEL_33:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000B2DA0(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  if (*(v5 + 72) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 64) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 72));
  }

  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B2EA4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 2) + 8 * v5);
      *a2 = 10;
      v7 = v6[6];
      if (v7 > 0x7F)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v7;
        v8 = (a2 + 2);
      }

      a2 = sub_1000B229C(v6, v8, a3);
      ++v5;
    }

    while (v5 < *(this + 6));
  }

  if (*(this + 12) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(this + 5) + 8 * v9);
      *a2 = 18;
      v11 = v10[6];
      if (v11 > 0x7F)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v11;
        v12 = (a2 + 2);
      }

      a2 = sub_1000B229C(v10, v12, a3);
      ++v9;
    }

    while (v9 < *(this + 12));
  }

  if (*(this + 18) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(this + 8) + 8 * v13);
      *a2 = 26;
      v15 = v14[6];
      if (v15 > 0x7F)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v15;
        v16 = (a2 + 2);
      }

      a2 = sub_1000B229C(v14, v16, a3);
      ++v13;
    }

    while (v13 < *(this + 18));
  }

  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, a2, a3);
}

uint64_t sub_1000B3030(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1000B2384(*(*(a1 + 16) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 += v6 + v7;
      ++v4;
    }

    while (v4 < *(a1 + 24));
  }

  v8 = *(a1 + 48);
  v9 = v8 + v3;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_1000B2384(*(*(a1 + 40) + 8 * v10), a2);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      }

      else
      {
        v13 = 1;
      }

      v9 += v12 + v13;
      ++v10;
    }

    while (v10 < *(a1 + 48));
  }

  v14 = *(a1 + 72);
  v15 = (v14 + v9);
  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = sub_1000B2384(*(*(a1 + 64) + 8 * v16), a2);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
      }

      else
      {
        v19 = 1;
      }

      v15 = (v18 + v15 + v19);
      ++v16;
    }

    while (v16 < *(a1 + 72));
  }

  v20 = *(a1 + 8);
  if (v20 && *v20 != v20[1])
  {
    v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v15;
  }

  *(a1 + 88) = v15;
  return v15;
}

uint64_t sub_1000B3178(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B26F4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B324C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B3264(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_1000CCF2C();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000B1E60(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000B338C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B33A4(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B3438()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED750;
}

void sub_1000B34CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000B34E0(void *a1)
{
  *a1 = off_10098F388;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1000B3550(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }

LABEL_10:
        v7 = *(a2 + 24);
        *(a1 + 36) |= 4u;
        v8 = *(a1 + 24);
        if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v8, v7);
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 20);
    *(a1 + 36) |= 2u;
    *(a1 + 20) = v6;
    if ((*(a2 + 36) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000B3674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B368C(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_10098F388;
  v2 = (a1 + 8);
  sub_1000880E8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000B36F0(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1000B368C(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B3794(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (v1)
  {
    *(a1 + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(a1 + 24);
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
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000B37EC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_16;
        }

        v15 = *(a1 + 36);
LABEL_33:
        *(a1 + 36) = v15 | 4;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 >= v10 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v12;
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 36) |= 1u;
      if (v13 < v10 && *v13 == 16)
      {
        v14 = v13 + 1;
        *(this + 1) = v14;
LABEL_25:
        if (v14 >= v10 || (v16 = *v14, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v16;
          v17 = v14 + 1;
          *(this + 1) = v17;
        }

        v15 = *(a1 + 36) | 2;
        *(a1 + 36) = v15;
        if (v17 < v10 && *v17 == 26)
        {
          *(this + 1) = v17 + 1;
          goto LABEL_33;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v14 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_25;
    }

LABEL_16:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000B3A00(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v7 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_5:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B3AB0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 36))
  {
    v6 = *(this + 4);
    *a2 = 8;
    v7 = a2 + 1;
    if (v6 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v7, a3);
    }

    else
    {
      *(v4 + 1) = v6;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 36) & 2) != 0)
  {
    v8 = *(this + 5);
    *v4 = 16;
    if (v8 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v8;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 36) & 4) != 0)
  {
    v9 = *(this + 3);
    *v4 = 26;
    v10 = *(v9 + 23);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = *(v9 + 8);
    }

    if (v10 > 0x7F)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v10;
      v11 = v4 + 2;
    }

    v12 = *(v9 + 23);
    if (v12 >= 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = *v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v9 + 23);
    }

    else
    {
      v14 = *(v9 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v13, v14, v11, a4);
  }

  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (!v17 || *v15 == v15[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, v4, a3);
}

uint64_t sub_1000B3BDC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (*(a1 + 36))
  {
    v5 = *(a1 + 16);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 20);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 24);
    v9 = *(v8 + 23);
    v10 = v9;
    v11 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      v9 = *(v8 + 23);
      v11 = *(v8 + 8);
      v10 = *(v8 + 23);
    }

    else
    {
      v13 = 1;
    }

    if (v10 < 0)
    {
      v9 = v11;
    }

    v4 = (v4 + v13 + v9 + 1);
  }

LABEL_24:
  v14 = *(a1 + 8);
  if (v14 && *v14 != v14[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_1000B3CEC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B3550(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B3DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B3DD8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B3E6C()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED760;
}

void sub_1000B3F00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B3F14(uint64_t a1)
{
  *a1 = off_10098F438;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 96) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return a1;
}

uint64_t sub_1000B3F9C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  sub_1000B53B8((a1 + 72), a2 + 72);
  LOBYTE(v4) = *(a2 + 100);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 100))
  {
    v5 = *(a2 + 16);
    if (v5 > 0xD || ((1 << v5) & 0x3C3F) == 0)
    {
      sub_10049DF04();
    }

    *(a1 + 100) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 100);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 20);
    *(a1 + 100) |= 2u;
    *(a1 + 20) = v7;
    v4 = *(a2 + 100);
  }

  if ((v4 & 4) != 0)
  {
    v10 = *(a2 + 24);
    *(a1 + 100) |= 4u;
    v11 = *(a1 + 24);
    if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v11, v10);
    v4 = *(a2 + 100);
    if ((v4 & 8) == 0)
    {
LABEL_14:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(a2 + 32);
  *(a1 + 100) |= 8u;
  v13 = *(a1 + 32);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_26:
  *(a1 + 100) |= 0x10u;
  v14 = *(a1 + 40);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 40);
  if (!v15)
  {
    v15 = *(qword_1009F9A50 + 40);
  }

  sub_1000B26F4(v14, v15);
  v4 = *(a2 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_16:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_32:
    v17 = *(a2 + 56);
    *(a1 + 100) |= 0x40u;
    *(a1 + 56) = v17;
    if ((*(a2 + 100) & 0x80) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_18;
  }

LABEL_31:
  v16 = *(a2 + 48);
  *(a1 + 100) |= 0x20u;
  *(a1 + 48) = v16;
  v4 = *(a2 + 100);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_32;
  }

LABEL_17:
  if ((v4 & 0x80) != 0)
  {
LABEL_18:
    v8 = *(a2 + 64);
    *(a1 + 100) |= 0x80u;
    *(a1 + 64) = v8;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000B4228(uint64_t *a1)
{
  *a1 = off_10098F438;
  v2 = a1 + 9;
  sub_1000B4294(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000B4294(void *result)
{
  v1 = result[3];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[4];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  if (qword_1009F9A50 != result)
  {
    result = result[5];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_1000B4388(uint64_t *a1)
{
  sub_1000B4228(a1);

  operator delete();
}

uint64_t sub_1000B442C(uint64_t a1)
{
  v2 = *(a1 + 100);
  if (v2)
  {
    *(a1 + 16) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(a1 + 24);
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

    if ((*(a1 + 100) & 8) != 0)
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

    if ((*(a1 + 100) & 0x10) != 0)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        sub_1000B28CC(v5);
      }
    }

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  result = sub_100077B98(a1 + 72);
  v8 = *(a1 + 8);
  v7 = (a1 + 8);
  *(v7 + 23) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  return result;
}

uint64_t sub_1000B4514(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v8 != 3)
          {
            if (v8 != 4 || v9 != 2)
            {
              goto LABEL_37;
            }

            goto LABEL_63;
          }

          if (v9 != 2)
          {
            goto LABEL_37;
          }

          v14 = *(a1 + 100);
LABEL_57:
          *(a1 + 100) = v14 | 4;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v21 = *(this + 1);
          if (v21 < *(this + 2) && *v21 == 34)
          {
            *(this + 1) = v21 + 1;
LABEL_63:
            *(a1 + 100) |= 8u;
            if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            if (v22 < *(this + 2) && *v22 == 42)
            {
              *(this + 1) = v22 + 1;
LABEL_69:
              *(a1 + 100) |= 0x10u;
              v23 = *(a1 + 40);
              if (!v23)
              {
                operator new();
              }

              v51[0] = 0;
              v24 = *(this + 1);
              if (v24 >= *(this + 2) || *v24 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51))
                {
                  return 0;
                }
              }

              else
              {
                v51[0] = *v24;
                *(this + 1) = v24 + 1;
              }

              v25 = *(this + 14);
              v26 = *(this + 15);
              *(this + 14) = v25 + 1;
              if (v25 >= v26)
              {
                return 0;
              }

              v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51[0]);
              if (!sub_1000B2930(v23, this, v28, v29) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
              v30 = *(this + 14);
              v31 = __OFSUB__(v30, 1);
              v32 = v30 - 1;
              if (v32 < 0 == v31)
              {
                *(this + 14) = v32;
              }

              v33 = *(this + 1);
              if (v33 < *(this + 2) && *v33 == 49)
              {
                *(this + 1) = v33 + 1;
LABEL_83:
                *v51 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v51) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 48) = *v51;
                *(a1 + 100) |= 0x20u;
                v34 = *(this + 1);
                if (v34 < *(this + 2) && *v34 == 57)
                {
                  *(this + 1) = v34 + 1;
LABEL_87:
                  *v51 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v51) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 56) = *v51;
                  *(a1 + 100) |= 0x40u;
                  v35 = *(this + 1);
                  v16 = *(this + 2);
                  if (v35 < v16 && *v35 == 64)
                  {
                    v15 = v35 + 1;
                    *(this + 1) = v15;
                    goto LABEL_91;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v8 != 1)
          {
            if (v8 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_49;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v51[0] = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51);
            if (!result)
            {
              return result;
            }

            v13 = v51[0];
          }

          else
          {
            *(this + 1) = v12 + 1;
          }

          if (v13 <= 0xD && ((1 << v13) & 0x3C3F) != 0)
          {
            *(a1 + 100) |= 1u;
            *(a1 + 16) = v13;
          }

          else
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v13);
          }

          v18 = *(this + 1);
          v10 = *(this + 2);
          if (v18 < v10 && *v18 == 16)
          {
            v11 = v18 + 1;
            *(this + 1) = v11;
LABEL_49:
            if (v11 >= v10 || (v19 = *v11, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
              if (!result)
              {
                return result;
              }

              v20 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 20) = v19;
              v20 = v11 + 1;
              *(this + 1) = v20;
            }

            v14 = *(a1 + 100) | 2;
            *(a1 + 100) = v14;
            if (v20 < v10 && *v20 == 26)
            {
              *(this + 1) = v20 + 1;
              goto LABEL_57;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v8 == 7)
      {
        if (v9 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_87;
      }

      if (v8 == 8)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v15 = *(this + 1);
        v16 = *(this + 2);
LABEL_91:
        if (v15 >= v16 || (v36 = *v15, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v37 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v36;
          v37 = (v15 + 1);
          *(this + 1) = v37;
        }

        *(a1 + 100) |= 0x80u;
        if (v16 - v37 >= 2 && *v37 == 162 && v37[1] == 6)
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v8 != 100 || v9 != 2)
        {
          goto LABEL_37;
        }

        while (1)
        {
          v38 = *(a1 + 84);
          v39 = *(a1 + 80);
          if (v39 >= v38)
          {
            if (v38 == *(a1 + 88))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v38 + 1);
              v38 = *(a1 + 84);
            }

            *(a1 + 84) = v38 + 1;
            sub_1000CCF90();
          }

          v40 = *(a1 + 72);
          *(a1 + 80) = v39 + 1;
          v41 = *(v40 + 8 * v39);
          v51[0] = 0;
          v42 = *(this + 1);
          if (v42 >= *(this + 2) || *v42 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51))
            {
              return 0;
            }
          }

          else
          {
            v51[0] = *v42;
            *(this + 1) = v42 + 1;
          }

          v43 = *(this + 14);
          v44 = *(this + 15);
          *(this + 14) = v43 + 1;
          if (v43 >= v44)
          {
            return 0;
          }

          v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51[0]);
          if (!sub_1000B37EC(v41, this, v46, v47) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
          v48 = *(this + 14);
          v31 = __OFSUB__(v48, 1);
          v49 = v48 - 1;
          if (v49 < 0 == v31)
          {
            *(this + 14) = v49;
          }

          v37 = *(this + 1);
          v50 = *(this + 2);
          if (v50 - v37 <= 1 || *v37 != 162 || v37[1] != 6)
          {
            break;
          }

LABEL_101:
          *(this + 1) = v37 + 2;
        }

        if (v37 == v50 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 5)
    {
      if (v9 != 2)
      {
        goto LABEL_37;
      }

      goto LABEL_69;
    }

    if (v8 == 6 && v9 == 1)
    {
      goto LABEL_83;
    }

LABEL_37:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000B4BB4(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 100);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 100);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  v13 = *(v5 + 40);
  if (!v13)
  {
    v13 = *(qword_1009F9A50 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v13, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  if ((*(v5 + 100) & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 64), a2, a4);
  }

LABEL_10:
  if (*(v5 + 80) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x64, *(*(v5 + 72) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 80));
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B4D40(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 100))
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
  if ((*(this + 100) & 2) != 0)
  {
    v9 = *(this + 5);
    *v4 = 16;
    if (v9 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v4 = (v4 + 2);
    }
  }

  v10 = *(this + 25);
  if ((v10 & 4) != 0)
  {
    v20 = *(this + 3);
    *v4 = 26;
    v21 = *(v20 + 23);
    if ((v21 & 0x8000000000000000) != 0)
    {
      v21 = *(v20 + 8);
    }

    if (v21 > 0x7F)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v21;
      v22 = v4 + 2;
    }

    v23 = *(v20 + 23);
    if (v23 >= 0)
    {
      v24 = v20;
    }

    else
    {
      v24 = *v20;
    }

    if (v23 >= 0)
    {
      v25 = *(v20 + 23);
    }

    else
    {
      v25 = *(v20 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v24, v25, v22, a4);
    v10 = *(this + 25);
    if ((v10 & 8) == 0)
    {
LABEL_14:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_55;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_14;
  }

  v26 = *(this + 4);
  *v4 = 34;
  v27 = *(v26 + 23);
  if ((v27 & 0x8000000000000000) != 0)
  {
    v27 = *(v26 + 8);
  }

  if (v27 > 0x7F)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v27;
    v28 = v4 + 2;
  }

  v29 = *(v26 + 23);
  if (v29 >= 0)
  {
    v30 = v26;
  }

  else
  {
    v30 = *v26;
  }

  if (v29 >= 0)
  {
    v31 = *(v26 + 23);
  }

  else
  {
    v31 = *(v26 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v30, v31, v28, a4);
  v10 = *(this + 25);
  if ((v10 & 0x10) == 0)
  {
LABEL_15:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_55:
  v32 = *(this + 5);
  if (!v32)
  {
    v32 = *(qword_1009F9A50 + 40);
  }

  *v4 = 42;
  v33 = v32[22];
  if (v33 > 0x7F)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v33;
    v34 = (v4 + 2);
  }

  v4 = sub_1000B2EA4(v32, v34, a3);
  v10 = *(this + 25);
  if ((v10 & 0x20) == 0)
  {
LABEL_16:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  v35 = *(this + 6);
  *v4 = 49;
  *(v4 + 1) = v35;
  v4 = (v4 + 9);
  v10 = *(this + 25);
  if ((v10 & 0x40) == 0)
  {
LABEL_17:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_62:
  v36 = *(this + 7);
  *v4 = 57;
  *(v4 + 1) = v36;
  v4 = (v4 + 9);
  if ((*(this + 25) & 0x80) != 0)
  {
LABEL_18:
    v11 = *(this + 8);
    *v4 = 64;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v4 + 1, a3);
  }

LABEL_19:
  if (*(this + 20) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(this + 9) + 8 * v12);
      *v4 = 1698;
      v14 = v13[8];
      if (v14 > 0x7F)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v4 + 2, a3);
      }

      else
      {
        *(v4 + 2) = v14;
        v15 = (v4 + 3);
      }

      v4 = sub_1000B3AB0(v13, v15, a3, a4);
      ++v12;
    }

    while (v12 < *(this + 20));
  }

  v18 = *(this + 1);
  v17 = (this + 8);
  v16 = v18;
  if (!v18 || *v16 == v16[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, v4, a3);
}

uint64_t sub_1000B507C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 100);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_52;
  }

  if (*(a1 + 100))
  {
    v6 = *(a1 + 16);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 100);
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 100) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v7 = *(a1 + 20);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_17:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_19;
    }

LABEL_30:
    v15 = *(a1 + 32);
    v16 = *(v15 + 23);
    v17 = v16;
    v18 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v19 = *(v15 + 23);
    }

    else
    {
      v19 = v18;
    }

    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
      v16 = *(v15 + 23);
      v18 = *(v15 + 8);
      v3 = *(a1 + 100);
      v17 = *(v15 + 23);
    }

    else
    {
      v20 = 1;
    }

    if (v17 < 0)
    {
      v16 = v18;
    }

    v4 += v20 + v16 + 1;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  v9 = *(a1 + 24);
  v10 = *(v9 + 23);
  v11 = v10;
  v12 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    v10 = *(v9 + 23);
    v12 = *(v9 + 8);
    v3 = *(a1 + 100);
    v11 = *(v9 + 23);
  }

  else
  {
    v14 = 1;
  }

  if (v11 < 0)
  {
    v10 = v12;
  }

  v4 += v14 + v10 + 1;
  if ((v3 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  if ((v3 & 0x10) != 0)
  {
LABEL_39:
    v21 = *(a1 + 40);
    if (!v21)
    {
      v21 = *(qword_1009F9A50 + 40);
    }

    v22 = sub_1000B3030(v21, a2);
    v23 = v22;
    if (v22 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
    }

    else
    {
      v24 = 1;
    }

    v4 += v23 + v24 + 1;
    v3 = *(a1 + 100);
  }

LABEL_45:
  v25 = v4 + 9;
  if ((v3 & 0x20) == 0)
  {
    v25 = v4;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = v25 + 9;
  }

  else
  {
    v5 = v25;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 64), a2) + 1;
  }

LABEL_52:
  v26 = *(a1 + 80);
  v27 = (v5 + 2 * v26);
  if (v26 >= 1)
  {
    v28 = 0;
    do
    {
      v29 = sub_1000B3BDC(*(*(a1 + 72) + 8 * v28), a2);
      v30 = v29;
      if (v29 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
      }

      else
      {
        v31 = 1;
      }

      v27 = (v30 + v27 + v31);
      ++v28;
    }

    while (v28 < *(a1 + 80));
  }

  v32 = *(a1 + 8);
  if (v32 && *v32 != v32[1])
  {
    v27 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v27;
  }

  *(a1 + 96) = v27;
  return v27;
}

uint64_t sub_1000B52CC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B3F9C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B53A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B53B8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_1000CCF90();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000B3550(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000B54E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B54F8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B558C()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED770;
}

void sub_1000B5620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B5634(uint64_t a1)
{
  *a1 = off_10098F4E8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_1000B56B4(uint64_t *a1)
{
  *a1 = off_10098F4E8;
  v2 = a1 + 8;
  sub_1000B572C(a1);
  sub_100077C08(v2);
  sub_100077C08(a1 + 5);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000B572C(void *result)
{
  v1 = result[4];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  if (qword_1009F9A58 != result)
  {
    result = result[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1000B57E4(uint64_t *a1)
{
  sub_1000B56B4(a1);

  operator delete();
}

uint64_t sub_1000B5888(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 > 5)
        {
          if (v8 == 6)
          {
            if (v9 != 2)
            {
              goto LABEL_32;
            }

            while (2)
            {
              v35 = *(a1 + 52);
              v36 = *(a1 + 48);
              if (v36 >= v35)
              {
                if (v35 == *(a1 + 56))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v35 + 1);
                  v35 = *(a1 + 52);
                }

                *(a1 + 52) = v35 + 1;
                sub_1000CCFF4();
              }

              v37 = *(a1 + 40);
              *(a1 + 48) = v36 + 1;
              v38 = *(v37 + 8 * v36);
              v61 = 0;
              v39 = *(this + 1);
              if (v39 >= *(this + 2) || *v39 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61))
                {
                  return 0;
                }
              }

              else
              {
                v61 = *v39;
                *(this + 1) = v39 + 1;
              }

              v40 = *(this + 14);
              v41 = *(this + 15);
              *(this + 14) = v40 + 1;
              if (v40 >= v41)
              {
                return 0;
              }

              v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v61);
              if (!sub_1000B4514(v38, this, v43, v44) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v42);
              v45 = *(this + 14);
              v24 = __OFSUB__(v45, 1);
              v46 = v45 - 1;
              if (v46 < 0 == v24)
              {
                *(this + 14) = v46;
              }

              v34 = *(this + 1);
              v47 = *(this + 2);
              if (v34 < v47 && *v34 == 50)
              {
LABEL_79:
                *(this + 1) = v34 + 1;
                continue;
              }

              break;
            }

            if (v47 - v34 >= 2 && *v34 == 162 && v34[1] == 6)
            {
              goto LABEL_99;
            }
          }

          else
          {
            if (v8 != 100 || v9 != 2)
            {
              goto LABEL_32;
            }

            while (2)
            {
              v48 = *(a1 + 76);
              v49 = *(a1 + 72);
              if (v49 >= v48)
              {
                if (v48 == *(a1 + 80))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 64), v48 + 1);
                  v48 = *(a1 + 76);
                }

                *(a1 + 76) = v48 + 1;
                sub_1000CCF90();
              }

              v50 = *(a1 + 64);
              *(a1 + 72) = v49 + 1;
              v51 = *(v50 + 8 * v49);
              v61 = 0;
              v52 = *(this + 1);
              if (v52 >= *(this + 2) || *v52 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61))
                {
                  return 0;
                }
              }

              else
              {
                v61 = *v52;
                *(this + 1) = v52 + 1;
              }

              v53 = *(this + 14);
              v54 = *(this + 15);
              *(this + 14) = v53 + 1;
              if (v53 >= v54)
              {
                return 0;
              }

              v55 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v61);
              if (!sub_1000B37EC(v51, this, v56, v57) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v55);
              v58 = *(this + 14);
              v24 = __OFSUB__(v58, 1);
              v59 = v58 - 1;
              if (v59 < 0 == v24)
              {
                *(this + 14) = v59;
              }

              v34 = *(this + 1);
              v60 = *(this + 2);
              if (v60 - v34 > 1 && *v34 == 162 && v34[1] == 6)
              {
LABEL_99:
                *(this + 1) = v34 + 2;
                continue;
              }

              break;
            }

            if (v34 == v60 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        else if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v15 = *(this + 1);
          v11 = *(this + 2);
LABEL_64:
          if (v15 >= v11 || (v32 = *v15, v32 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
            if (!result)
            {
              return result;
            }

            v33 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 88) = v32;
            v33 = v15 + 1;
            *(this + 1) = v33;
          }

          v10 = *(a1 + 96) | 8;
          *(a1 + 96) = v10;
          if (v33 < v11 && *v33 == 42)
          {
            *(this + 1) = v33 + 1;
            goto LABEL_72;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 2)
          {
            goto LABEL_32;
          }

          v10 = *(a1 + 96);
LABEL_72:
          *(a1 + 96) = v10 | 0x10;
          if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          if (v34 < *(this + 2) && *v34 == 50)
          {
            goto LABEL_79;
          }
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_32;
      }

      *(a1 + 96) |= 1u;
      v13 = *(a1 + 16);
      if (!v13)
      {
        operator new();
      }

      v61 = 0;
      v14 = *(this + 1);
      if (v14 >= *(this + 2) || *v14 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61))
        {
          return 0;
        }
      }

      else
      {
        v61 = *v14;
        *(this + 1) = v14 + 1;
      }

      v18 = *(this + 14);
      v19 = *(this + 15);
      *(this + 14) = v18 + 1;
      if (v18 >= v19)
      {
        return 0;
      }

      v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v61);
      if (!sub_10009F5D8(v13, this, v21, v22) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v20);
      v23 = *(this + 14);
      v24 = __OFSUB__(v23, 1);
      v25 = v23 - 1;
      if (v25 < 0 == v24)
      {
        *(this + 14) = v25;
      }

      v26 = *(this + 1);
      v16 = *(this + 2);
      if (v26 < v16 && *v26 == 16)
      {
        v17 = v26 + 1;
        *(this + 1) = v17;
LABEL_45:
        v61 = 0;
        if (v17 >= v16 || (v27 = *v17, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61);
          if (!result)
          {
            return result;
          }

          v27 = v61;
        }

        else
        {
          *(this + 1) = v17 + 1;
        }

        if (v27 <= 0x1B && ((1 << v27) & 0xDDB54EF) != 0)
        {
          *(a1 + 96) |= 2u;
          *(a1 + 24) = v27;
        }

        else
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v27);
        }

        v29 = *(this + 1);
        v11 = *(this + 2);
        if (v29 < v11 && *v29 == 24)
        {
          v12 = v29 + 1;
          *(this + 1) = v12;
LABEL_56:
          if (v12 >= v11 || (v30 = *v12, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
            if (!result)
            {
              return result;
            }

            v31 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 28) = v30;
            v31 = v12 + 1;
            *(this + 1) = v31;
          }

          *(a1 + 96) |= 4u;
          if (v31 < v11 && *v31 == 32)
          {
            v15 = v31 + 1;
            *(this + 1) = v15;
            goto LABEL_64;
          }
        }
      }
    }

    if (v8 == 2)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_32;
      }

      v17 = *(this + 1);
      v16 = *(this + 2);
      goto LABEL_45;
    }

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      goto LABEL_56;
    }

LABEL_32:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000B5F4C(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    v13 = *(this + 16);
    if (!v13)
    {
      v13 = *(qword_1009F9A58 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v13, a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 88), a2, a4);
  if ((*(v5 + 96) & 0x10) != 0)
  {
LABEL_6:
    v7 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_7:
  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(*(v5 + 40) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x64, *(*(v5 + 64) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B60B8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 24);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9A58 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = v7[7];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_10009F838(v7, v10, a3);
    v6 = *(this + 24);
  }

  if ((v6 & 2) != 0)
  {
    v11 = *(this + 6);
    *v4 = 16;
    v12 = v4 + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
    }

    else
    {
      if (v11 <= 0x7F)
      {
        *(v4 + 1) = v11;
        v4 = (v4 + 2);
        goto LABEL_15;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
    }

    v4 = v13;
  }

LABEL_15:
  if ((*(this + 96) & 4) != 0)
  {
    v14 = *(this + 7);
    *v4 = 24;
    if (v14 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v14;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 96) & 8) != 0)
  {
    v15 = *(this + 22);
    *v4 = 32;
    if (v15 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v15;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 96) & 0x10) != 0)
  {
    v16 = *(this + 4);
    *v4 = 42;
    v17 = *(v16 + 23);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v17 = *(v16 + 8);
    }

    if (v17 > 0x7F)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v17;
      v18 = v4 + 2;
    }

    v19 = *(v16 + 23);
    if (v19 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = *v16;
    }

    if (v19 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = *(v16 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v20, v21, v18, a4);
  }

  if (*(this + 12) >= 1)
  {
    v22 = 0;
    do
    {
      v23 = *(*(this + 5) + 8 * v22);
      *v4 = 50;
      v24 = v23[24];
      if (v24 > 0x7F)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v24;
        v25 = (v4 + 2);
      }

      v4 = sub_1000B4D40(v23, v25, a3, a4);
      ++v22;
    }

    while (v22 < *(this + 12));
  }

  if (*(this + 18) >= 1)
  {
    v26 = 0;
    do
    {
      v27 = *(*(this + 8) + 8 * v26);
      *v4 = 1698;
      v28 = v27[8];
      if (v28 > 0x7F)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v4 + 2, a3);
      }

      else
      {
        *(v4 + 2) = v28;
        v29 = (v4 + 3);
      }

      v4 = sub_1000B3AB0(v27, v29, a3, a4);
      ++v26;
    }

    while (v26 < *(this + 18));
  }

  v32 = *(this + 1);
  v31 = (this + 8);
  v30 = v32;
  if (!v32 || *v30 == v30[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v31, v4, a3);
}

uint64_t sub_1000B6344(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 96);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 96) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_1009F9A58 + 16);
  }

  v6 = sub_10009F954(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = v7 + v8 + 1;
  v3 = *(a1 + 96);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 24);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 96);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    v13 = *(a1 + 88);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(a1 + 96);
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v11 = *(a1 + 28);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 96);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_39;
  }

LABEL_30:
  v15 = *(a1 + 32);
  v16 = *(v15 + 23);
  v17 = v16;
  v18 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    v16 = *(v15 + 23);
    v18 = *(v15 + 8);
    v17 = *(v15 + 23);
  }

  else
  {
    v20 = 1;
  }

  if (v17 < 0)
  {
    v16 = v18;
  }

  v4 += v20 + v16 + 1;
LABEL_39:
  v21 = *(a1 + 48);
  v22 = v21 + v4;
  if (v21 >= 1)
  {
    v23 = 0;
    do
    {
      v24 = sub_1000B507C(*(*(a1 + 40) + 8 * v23), a2);
      v25 = v24;
      if (v24 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
      }

      else
      {
        v26 = 1;
      }

      v22 += v25 + v26;
      ++v23;
    }

    while (v23 < *(a1 + 48));
  }

  v27 = *(a1 + 72);
  v28 = (v22 + 2 * v27);
  if (v27 >= 1)
  {
    v29 = 0;
    do
    {
      v30 = sub_1000B3BDC(*(*(a1 + 64) + 8 * v29), a2);
      v31 = v30;
      if (v30 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
      }

      else
      {
        v32 = 1;
      }

      v28 = (v31 + v28 + v32);
      ++v29;
    }

    while (v29 < *(a1 + 72));
  }

  v33 = *(a1 + 8);
  if (v33 && *v33 != v33[1])
  {
    v28 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v28;
  }

  *(a1 + 92) = v28;
  return v28;
}

uint64_t sub_1000B6580(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009C6AC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B6654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B666C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_1000CCFF4();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000B3F9C(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000B6794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B67AC(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B6840()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED780;
}

void sub_1000B68D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B68E8(uint64_t a1)
{
  *a1 = off_10098F598;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 296) = 0;
  *(a1 + 120) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 300) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 280) = 0u;
  return a1;
}

void sub_1000B69A8(void *a1)
{
  *a1 = off_10098F598;
  v2 = (a1 + 1);
  sub_1000B6A08(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000B6A08(void *result)
{
  v1 = result[4];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  if (qword_1009F9A60 != result)
  {
    result = result[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1000B6AC0(void *a1)
{
  sub_1000B69A8(a1);

  operator delete();
}

uint64_t sub_1000B6B64(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v8 != 2)
        {
          goto LABEL_84;
        }

        *(a1 + 300) |= 1u;
        v9 = *(a1 + 16);
        if (!v9)
        {
          operator new();
        }

        v88[0] = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v88))
          {
            return 0;
          }
        }

        else
        {
          v88[0] = *v10;
          *(this + 1) = v10 + 1;
        }

        v28 = *(this + 14);
        v29 = *(this + 15);
        *(this + 14) = v28 + 1;
        if (v28 >= v29)
        {
          return 0;
        }

        v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v88[0]);
        if (!sub_10009F5D8(v9, this, v31, v32) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
        v33 = *(this + 14);
        v34 = __OFSUB__(v33, 1);
        v35 = v33 - 1;
        if (v35 < 0 == v34)
        {
          *(this + 14) = v35;
        }

        v36 = *(this + 1);
        v21 = *(this + 2);
        if (v36 >= v21 || *v36 != 16)
        {
          continue;
        }

        v22 = v36 + 1;
        *(this + 1) = v22;
        goto LABEL_96;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v22 = *(this + 1);
        v21 = *(this + 2);
LABEL_96:
        v88[0] = 0;
        if (v22 >= v21 || (v37 = *v22, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v88);
          if (!result)
          {
            return result;
          }

          v37 = v88[0];
        }

        else
        {
          *(this + 1) = v22 + 1;
        }

        if (v37 > 0x1B || ((1 << v37) & 0xDDB54EF) == 0)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v37);
        }

        else
        {
          if (v37 > 0x1B || ((1 << v37) & 0xDDB54EF) == 0)
          {
            sub_10049DB10();
          }

          *(a1 + 300) |= 2u;
          *(a1 + 24) = v37;
        }

        v40 = *(this + 1);
        v18 = *(this + 2);
        if (v40 >= v18 || *v40 != 24)
        {
          continue;
        }

        v19 = v40 + 1;
        *(this + 1) = v19;
LABEL_111:
        if (v19 >= v18 || (v41 = *v19, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v42 = *(this + 1);
          v18 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v41;
          v42 = v19 + 1;
          *(this + 1) = v42;
        }

        *(a1 + 300) |= 4u;
        if (v42 >= v18 || *v42 != 32)
        {
          continue;
        }

        v20 = v42 + 1;
        *(this + 1) = v20;
LABEL_119:
        if (v20 >= v18 || (v43 = *v20, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 120));
          if (!result)
          {
            return result;
          }

          v44 = *(this + 1);
          v18 = *(this + 2);
        }

        else
        {
          *(a1 + 120) = v43;
          v44 = v20 + 1;
          *(this + 1) = v44;
        }

        v17 = *(a1 + 300) | 8;
        *(a1 + 300) = v17;
        if (v44 >= v18 || *v44 != 42)
        {
          continue;
        }

        *(this + 1) = v44 + 1;
LABEL_127:
        *(a1 + 300) = v17 | 0x10;
        if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v45 = *(this + 1);
        if (v45 >= *(this + 2) || *v45 != 49)
        {
          continue;
        }

        *(this + 1) = v45 + 1;
LABEL_133:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v88;
        *(a1 + 300) |= 0x20u;
        v46 = *(this + 1);
        if (v46 >= *(this + 2) || *v46 != 57)
        {
          continue;
        }

        *(this + 1) = v46 + 1;
LABEL_137:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v88;
        *(a1 + 300) |= 0x40u;
        v47 = *(this + 1);
        if (v47 >= *(this + 2) || *v47 != 65)
        {
          continue;
        }

        *(this + 1) = v47 + 1;
LABEL_141:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v88;
        *(a1 + 300) |= 0x80u;
        v48 = *(this + 1);
        if (v48 >= *(this + 2) || *v48 != 73)
        {
          continue;
        }

        *(this + 1) = v48 + 1;
LABEL_145:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v88;
        *(a1 + 300) |= 0x100u;
        v49 = *(this + 1);
        if (v49 >= *(this + 2) || *v49 != 81)
        {
          continue;
        }

        *(this + 1) = v49 + 1;
LABEL_149:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v88;
        *(a1 + 300) |= 0x200u;
        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 != 89)
        {
          continue;
        }

        *(this + 1) = v50 + 1;
LABEL_153:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v88;
        *(a1 + 300) |= 0x400u;
        v51 = *(this + 1);
        if (v51 >= *(this + 2) || *v51 != 97)
        {
          continue;
        }

        *(this + 1) = v51 + 1;
LABEL_157:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v88;
        *(a1 + 300) |= 0x800u;
        v52 = *(this + 1);
        if (v52 >= *(this + 2) || *v52 != 105)
        {
          continue;
        }

        *(this + 1) = v52 + 1;
LABEL_161:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v88;
        *(a1 + 300) |= 0x1000u;
        v53 = *(this + 1);
        if (v53 >= *(this + 2) || *v53 != 113)
        {
          continue;
        }

        *(this + 1) = v53 + 1;
LABEL_165:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v88;
        *(a1 + 300) |= 0x2000u;
        v54 = *(this + 1);
        if (v54 >= *(this + 2) || *v54 != 121)
        {
          continue;
        }

        *(this + 1) = v54 + 1;
LABEL_169:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 112) = *v88;
        *(a1 + 300) |= 0x4000u;
        v55 = *(this + 1);
        if (*(this + 4) - v55 < 2 || *v55 != 129 || v55[1] != 1)
        {
          continue;
        }

        *(this + 1) = v55 + 2;
LABEL_174:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 128) = *v88;
        *(a1 + 300) |= 0x8000u;
        v56 = *(this + 1);
        if (*(this + 4) - v56 < 2 || *v56 != 137 || v56[1] != 1)
        {
          continue;
        }

        *(this + 1) = v56 + 2;
LABEL_179:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 136) = *v88;
        *(a1 + 300) |= 0x10000u;
        v57 = *(this + 1);
        if (*(this + 4) - v57 < 2 || *v57 != 145 || v57[1] != 1)
        {
          continue;
        }

        *(this + 1) = v57 + 2;
LABEL_184:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 144) = *v88;
        *(a1 + 300) |= 0x20000u;
        v58 = *(this + 1);
        if (*(this + 4) - v58 < 2 || *v58 != 153 || v58[1] != 1)
        {
          continue;
        }

        *(this + 1) = v58 + 2;
LABEL_189:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 152) = *v88;
        *(a1 + 300) |= 0x40000u;
        v59 = *(this + 1);
        if (*(this + 4) - v59 < 2 || *v59 != 161 || v59[1] != 1)
        {
          continue;
        }

        *(this + 1) = v59 + 2;
LABEL_194:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 160) = *v88;
        *(a1 + 300) |= 0x80000u;
        v60 = *(this + 1);
        if (*(this + 4) - v60 < 2 || *v60 != 169 || v60[1] != 1)
        {
          continue;
        }

        *(this + 1) = v60 + 2;
LABEL_199:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 168) = *v88;
        *(a1 + 300) |= 0x100000u;
        v61 = *(this + 1);
        if (*(this + 4) - v61 < 2 || *v61 != 177 || v61[1] != 1)
        {
          continue;
        }

        *(this + 1) = v61 + 2;
LABEL_204:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 176) = *v88;
        *(a1 + 300) |= 0x200000u;
        v62 = *(this + 1);
        if (*(this + 4) - v62 < 2 || *v62 != 185 || v62[1] != 1)
        {
          continue;
        }

        *(this + 1) = v62 + 2;
LABEL_209:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 184) = *v88;
        *(a1 + 300) |= 0x400000u;
        v63 = *(this + 1);
        if (*(this + 4) - v63 < 2 || *v63 != 193 || v63[1] != 1)
        {
          continue;
        }

        *(this + 1) = v63 + 2;
LABEL_214:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 192) = *v88;
        *(a1 + 300) |= 0x800000u;
        v64 = *(this + 1);
        if (*(this + 4) - v64 < 2 || *v64 != 201 || v64[1] != 1)
        {
          continue;
        }

        *(this + 1) = v64 + 2;
LABEL_219:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 200) = *v88;
        *(a1 + 300) |= 0x1000000u;
        v65 = *(this + 1);
        if (*(this + 4) - v65 < 2 || *v65 != 209 || v65[1] != 1)
        {
          continue;
        }

        *(this + 1) = v65 + 2;
LABEL_224:
        *v88 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 208) = *v88;
        *(a1 + 300) |= 0x2000000u;
        v66 = *(this + 1);
        if (*(this + 4) - v66 < 2 || *v66 != 217 || v66[1] != 1)
        {
          continue;
        }

        *(this + 1) = v66 + 2;
LABEL_229:
        *v88 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v88))
        {
          *(a1 + 216) = *v88;
          *(a1 + 300) |= 0x4000000u;
          v67 = *(this + 1);
          v11 = *(this + 2);
          if (v11 - v67 >= 2 && *v67 == 224 && v67[1] == 1)
          {
            v14 = (v67 + 2);
            *(this + 1) = v14;
LABEL_234:
            if (v14 >= v11 || (v68 = *v14, v68 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 124));
              if (!result)
              {
                return result;
              }

              v69 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 124) = v68;
              v69 = (v14 + 1);
              *(this + 1) = v69;
            }

            *(a1 + 300) |= 0x8000000u;
            if (v11 - v69 >= 2 && *v69 == 232 && v69[1] == 1)
            {
              v26 = (v69 + 2);
              *(this + 1) = v26;
LABEL_243:
              if (v26 >= v11 || (v70 = *v26, v70 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 224));
                if (!result)
                {
                  return result;
                }

                v71 = *(this + 1);
                v11 = *(this + 2);
              }

              else
              {
                *(a1 + 224) = v70;
                v71 = (v26 + 1);
                *(this + 1) = v71;
              }

              *(a1 + 300) |= 0x10000000u;
              if (v11 - v71 >= 2 && *v71 == 240 && v71[1] == 1)
              {
                v27 = (v71 + 2);
                *(this + 1) = v27;
LABEL_252:
                if (v27 >= v11 || (v72 = *v27, v72 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 232));
                  if (!result)
                  {
                    return result;
                  }

                  v73 = *(this + 1);
                  v11 = *(this + 2);
                }

                else
                {
                  *(a1 + 232) = v72;
                  v73 = (v27 + 1);
                  *(this + 1) = v73;
                }

                *(a1 + 300) |= 0x20000000u;
                if (v11 - v73 >= 2 && *v73 == 248 && v73[1] == 1)
                {
                  v24 = (v73 + 2);
                  *(this + 1) = v24;
LABEL_261:
                  if (v24 >= v11 || (v74 = *v24, v74 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 240));
                    if (!result)
                    {
                      return result;
                    }

                    v75 = *(this + 1);
                    v11 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 240) = v74;
                    v75 = (v24 + 1);
                    *(this + 1) = v75;
                  }

                  *(a1 + 300) |= 0x40000000u;
                  if (v11 - v75 >= 2 && *v75 == 128 && v75[1] == 2)
                  {
                    v23 = (v75 + 2);
                    *(this + 1) = v23;
LABEL_270:
                    if (v23 >= v11 || (v76 = *v23, v76 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 248));
                      if (!result)
                      {
                        return result;
                      }

                      v77 = *(this + 1);
                      v11 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 248) = v76;
                      v77 = (v23 + 1);
                      *(this + 1) = v77;
                    }

                    *(a1 + 300) |= 0x80000000;
                    if (v11 - v77 >= 2 && *v77 == 136 && v77[1] == 2)
                    {
                      v25 = (v77 + 2);
                      *(this + 1) = v25;
LABEL_279:
                      if (v25 >= v11 || (v78 = *v25, v78 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 256));
                        if (!result)
                        {
                          return result;
                        }

                        v79 = *(this + 1);
                        v11 = *(this + 2);
                      }

                      else
                      {
                        *(a1 + 256) = v78;
                        v79 = (v25 + 1);
                        *(this + 1) = v79;
                      }

                      *(a1 + 304) |= 1u;
                      if (v11 - v79 >= 2 && *v79 == 144 && v79[1] == 2)
                      {
                        v16 = (v79 + 2);
                        *(this + 1) = v16;
LABEL_288:
                        if (v16 >= v11 || (v80 = *v16, v80 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 264));
                          if (!result)
                          {
                            return result;
                          }

                          v81 = *(this + 1);
                          v11 = *(this + 2);
                        }

                        else
                        {
                          *(a1 + 264) = v80;
                          v81 = (v16 + 1);
                          *(this + 1) = v81;
                        }

                        *(a1 + 304) |= 2u;
                        if (v11 - v81 >= 2 && *v81 == 152 && v81[1] == 2)
                        {
                          v15 = (v81 + 2);
                          *(this + 1) = v15;
LABEL_297:
                          if (v15 >= v11 || (v82 = *v15, v82 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 272));
                            if (!result)
                            {
                              return result;
                            }

                            v83 = *(this + 1);
                            v11 = *(this + 2);
                          }

                          else
                          {
                            *(a1 + 272) = v82;
                            v83 = (v15 + 1);
                            *(this + 1) = v83;
                          }

                          *(a1 + 304) |= 4u;
                          if (v11 - v83 >= 2 && *v83 == 160 && v83[1] == 2)
                          {
                            v12 = (v83 + 2);
                            *(this + 1) = v12;
LABEL_306:
                            if (v12 >= v11 || (v84 = *v12, v84 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 280));
                              if (!result)
                              {
                                return result;
                              }

                              v85 = *(this + 1);
                              v11 = *(this + 2);
                            }

                            else
                            {
                              *(a1 + 280) = v84;
                              v85 = (v12 + 1);
                              *(this + 1) = v85;
                            }

                            *(a1 + 304) |= 8u;
                            if (v11 - v85 >= 2 && *v85 == 168 && v85[1] == 2)
                            {
                              v13 = (v85 + 2);
                              *(this + 1) = v13;
LABEL_315:
                              if (v13 >= v11 || (v86 = *v13, v86 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 288));
                                if (!result)
                                {
                                  return result;
                                }

                                v87 = *(this + 1);
                                v11 = *(this + 2);
                              }

                              else
                              {
                                *(a1 + 288) = v86;
                                v87 = v13 + 1;
                                *(this + 1) = v87;
                              }

                              *(a1 + 304) |= 0x10u;
                              if (v87 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
                              {
                                *(this + 8) = 0;
                                result = 1;
                                *(this + 36) = 1;
                                return result;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_111;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v20 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_119;
      case 5u:
        if (v8 != 2)
        {
          goto LABEL_84;
        }

        v17 = *(a1 + 300);
        goto LABEL_127;
      case 6u:
        if (v8 == 1)
        {
          goto LABEL_133;
        }

        goto LABEL_84;
      case 7u:
        if (v8 == 1)
        {
          goto LABEL_137;
        }

        goto LABEL_84;
      case 8u:
        if (v8 == 1)
        {
          goto LABEL_141;
        }

        goto LABEL_84;
      case 9u:
        if (v8 == 1)
        {
          goto LABEL_145;
        }

        goto LABEL_84;
      case 0xAu:
        if (v8 == 1)
        {
          goto LABEL_149;
        }

        goto LABEL_84;
      case 0xBu:
        if (v8 == 1)
        {
          goto LABEL_153;
        }

        goto LABEL_84;
      case 0xCu:
        if (v8 == 1)
        {
          goto LABEL_157;
        }

        goto LABEL_84;
      case 0xDu:
        if (v8 == 1)
        {
          goto LABEL_161;
        }

        goto LABEL_84;
      case 0xEu:
        if (v8 == 1)
        {
          goto LABEL_165;
        }

        goto LABEL_84;
      case 0xFu:
        if (v8 == 1)
        {
          goto LABEL_169;
        }

        goto LABEL_84;
      case 0x10u:
        if (v8 == 1)
        {
          goto LABEL_174;
        }

        goto LABEL_84;
      case 0x11u:
        if (v8 == 1)
        {
          goto LABEL_179;
        }

        goto LABEL_84;
      case 0x12u:
        if (v8 == 1)
        {
          goto LABEL_184;
        }

        goto LABEL_84;
      case 0x13u:
        if (v8 == 1)
        {
          goto LABEL_189;
        }

        goto LABEL_84;
      case 0x14u:
        if (v8 == 1)
        {
          goto LABEL_194;
        }

        goto LABEL_84;
      case 0x15u:
        if (v8 == 1)
        {
          goto LABEL_199;
        }

        goto LABEL_84;
      case 0x16u:
        if (v8 == 1)
        {
          goto LABEL_204;
        }

        goto LABEL_84;
      case 0x17u:
        if (v8 == 1)
        {
          goto LABEL_209;
        }

        goto LABEL_84;
      case 0x18u:
        if (v8 == 1)
        {
          goto LABEL_214;
        }

        goto LABEL_84;
      case 0x19u:
        if (v8 == 1)
        {
          goto LABEL_219;
        }

        goto LABEL_84;
      case 0x1Au:
        if (v8 == 1)
        {
          goto LABEL_224;
        }

        goto LABEL_84;
      case 0x1Bu:
        if (v8 != 1)
        {
          goto LABEL_84;
        }

        goto LABEL_229;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v14 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_234;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v26 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_243;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v27 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_252;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v24 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_261;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v23 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_270;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v25 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_279;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v16 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_288;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v15 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_297;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_306;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_84;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_315;
      default:
LABEL_84:
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
  }
}

uint64_t sub_1000B7C3C(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 300);
  if (v6)
  {
    v11 = *(this + 16);
    if (!v11)
    {
      v11 = *(qword_1009F9A60 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v11, a2, a4);
    v6 = *(v5 + 300);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 120), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 300);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 72), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 80), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 88), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 96), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 104), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(v5 + 112), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 128), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 136), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 144), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(v5 + 152), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 160), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 168), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x16, a2, *(v5 + 176), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 184), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x18, a2, *(v5 + 192), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x19, a2, *(v5 + 200), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 208), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 216), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 124), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1D, *(v5 + 224), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_77:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1F, *(v5 + 240), a2, a4);
    if ((*(v5 + 300) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_78;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1E, *(v5 + 232), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_77;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x20, *(v5 + 248), a2, a4);
LABEL_33:
  v7 = *(v5 + 304);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x21, *(v5 + 256), a2, a4);
    v7 = *(v5 + 304);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_81;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x22, *(v5 + 264), a2, a4);
  v7 = *(v5 + 304);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

LABEL_82:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x24, *(v5 + 280), a2, a4);
    if ((*(v5 + 304) & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x23, *(v5 + 272), a2, a4);
  v7 = *(v5 + 304);
  if ((v7 & 8) != 0)
  {
    goto LABEL_82;
  }

LABEL_37:
  if ((v7 & 0x10) != 0)
  {
LABEL_38:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x25, *(v5 + 288), a2, a4);
  }

LABEL_39:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B80B4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 75);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9A60 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = v7[7];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_10009F838(v7, v10, a3);
    v6 = *(this + 75);
  }

  if ((v6 & 2) != 0)
  {
    v11 = *(this + 6);
    *v4 = 16;
    v12 = v4 + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
    }

    else
    {
      if (v11 <= 0x7F)
      {
        *(v4 + 1) = v11;
        v4 = (v4 + 2);
        goto LABEL_15;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
    }

    v4 = v13;
  }

LABEL_15:
  if ((*(this + 300) & 4) != 0)
  {
    v14 = *(this + 7);
    *v4 = 24;
    if (v14 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v14;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 300) & 8) != 0)
  {
    v15 = *(this + 30);
    *v4 = 32;
    if (v15 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v15;
      v4 = (v4 + 2);
    }
  }

  v16 = *(this + 75);
  if ((v16 & 0x10) != 0)
  {
    v17 = *(this + 4);
    *v4 = 42;
    v18 = *(v17 + 23);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = *(v17 + 8);
    }

    if (v18 > 0x7F)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v18;
      v19 = v4 + 2;
    }

    v20 = *(v17 + 23);
    if (v20 >= 0)
    {
      v21 = v17;
    }

    else
    {
      v21 = *v17;
    }

    if (v20 >= 0)
    {
      v22 = *(v17 + 23);
    }

    else
    {
      v22 = *(v17 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v21, v22, v19, a4);
    v16 = *(this + 75);
    if ((v16 & 0x20) == 0)
    {
LABEL_25:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_61;
    }
  }

  else if ((v16 & 0x20) == 0)
  {
    goto LABEL_25;
  }

  v23 = *(this + 5);
  *v4 = 49;
  *(v4 + 1) = v23;
  v4 = (v4 + 9);
  v16 = *(this + 75);
  if ((v16 & 0x40) == 0)
  {
LABEL_26:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  v24 = *(this + 6);
  *v4 = 57;
  *(v4 + 1) = v24;
  v4 = (v4 + 9);
  v16 = *(this + 75);
  if ((v16 & 0x80) == 0)
  {
LABEL_27:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  v25 = *(this + 7);
  *v4 = 65;
  *(v4 + 1) = v25;
  v4 = (v4 + 9);
  v16 = *(this + 75);
  if ((v16 & 0x100) == 0)
  {
LABEL_28:
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  v26 = *(this + 8);
  *v4 = 73;
  *(v4 + 1) = v26;
  v4 = (v4 + 9);
  v16 = *(this + 75);
  if ((v16 & 0x200) == 0)
  {
LABEL_29:
    if ((v16 & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  v27 = *(this + 9);
  *v4 = 81;
  *(v4 + 1) = v27;
  v4 = (v4 + 9);
  v16 = *(this + 75);
  if ((v16 & 0x400) == 0)
  {
LABEL_30:
    if ((v16 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  v28 = *(this + 10);
  *v4 = 89;
  *(v4 + 1) = v28;
  v4 = (v4 + 9);
  v16 = *(this + 75);
  if ((v16 & 0x800) == 0)
  {
LABEL_31:
    if ((v16 & 0x1000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  v29 = *(this + 11);
  *v4 = 97;
  *(v4 + 1) = v29;
  v4 = (v4 + 9);
  v16 = *(this + 75);
  if ((v16 & 0x1000) == 0)
  {
LABEL_32:
    if ((v16 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  v30 = *(this + 12);
  *v4 = 105;
  *(v4 + 1) = v30;
  v4 = (v4 + 9);
  v16 = *(this + 75);
  if ((v16 & 0x2000) == 0)
  {
LABEL_33:
    if ((v16 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  v31 = *(this + 13);
  *v4 = 113;
  *(v4 + 1) = v31;
  v4 = (v4 + 9);
  v16 = *(this + 75);
  if ((v16 & 0x4000) == 0)
  {
LABEL_34:
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }

LABEL_69:
  v32 = *(this + 14);
  *v4 = 121;
  *(v4 + 1) = v32;
  v4 = (v4 + 9);
  v16 = *(this + 75);
  if ((v16 & 0x8000) == 0)
  {
LABEL_35:
    if ((v16 & 0x10000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_71;
  }

LABEL_70:
  v33 = *(this + 16);
  *v4 = 385;
  *(v4 + 2) = v33;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x10000) == 0)
  {
LABEL_36:
    if ((v16 & 0x20000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_72;
  }

LABEL_71:
  v34 = *(this + 17);
  *v4 = 393;
  *(v4 + 2) = v34;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x20000) == 0)
  {
LABEL_37:
    if ((v16 & 0x40000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_73;
  }

LABEL_72:
  v35 = *(this + 18);
  *v4 = 401;
  *(v4 + 2) = v35;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x40000) == 0)
  {
LABEL_38:
    if ((v16 & 0x80000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_74;
  }

LABEL_73:
  v36 = *(this + 19);
  *v4 = 409;
  *(v4 + 2) = v36;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x80000) == 0)
  {
LABEL_39:
    if ((v16 & 0x100000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_75;
  }

LABEL_74:
  v37 = *(this + 20);
  *v4 = 417;
  *(v4 + 2) = v37;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x100000) == 0)
  {
LABEL_40:
    if ((v16 & 0x200000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_76;
  }

LABEL_75:
  v38 = *(this + 21);
  *v4 = 425;
  *(v4 + 2) = v38;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x200000) == 0)
  {
LABEL_41:
    if ((v16 & 0x400000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_77;
  }

LABEL_76:
  v39 = *(this + 22);
  *v4 = 433;
  *(v4 + 2) = v39;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x400000) == 0)
  {
LABEL_42:
    if ((v16 & 0x800000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_78;
  }

LABEL_77:
  v40 = *(this + 23);
  *v4 = 441;
  *(v4 + 2) = v40;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x800000) == 0)
  {
LABEL_43:
    if ((v16 & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_79;
  }

LABEL_78:
  v41 = *(this + 24);
  *v4 = 449;
  *(v4 + 2) = v41;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x1000000) == 0)
  {
LABEL_44:
    if ((v16 & 0x2000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_80;
  }

LABEL_79:
  v42 = *(this + 25);
  *v4 = 457;
  *(v4 + 2) = v42;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x2000000) == 0)
  {
LABEL_45:
    if ((v16 & 0x4000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_81;
  }

LABEL_80:
  v43 = *(this + 26);
  *v4 = 465;
  *(v4 + 2) = v43;
  v4 = (v4 + 10);
  v16 = *(this + 75);
  if ((v16 & 0x4000000) == 0)
  {
LABEL_46:
    if ((v16 & 0x8000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_82;
  }

LABEL_81:
  v44 = *(this + 27);
  *v4 = 473;
  *(v4 + 2) = v44;
  v4 = (v4 + 10);
  if ((*(this + 75) & 0x8000000) == 0)
  {
    goto LABEL_85;
  }

LABEL_82:
  v45 = *(this + 31);
  *v4 = 480;
  if (v45 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v45;
    v4 = (v4 + 3);
  }

LABEL_85:
  v46 = *(this + 75);
  if ((v46 & 0x10000000) != 0)
  {
    v53 = *(this + 28);
    *v4 = 488;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v53, v4 + 2, a3);
    v46 = *(this + 75);
    if ((v46 & 0x20000000) == 0)
    {
LABEL_87:
      if ((v46 & 0x40000000) == 0)
      {
        goto LABEL_88;
      }

LABEL_103:
      v55 = *(this + 30);
      *v4 = 504;
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v55, v4 + 2, a3);
      if ((*(this + 75) & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_104;
    }
  }

  else if ((v46 & 0x20000000) == 0)
  {
    goto LABEL_87;
  }

  v54 = *(this + 29);
  *v4 = 496;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v54, v4 + 2, a3);
  v46 = *(this + 75);
  if ((v46 & 0x40000000) != 0)
  {
    goto LABEL_103;
  }

LABEL_88:
  if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_89;
  }

LABEL_104:
  v56 = *(this + 31);
  *v4 = 640;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v56, v4 + 2, a3);
LABEL_89:
  v47 = *(this + 76);
  if (v47)
  {
    v57 = *(this + 32);
    *v4 = 648;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v57, v4 + 2, a3);
    v47 = *(this + 76);
    if ((v47 & 2) == 0)
    {
LABEL_91:
      if ((v47 & 4) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_107;
    }
  }

  else if ((v47 & 2) == 0)
  {
    goto LABEL_91;
  }

  v58 = *(this + 33);
  *v4 = 656;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v58, v4 + 2, a3);
  v47 = *(this + 76);
  if ((v47 & 4) == 0)
  {
LABEL_92:
    if ((v47 & 8) == 0)
    {
      goto LABEL_93;
    }

LABEL_108:
    v60 = *(this + 35);
    *v4 = 672;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v60, v4 + 2, a3);
    if ((*(this + 76) & 0x10) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_107:
  v59 = *(this + 34);
  *v4 = 664;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v59, v4 + 2, a3);
  v47 = *(this + 76);
  if ((v47 & 8) != 0)
  {
    goto LABEL_108;
  }

LABEL_93:
  if ((v47 & 0x10) != 0)
  {
LABEL_94:
    v48 = *(this + 36);
    *v4 = 680;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v48, v4 + 2, a3);
  }

LABEL_95:
  v51 = *(this + 1);
  v50 = (this + 8);
  v49 = v51;
  if (!v51 || *v49 == v49[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v50, v4, a3);
}

uint64_t sub_1000B8B84(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 300);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_46;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(qword_1009F9A60 + 16);
  }

  v7 = sub_10009F954(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  }

  else
  {
    v9 = 1;
  }

  v4 = v8 + v9 + 1;
  v3 = *(a1 + 300);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 24);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 300);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    v14 = *(a1 + 120);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 300);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_39;
    }

LABEL_30:
    v16 = *(a1 + 32);
    v17 = *(v16 + 23);
    v18 = v17;
    v19 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = v19;
    }

    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      v17 = *(v16 + 23);
      v19 = *(v16 + 8);
      v3 = *(a1 + 300);
      v18 = *(v16 + 23);
    }

    else
    {
      v21 = 1;
    }

    if (v18 < 0)
    {
      v17 = v19;
    }

    v4 += v21 + v17 + 1;
    goto LABEL_39;
  }

  v12 = *(a1 + 28);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 300);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_30;
  }

LABEL_39:
  v22 = v4 + 9;
  if ((v3 & 0x20) == 0)
  {
    v22 = v4;
  }

  if ((v3 & 0x40) != 0)
  {
    v22 += 9;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 = v22 + 9;
  }

  else
  {
    v5 = v22;
  }

LABEL_46:
  if ((v3 & 0xFF00) != 0)
  {
    v23 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v23 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v23 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v23 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      v23 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v23 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v23 += 9;
    }

    if ((v3 & 0x4000) != 0)
    {
      v23 += 9;
    }

    if ((v3 & 0x8000) != 0)
    {
      v5 = v23 + 10;
    }

    else
    {
      v5 = v23;
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    v24 = v5 + 10;
    if ((v3 & 0x10000) == 0)
    {
      v24 = v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v24 += 10;
    }

    if ((v3 & 0x40000) != 0)
    {
      v24 += 10;
    }

    if ((v3 & 0x80000) != 0)
    {
      v24 += 10;
    }

    if ((v3 & 0x100000) != 0)
    {
      v24 += 10;
    }

    if ((v3 & 0x200000) != 0)
    {
      v24 += 10;
    }

    if ((v3 & 0x400000) != 0)
    {
      v24 += 10;
    }

    if ((v3 & 0x800000) != 0)
    {
      v5 = v24 + 10;
    }

    else
    {
      v5 = v24;
    }
  }

  if (HIBYTE(v3))
  {
    v25 = v5 + 10;
    if ((v3 & 0x1000000) == 0)
    {
      v25 = v5;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v25 += 10;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v5 = v25 + 10;
    }

    else
    {
      v5 = v25;
    }

    if ((v3 & 0x8000000) != 0)
    {
      v29 = *(a1 + 124);
      if (v29 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 2;
        v3 = *(a1 + 300);
      }

      else
      {
        v30 = 3;
      }

      v5 = (v30 + v5);
      if ((v3 & 0x10000000) == 0)
      {
LABEL_92:
        if ((v3 & 0x20000000) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_116;
      }
    }

    else if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_92;
    }

    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 224), a2) + 2;
    v3 = *(a1 + 300);
    if ((v3 & 0x20000000) == 0)
    {
LABEL_93:
      if ((v3 & 0x40000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_117;
    }

LABEL_116:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 232), a2) + 2;
    v3 = *(a1 + 300);
    if ((v3 & 0x40000000) == 0)
    {
LABEL_94:
      if ((v3 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }

LABEL_118:
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 248), a2) + 2;
      goto LABEL_95;
    }

LABEL_117:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 240), a2) + 2;
    if ((*(a1 + 300) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_118;
  }

LABEL_95:
  LOBYTE(v26) = *(a1 + 304);
  if (!v26)
  {
    goto LABEL_102;
  }

  if (*(a1 + 304))
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 256), a2) + 2;
    v26 = *(a1 + 304);
    if ((v26 & 2) == 0)
    {
LABEL_98:
      if ((v26 & 4) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_108;
    }
  }

  else if ((*(a1 + 304) & 2) == 0)
  {
    goto LABEL_98;
  }

  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 264), a2) + 2;
  v26 = *(a1 + 304);
  if ((v26 & 4) == 0)
  {
LABEL_99:
    if ((v26 & 8) == 0)
    {
      goto LABEL_100;
    }

LABEL_109:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 280), a2) + 2;
    if ((*(a1 + 304) & 0x10) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

LABEL_108:
  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 272), a2) + 2;
  v26 = *(a1 + 304);
  if ((v26 & 8) != 0)
  {
    goto LABEL_109;
  }

LABEL_100:
  if ((v26 & 0x10) != 0)
  {
LABEL_101:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 288), a2) + 2;
  }

LABEL_102:
  v27 = *(a1 + 8);
  if (v27 && *v27 != v27[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 296) = v5;
  return v5;
}

uint64_t sub_1000B8F68(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009C8B4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B903C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B9054(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B90E8()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED790;
}

void sub_1000B917C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B9190(uint64_t a1)
{
  *a1 = off_10098F648;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_1000B9210(uint64_t *a1)
{
  *a1 = off_10098F648;
  if (qword_1009F9A68 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100077C08(a1 + 13);
  sub_100077C08(a1 + 10);
  sub_100077C08(a1 + 6);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000B92CC(uint64_t *a1)
{
  sub_1000B9210(a1);

  operator delete();
}

uint64_t sub_1000B9370(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
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

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v8 == 6)
            {
              if (v9 == 1)
              {
                goto LABEL_82;
              }

              goto LABEL_44;
            }

            if (v8 != 7 || v9 != 2)
            {
              goto LABEL_44;
            }

LABEL_86:
            v38 = *(a1 + 60);
            v39 = *(a1 + 56);
            if (v39 >= v38)
            {
              if (v38 == *(a1 + 64))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v38 + 1);
                v38 = *(a1 + 60);
              }

              *(a1 + 60) = v38 + 1;
              sub_1000CCF2C();
            }

            v40 = *(a1 + 48);
            *(a1 + 56) = v39 + 1;
            v41 = *(v40 + 8 * v39);
            v79[0] = 0;
            v42 = *(this + 1);
            if (v42 >= *(this + 2) || *v42 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v79))
              {
                return 0;
              }
            }

            else
            {
              v79[0] = *v42;
              *(this + 1) = v42 + 1;
            }

            v43 = *(this + 14);
            v44 = *(this + 15);
            *(this + 14) = v43 + 1;
            if (v43 >= v44)
            {
              return 0;
            }

            v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v79[0]);
            if (!sub_1000B2078(v41, this, v46, v47) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
            v48 = *(this + 14);
            v32 = __OFSUB__(v48, 1);
            v49 = v48 - 1;
            if (v49 < 0 == v32)
            {
              *(this + 14) = v49;
            }

            v37 = *(this + 1);
            if (v37 < *(this + 2))
            {
              v50 = *v37;
              if (v50 == 58)
              {
                goto LABEL_85;
              }

              if (v50 == 66)
              {
                goto LABEL_103;
              }
            }
          }

          else
          {
            if (v8 != 8)
            {
              if (v8 == 9)
              {
                if (v9 == 2)
                {
                  goto LABEL_122;
                }
              }

              else if (v8 == 10 && (TagFallback & 7) == 0)
              {
                v12 = *(this + 1);
                v13 = *(this + 2);
                goto LABEL_140;
              }

              goto LABEL_44;
            }

            if (v9 != 2)
            {
              goto LABEL_44;
            }

            while (2)
            {
              v51 = *(a1 + 92);
              v52 = *(a1 + 88);
              if (v52 >= v51)
              {
                if (v51 == *(a1 + 96))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80), v51 + 1);
                  v51 = *(a1 + 92);
                }

                *(a1 + 92) = v51 + 1;
                sub_1000CCF2C();
              }

              v53 = *(a1 + 80);
              *(a1 + 88) = v52 + 1;
              v54 = *(v53 + 8 * v52);
              v79[0] = 0;
              v55 = *(this + 1);
              if (v55 >= *(this + 2) || *v55 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v79))
                {
                  return 0;
                }
              }

              else
              {
                v79[0] = *v55;
                *(this + 1) = v55 + 1;
              }

              v56 = *(this + 14);
              v57 = *(this + 15);
              *(this + 14) = v56 + 1;
              if (v56 >= v57)
              {
                return 0;
              }

              v58 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v79[0]);
              if (!sub_1000B2078(v54, this, v59, v60) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v58);
              v61 = *(this + 14);
              v32 = __OFSUB__(v61, 1);
              v62 = v61 - 1;
              if (v62 < 0 == v32)
              {
                *(this + 14) = v62;
              }

              v37 = *(this + 1);
              if (v37 < *(this + 2))
              {
                v63 = *v37;
                if (v63 == 66)
                {
LABEL_103:
                  *(this + 1) = v37 + 1;
                  continue;
                }

                if (v63 == 74)
                {
                  while (1)
                  {
                    *(this + 1) = v37 + 1;
LABEL_122:
                    v64 = *(a1 + 116);
                    v65 = *(a1 + 112);
                    if (v65 >= v64)
                    {
                      if (v64 == *(a1 + 120))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104), v64 + 1);
                        v64 = *(a1 + 116);
                      }

                      *(a1 + 116) = v64 + 1;
                      sub_1000CCF2C();
                    }

                    v66 = *(a1 + 104);
                    *(a1 + 112) = v65 + 1;
                    v67 = *(v66 + 8 * v65);
                    v79[0] = 0;
                    v68 = *(this + 1);
                    if (v68 >= *(this + 2) || *v68 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v79))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v79[0] = *v68;
                      *(this + 1) = v68 + 1;
                    }

                    v69 = *(this + 14);
                    v70 = *(this + 15);
                    *(this + 14) = v69 + 1;
                    if (v69 >= v70)
                    {
                      return 0;
                    }

                    v71 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v79[0]);
                    if (!sub_1000B2078(v67, this, v72, v73) || *(this + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v71);
                    v74 = *(this + 14);
                    v32 = __OFSUB__(v74, 1);
                    v75 = v74 - 1;
                    if (v75 < 0 == v32)
                    {
                      *(this + 14) = v75;
                    }

                    v37 = *(this + 1);
                    v13 = *(this + 2);
                    if (v37 >= v13)
                    {
                      break;
                    }

                    v76 = *v37;
                    if (v76 != 74)
                    {
                      if (v76 == 80)
                      {
                        v12 = v37 + 1;
                        *(this + 1) = v12;
LABEL_140:
                        if (v12 >= v13 || (v77 = *v12, v77 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
                          if (!result)
                          {
                            return result;
                          }

                          v78 = *(this + 1);
                          v13 = *(this + 2);
                        }

                        else
                        {
                          *(a1 + 76) = v77;
                          v78 = v12 + 1;
                          *(this + 1) = v78;
                        }

                        *(a1 + 132) |= 0x200u;
                        if (v78 == v13 && (*(this + 11) || *(this + 6) == *(this + 10)))
                        {
                          *(this + 8) = 0;
                          result = 1;
                          *(this + 36) = 1;
                          return result;
                        }
                      }

                      goto LABEL_1;
                    }
                  }
                }
              }

              break;
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_44;
          }

          v15 = *(this + 1);
          v14 = *(this + 2);
          goto LABEL_32;
        }

        if (v9 != 1)
        {
          goto LABEL_44;
        }

        *v79 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v79) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v79;
        *(a1 + 132) |= 1u;
        v16 = *(this + 1);
        v14 = *(this + 2);
        if (v16 < v14 && *v16 == 16)
        {
          v15 = v16 + 1;
          *(this + 1) = v15;
LABEL_32:
          if (v15 >= v14 || (v17 = *v15, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v14 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v17;
            v18 = v15 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 132) |= 2u;
          if (v18 < v14 && *v18 == 24)
          {
            v19 = v18 + 1;
            *(this + 1) = v19;
LABEL_52:
            if (v19 >= v14 || (v22 = *v19, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
              if (!result)
              {
                return result;
              }

              v23 = *(this + 1);
              v14 = *(this + 2);
            }

            else
            {
              *(a1 + 28) = v22;
              v23 = v19 + 1;
              *(this + 1) = v23;
            }

            v20 = *(a1 + 132) | 4;
            *(a1 + 132) = v20;
            if (v23 < v14 && *v23 == 34)
            {
              *(this + 1) = v23 + 1;
              goto LABEL_60;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v19 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_52;
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_44;
      }

      v20 = *(a1 + 132);
LABEL_60:
      *(a1 + 132) = v20 | 8;
      v24 = *(a1 + 32);
      if (!v24)
      {
        operator new();
      }

      v79[0] = 0;
      v25 = *(this + 1);
      if (v25 >= *(this + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v79))
        {
          return 0;
        }
      }

      else
      {
        v79[0] = *v25;
        *(this + 1) = v25 + 1;
      }

      v26 = *(this + 14);
      v27 = *(this + 15);
      *(this + 14) = v26 + 1;
      if (v26 >= v27)
      {
        return 0;
      }

      v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v79[0]);
      if (!sub_10009F5D8(v24, this, v29, v30) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v28);
      v31 = *(this + 14);
      v32 = __OFSUB__(v31, 1);
      v33 = v31 - 1;
      if (v33 < 0 == v32)
      {
        *(this + 14) = v33;
      }

      v34 = *(this + 1);
      v10 = *(this + 2);
      if (v34 < v10 && *v34 == 40)
      {
        v11 = v34 + 1;
        *(this + 1) = v11;
LABEL_74:
        if (v11 >= v10 || (v35 = *v11, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 72) = v35;
          v36 = v11 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 132) |= 0x10u;
        if (v36 < v10 && *v36 == 49)
        {
          *(this + 1) = v36 + 1;
LABEL_82:
          *v79 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v79) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v79;
          *(a1 + 132) |= 0x20u;
          v37 = *(this + 1);
          if (v37 < *(this + 2) && *v37 == 58)
          {
LABEL_85:
            *(this + 1) = v37 + 1;
            goto LABEL_86;
          }
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_74;
    }

LABEL_44:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000B9B6C(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 132);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_28:
  v13 = *(v5 + 32);
  if (!v13)
  {
    v13 = *(qword_1009F9A68 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 72), a2, a4);
  if ((*(v5 + 132) & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  }

LABEL_8:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(*(v5 + 48) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  if (*(v5 + 88) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(*(v5 + 80) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 88));
  }

  if (*(v5 + 112) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, *(*(v5 + 104) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 112));
  }

  if ((*(v5 + 133) & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 76), a2, a4);
  }

  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B9D40(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 33);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    v3 = (a2 + 9);
    v5 = *(this + 33);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 6);
    *v3 = 16;
    if (v7 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 132) & 4) != 0)
  {
    v8 = *(this + 7);
    *v3 = 24;
    if (v8 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v3 = (v3 + 2);
    }
  }

  v9 = *(this + 33);
  if ((v9 & 8) != 0)
  {
    v10 = *(this + 4);
    if (!v10)
    {
      v10 = *(qword_1009F9A68 + 32);
    }

    *v3 = 34;
    v11 = v10[7];
    if (v11 > 0x7F)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v11;
      v12 = (v3 + 2);
    }

    v3 = sub_10009F838(v10, v12, a3);
    v9 = *(this + 33);
  }

  if ((v9 & 0x10) != 0)
  {
    v13 = *(this + 18);
    *v3 = 40;
    if (v13 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v13;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 132) & 0x20) != 0)
  {
    v14 = *(this + 5);
    *v3 = 49;
    *(v3 + 1) = v14;
    v3 = (v3 + 9);
  }

  if (*(this + 14) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(*(this + 6) + 8 * v15);
      *v3 = 58;
      v17 = v16[6];
      if (v17 > 0x7F)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v17;
        v18 = (v3 + 2);
      }

      v3 = sub_1000B229C(v16, v18, a3);
      ++v15;
    }

    while (v15 < *(this + 14));
  }

  if (*(this + 22) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = *(*(this + 10) + 8 * v19);
      *v3 = 66;
      v21 = v20[6];
      if (v21 > 0x7F)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v21;
        v22 = (v3 + 2);
      }

      v3 = sub_1000B229C(v20, v22, a3);
      ++v19;
    }

    while (v19 < *(this + 22));
  }

  if (*(this + 28) >= 1)
  {
    v23 = 0;
    do
    {
      v24 = *(*(this + 13) + 8 * v23);
      *v3 = 74;
      v25 = v24[6];
      if (v25 > 0x7F)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v25;
        v26 = (v3 + 2);
      }

      v3 = sub_1000B229C(v24, v26, a3);
      ++v23;
    }

    while (v23 < *(this + 28));
  }

  if ((*(this + 133) & 2) != 0)
  {
    v27 = *(this + 19);
    *v3 = 80;
    if (v27 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v27;
      v3 = (v3 + 2);
    }
  }

  v30 = *(this + 1);
  v29 = (this + 8);
  v28 = v30;
  if (!v30 || *v28 == v28[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v29, v3, a3);
}