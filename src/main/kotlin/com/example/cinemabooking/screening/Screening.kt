package com.example.cinemabooking.screening

import com.example.cinemabooking.room.Room
import jakarta.persistence.*

@Entity
class Screening(
    @Column(nullable = false)
    val startTime: Long,
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "movie_id", nullable = false)
    val movie: Movie,
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "room_number", nullable = false)
    val room: Room,
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val screeningId: Int? = null
)