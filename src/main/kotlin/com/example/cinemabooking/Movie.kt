package com.example.cinemabooking

import jakarta.persistence.*

@Entity
class Movie(
    @Column(nullable = false)
    val title: String,
    @Column(nullable = false)
    val duration: Int,
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    val movieId: Long? = null
)