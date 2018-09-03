.class public Lcom/ctsi/Tools/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonPaeser([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "jsonData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, "jsonOBJ":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_0

    .line 34
    .end local v1    # "i":I
    .end local v2    # "jsonOBJ":Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 26
    .restart local v1    # "i":I
    .restart local v2    # "jsonOBJ":Lorg/json/JSONObject;
    :cond_0
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    aget-object v4, p0, v1

    aget-object v5, p0, v1

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "i":I
    .end local v2    # "jsonOBJ":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
