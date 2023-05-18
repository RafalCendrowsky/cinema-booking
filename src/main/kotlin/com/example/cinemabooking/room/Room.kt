package com.example.cinemabooking.room

import jakarta.persistence.Entity
import jakarta.persistence.Id
import jakarta.persistence.OneToMany

@Entity
class Room (
    @OneToMany(mappedBy = "room")
    val seatRows: List<SeatRow>,
    @Id
    val roomNumber: Int,
)