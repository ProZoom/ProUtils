.class public Lcom/sunrise/q/a;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v0, ""

    array-length v3, p0

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v1, v0, v4, p0}, Lcom/sunrise/p/a;->a(ZII[B)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
