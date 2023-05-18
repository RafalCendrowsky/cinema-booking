package com.example.cinemabooking.screening

import com.example.cinemabooking.booking.BookingRequest
import com.example.cinemabooking.booking.BookingResponse
import java.time.LocalDateTime

interface ScreeningService {
    fun getAllInInterval(from: LocalDateTime, to: LocalDateTime): List<MovieScreeningView>

    fun findById(screeningId: Int): ScreeningView?
    
    fun bookScreening(screeningId: Int, request: BookingRequest, bookingTime: LocalDateTime): BookingResponse?
}