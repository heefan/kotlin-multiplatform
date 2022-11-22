package com.example.spacexnews.kmm.shared.entity

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

data class RocketLaunch(
    val flightNumber: Int,
    val missionName: String,
    val launchYear: Int,
    val launchDateUTC: String,
    val rocket: Rocket,
    val details: String?,
    val launchSuccess: Boolean?,
    val links: Links
)

data class Rocket(
    val id: String,
    val name: String,
    val type: String
)

data class Links(
    val missionPatchUrl: String?,
    val articleUrl: String?
)