package com.example.cinemabooking.ticket

import org.springframework.data.jpa.repository.JpaRepository

interface TicketTypeRepository : JpaRepository<TicketType, Int>