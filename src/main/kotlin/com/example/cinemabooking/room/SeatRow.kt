package com.example.cinemabooking.room

import jakarta.persistence.*

@Entity
class SeatRow(
    @Column(nullable = false)
    val rowNumber: Int,
    @Column(nullable = false)
    val seatCount: Int,
    @ManyToOne(optional = false)
    @JoinColumn(name = "room_number", nullable = false)
    val room: Room,
    @Id
    val rowId: Int,
)