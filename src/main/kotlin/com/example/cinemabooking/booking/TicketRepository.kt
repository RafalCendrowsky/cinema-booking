package com.example.cinemabooking.booking

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface TicketRepository : JpaRepository<Ticket, Int> {

    @Query("select t from Ticket t " +
            "join fetch t.row r " +
            "join fetch r.room rm " +
            "where t.booking.screening.screeningId = :screeningId")
    fun findTicketsForScreening(screeningId: Int): List<Ticket>
}