package com.example.spacexnews.kmm.shared.entity

import  kotlinx.serialization.*

@kotlinx.serialization.Serializable
data class RocketLaunch(
    @SerialName("flight_number")
    val flightNumber: Int,
    @SerialName("mission_name")
    val missionName: String,
    @SerialName("launch_year")
    val launchYear: Int,
    @SerialName("launch_date_utc")
    val launchDateUTC: String,
    @SerialName("rocket")
    val rocket: Rocket,
    @SerialName("details")
    val details: String?,
    @SerialName("launch_success")
    val launchSuccess: Boolean?,
    @SerialName("links")
    val links: Links
)

@kotlinx.serialization.Serializable
data class Rocket(
    @SerialName("rocket_id")
    val id: String,
    @SerialName("rocket_name")
    val name: String,
    @SerialName("rocket_type")
    val type: String
)

@kotlinx.serialization.Serializable
data class Links(
    @kotlinx.serialization.SerialName("mission_patch")
    val missionPatchUrl: String?,
    @kotlinx.serialization.SerialName("article_url")
    val articleUrl: String?
)