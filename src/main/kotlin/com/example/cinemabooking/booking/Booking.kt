package com.example.cinemabooking.booking

import com.example.cinemabooking.screening.Screening
import jakarta.persistence.*

@Entity
class Booking (
    @OneToMany(mappedBy = "booking", cascade = [CascadeType.ALL])
    val tickets: List<Ticket>,
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "screening_id")
    val screening: Screening,
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    val bookingId: Int? = null,
)