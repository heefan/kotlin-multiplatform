package com.example.spacexnews.kmm.shared.cache

import com.squareup.sqldelight.db.SqlDriver
import android.content.Context
import com.squareup.sqldelight.android.AndroidSqliteDriver

actual class DatabaseDriverFactory(private val context: Context) {
    actual fun createDriver(): SqlDriver {
        return AndroidSqliteDriver(AppDatabase.Schema, context, "test.db")
    }
}