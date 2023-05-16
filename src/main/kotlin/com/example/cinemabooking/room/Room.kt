package com.example.cinemabooking.room

import jakarta.persistence.Entity
import jakarta.persistence.Id
import jakarta.persistence.OneToMany

@Entity
class Room (
    @OneToMany(mappedBy = "room")
    val rows: List<Row>,
    @Id
    val roomNumber: Int,
)