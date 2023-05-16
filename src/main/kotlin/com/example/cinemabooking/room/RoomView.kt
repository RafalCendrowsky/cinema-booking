package com.example.cinemabooking.room

data class RoomView (
    val rows: List<RowView>,
    val roomNumber: Int,
)

fun Room.toView(seatsTaken: Map<Int, Set<Int>>) = RoomView(
        rows.map { it.toView(seatsTaken[it.rowNumber] ?: emptySet()) },
        roomNumber
)