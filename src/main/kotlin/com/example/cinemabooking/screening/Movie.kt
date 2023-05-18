package com.example.cinemabooking.screening

import jakarta.persistence.Column
import jakarta.persistence.Entity
import jakarta.persistence.Id

@Entity
class Movie(
    @Column(nullable = false)
    val title: String,
    @Column(nullable = false)
    val duration: Int,
    @Id
    val movieId: Int
)