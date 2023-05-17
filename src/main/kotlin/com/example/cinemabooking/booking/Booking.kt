package com.example.cinemabooking.booking

import com.example.cinemabooking.screening.Screening
import jakarta.persistence.*

@Entity
class Booking (
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "screening_id")
    val screening: Screening,
    @Column(nullable = false)
    val name: String,
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    val bookingId: Int? = null,
)