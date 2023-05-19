package com.example.cinemabooking.screening

import com.example.cinemabooking.booking.BookingRequest
import com.example.cinemabooking.booking.BookingSeat
import java.time.LocalDateTime
import java.time.ZoneOffset

const val SCREENING_ID = 1

const val EXPECTED_PRICE = 37.5

const val YEAR_OUT_OF_RANGE = 2123

const val ROW_TAKEN = 2

const val SEAT_TAKEN = 1

const val ADULT_TYPE = "adult"

val epoch: LocalDateTime = LocalDateTime.ofEpochSecond(0, 0, ZoneOffset.UTC)

val request = BookingRequest(
        "John",
        "Doe",
        listOf(
                BookingSeat(1, 1, "adult"),
                BookingSeat(1, 2, "child")
        ))