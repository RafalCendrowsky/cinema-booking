package com.example.cinemabooking

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface ScreeningRepository : JpaRepository<Screening, Long> {
    @Query("select s from Screening s " +
            "join fetch Movie m on s.movie = m " +
            "where s.startTime >= :from and s.startTime + m.duration * 60 * 1000 <= :to " +
            "order by m.title, s.startTime asc")
    fun getAllInInterval(from: Long, to: Long): List<Screening>
}