package com.example.cinemabooking.screening

import com.example.cinemabooking.booking.Booking
import com.example.cinemabooking.room.Room
import jakarta.persistence.*

@Entity
class Screening(
    @Column(nullable = false)
    val startTime: Long,
    @ManyToOne(optional = false)
    @JoinColumn(name = "movie_id", nullable = false)
    val movie: Movie,
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "room_number", nullable = false)
    val room: Room,
    @OneToMany(mappedBy = "screening", cascade = [CascadeType.ALL])
    val bookings: List<Booking>,
    @Id
    @GeneratedValue
    val screeningId: Int? = null
)