package com.example.cinemabooking

data class ScreeningView(
    val startTime: String,
    val movie: MovieView,
    val id: Long
)

fun Screening.toView() = ScreeningView(formatEpochMilli(startTime), movie.toView(), screeningId ?: -1)