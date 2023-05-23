package com.example.cinemabooking.booking

import org.springframework.data.jpa.repository.JpaRepository

interface BookingRepository : JpaRepository<Booking, Int>