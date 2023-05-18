package com.example.cinemabooking.screening

import com.example.cinemabooking.booking.BookingRepository
import com.example.cinemabooking.booking.BookingSeat
import com.example.cinemabooking.ticket.TicketRepository
import com.example.cinemabooking.ticket.TicketTypeRepository
import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.extension.ExtendWith
import org.junit.jupiter.params.ParameterizedTest
import org.junit.jupiter.params.provider.ValueSource
import org.mockito.junit.jupiter.MockitoExtension
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest

@DataJpaTest
@ExtendWith(MockitoExtension::class)
class ScreeningServiceImplTest {

    @Autowired
    lateinit var bookingRepository: BookingRepository

    @Autowired
    lateinit var screeningRepository: ScreeningRepository

    @Autowired
    lateinit var ticketRepository: TicketRepository

    @Autowired
    lateinit var ticketTypeRepository: TicketTypeRepository

    lateinit var screeningService: ScreeningService

    @BeforeEach
    fun setUp() {
        screeningService = ScreeningServiceImpl(
                bookingRepository,
                screeningRepository,
                ticketRepository,
                ticketTypeRepository
        )
    }

    @Test
    fun `Test valid booking request`() {
        // WHEN
        val response = screeningService.bookScreening(SCREENING_ID, request, epoch)

        // THEN
        assertNotNull(response)
        assertEquals(EXPECTED_PRICE, response!!.price)
    }

    @ParameterizedTest
    @ValueSource(ints = [1, 2, 5])
    fun `Test booking with seat gap`(seat: Int) {
        // WHEN
        val response = screeningService.bookScreening(
                SCREENING_ID,
                request.copy(seats = listOf(
                        BookingSeat(1, 3, "adult"),
                        BookingSeat(1, seat, "adult")
                )),
                epoch
        )


        // THEN
        assertNull(response)
    }
}