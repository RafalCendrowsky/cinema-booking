package com.example.cinemabooking.booking

import org.springframework.data.jpa.repository.JpaRepository

interface TicketTypeRepository : JpaRepository<TicketType, Int>