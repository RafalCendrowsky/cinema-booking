package com.example.cinemabooking.room

data class RowView (
    val availableSeats: List<Int>,
    val rowNumber: Int,
)

fun SeatRow.toView(seatsTaken: Set<Int>) = RowView(
        (1..seatCount).filter { !seatsTaken.contains(it) },
        rowNumber
)