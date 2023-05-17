package com.example.cinemabooking.screening

import jakarta.persistence.*

@Entity
class Movie(
    @Column(nullable = false)
    val title: String,
    @Column(nullable = false)
    val duration: Int,
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val movieId: Int? = null
)