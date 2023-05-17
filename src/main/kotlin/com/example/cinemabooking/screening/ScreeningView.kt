package com.example.cinemabooking.screening

import com.example.cinemabooking.common.formatEpochMilli
import com.example.cinemabooking.room.RoomView
import com.example.cinemabooking.room.toView

data class ScreeningPreview(
    val startTime: String,
    val id: Int
)

data class ScreeningView(
    val startTime: String,
    val room: RoomView,
    val id: Int
)

fun Screening.toView() = ScreeningPreview(formatEpochMilli(startTime), screeningId ?: -1)

fun Screening.toView(seatsTaken: Map<Int, Set<Int>>) =
        ScreeningView(formatEpochMilli(startTime), room.toView(seatsTaken), screeningId ?: -1)