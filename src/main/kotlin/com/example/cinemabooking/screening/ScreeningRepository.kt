package com.example.cinemabooking.screening

import org.springframework.data.jpa.repository.EntityGraph
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import java.util.*

interface ScreeningRepository : JpaRepository<Screening, Int> {
    @Query("select s from Screening s " +
            "join fetch Movie m on s.movie = m " +
            "where s.startTime >= :from and s.startTime + m.duration * 60 * 1000 <= :to " +
            "order by m.title, s.startTime asc")
    @EntityGraph(attributePaths = ["movie"])
    fun getAllInInterval(from: Long, to: Long): List<Screening>
}