package com.example.cinemabooking

data class MovieView(
    val title: String,
    val duration: Int,
    val id: Long
)

fun Movie.toView() = MovieView(title, duration, movieId ?: -1)