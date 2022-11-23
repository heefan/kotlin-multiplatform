package com.example.spacexnews.kmm.shared.cache

import com.squareup.sqldelight.db.SqlDriver
import android.content.Context

actual class DatabaseDriverFactory(private val context: Context) {
    actual fun createDriver(): SqlDriver {
        TODO("Not yet implemented")
    }
}