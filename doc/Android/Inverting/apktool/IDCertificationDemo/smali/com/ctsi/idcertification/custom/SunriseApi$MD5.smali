.class public Lcom/ctsi/idcertification/custom/SunriseApi$MD5;
.super Ljava/lang/Object;
.source "SunriseApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ctsi/idcertification/custom/SunriseApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 474
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 475
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 476
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 477
    .local v0, "m":[B
    invoke-static {v0}, Lcom/ctsi/idcertification/custom/SunriseApi$MD5;->getString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getString([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 480
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 481
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 484
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 482
    :cond_0
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
