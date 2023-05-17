package com.example.cinemabooking.booking

import jakarta.persistence.Column
import jakarta.persistence.Entity
import jakarta.persistence.Id

@Entity
class TicketType (
    @Column(nullable = false)
    val name: String,
    @Id
    val typeId: Int,
    @Column(nullable = false)
    val price: Int? = null
)