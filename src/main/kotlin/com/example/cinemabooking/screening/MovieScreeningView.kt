package com.example.cinemabooking.screening

data class MovieScreeningView(val title: String, val screenings: List<ScreeningPreview>)


fun Movie.toView(screenings: List<Screening>) = MovieScreeningView(title, screenings.map { it.toView() })