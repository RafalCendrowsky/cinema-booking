package com.example.cinemabooking.screening

import com.example.cinemabooking.booking.BookingRequest
import com.example.cinemabooking.booking.BookingSeat
import java.time.LocalDateTime
import java.time.ZoneOffset

const val SCREENING_ID = 1

const val EXPECTED_PRICE = 37.5

val epoch = LocalDateTime.ofEpochSecond(0, 0, ZoneOffset.UTC)

val request = BookingRequest(
        "John",
        "Doe",
        listOf(
                BookingSeat(1, 1, "adult"),
                BookingSeat(1, 2, "child")
        ))