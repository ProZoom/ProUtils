.class public Lcom/example/idcertificationdemo/tool/Des33;
.super Ljava/lang/Object;
.source "Des33.java"


# static fields
.field private static final encoding:Ljava/lang/String; = "utf-8"

.field private static final keyiv:[B

.field private static final secretKey:Ljava/lang/String; = "6091aab92a16a0808d5243221167ffee6091aab92a16a080"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/example/idcertificationdemo/tool/Des33;->keyiv:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FormateByte([B)[B
    .locals 6
    .param p0, "arr"    # [B

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 161
    aget-byte v3, p0, v0

    new-instance v4, Ljava/lang/Byte;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-ne v3, v4, :cond_1

    .line 165
    :cond_0
    new-array v2, v0, [B

    .line 166
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 167
    aget-byte v3, p0, v1

    aput-byte v3, v2, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    .end local v1    # "j":I
    .end local v2    # "result":[B
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .restart local v1    # "j":I
    .restart local v2    # "result":[B
    :cond_2
    return-object v2
.end method

.method public static FormateData(Ljava/lang/String;)[B
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_1

    .line 81
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 98
    :cond_0
    return-object v0

    .line 84
    :cond_1
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 85
    .local v1, "data":[B
    array-length v5, v1

    rem-int/lit8 v5, v5, 0x8

    rsub-int/lit8 v4, v5, 0x8

    .line 86
    .local v4, "size":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data.length~~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u9700\u8981\u8865~~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    array-length v5, v1

    add-int/2addr v5, v4

    new-array v0, v5, [B

    .line 89
    .local v0, "arr":[B
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arr\u4e2a~~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 92
    aget-byte v5, v1, v2

    aput-byte v5, v0, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 95
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    const/4 v5, 0x1

    new-array v5, v5, [B

    aput-byte v8, v5, v8

    aget-byte v5, v5, v8

    aput-byte v5, v0, v2

    .line 94
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static byte2Ucs2([BII)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "iPos"    # I
    .param p2, "iLen"    # I

    .prologue
    .line 174
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u8f6c\u6362UTF8\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    const-string v1, ""

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "encryptText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, "deskey":Ljava/security/Key;
    new-instance v6, Ljavax/crypto/spec/DESedeKeySpec;

    const-string v7, "6091aab92a16a0808d5243221167ffee6091aab92a16a080"

    invoke-static {v7}, Lcom/example/idcertificationdemo/tool/Des33;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 112
    .local v6, "spec":Ljavax/crypto/spec/DESedeKeySpec;
    const-string v7, "desede"

    invoke-static {v7}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 113
    .local v5, "keyfactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v5, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 114
    const-string v7, "desede/CBC/NoPadding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 115
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v7, Lcom/example/idcertificationdemo/tool/Des33;->keyiv:[B

    invoke-direct {v4, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 116
    .local v4, "ips":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v7, 0x2

    invoke-virtual {v1, v7, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 117
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encryptText~~~"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    invoke-static {p0, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 120
    .local v2, "decryptData":[B
    array-length v7, v2

    invoke-static {v2, v10, v7}, Lcom/example/idcertificationdemo/tool/Des33;->byte2Ucs2([BII)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "bOut":Ljava/lang/String;
    return-object v0
.end method

.method public static decode1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "encryptText"    # Ljava/lang/String;
    .param p1, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "deskey":Ljava/security/Key;
    new-instance v5, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-static {p1}, Lcom/example/idcertificationdemo/tool/Des33;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 137
    .local v5, "spec":Ljavax/crypto/spec/DESedeKeySpec;
    const-string v6, "desede"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 138
    .local v4, "keyfactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 139
    const-string v6, "desede/CBC/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 140
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lcom/example/idcertificationdemo/tool/Des33;->keyiv:[B

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 141
    .local v3, "ips":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 142
    const/4 v6, 0x0

    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 144
    .local v1, "decryptData":[B
    new-instance v6, Ljava/lang/String;

    invoke-static {v1}, Lcom/example/idcertificationdemo/tool/Des33;->FormateByte([B)[B

    move-result-object v7

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "plainText"    # Ljava/lang/String;
    .param p1, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "deskey":Ljava/security/Key;
    new-instance v5, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-static {p1}, Lcom/example/idcertificationdemo/tool/Des33;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 58
    .local v5, "spec":Ljavax/crypto/spec/DESedeKeySpec;
    const-string v6, "desede"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 59
    .local v4, "keyfactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 61
    const-string v6, "desede/CBC/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 62
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lcom/example/idcertificationdemo/tool/Des33;->keyiv:[B

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 63
    .local v3, "ips":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 64
    invoke-static {p0}, Lcom/example/idcertificationdemo/tool/Des33;->FormateData(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 65
    .local v2, "encryptData":[B
    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static hexStr2Bytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v2, 0x0

    .local v2, "m":I
    const/4 v3, 0x0

    .line 34
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 35
    .local v1, "l":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(I)V

    .line 36
    new-array v4, v1, [B

    .line 37
    .local v4, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 38
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v2, v5, 0x1

    .line 39
    add-int/lit8 v3, v2, 0x1

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 41
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-object v4
.end method
