package com.example.cinemabooking.ticket

enum class TicketTypeEnum(val id: Int, val typeName: String) {
    ADULT(1, "adult"),
    STUDENT(2, "student"),
    CHILD(3, "child");

    companion object {
        fun fromName(name: String): TicketTypeEnum? = values().find { it.typeName == name }
    }
}

fun TicketTypeEnum.toEntity() = TicketType(typeName, id)