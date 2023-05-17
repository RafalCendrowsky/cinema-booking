package com.example.cinemabooking.booking

import jakarta.validation.constraints.Min
import jakarta.validation.constraints.Pattern

data class BookingSeat(
    @field:Min(value = 1, message = "Row number must be a positive integer")
    val row: Int,
    @field:Min(value = 1, message = "Seat number must be a positive integer")
    val seat: Int,
    @field:Pattern(regexp = "^(adult|child|student)\$", message = "Type must be one of: adult, child, student")
    val type: String
)