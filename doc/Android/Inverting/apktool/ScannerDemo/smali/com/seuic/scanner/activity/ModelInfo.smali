.class public Lcom/seuic/scanner/activity/ModelInfo;
.super Ljava/lang/Object;
.source "ModelInfo.java"


# direct methods
.method public static getModelName()Ljava/lang/String;
    .locals 11

    .prologue
    .line 16
    const/4 v3, 0x0

    .line 18
    .local v3, "model":Ljava/lang/String;
    :try_start_0
    const-string v7, "android.os.SystemProperties"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 19
    .local v5, "systempropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 20
    .local v2, "method":Ljava/lang/reflect/Method;
    const-string v7, "android.os.SystemProperties"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ro.product.primodel"

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 21
    .local v6, "value":Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "systempropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "value":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 26
    goto :goto_0
.end method
