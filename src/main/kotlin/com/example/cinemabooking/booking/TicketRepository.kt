package com.example.cinemabooking.booking

import org.springframework.data.jpa.repository.EntityGraph
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface TicketRepository : JpaRepository<Ticket, Int> {

    @Query("select t from Ticket t " +
            "where t.booking.screening.screeningId = :screeningId")
    @EntityGraph(attributePaths = ["row", "row.room"])
    fun findTicketsForScreening(screeningId: Int): List<Ticket>
}