package com.example.cinemabooking.screening

import com.example.cinemabooking.booking.TicketRepository
import com.example.cinemabooking.common.toEpochMilli
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.server.ResponseStatusException
import java.time.LocalDateTime

@RestController
@RequestMapping("/screenings")
class ScreeningController {

    @Autowired
    lateinit var screeningRepository: ScreeningRepository
    @Autowired
    lateinit var ticketRepository: TicketRepository

    @GetMapping
    fun getAllScreenings(
        @RequestParam("startDate") startDate: LocalDateTime,
        @RequestParam("endDate") endDate: LocalDateTime
    ): List<MovieView> {
        val startDateAdjusted = if (startDate.isAfter(LocalDateTime.now())) startDate else LocalDateTime.now()
        return screeningRepository.getAllInInterval(startDateAdjusted.toEpochMilli(), endDate.toEpochMilli())
                .groupBy { it.movie }
                .map { (movie, screenings) -> movie.toPreview(screenings) }
    }

    @GetMapping("/{screeningId}")
    fun getScreening(@PathVariable("screeningId") screeningId: Int): ScreeningView {
        val seatsTaken = ticketRepository.findTicketsForScreening(screeningId)
                .groupBy { it.row.rowNumber }
                .mapValues { (_, tickets) -> tickets.map { it.seatNumber }.toSet() }

        return screeningRepository.findById(screeningId).map { s -> s.toView(seatsTaken) }
                .orElseThrow { ResponseStatusException(HttpStatus.NOT_FOUND, "Screening not found") }
    }
}