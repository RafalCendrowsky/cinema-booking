package com.example.cinemabooking

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import java.time.LocalDateTime

@RestController
@RequestMapping("/screenings")
class ScreeningController {

    @Autowired
    lateinit var screeningRepository: ScreeningRepository

    @GetMapping
    fun getAllScreenings(
        @RequestParam("startDate") startDate: LocalDateTime,
        @RequestParam("endDate") endDate: LocalDateTime
    ) = screeningRepository.getAllInInterval(startDate.toEpochMilli(), endDate.toEpochMilli()).map { it.toView() }


}