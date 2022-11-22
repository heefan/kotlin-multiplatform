package com.example.spacexnews

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform