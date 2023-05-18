package com.example.cinemabooking.screening

import com.example.cinemabooking.booking.BookingRequest
import com.example.cinemabooking.booking.BookingResponse
import jakarta.validation.Valid
import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.*
import org.springframework.web.server.ResponseStatusException
import java.time.LocalDateTime

@RestController
@RequestMapping("/screenings")
class ScreeningController(
    val screeningService: ScreeningService
) {
    @GetMapping
    fun getAllScreeningsInPeriod(
        @RequestParam("startDate") startDate: LocalDateTime,
        @RequestParam("endDate") endDate: LocalDateTime
    ): List<MovieScreeningView> = screeningService.getAllInInterval(startDate, endDate)

    @GetMapping("/{screeningId}")
    fun getScreening(@PathVariable("screeningId") screeningId: Int): ScreeningView =
            screeningService.findById(screeningId) ?:
                throw ResponseStatusException(HttpStatus.NOT_FOUND, "Screening not found")

    @PostMapping("/{screeningId}/book")
    fun bookScreening(
        @PathVariable("screeningId") screeningId: Int,
        @Valid @RequestBody request: BookingRequest
    ): BookingResponse = screeningService.bookScreening(screeningId, request, LocalDateTime.now())
            ?: throw ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid booking request")


}