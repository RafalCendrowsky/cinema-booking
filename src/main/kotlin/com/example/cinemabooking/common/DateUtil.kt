package com.example.cinemabooking.common

import java.time.Instant
import java.time.LocalDateTime
import java.time.ZoneId
import java.time.format.DateTimeFormatter

const val SCREENING_DATE_TIME: String = "yyyy-MM-dd HH:mm"

const val ZONE: String = "CET"

fun LocalDateTime.toEpochMilli() = this.atZone(ZoneId.of(ZONE)).toInstant().toEpochMilli()

fun formatEpochMilli(epochMilli: Long): String = LocalDateTime.ofInstant(
        Instant.ofEpochMilli(epochMilli),
        ZoneId.of(ZONE)
    ).format(DateTimeFormatter.ofPattern(SCREENING_DATE_TIME))