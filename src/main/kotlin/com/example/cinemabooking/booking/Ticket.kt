package com.example.cinemabooking.booking

import com.example.cinemabooking.room.Row
import jakarta.persistence.*

@Entity
class Ticket (
    @ManyToOne(optional = false, fetch = FetchType.LAZY, cascade = [CascadeType.ALL])
    @JoinColumn(name = "booking_id")
    val booking: Booking,
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "row_id")
    val row: Row,
    @Column(nullable = false)
    val seatNumber: Int,
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "type_id")
    val type: TicketType,
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val ticketId: Int? = null,
)