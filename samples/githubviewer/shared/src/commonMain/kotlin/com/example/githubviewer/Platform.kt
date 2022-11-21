package com.example.githubviewer

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform