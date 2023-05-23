package com.example.cinemabooking.booking

import jakarta.validation.constraints.NotEmpty
import jakarta.validation.constraints.Pattern

data class BookingRequest (
    @field:Pattern(regexp = "^\\p{Lu}\\p{Ll}{2,}\$", message = "Name must be at least 3 characters long, " +
            "start with a capital letter and contain only letters")
    val name: String,
    @field:Pattern(regexp = "^\\p{Lu}\\p{Ll}{2,}(-\\p{Lu}\\p{Ll}{2,})?\$", message = "Surname must be at least 3 characters long, " +
            "start with a capital letter and contain only letters or a single hyphen")
    val surname: String,
    @field:NotEmpty(message = "At least one seat must be selected")
    val seats: List<BookingSeat>
)