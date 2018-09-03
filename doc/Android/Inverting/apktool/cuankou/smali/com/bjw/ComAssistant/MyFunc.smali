.class public Lcom/bjw/ComAssistant/MyFunc;
.super Ljava/lang/Object;
.source "MyFunc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Byte2Hex(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 3
    .param p0, "inByte"    # Ljava/lang/Byte;

    .prologue
    .line 27
    const-string v0, "%02x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ByteArrToHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "inBytArr"    # [B

    .prologue
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    array-length v1, p0

    .line 34
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 36
    :cond_0
    aget-byte v3, p0, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v3}, Lcom/bjw/ComAssistant/MyFunc;->Byte2Hex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ByteArrToHex([BII)Ljava/lang/String;
    .locals 4
    .param p0, "inBytArr"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    .prologue
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .line 46
    .local v1, "j":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 48
    :cond_0
    aget-byte v3, p0, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v3}, Lcom/bjw/ComAssistant/MyFunc;->Byte2Hex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static HexToByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "inHex"    # Ljava/lang/String;

    .prologue
    .line 22
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static HexToByteArr(Ljava/lang/String;)[B
    .locals 6
    .param p0, "inHex"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    .local v0, "hexlen":I
    invoke-static {v0}, Lcom/bjw/ComAssistant/MyFunc;->isOdd(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    div-int/lit8 v4, v0, 0x2

    new-array v3, v4, [B

    .line 62
    .local v3, "result":[B
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 66
    :goto_0
    const/4 v2, 0x0

    .line 67
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 72
    return-object v3

    .line 64
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "result":[B
    :cond_0
    div-int/lit8 v4, v0, 0x2

    new-array v3, v4, [B

    .restart local v3    # "result":[B
    goto :goto_0

    .line 69
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bjw/ComAssistant/MyFunc;->HexToByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 67
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public static HexToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "inHex"    # Ljava/lang/String;

    .prologue
    .line 17
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isOdd(I)I
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 12
    and-int/lit8 v0, p0, 0x1

    return v0
.end method
