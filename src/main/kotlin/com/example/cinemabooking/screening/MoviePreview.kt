package com.example.cinemabooking.screening

data class MovieView(val title: String, val screenings: List<ScreeningPreview>)


fun Movie.toPreview(screenings: List<Screening>) = MovieView(title, screenings.map { it.toPreview() })