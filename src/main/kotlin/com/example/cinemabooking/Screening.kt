package com.example.cinemabooking

import jakarta.persistence.*
@Entity
class Screening(
    @Column(nullable = false)
    val startTime: Long,
    @ManyToOne(optional = false)
    @JoinColumn(name = "movie_id", nullable = false)
    val movie: Movie,
    @Column(nullable = false)
    val room: Int,
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    val screeningId: Long? = null
)