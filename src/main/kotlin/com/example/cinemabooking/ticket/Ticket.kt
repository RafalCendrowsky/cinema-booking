package com.example.cinemabooking.ticket

import com.example.cinemabooking.booking.Booking
import com.example.cinemabooking.room.SeatRow
import jakarta.persistence.*

@Entity
class Ticket(
    @ManyToOne(optional = false, fetch = FetchType.LAZY, cascade = [CascadeType.ALL])
    @JoinColumn(name = "booking_id")
    val booking: Booking,
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "row_id")
    val seatRow: SeatRow,
    @Column(nullable = false)
    val seatNumber: Int,
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "type_id")
    val type: TicketType,
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val ticketId: Int? = null,
)