_BYTE *embeddedtest_test_case_result_create(char a1, const char *a2)
{
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x1090040F257B3C2uLL);
    if (!v4)
    {
      sub_100015944();
    }

    v5 = v4;
    v6 = strdup(a2);
    *v5 = v6;
    if (!v6)
    {
      sub_100015908();
    }

    v5[28] = a1;
    *(v5 + 6) = -1;
    *(v5 + 1) = 0;
    *(v5 + 8) = 0;
    *(v5 + 5) = 0;
    *(v5 + 4) = time(0);
    *(v5 + 5) = 0;
  }

  else
  {
    puts("Unable to create a test case result with NULL name");
    return 0;
  }

  return v5;
}

void embeddedtest_test_case_result_free(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      free(v3);
    }

    if (*(a1 + 8))
    {
      v4 = 0;
      do
      {
        embeddedtest_test_case_metric_free(*(a1[5] + 8 * v4++));
      }

      while (v4 < *(a1 + 8));
    }

    v5 = a1[5];
    if (v5)
    {
      free(v5);
    }

    free(a1);
  }
}

uint64_t embeddedtest_test_case_result_pass(uint64_t a1)
{
  if (!a1)
  {
    v1 = "Unable to pass NULL result";
    return embeddedtest_error_get_error(1, v1);
  }

  if ((*(a1 + 28) & 0xFE) == 2)
  {
    v1 = "Cannot pass a histogram";
    return embeddedtest_error_get_error(1, v1);
  }

  *(a1 + 24) = 0;
  return 0;
}

uint64_t embeddedtest_test_case_result_fail(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  if (!a1)
  {
    v4 = "Unable to fail NULL result";
    goto LABEL_7;
  }

  if (!__format)
  {
    v4 = "Reason cannot be null when failing a test case";
    goto LABEL_7;
  }

  if ((*(a1 + 28) & 0xFE) == 2)
  {
    v4 = "Cannot fail a histogram";
LABEL_7:

    return embeddedtest_error_get_error(1, v4);
  }

  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    free(v6);
  }

  embeddedtest_vasprintf((a1 + 8), __format, va);
  if (!*v7)
  {
    sub_100015980();
  }

  *(a1 + 24) = 1;
  return 0;
}

uint64_t embeddedtest_test_case_result_add_metric(uint64_t a1, const char *a2, double a3)
{
  if (!a1)
  {
    v5 = "Unable to add metric to NULL result";
    goto LABEL_7;
  }

  if (!a2)
  {
    v5 = "Metric name cannot be null";
    goto LABEL_7;
  }

  if ((*(a1 + 28) & 0xFE) == 2)
  {
    v5 = "Metrics cannot be added to a histogram";
LABEL_7:

    return embeddedtest_error_get_error(1, v5);
  }

  v7 = embeddedtest_test_case_metric_create(a2, a3);
  if (*(a1 + 32))
  {
    v8 = 0;
    while (1)
    {
      v9 = *(*(a1 + 40) + 8 * v8);
      name = embeddedtest_test_case_metric_get_name(v9);
      if (!strcmp(a2, name))
      {
        break;
      }

      ++v8;
      v11 = *(a1 + 32);
      if (v8 >= v11)
      {
        v12 = v11 + 1;
        goto LABEL_16;
      }
    }

    if (v9)
    {
      free(v9);
    }

    *(*(a1 + 40) + 8 * v8) = v7;
  }

  else
  {
    v12 = 1;
LABEL_16:
    *(a1 + 32) = v12;
    if (*(a1 + 40))
    {
      v13 = malloc_type_realloc(*(a1 + 40), 8 * v12, 0x2004093837F09uLL);
    }

    else
    {
      v13 = malloc_type_calloc(v12, 8uLL, 0x2004093837F09uLL);
    }

    *(a1 + 40) = v13;
    if (!v13)
    {
      sub_1000159BC();
    }

    v13[*(a1 + 32) - 1] = v7;
  }

  return 0;
}

uint64_t embeddedtest_test_case_result_check_validity(uint64_t a1)
{
  if (!a1)
  {
    return embeddedtest_error_get_error(1, "Unable to check validity of NULL result");
  }

  if ((*(a1 + 28) & 0xFE) == 2)
  {
    return sub_10001086C(a1);
  }

  if (*(a1 + 24) == -1)
  {
    return embeddedtest_error_get_error(2, "Result did not have pass/fail set");
  }

  return 0;
}

uint64_t sub_10001086C(uint64_t a1)
{
  if (*(a1 + 28) == 2 && !*(a1 + 20))
  {
    v2 = "Histogram by time did not have a end time";
  }

  else
  {
    if (*(a1 + 8))
    {
      return 0;
    }

    v2 = "Histogram requires bucket to be set";
  }

  return embeddedtest_error_get_error(2, v2);
}

uint64_t embeddedtest_test_case_statistic_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1090040765C718DuLL);
    if (!v2)
    {
      sub_100015A70();
    }

    v3 = v2;
    name = embeddedtest_test_case_result_get_name(a1);
    v5 = strdup(name);
    *v3 = v5;
    if (!v5)
    {
      sub_100015A34();
    }

    *(v3 + 8) = embeddedtest_test_case_result_get_class(a1);
    if (embeddedtest_test_case_result_is_histogram(a1) || !embeddedtest_test_case_result_did_pass(a1))
    {
      v7 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
      *(v3 + 24) = v7;
      if (!v7)
      {
        sub_1000159F8();
      }

      if (*(v3 + 8) == 2)
      {
        duration = embeddedtest_test_case_result_get_duration(a1);
      }

      else
      {
        duration = 1;
      }

      bucket = embeddedtest_test_case_result_get_bucket(a1);
      **(v3 + 24) = embeddedtest_test_case_statistic_bucket_create(bucket, duration);
      v6 = 1;
    }

    else
    {
      v6 = 0;
      *(v3 + 24) = 0;
    }

    *(v3 + 20) = v6;
    if (embeddedtest_test_case_result_is_histogram(a1))
    {
      *(v3 + 12) = 0;
      *(v3 + 40) = 0;
      *(v3 + 32) = 0;
      v10 = *(v3 + 8);
      if (v10 == 3)
      {
        v11 = 1;
        goto LABEL_19;
      }

      if (v10 == 2)
      {
        v11 = embeddedtest_test_case_result_get_duration(a1);
LABEL_19:
        *(v3 + 16) = v11;
      }
    }

    else
    {
      sub_100010A50(v3, a1);
    }
  }

  else
  {
    puts("Unable to create test case statistic with NULL initial result");
    return 0;
  }

  return v3;
}

uint64_t sub_100010A50(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 1;
  *(a1 + 12) = !embeddedtest_test_case_result_did_pass(a2);
  result = embeddedtest_test_case_result_get_metric_count(a2);
  *(a1 + 32) = result;
  if (result)
  {
    v5 = result;
    v6 = malloc_type_calloc(result, 8uLL, 0x2004093837F09uLL);
    *(a1 + 40) = v6;
    if (!v6)
    {
      sub_100015AAC();
    }

    metrics = embeddedtest_test_case_result_get_metrics(a2);
    v8 = 0;
    v9 = 8 * v5;
    do
    {
      v10 = *(metrics + v8);
      name = embeddedtest_test_case_metric_get_name(v10);
      value = embeddedtest_test_case_metric_get_value(v10);
      result = embeddedtest_test_case_statistic_metric_create(name, value);
      *(*(a1 + 40) + v8) = result;
      v8 += 8;
    }

    while (v9 != v8);
  }

  return result;
}

void embeddedtest_test_case_statistic_free(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    sub_100010B78(a1);
    sub_100010BE4(a1);

    free(a1);
  }
}

void sub_100010B78(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    do
    {
      embeddedtest_test_case_statistic_metric_free(*(*(a1 + 40) + 8 * v2++));
    }

    while (v2 < *(a1 + 32));
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    free(v3);
  }
}

void sub_100010BE4(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v2 = 0;
    do
    {
      embeddedtest_test_case_statistic_bucket_free(*(*(a1 + 24) + 8 * v2++));
    }

    while (v2 < *(a1 + 20));
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    free(v3);
  }
}

void *embeddedtest_test_case_statistic_copy_json_representation(uint64_t a1)
{
  v20 = 0;
  json_string_from_array = embeddedtest_create_json_string_from_array(*(a1 + 24), *(a1 + 20), "%s,%s", embeddedtest_test_case_statistic_bucket_copy_json_representation);
  if ((*(a1 + 8) & 0xFE) == 2)
  {
    v17 = *(a1 + 16);
    embeddedtest_asprintf(&v20, "{Name:%s,Instances:%d,Buckets:{%s}}", v2, v3, v4, v5, v6, v7, *a1);
    v9 = json_string_from_array;
    if (!json_string_from_array)
    {
      return v20;
    }

    goto LABEL_7;
  }

  v9 = embeddedtest_create_json_string_from_array(*(a1 + 40), *(a1 + 32), "%s,%s", embeddedtest_test_case_statistic_metric_copy_json_representation);
  v18 = *(a1 + 16);
  v19 = *(a1 + 12);
  embeddedtest_asprintf(&v20, "{Name:%s,Instances:%d,Failure Count:%d,Failure Buckets:{%s},Metrics:[%s]}", v10, v11, v12, v13, v14, v15, *a1);
  if (json_string_from_array)
  {
    free(json_string_from_array);
  }

  if (v9)
  {
LABEL_7:
    free(v9);
  }

  return v20;
}

uint64_t embeddedtest_test_case_statistic_add_result(uint64_t a1, uint64_t a2)
{
  v3 = embeddedtest_test_case_statistic_create(a2);
  v4 = embeddedtest_test_case_statistic_merge(a1, v3);
  embeddedtest_test_case_statistic_free(v3);
  return v4;
}

uint64_t embeddedtest_test_case_statistic_merge(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010E1C(a1, a2);
  if (!v4)
  {
    sub_100010E98(a1, a2);
    sub_100010FF0(a1, a2);
    if ((*(a1 + 8) & 0xFE) != 2)
    {
      *(a1 + 12) += *(a2 + 12);
    }

    *(a1 + 16) += *(a2 + 16);
  }

  return v4;
}

uint64_t sub_100010E1C(uint64_t a1, uint64_t a2)
{
  if (!strcmp(*a1, *a2))
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      return 0;
    }

    v4 = "Cannot merge statistics with mismatching classes";
  }

  else
  {
    v4 = "Cannot merge statistics with mismatching names";
  }

  return embeddedtest_error_get_error(1, v4);
}

uint64_t sub_100010E98(uint64_t a1, uint64_t a2)
{
  LODWORD(count) = 0;
  v4 = sub_1000112F0(a1, a2, &count);
  v5 = v4;
  v6 = count;
  if (!count)
  {
    free(v4);
    v8 = 0;
    goto LABEL_16;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL);
  if (!v7)
  {
    sub_100015AE8();
  }

  v8 = v7;
  v9 = 0;
  v10 = 8 * v6;
  do
  {
    v11 = *&v5[v9];
    v12 = sub_10001142C(a1, v11);
    v13 = sub_10001142C(a2, v11);
    v14 = v13;
    if (v12)
    {
      value = embeddedtest_test_case_statistic_bucket_get_value(v12);
      if (!v14)
      {
        goto LABEL_7;
      }

LABEL_6:
      value = value + embeddedtest_test_case_statistic_bucket_get_value(v14);
      goto LABEL_7;
    }

    value = 0.0;
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_7:
    *&v8[v9] = embeddedtest_test_case_statistic_bucket_create(v11, value);
    v9 += 8;
  }

  while (v10 != v9);
  v16 = 0;
  do
  {
    v17 = *&v5[v16];
    if (v17)
    {
      free(v17);
    }

    v16 += 8;
  }

  while (v10 != v16);
  free(v5);
  sub_100010BE4(a1);
LABEL_16:
  *(a1 + 24) = v8;
  *(a1 + 20) = v6;
  return 0;
}

uint64_t sub_100010FF0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 40) + 8 * v4);
      name = embeddedtest_test_case_statistic_metric_get_name(v5);
      v7 = sub_100011498(a1, name);
      if (v7)
      {
        embeddedtest_test_case_statistic_metric_merge(v7, v5);
      }

      else
      {
        embeddedtest_test_case_statistic_metric_copy(v5);
        if (!v8)
        {
          sub_100015B60();
        }

        v9 = v8;
        v10 = malloc_type_realloc(*(a1 + 40), 8 * (*(a1 + 32) + 1), 0x2004093837F09uLL);
        *(a1 + 40) = v10;
        if (!v10)
        {
          sub_100015B24();
        }

        v11 = *(a1 + 32);
        v10[v11] = v9;
        *(a1 + 32) = v11 + 1;
      }

      ++v4;
    }

    while (v4 < *(a2 + 32));
  }

  return 0;
}

void *embeddedtest_test_case_statistic_create_from_buffer(uint64_t a1, _DWORD *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x1090040765C718DuLL);
  if (!v4)
  {
    sub_100015C14();
  }

  v5 = v4;
  *v4 = embeddedtest_create_string_from_buffer(a1, a2);
  v6 = *a2;
  v7 = *(a1 + v6);
  *a2 = v6 + 1;
  *(v5 + 8) = v7;
  *(v5 + 4) = embeddedtest_deserialize_count(a1, a2);
  *(v5 + 3) = embeddedtest_deserialize_count(a1, a2);
  v8 = embeddedtest_deserialize_count(a1, a2);
  *(v5 + 5) = v8;
  v9 = malloc_type_calloc(v8, 8uLL, 0x2004093837F09uLL);
  v5[3] = v9;
  if (!v9)
  {
    sub_100015BD8();
  }

  if (*(v5 + 5))
  {
    v10 = 0;
    do
    {
      *(v5[3] + 8 * v10++) = embeddedtest_test_case_statistic_bucket_create_from_buffer(a1, a2);
    }

    while (v10 < *(v5 + 5));
  }

  v11 = embeddedtest_deserialize_count(a1, a2);
  *(v5 + 8) = v11;
  v12 = malloc_type_calloc(v11, 8uLL, 0x2004093837F09uLL);
  v5[5] = v12;
  if (!v12)
  {
    sub_100015B9C();
  }

  if (*(v5 + 8))
  {
    v13 = 0;
    do
    {
      *(v5[5] + 8 * v13++) = embeddedtest_test_case_statistic_metric_create_from_buffer(a1, a2);
    }

    while (v13 < *(v5 + 8));
  }

  return v5;
}

uint64_t embeddedtest_test_case_statistic_get_size(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v3 += embeddedtest_test_case_statistic_bucket_get_size(*(*(a1 + 24) + 8 * v2++));
    }

    while (v2 < *(a1 + 20));
    v4 = v3 + 21;
  }

  else
  {
    v4 = 21;
  }

  if (*(a1 + 32))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 += embeddedtest_test_case_statistic_metric_get_size(*(*(a1 + 40) + 8 * v5++));
    }

    while (v5 < *(a1 + 32));
  }

  else
  {
    v6 = 0;
  }

  return v4 + strlen(*a1) + v6;
}

void *sub_1000112F0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 20);
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_calloc(v7, 8uLL, 0x10040436913F5uLL);
  if (!v8)
  {
    sub_100015D04();
  }

  v9 = v8;
  if (*(a1 + 20))
  {
    v10 = 0;
    do
    {
      name = embeddedtest_test_case_statistic_bucket_get_name(*(*(a1 + 24) + 8 * v10));
      v12 = strdup(name);
      if (!v12)
      {
        sub_100015C50();
      }

      v9[v10++] = v12;
    }

    while (v10 < *(a1 + 20));
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (*(a2 + 20))
  {
    v13 = 0;
    do
    {
      v14 = embeddedtest_test_case_statistic_bucket_get_name(*(*(a2 + 24) + 8 * v13));
      if (!sub_10001142C(a1, v14))
      {
        v15 = strdup(v14);
        if (!v15)
        {
          sub_100015CC8();
        }

        v16 = v15;
        v17 = malloc_type_realloc(v9, 8 * (v10 + 1), 0x10040436913F5uLL);
        if (!v17)
        {
          sub_100015C8C();
        }

        v9 = v17;
        v17[v10] = v16;
        LODWORD(v10) = v10 + 1;
      }

      ++v13;
    }

    while (v13 < *(a2 + 20));
  }

  *a3 = v10;
  return v9;
}

uint64_t sub_10001142C(uint64_t a1, const char *a2)
{
  if (!*(a1 + 20))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(*(a1 + 24) + 8 * v4);
    name = embeddedtest_test_case_statistic_bucket_get_name(v5);
    if (!strcmp(name, a2))
    {
      break;
    }

    if (++v4 >= *(a1 + 20))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_100011498(uint64_t a1, const char *a2)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(*(a1 + 40) + 8 * v4);
    name = embeddedtest_test_case_statistic_metric_get_name(v5);
    if (!strcmp(a2, name))
    {
      break;
    }

    if (++v4 >= *(a1 + 32))
    {
      return 0;
    }
  }

  return v5;
}

void *embeddedtest_results_create(int a1)
{
  v1 = a1;
  if ((a1 - 1) >= 2)
  {
    printf("Impossible results class %d\n", a1);
    return 0;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040304EF5A4uLL);
    if (!v2)
    {
      sub_100015DF4();
    }

    v3 = v2;
    v4 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    v3[2] = v4;
    if (!v4)
    {
      sub_100015DB8();
    }

    *v3[2] = embeddedtest_info_pair_create("Embedded Test Version", "23");
    *(v3 + 6) = 1;
    v5 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *v3 = v5;
    if (!v5)
    {
      sub_100015D7C();
    }

    *(v3 + 2) = 0;
    v6 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    v3[4] = v6;
    if (!v6)
    {
      sub_100015D40();
    }

    *(v3 + 10) = 0;
    *(v3 + 44) = v1;
  }

  return v3;
}

void embeddedtest_results_free(void *a1)
{
  if (a1)
  {
    if (*(a1 + 6))
    {
      v2 = 0;
      do
      {
        embeddedtest_info_pair_free(*(a1[2] + 8 * v2++));
      }

      while (v2 < *(a1 + 6));
    }

    v3 = a1[2];
    if (v3)
    {
      free(v3);
    }

    if (*(a1 + 2))
    {
      v4 = 0;
      do
      {
        embeddedtest_issue_aggregate_free(*(*a1 + 8 * v4++));
      }

      while (v4 < *(a1 + 2));
    }

    if (*a1)
    {
      free(*a1);
    }

    if (*(a1 + 10))
    {
      v5 = 0;
      do
      {
        embeddedtest_test_case_statistic_free(*(a1[4] + 8 * v5++));
      }

      while (v5 < *(a1 + 10));
    }

    v6 = a1[4];
    if (v6)
    {
      free(v6);
    }

    free(a1);
  }
}

void *embeddedtest_results_copy_json_representation(uint64_t a1)
{
  json_string_from_array = embeddedtest_create_json_string_from_array(*(a1 + 16), *(a1 + 24), "%s,%s", embeddedtest_info_pair_copy_json_representation);
  v3 = embeddedtest_create_json_string_from_array(*a1, *(a1 + 8), "%s,%s", embeddedtest_issue_aggregate_copy_json_representation);
  v4 = embeddedtest_create_json_string_from_array(*(a1 + 32), *(a1 + 40), "%s,%s", embeddedtest_test_case_statistic_copy_json_representation);
  v12 = 0;
  embeddedtest_asprintf(&v12, "{Info:{%s},Issues:[%s],Test Cases:[%s]}", v5, v6, v7, v8, v9, v10, json_string_from_array);
  if (json_string_from_array)
  {
    free(json_string_from_array);
  }

  if (v3)
  {
    free(v3);
  }

  if (v4)
  {
    free(v4);
  }

  return v12;
}

_BYTE *embeddedtest_results_create_from_resume_data(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040304EF5A4uLL);
  if (!v2)
  {
    sub_100015EE4();
  }

  v3 = v2;
  v14 = 0;
  embeddedtest_deserialize_size(a1, &v14);
  v3[44] = embeddedtest_deserialize_results_class(a1, &v14);
  v4 = embeddedtest_deserialize_count(a1, &v14);
  *(v3 + 6) = v4;
  v5 = malloc_type_calloc(v4, 8uLL, 0x2004093837F09uLL);
  *(v3 + 2) = v5;
  if (!v5)
  {
    sub_100015EA8();
  }

  if (*(v3 + 6))
  {
    v6 = 0;
    do
    {
      *(*(v3 + 2) + 8 * v6++) = embeddedtest_info_pair_create_from_buffer(a1, &v14);
    }

    while (v6 < *(v3 + 6));
  }

  v7 = embeddedtest_deserialize_count(a1, &v14);
  *(v3 + 2) = v7;
  v8 = malloc_type_calloc(v7, 8uLL, 0x2004093837F09uLL);
  *v3 = v8;
  if (!v8)
  {
    sub_100015E6C();
  }

  if (*(v3 + 2))
  {
    v9 = 0;
    do
    {
      *(*v3 + 8 * v9++) = embeddedtest_issue_aggregate_create_from_buffer(a1, &v14);
    }

    while (v9 < *(v3 + 2));
  }

  v10 = embeddedtest_deserialize_count(a1, &v14);
  *(v3 + 10) = v10;
  v11 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  *(v3 + 4) = v11;
  if (!v11)
  {
    sub_100015E30();
  }

  if (*(v3 + 10))
  {
    v12 = 0;
    do
    {
      *(*(v3 + 4) + 8 * v12++) = embeddedtest_test_case_statistic_create_from_buffer(a1, &v14);
    }

    while (v12 < *(v3 + 10));
  }

  return v3;
}

uint64_t embeddedtest_results_get_size(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v3 += embeddedtest_info_pair_get_size(*(*(a1 + 16) + 8 * v2++));
    }

    while (v2 < *(a1 + 24));
    v4 = v3 + 17;
  }

  else
  {
    v4 = 17;
  }

  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 += embeddedtest_issue_aggregate_get_size(*(*a1 + 8 * v5++));
    }

    while (v5 < *(a1 + 8));
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 40))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v8 += embeddedtest_test_case_statistic_get_size(*(*(a1 + 32) + 8 * v7++));
    }

    while (v7 < *(a1 + 40));
  }

  else
  {
    v8 = 0;
  }

  return (v4 + v6 + v8);
}

uint64_t embeddedtest_results_test_case_print(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 40))
    {
      v3 = 0;
      do
      {
        v4 = *(*(a1 + 32) + 8 * v3);
        if (embeddedtest_test_case_statistic_get_failure_count(v4))
        {
          v5 = "[Fail]";
        }

        else
        {
          v5 = "[Pass]";
        }

        name = embeddedtest_results_get_name(a1);
        v7 = embeddedtest_test_case_statistic_get_name(v4);
        printf("%s %s/%s\n", v5, name, v7);
        ++v3;
      }

      while (v3 < *(a1 + 40));
    }

    return 0;
  }

  else
  {

    return embeddedtest_error_get_error(1, "Cannot print tests cases for NULL result to syslog");
  }
}

uint64_t embeddedtest_results_get_name(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v2);
    key = embeddedtest_info_pair_get_key(v3);
    if (!strcmp("Name", key))
    {
      break;
    }

    if (++v2 >= *(a1 + 24))
    {
      return 0;
    }
  }

  return embeddedtest_info_pair_get_value(v3);
}

uint64_t embeddedtest_results_add_test_case(uint64_t a1, uint64_t a2)
{
  v4 = embeddedtest_test_case_result_check_validity(a2);
  name = embeddedtest_test_case_result_get_name(a2);
  if (v4)
  {
    embeddedtest_log_error(v4);
    v6 = embeddedtest_issue_create();
    __s1 = 0;
    embeddedtest_asprintf(&__s1, "Had to drop an instance of %s (%d)", v7, v8, v9, v10, v11, v12, name);
    embeddedtest_issue_set_reason(v6, __s1);
    if (__s1)
    {
      free(__s1);
    }

    v13 = time(0);
    embeddedtest_issue_set_time(v6, v13);
    embeddedtest_issue_set_class(v6, 3);
    embeddedtest_issue_set_group(v6, "libembeddedtest");
    embeddedtest_results_add_issue(a1, v6);
    embeddedtest_issue_free(v6);
    return v4;
  }

  if (*(a1 + 44) == 1 && embeddedtest_test_case_result_is_histogram(a2))
  {
    v15 = "Unit test results only accept pass fail test cases";
    v16 = 3;
LABEL_12:

    return embeddedtest_error_get_error(v16, v15);
  }

  v17 = sub_100011EEC(a1, name);
  if (!v17)
  {
    v18 = embeddedtest_test_case_statistic_create(a2);
    if (!v18)
    {
      sub_100015F5C();
    }

    v19 = v18;
    v20 = malloc_type_realloc(*(a1 + 32), 8 * (*(a1 + 40) + 1), 0x2004093837F09uLL);
    *(a1 + 32) = v20;
    if (!v20)
    {
      sub_100015F20();
    }

    v4 = 0;
    v21 = *(a1 + 40);
    v20[v21] = v19;
    *(a1 + 40) = v21 + 1;
    return v4;
  }

  if (*(a1 + 44) == 1)
  {
    v15 = "Unit test results cannot accept two instances of the same test case";
    v16 = 1;
    goto LABEL_12;
  }

  return embeddedtest_test_case_statistic_add_result(v17, a2);
}

uint64_t embeddedtest_results_add_issue(uint64_t a1, uint64_t a2)
{
  v4 = embeddedtest_issue_check_validity(a2);
  if (v4)
  {
    v5 = v4;
    v6 = embeddedtest_issue_create();
    __s1 = 0;
    embeddedtest_asprintf(&__s1, "Had to drop an issue (%d)", v7, v8, v9, v10, v11, v12, v5);
    embeddedtest_issue_set_reason(v6, __s1);
    if (__s1)
    {
      free(__s1);
    }

    v13 = time(0);
    embeddedtest_issue_set_time(v6, v13);
    embeddedtest_issue_set_class(v6, 3);
    embeddedtest_issue_set_group(v6, "libembeddedtest");
    embeddedtest_results_add_issue(a1, v6);
    embeddedtest_issue_free(v6);
    return v5;
  }

  v15 = sub_100011F5C(a1, a2);
  if (!v15)
  {
    v16 = embeddedtest_issue_aggregate_create(a2);
    if (!v16)
    {
      sub_100015FD4();
    }

    v17 = v16;
    v18 = malloc_type_realloc(*a1, 8 * (*(a1 + 8) + 1), 0x2004093837F09uLL);
    *a1 = v18;
    if (!v18)
    {
      sub_100015F98();
    }

    v5 = 0;
    v19 = *(a1 + 8);
    v18[v19] = v17;
    *(a1 + 8) = v19 + 1;
    return v5;
  }

  return embeddedtest_issue_aggregate_merge_with_issue(v15, a2);
}

uint64_t sub_100011EEC(uint64_t a1, const char *a2)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(*(a1 + 32) + 8 * v4);
    name = embeddedtest_test_case_statistic_get_name(v5);
    if (!strcmp(a2, name))
    {
      break;
    }

    if (++v4 >= *(a1 + 40))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_100011F5C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(*a1 + 8 * v4);
    reason = embeddedtest_issue_get_reason(a2);
    group = embeddedtest_issue_get_group(a2);
    v8 = embeddedtest_issue_get_class(a2);
    v9 = embeddedtest_issue_aggregate_get_reason(v5);
    v10 = embeddedtest_issue_aggregate_get_group(v5);
    v11 = embeddedtest_issue_aggregate_get_class(v5);
    if (!strcmp(reason, v9) && !strcmp(group, v10) && v8 == v11)
    {
      break;
    }

    if (++v4 >= *(a1 + 8))
    {
      return 0;
    }
  }

  return v5;
}

BOOL embeddedtest_results_did_pass(uint64_t a1)
{
  if (*(a1 + 44) != 1)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  if (!*(a1 + 40))
  {
    return 1;
  }

  v3 = 0;
  do
  {
    failure_count = embeddedtest_test_case_statistic_get_failure_count(*(*(a1 + 32) + 8 * v3));
    result = failure_count == 0;
    if (failure_count)
    {
      break;
    }

    ++v3;
  }

  while (v3 < *(a1 + 40));
  return result;
}

double *embeddedtest_test_case_metric_create(const char *a1, double a2)
{
  if (a1)
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040FDD9F14CuLL);
    if (!v4)
    {
      sub_10001604C();
    }

    v5 = v4;
    v6 = strdup(a1);
    *v5 = v6;
    if (!v6)
    {
      sub_100016010();
    }

    v5[1] = a2;
  }

  else
  {
    printf("Unable to create a test case metric with a NULL name...%s\n", 0);
    return 0;
  }

  return v5;
}

void embeddedtest_test_case_metric_free(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

double embeddedtest_deserialize_metric_value(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  result = *(a1 + v2);
  *a2 = v2 + 8;
  return result;
}

_BYTE *embeddedtest_issue_create()
{
  result = malloc_type_calloc(1uLL, 0x20uLL, 0x101004089121A46uLL);
  if (!result)
  {
    sub_100016088();
  }

  result[24] = 3;
  *(result + 2) = 0;
  *result = 0;
  *(result + 2) = 0;
  return result;
}

void embeddedtest_issue_free(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

char *embeddedtest_convert_error_class_to_string(char a1)
{
  if ((a1 - 1) > 3u)
  {
    return 0;
  }

  else
  {
    return (&off_100020708)[(a1 - 1)];
  }
}

uint64_t embeddedtest_issue_set_reason(void **a1, char *__s1)
{
  if (a1)
  {
    if (__s1)
    {
      v4 = *a1;
      if (v4)
      {
        free(v4);
      }

      v5 = strdup(__s1);
      *a1 = v5;
      if (!v5)
      {
        sub_1000160C4();
      }

      return 0;
    }

    v7 = "Cannot set issue reason to NULL";
  }

  else
  {
    v7 = "Cannot set the reason for a NULL issue";
  }

  return embeddedtest_error_get_error(1, v7);
}

uint64_t embeddedtest_issue_set_group(uint64_t a1, char *__s1)
{
  if (a1)
  {
    if (__s1)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        free(v4);
      }

      v5 = strdup(__s1);
      *(a1 + 16) = v5;
      if (!v5)
      {
        sub_100016100();
      }

      return 0;
    }

    v7 = "Cannot set issue group to NULL";
  }

  else
  {
    v7 = "Cannot set the group for a NULL issue";
  }

  return embeddedtest_error_get_error(1, v7);
}

uint64_t embeddedtest_issue_set_time(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      *(a1 + 8) = a2;
      return 0;
    }

    v3 = "Cannot set issue time to 0";
  }

  else
  {
    v3 = "Cannot set the time for a NULL issue";
  }

  return embeddedtest_error_get_error(1, v3);
}

uint64_t embeddedtest_issue_set_class(uint64_t a1, int a2)
{
  if (a1)
  {
    if ((a2 - 1) < 4)
    {
      *(a1 + 24) = a2;
      return 0;
    }

    v3 = "Error class requested does not match anything in enum";
  }

  else
  {
    v3 = "Cannot set the class for a NULL issue";
  }

  return embeddedtest_error_get_error(1, v3);
}

uint64_t embeddedtest_issue_check_validity(uint64_t a1)
{
  if (!a1)
  {
    v2 = "Unable to check validity of NULL issue";
    v3 = 1;
    return embeddedtest_error_get_error(v3, v2);
  }

  if (!*(a1 + 16))
  {
    v2 = "Issue must have a group";
LABEL_11:
    v3 = 2;
    return embeddedtest_error_get_error(v3, v2);
  }

  if (!*a1)
  {
    v2 = "Issue must have a reason";
    goto LABEL_11;
  }

  if (*(a1 + 8) <= 0)
  {
    return embeddedtest_error_get_error(3, "Issue cannot have a time of less than or equal to 0");
  }

  else
  {
    return 0;
  }
}

char **embeddedtest_issue_aggregate_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x101004089121A46uLL);
    if (!v2)
    {
      sub_1000161B4();
    }

    v3 = v2;
    reason = embeddedtest_issue_get_reason(a1);
    v5 = strdup(reason);
    *v3 = v5;
    if (!v5)
    {
      sub_100016178();
    }

    group = embeddedtest_issue_get_group(a1);
    v7 = strdup(group);
    v3[2] = v7;
    if (!v7)
    {
      sub_10001613C();
    }

    *(v3 + 24) = embeddedtest_issue_get_class(a1);
    *(v3 + 2) = 1;
  }

  else
  {
    puts("embeddedtest_issue_t object is required to create an issue aggregate");
    return 0;
  }

  return v3;
}

void embeddedtest_issue_aggregate_free(void **a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      free(v2);
    }

    if (*a1)
    {
      free(*a1);
    }

    free(a1);
  }
}

void *embeddedtest_issue_aggregate_copy_json_representation(uint64_t *a1)
{
  embeddedtest_convert_error_class_to_string(*(a1 + 24));
  v11 = 0;
  v10 = *(a1 + 2);
  v9 = *a1;
  embeddedtest_asprintf(&v11, "{Group:%s,Reason:%s,Class:%s,Count:%d}", v2, v3, v4, v5, v6, v7, a1[2]);
  return v11;
}

uint64_t embeddedtest_issue_aggregate_merge_with_issue(uint64_t a1, uint64_t a2)
{
  v3 = embeddedtest_issue_aggregate_create(a2);
  v4 = embeddedtest_issue_aggregate_merge_with_aggregate(a1, v3);
  embeddedtest_issue_aggregate_free(v3);
  return v4;
}

uint64_t embeddedtest_issue_aggregate_merge_with_aggregate(uint64_t a1, uint64_t a2)
{
  if (!strcmp(*a1, *a2))
  {
    if (!strcmp(*(a1 + 16), *(a2 + 16)))
    {
      if (*(a1 + 24) == *(a2 + 24))
      {
        *(a1 + 8) += *(a2 + 8);
        return 0;
      }

      v4 = "Cannot merge issues with different classes";
    }

    else
    {
      v4 = "Cannot merge issues with different groups";
    }
  }

  else
  {
    v4 = "Cannot merge issues with different reasons";
  }

  return embeddedtest_error_get_error(1, v4);
}

void *embeddedtest_issue_aggregate_create_from_buffer(uint64_t a1, _DWORD *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x101004089121A46uLL);
  if (!v4)
  {
    sub_1000161F0();
  }

  v5 = v4;
  *v4 = embeddedtest_create_string_from_buffer(a1, a2);
  v5[2] = embeddedtest_create_string_from_buffer(a1, a2);
  *(v5 + 2) = embeddedtest_deserialize_count(a1, a2);
  v6 = *a2;
  v7 = *(a1 + v6);
  *a2 = v6 + 1;
  *(v5 + 24) = v7;
  return v5;
}

uint64_t embeddedtest_deserialize_size(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  result = *(a1 + v2);
  *a2 = v2 + 4;
  return result;
}

uint64_t embeddedtest_deserialize_count(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  result = *(a1 + v2);
  *a2 = v2 + 4;
  return result;
}

_BYTE *embeddedtest_create_string_from_buffer(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  v3 = *(a1 + v2);
  *a2 = v2 + 4;
  if (v3 >= 0x2711)
  {
    sub_100016268();
  }

  v6 = malloc_type_calloc(1uLL, v3 + 1, 0x100004077774924uLL);
  if (!v6)
  {
    sub_10001622C();
  }

  v7 = v6;
  memcpy(v6, (a1 + *a2), v3);
  v7[v3] = 0;
  *a2 += v3;
  return v7;
}

uint64_t embeddedtest_deserialize_flags(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  result = *(a1 + v2);
  *a2 = v2 + 4;
  return result;
}

uint64_t embeddedtest_deserialize_results_class(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  result = *(a1 + v2);
  *a2 = v2 + 1;
  return result;
}

uint64_t embeddedtest_deserialize_test_suite_class(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  result = *(a1 + v2);
  *a2 = v2 + 1;
  return result;
}

uint64_t embeddedtest_deserialize_BOOL(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  v3 = v2 + 1;
  LOBYTE(v2) = *(a1 + v2);
  *a2 = v3;
  return v2 & 1;
}

uint64_t embeddedtest_deserialize_time(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  result = *(a1 + v2);
  *a2 = v2 + 4;
  return result;
}

unsigned int *embeddedtest_test_suite_create_from_resume_data(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x109004088103722uLL);
  if (!v2)
  {
    sub_1000162C0();
  }

  v3 = v2;
  v8 = 0;
  embeddedtest_deserialize_size(a1, &v8);
  *v3 = embeddedtest_create_string_from_buffer(a1, &v8);
  v4 = embeddedtest_deserialize_count(a1, &v8);
  v3[8] = v4;
  v5 = malloc_type_calloc(v4, 8uLL, 0x2004093837F09uLL);
  *(v3 + 3) = v5;
  if (!v5)
  {
    sub_100016284();
  }

  if (v3[8])
  {
    v6 = 0;
    do
    {
      *(*(v3 + 3) + 8 * v6++) = embeddedtest_test_case_create_from_buffer(a1, &v8);
    }

    while (v6 < v3[8]);
  }

  *(v3 + 36) = embeddedtest_deserialize_test_suite_class(a1, &v8);
  *(v3 + 37) = embeddedtest_deserialize_BOOL(a1, &v8);
  v3[10] = embeddedtest_deserialize_count(a1, &v8);
  v3[11] = embeddedtest_deserialize_time(a1, &v8);
  *(v3 + 48) = 0;
  return v3;
}

uint64_t embeddedtest_test_suite_get_size(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v3 += embeddedtest_test_case_get_size(*(*(a1 + 24) + 8 * v2++));
    }

    while (v2 < *(a1 + 32));
    v4 = v3 + 22;
  }

  else
  {
    v4 = 22;
  }

  return v4 + strlen(*a1);
}

_DWORD *embeddedtest_test_case_statistic_bucket_create(const char *a1, int a2)
{
  if (a1)
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
    if (!v4)
    {
      sub_100016338();
    }

    v5 = v4;
    v6 = strdup(a1);
    *v5 = v6;
    if (!v6)
    {
      sub_1000162FC();
    }

    v5[2] = a2;
  }

  else
  {
    puts("Unable to create a statistic bucket with a null name");
    return 0;
  }

  return v5;
}

void embeddedtest_test_case_statistic_bucket_free(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

void *embeddedtest_test_case_statistic_bucket_copy_json_representation(uint64_t a1)
{
  v13 = 0;
  v2 = *a1;
  v3 = strlen(*a1);
  v4 = embeddedtest_escape_json_string(v2, v3);
  v12 = *(a1 + 8);
  embeddedtest_asprintf(&v13, "%s:%d", v5, v6, v7, v8, v9, v10, v4);
  if (v4)
  {
    free(v4);
  }

  return v13;
}

void *embeddedtest_test_case_statistic_bucket_create_from_buffer(uint64_t a1, _DWORD *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  if (!v4)
  {
    sub_100016374();
  }

  v5 = v4;
  *v4 = embeddedtest_create_string_from_buffer(a1, a2);
  *(v5 + 2) = embeddedtest_deserialize_count(a1, a2);
  return v5;
}

uint64_t embeddedtest_error_get_error(uint64_t a1, const char *a2)
{
  if ((a1 - 1) > 3u)
  {
    v3 = "Unknown";
  }

  else
  {
    v3 = (&off_100020728)[(a1 - 1)];
  }

  printf("Error seen...%s - %s\n", v3, a2);
  return a1;
}

uint64_t embeddedtest_log_error(__int16 a1)
{
  if ((a1 - 1) > 3u)
  {
    v1 = "Unknown";
  }

  else
  {
    v1 = (&off_100020728)[(a1 - 1)];
  }

  return printf("Error: %s\n", v1);
}

void *embeddedtest_test_case_create(const char *a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a1 && a2)
  {
    v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x109004054B0866CuLL);
    if (!v10)
    {
      sub_1000163B0();
    }

    v11 = v10;
    *v10 = strdup(a1);
    v11[1] = strdup(a2);
    v11[2] = a3;
    v11[3] = a4;
    *(v11 + 8) = a5;
    *(v11 + 36) = 0;
  }

  else
  {
    printf("Test cases require a name and category (name = %s, category = %s)\n", a1, a2);
    return 0;
  }

  return v11;
}

void *embeddedtest_test_case_create_from_buffer(uint64_t a1, _DWORD *a2)
{
  string_from_buffer = embeddedtest_create_string_from_buffer(a1, a2);
  v5 = embeddedtest_create_string_from_buffer(a1, a2);
  v6 = embeddedtest_deserialize_flags(a1, a2);

  return embeddedtest_test_case_create(string_from_buffer, v5, 0, 0, v6);
}

char **embeddedtest_info_pair_create(const char *a1, const char *a2)
{
  if (a1 && a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10040B8F86A93uLL);
    if (!v4)
    {
      sub_100016464();
    }

    v5 = v4;
    v6 = strdup(a1);
    *v5 = v6;
    if (!v6)
    {
      sub_100016428();
    }

    v7 = strdup(a2);
    v5[1] = v7;
    if (!v7)
    {
      sub_1000163EC();
    }
  }

  else
  {
    printf("Key and value are required to create info pair.  Key was %s and value was %s\n", a1, a2);
    return 0;
  }

  return v5;
}

void embeddedtest_info_pair_free(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

void *embeddedtest_info_pair_copy_json_representation(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v9 = a1[1];
  embeddedtest_asprintf(&v10, "%s:%s", a3, a4, a5, a6, a7, a8, *a1);
  return v10;
}

char **embeddedtest_info_pair_create_from_buffer(uint64_t a1, _DWORD *a2)
{
  string_from_buffer = embeddedtest_create_string_from_buffer(a1, a2);
  v5 = embeddedtest_create_string_from_buffer(a1, a2);
  v6 = embeddedtest_info_pair_create(string_from_buffer, v5);
  if (string_from_buffer)
  {
    free(string_from_buffer);
  }

  if (v5)
  {
    free(v5);
  }

  return v6;
}

uint64_t sub_10001309C(uint64_t a1, _BYTE *a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (Img4DecodePayloadPropertiesExists(a1))
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100013160(uint64_t a1, _DWORD *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v9 = 0xAAAAAAAAAAAAAAAALL;
      __src = 0xAAAAAAAAAAAAAAAALL;
      Img4DecodeGetRestoreInfoData(a1, 1969448306, &__src, &v9);
      v6 = v5;
      result = 0;
      if (!v6 && v9 == 588)
      {
        memcpy(a2, __src, 0x24CuLL);
        a2[147] = 0;
        Img4DecodeGetRestoreInfoData(a1, 1969450862, &__src, &v9);
        v8 = v7;
        result = 0;
        if (!v8 && v9 == 1324)
        {
          memcpy(a2 + 148, __src, 0x52CuLL);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100013234(uint64_t a1, unint64_t a2, void *a3, _DWORD *a4)
{
  if (a2 > 0xFFFFFFE7 || a1 == 0 || a3 == 0 || a4 == 0)
  {
    return 0;
  }

  *a4 = 1;
  v7 = a3[1];
  if (!v7)
  {
    return 0;
  }

  v8 = v7 - a1 + 24;
  v10 = a3[2];
  v9 = a3[3];
  a4[2] = v8;
  a4[3] = v10;
  if (!v9)
  {
    return 0;
  }

  v11 = a3[4];
  a4[4] = v9 - a1 + 24;
  a4[5] = v11;
  a4[1] = a2 + 24;
  return 1;
}

void sub_100013298()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

int *sub_100013448(int *a1)
{
  v2 = __stderrp;
  v3 = __error();
  v4 = strerror(*v3);
  fprintf(v2, "ERROR: failed to determine utility name: %s\n", v4);
  result = __error();
  *a1 = *result;
  return result;
}

uint64_t sub_10001351C(const char *a1)
{
  fprintf(__stderrp, "%s: ERROR: At least one option required\n", a1);

  return sub_10000134C();
}

int *sub_1000135EC(int *a1)
{
  fprintf(__stderrp, "%s: can't open '%s'\n", qword_100024C60, optarg);
  result = __error();
  *a1 = *result;
  return result;
}

void sub_100014B90(void *a1, int a2)
{
  memset(a1, 170, 0x100uLL);
  snprintf(a1, 0x100uLL, "Hilo update timer failed: 0x%x", a2);
  _os_crash();
  __break(1u);
}

uint64_t sub_100014BDC(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/xART");
  if (v1)
  {
    IOObjectRelease(v1);
  }

  return sub_1000094CC();
}

uint64_t sub_100014C38(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/Sandcat");
  if (v1)
  {
    IOObjectRelease(v1);
  }

  return sub_1000094CC();
}

uint64_t sub_100014C94(const char *a1, unint64_t a2)
{
  v11[0] = 0x300000004;
  v11[1] = 0;
  v12 = a2;
  v13 = 0;
  if (!a1)
  {
    return 22;
  }

  v2 = a2;
  v4 = open(a1, 2562, 384);
  if (v4 < 0)
  {
    return *__error();
  }

  v5 = v4;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v14.f_ffree = v6;
  *&v14.f_flag = v6;
  *&v14.f_bsize = v6;
  *&v14.f_blocks = v6;
  v7 = statvfs(a1, &v14);
  if (!v7)
  {
    f_frsize = vm_page_size;
    if (v14.f_frsize > vm_page_size)
    {
      f_frsize = v14.f_frsize;
    }

    if (v2 % f_frsize)
    {
      v2 += f_frsize - v2 % f_frsize;
      v12 = v2;
    }

    v7 = fcntl(v5, 42, v11);
    if (!v7)
    {
      v7 = ftruncate(v5, v2);
      if (!v7)
      {
        if (!close(v5))
        {
          return 0;
        }

        return *__error();
      }
    }
  }

  v8 = v7;
  close(v5);
  return v8;
}

void sub_100014DA4()
{
  v0 = __error();
  v1 = strerror(*v0);
  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "could not get the machine's unique identifier, reason: %s", &v2, 0xCu);
}

double DERImg4DecodeContentFindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeSeqContentInit(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!DERDecodeSeqNext(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      sub_10000E2D8();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (sub_10000E2EC(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          sub_10000E2EC();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_10000E2D8();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6)
          {
            return 0;
          }

          sub_10000E2EC();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      *(a2 + 16) = v7;
      v8 = v11[3];
      *(a2 + 32) = v11[2];
      *(a2 + 48) = v8;
      v9 = v11[5];
      *(a2 + 64) = v11[4];
      *(a2 + 80) = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_10000E2D8();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePropertyWithItem(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = 0;
  v9[0] = 0;
  v9[2] = 0;
  v9[1] = 22;
  v9[3] = 24;
  v10 = a3;
  result = DERParseSequenceToObject(a1, 2u, v9, a4, 0x30uLL, 0);
  if (!result)
  {
    result = DERParseInteger(a4, &v8);
    if (!result)
    {
      if ((v8 | 0xE000000000000000) == a2)
      {
        result = 0;
        *(a4 + 16) = a2 | 0xE000000000000000;
        *(a4 + 40) = a3;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

unint64_t *DERImg4DecodeFindProperty(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = DERDecodeSeqContentInit(a1, v8);
  if (!result)
  {
    return DERImg4DecodeFindPropertyInSequence(v8, a2, a3, a4);
  }

  return result;
}

uint64_t Img4DecodePayloadPropertiesExists(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  sub_10000E93C(a1);
  result = 6;
  if (v1)
  {
    v5 = *(v2 + 8);
    v4 = v2 + 8;
    if (v5)
    {
      result = DERImg4DecodePayloadWithProperties(v4, v6);
      if (!result)
      {
        *v1 = v7 != 0;
      }
    }
  }

  return result;
}

uint64_t Img4DecodeGetPropertyBoolean(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v15 = *a1;
  v16 = v4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = DERImg4DecodeProperty(&v15, a2 | 0xE000000000000000, &v17);
  if (!result)
  {
    if (*(&v19 + 1) == 1)
    {
      if (a3)
      {
        v13 = sub_10000E92C(result, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1));
        return DERParseBoolean(v13, v14);
      }

      else
      {
        return 6;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t Img4DecodeEvaluateDictionaryProperties(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  if (!a3)
  {
    return 6;
  }

  result = DERDecodeSeqContentInit(a1, v13);
  if (!result)
  {
    while (1)
    {
      result = DERDecodeSeqNext(v13, &v14);
      if (result == 1)
      {
        return 0;
      }

      if (result)
      {
        return result;
      }

      result = DERImg4DecodeProperty(&v15, v14, v8);
      if (result)
      {
        return result;
      }

      result = 2;
      if (*(&v9 + 1) > 0x16uLL || ((1 << SBYTE8(v9)) & 0x400016) == 0 || !(v14 >> 62) || (v14 & 0x2000000000000000) == 0)
      {
        return result;
      }

      if (HIDWORD(v16))
      {
        break;
      }

      v10 = v15;
      LODWORD(v11) = v16;
      v12 = *(&v9 + 1);
      result = a3(v14, &v10, a2, a4);
      if (result)
      {
        return result;
      }
    }

    return 7;
  }

  return result;
}

uint64_t Img4DecodeComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          v8 = *(a5 + 32);
          if (v8)
          {
            v9 = v8[2];
            if (v9)
            {
              if (*v8 == a4)
              {
                if (*v9 && **v9 == a4)
                {
                  ccdigest();
                  return 0;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t SEPART_decode(uint64_t *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  ccder_decode_sequence_tl();
  *a1 = ccder_decode_uint64();
  result = ccder_decode_sequence_tl();
  if (result)
  {
    *a2 = 0;
    *a3 = 0;
    v10 = ccder_decode_tl();
    *a4 = v10;
    return v10 + *a3;
  }

  return result;
}

uint64_t std::istream::operator>>()
{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}