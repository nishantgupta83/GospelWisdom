// android_app/app/src/main/java/com/hub4apps/gospel/bridge/FlutterBridge.kt

package com.hub4apps.gospel.bridge

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.Json
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

/**
 * Bridge to Flutter core business logic
 * Provides typed, suspend functions for Compose UI
 */
object FlutterBridge {
    private const val CHANNEL_NAME = "gospelwisdom/core"

    private var channel: MethodChannel? = null

    private val json = Json {
        ignoreUnknownKeys = true
        isLenient = true
    }

    /**
     * Initialize the bridge with a Flutter engine
     */
    fun initialize(engine: FlutterEngine) {
        channel = MethodChannel(engine.dartExecutor.binaryMessenger, CHANNEL_NAME)
        println("✅ FlutterBridge initialized")
    }

    // ═══════════════════════════════════════════════════════════════════════
    // GENERIC INVOKE
    // ═══════════════════════════════════════════════════════════════════════

    /**
     * Invoke a Flutter method and return the raw JSON string
     */
    private suspend fun invokeMethod(method: String, arguments: Map<String, Any?>? = null): String {
        return withContext(Dispatchers.Main) {
            suspendCancellableCoroutine { continuation ->
                val ch = channel ?: run {
                    continuation.resumeWithException(BridgeException("Flutter bridge not initialized"))
                    return@suspendCancellableCoroutine
                }

                ch.invokeMethod(method, arguments, object : MethodChannel.Result {
                    override fun success(result: Any?) {
                        val jsonString = result as? String ?: "{}"
                        continuation.resume(jsonString)
                    }

                    override fun error(errorCode: String, errorMessage: String?, errorDetails: Any?) {
                        continuation.resumeWithException(
                            BridgeException("[$errorCode] ${errorMessage ?: "Unknown error"}")
                        )
                    }

                    override fun notImplemented() {
                        continuation.resumeWithException(
                            BridgeException("Method $method not implemented")
                        )
                    }
                })
            }
        }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // APP CONFIG
    // ═══════════════════════════════════════════════════════════════════════

    suspend fun getAppConfig(): String = invokeMethod("getAppConfig")

    suspend fun getApiVersion(): Int {
        val result = invokeMethod("getApiVersion")
        return result.toIntOrNull() ?: 1
    }

    // ═══════════════════════════════════════════════════════════════════════
    // DAILY VERSE
    // ═══════════════════════════════════════════════════════════════════════

    suspend fun getDailyVerse(date: String? = null, locale: String = "en"): String {
        val args = mutableMapOf<String, Any?>("locale" to locale)
        if (date != null) args["date"] = date
        return invokeMethod("getDailyVerse", args)
    }

    // ═══════════════════════════════════════════════════════════════════════
    // BOOKS
    // ═══════════════════════════════════════════════════════════════════════

    suspend fun listBooks(): String = invokeMethod("listBooks")

    suspend fun getBook(bookId: String): String =
        invokeMethod("getBook", mapOf("bookId" to bookId))

    // ═══════════════════════════════════════════════════════════════════════
    // CHAPTERS
    // ═══════════════════════════════════════════════════════════════════════

    suspend fun listChapters(bookId: String): String =
        invokeMethod("listChapters", mapOf("bookId" to bookId))

    suspend fun getChapter(chapterId: String): String =
        invokeMethod("getChapter", mapOf("chapterId" to chapterId))

    // ═══════════════════════════════════════════════════════════════════════
    // VERSES
    // ═══════════════════════════════════════════════════════════════════════

    suspend fun listVerses(chapterId: String, page: Int = 1, limit: Int = 50): String =
        invokeMethod("listVerses", mapOf(
            "chapterId" to chapterId,
            "page" to page,
            "limit" to limit
        ))

    suspend fun searchVerses(query: String, limit: Int = 20): String =
        invokeMethod("searchVerses", mapOf(
            "query" to query,
            "limit" to limit
        ))

    // ═══════════════════════════════════════════════════════════════════════
    // SCENARIOS
    // ═══════════════════════════════════════════════════════════════════════

    suspend fun listScenarios(
        page: Int = 1,
        limit: Int = 20,
        category: String? = null,
        tags: List<String>? = null
    ): String {
        val args = mutableMapOf<String, Any?>(
            "page" to page,
            "limit" to limit
        )
        if (category != null) args["category"] = category
        if (tags != null) args["tags"] = tags
        return invokeMethod("listScenarios", args)
    }

    suspend fun getScenarioDetail(scenarioId: String): String =
        invokeMethod("getScenarioDetail", mapOf("scenarioId" to scenarioId))

    suspend fun searchScenarios(query: String, limit: Int = 20): String =
        invokeMethod("searchScenarios", mapOf(
            "query" to query,
            "limit" to limit
        ))

    // ═══════════════════════════════════════════════════════════════════════
    // BOOKMARKS
    // ═══════════════════════════════════════════════════════════════════════

    suspend fun listBookmarks(): String = invokeMethod("bookmarkList")

    suspend fun addBookmark(
        itemType: String,
        itemId: String,
        title: String,
        preview: String? = null
    ): String {
        val args = mutableMapOf<String, Any?>(
            "itemType" to itemType,
            "itemId" to itemId,
            "title" to title
        )
        if (preview != null) args["preview"] = preview
        return invokeMethod("bookmarkAdd", args)
    }

    suspend fun removeBookmark(bookmarkId: String): Unit {
        invokeMethod("bookmarkRemove", mapOf("bookmarkId" to bookmarkId))
    }

    suspend fun isBookmarked(itemType: String, itemId: String): Boolean {
        val result = invokeMethod("isBookmarked", mapOf(
            "itemType" to itemType,
            "itemId" to itemId
        ))
        return result == "true"
    }

    // ═══════════════════════════════════════════════════════════════════════
    // JOURNAL
    // ═══════════════════════════════════════════════════════════════════════

    suspend fun listJournalEntries(page: Int = 1, limit: Int = 20): String =
        invokeMethod("journalList", mapOf("page" to page, "limit" to limit))

    suspend fun getJournalEntry(entryId: String): String =
        invokeMethod("journalGet", mapOf("entryId" to entryId))

    suspend fun saveJournalEntry(entry: Map<String, Any?>): String =
        invokeMethod("journalUpsert", entry)

    suspend fun deleteJournalEntry(entryId: String): Unit {
        invokeMethod("journalDelete", mapOf("entryId" to entryId))
    }

    // ═══════════════════════════════════════════════════════════════════════
    // AUTHENTICATION
    // ═══════════════════════════════════════════════════════════════════════

    suspend fun getAuthState(): String = invokeMethod("getAuthState")

    suspend fun signInWithGoogle(): String = invokeMethod("signInGoogle")

    suspend fun signInWithApple(): String = invokeMethod("signInApple")

    suspend fun signInWithEmail(email: String, password: String): String =
        invokeMethod("signInEmail", mapOf(
            "email" to email,
            "password" to password
        ))

    suspend fun signOut(): Unit {
        invokeMethod("signOut")
    }

    suspend fun deleteAccount(): Unit {
        invokeMethod("deleteAccount")
    }
}

/**
 * Bridge exception for error handling
 */
class BridgeException(message: String) : Exception(message)
