package com.example.cinemabooking.screening

import com.example.cinemabooking.booking.*
import com.example.cinemabooking.common.toEpochMilli
import jakarta.transaction.Transactional
import org.springframework.stereotype.Service
import java.time.LocalDateTime

@Service
class ScreeningServiceImpl(
    private val bookingRepository: BookingRepository,
    private val screeningRepository: ScreeningRepository,
    private val ticketRepository: TicketRepository,
    private val ticketTypeRepository: TicketTypeRepository
) : ScreeningService {
    override fun getAllInInterval(from: LocalDateTime, to: LocalDateTime): List<MovieScreeningView> =
            screeningRepository.getAllInInterval(from.toEpochMilli(), to.toEpochMilli())
                    .groupBy { it.movie }
                    .map { (movie, screenings) -> movie.toView(screenings) }

    override fun findById(screeningId: Int): ScreeningView? =
            screeningRepository.findByIdWithRefs(screeningId)?.toView(getSeatsTaken(screeningId))

    @Transactional
    override fun bookScreening(screeningId: Int, request: BookingRequest): BookingResponse? =
            screeningRepository.findByIdWithRefs(screeningId)
                ?.takeIf { validateBookingRequest(it, request) }
                ?.let { s ->
                    val booking = bookingRepository.save(Booking(s, "${request.name} ${request.surname}"))
                    val tickets = request.seats.map { Ticket(
                            booking,
                            s.room.rows.first { r -> r.rowNumber == it.row },
                            it.seat,
                            TicketTypeEnum.fromName(it.type)!!.toEntity())
                    }.let { ticketRepository.saveAll(it) }
                    val prices = ticketTypeRepository.findAllById(tickets.map { it.type.typeId })
                            .associate { it.typeId to it.price }
                    BookingResponse(
                            booking.bookingId ?: -1,
                            tickets.sumOf { prices[it.type.typeId] ?: 0 } / 100)
                }

    private fun validateBookingRequest(screening: Screening, request: BookingRequest): Boolean {
        val seatCounts = screening.room.rows.associate { it.rowNumber to it.seatCount }
        val seatsTaken = getSeatsTaken(screening.screeningId ?: -1)
        return request.seats
                .groupBy({ it.row }, { it.seat })
                .map { (row, seats) -> checkIsRowValid(
                        seats + (seatsTaken[row] ?: emptySet()),
                        seatCounts[row] ?: 0
                ) }
                .reduce(Boolean::and)
    }

    private fun checkIsRowValid(seats: List<Int>, seatCount: Int): Boolean {
        seats.sorted().forEachIndexed { index, seat ->
                if ((seat > seatCount) ||
                        // there's a gap at the start
                        (index == 0 && seat == 2) ||
                        // there is a singular gap between seats
                        (index != 0 && seat - seats[index - 1] == 2) ||
                        // there's a gap at the end
                        (index == seats.size - 1 && seat == seatCount - 1)
                    )  return@checkIsRowValid false
        }
        return true
    }

    private fun getSeatsTaken(screeningId: Int) = ticketRepository.findTicketsForScreening(screeningId)
            .groupBy({ it.row.rowNumber }, { it.seatNumber })
            .mapValues { (_, seats) -> seats.toMutableSet() }
}
