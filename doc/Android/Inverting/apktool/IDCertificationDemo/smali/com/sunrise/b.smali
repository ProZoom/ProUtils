.class public Lcom/sunrise/b;
.super Ljava/lang/Object;


# static fields
.field public static c:I

.field private static final l:[B

.field private static final n:Ljava/util/Map;


# instance fields
.field public a:I

.field b:[B

.field public d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/sunrise/reader/ManagerInfo;

.field private g:Landroid/content/Context;

.field private h:Lcom/sunrise/nfc/Reader;

.field private i:[B

.field private j:Ljava/lang/String;

.field private k:Landroid/nfc/tech/NfcB;

.field private m:Ljava/lang/Object;

.field private o:Landroid/nfc/NfcAdapter;

.field private p:Lcom/sunrise/nfc/NormalNfcReadaer;

.field private q:Lcom/sunrise/reader/pos/IPOSCardReader;

.field private r:Landroid/nfc/NfcAdapter$ReaderCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sunrise/b;->l:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunrise/b;->n:Ljava/util/Map;

    sget-object v0, Lcom/sunrise/b;->n:Ljava/util/Map;

    const-string v1, "com.sunrise.readerdemo"

    const-string v2, "JLjOZ9iMK3MnaXyeLIL1n8oNjmpiQPGh81BcMzslIhyanZyzs+rCt4wwkMTCN4bguOOhdqpSquPclYov/lHo6BkPXXhQRouD3CZ+Iksp3XQnvP7JNRPK5hYeyONI0y+p26e0mKNeS+MoMhZPVxBk2Y4L76fSdabycuaxEK+AGbkR7Otiajc69TN/vZ98JBJCDfrKV1IwNMdinYvqAWMJp7ruAaW/xtJYOzU1UkYWx3k8nBim1ivLcxQiaoo18SgL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/b;->n:Ljava/util/Map;

    const-string v1, "com.ailk.wocf"

    const-string v2, "HLbnDQlWtbrjkrPAgptG+jvPv3O7ydXBf2/hb9RsukJQLU/3r6DtS+UbMr1YjO1VejveZzfx945iZKNv0Ay/sDAaHh2HL4Wh/iARdFwFbjUHaussqLWJkwBbbhodKCyInuRv3oNtYrGv9v07ulMl2WRC3friwAdP5OeyDSx1QR6GOVi5AGR28AoJBIbKgJrJMWcigKr9+W9W9gSCX0vO0D7DayCKCFn5zkR/rLc3p71B+6ffnWWwuwQJOHCtn5KH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/b;->n:Ljava/util/Map;

    const-string v1, "com.asiainfo.cm10085"

    const-string v2, "eyKLGDw4Tz7s6nS9xO3JhppqXi27ib+DI1ZYhCAlyyCXGP/XV9siv6/51PL1q2yFetlR3KPXnUMdwyFQDEAI5R/Z2Mwu9rLzpCm40f48KFUq7YtPNcS8pHA1CceY1senXJcT3vJGypi1+G+Zv+lAwMYk2jK4u7lLuNscWAxlk+FPhqYKJ/n5xLUOmTjaFq0IRXA83qMQx0Lc/xEtRQ6aVOsxEgSoQIsTPP4Yu2nQecwpm+RZiYKH3++kRSmO+wAT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x83

    sput v0, Lcom/sunrise/b;->c:I

    return-void

    :array_0
    .array-data 1
        0x1dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x1t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sunrise/reader/ManagerInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/b;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/b;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/b;->m:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sunrise/b;->b:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/b;->d:Z

    iput-object p1, p0, Lcom/sunrise/b;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/sunrise/b;->f:Lcom/sunrise/reader/ManagerInfo;

    iget-object v0, p0, Lcom/sunrise/b;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/b;->o:Landroid/nfc/NfcAdapter;

    new-instance v0, Lcom/sunrise/nfc/Reader;

    invoke-direct {v0}, Lcom/sunrise/nfc/Reader;-><init>()V

    iput-object v0, p0, Lcom/sunrise/b;->h:Lcom/sunrise/nfc/Reader;

    invoke-direct {p0}, Lcom/sunrise/b;->d()V

    iget-object v0, p0, Lcom/sunrise/b;->f:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/b;->i:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x59t
        0x4at
        0x34t
        0x63t
        -0x8t
        -0x4ct
        0x76t
        -0x6et
        0x1t
        0x11t
        0x69t
        0x7dt
        0x76t
        -0x7ft
        0x1ft
        0x3t
    .end array-data
.end method

.method static synthetic a(Lcom/sunrise/b;)Landroid/nfc/NfcAdapter$ReaderCallback;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/b;->r:Landroid/nfc/NfcAdapter$ReaderCallback;

    return-object v0
.end method

.method static synthetic a(Lcom/sunrise/b;Lcom/sunrise/nfc/NormalNfcReadaer;)Lcom/sunrise/nfc/NormalNfcReadaer;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/b;->p:Lcom/sunrise/nfc/NormalNfcReadaer;

    return-object p1
.end method

.method private a([B)Lcom/sunrise/u/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x6

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/sunrise/b;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/b;->h:Lcom/sunrise/nfc/Reader;

    iget-object v1, p0, Lcom/sunrise/b;->p:Lcom/sunrise/nfc/NormalNfcReadaer;

    invoke-virtual {v0, v1, p1}, Lcom/sunrise/nfc/Reader;->authId(Ljava/lang/Object;[B)[B

    move-result-object v0

    move-object v6, v0

    :goto_0
    if-nez v6, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/b;->h:Lcom/sunrise/nfc/Reader;

    iget-object v1, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    invoke-virtual {v0, v1, p1}, Lcom/sunrise/nfc/Reader;->authId(Ljava/lang/Object;[B)[B

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_1
    array-length v0, v6

    add-int/lit8 v0, v0, -0x7

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    new-array v1, v0, [B

    array-length v0, v1

    invoke-static {v6, v8, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/sunrise/c;

    invoke-direct {v0}, Lcom/sunrise/c;-><init>()V

    array-length v2, v1

    iget-object v3, p0, Lcom/sunrise/b;->b:[B

    const/4 v5, 0x1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sunrise/c;->a([BI[B[BI)I

    array-length v0, v1

    invoke-static {v1, v7, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v0, v6}, Lcom/sunrise/u/a;->b([B)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/sunrise/b;Lcom/sunrise/reader/ReaderServerInfo;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/sunrise/b;->a(Lcom/sunrise/reader/ReaderServerInfo;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/sunrise/reader/ReaderServerInfo;)[B
    .locals 11

    const/4 v10, -0x5

    const/4 v9, 0x0

    new-instance v6, Lcom/sunrise/reader/f;

    invoke-direct {v6, v9}, Lcom/sunrise/reader/f;-><init>(Lcom/sunrise/reader/j;)V

    :try_start_0
    const-string v0, "Reader OpenID"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sunrise/b;->e()Lcom/sunrise/u/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader OpenID ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/sunrise/b;->a:I

    if-eq v0, v10, :cond_1

    iget-object v0, p0, Lcom/sunrise/b;->h:Lcom/sunrise/nfc/Reader;

    invoke-virtual {v0}, Lcom/sunrise/nfc/Reader;->getFailCode()I

    move-result v0

    iput v0, p0, Lcom/sunrise/b;->a:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v6}, Lcom/sunrise/reader/f;->b()V

    :goto_1
    return-object v9

    :cond_2
    :try_start_1
    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v6, p1}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;

    iget-object v1, p0, Lcom/sunrise/b;->f:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v6, v1}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ManagerInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/sunrise/b;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect sam:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect sam result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    if-lez v1, :cond_4

    iput v1, p0, Lcom/sunrise/b;->a:I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v6}, Lcom/sunrise/reader/f;->b()V

    goto :goto_1

    :cond_4
    if-gez v1, :cond_6

    const/4 v0, -0x3

    if-ne v1, v0, :cond_5

    const/4 v0, -0x3

    :try_start_2
    iput v0, p0, Lcom/sunrise/b;->a:I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {v6}, Lcom/sunrise/reader/f;->b()V

    goto :goto_1

    :cond_5
    const/16 v0, -0x9

    :try_start_3
    iput v0, p0, Lcom/sunrise/b;->a:I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    const/16 v1, -0x9

    iput v1, p0, Lcom/sunrise/b;->a:I

    invoke-static {v0}, Lcom/sunrise/p/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v6}, Lcom/sunrise/reader/f;->b()V

    goto :goto_1

    :cond_6
    :try_start_5
    invoke-virtual {v6, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    iget-object v1, p0, Lcom/sunrise/b;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAM ERROR:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/sunrise/u/a;->f()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAM ERROR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/sunrise/u/a;->f()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/4 v0, -0x5

    iput v0, p0, Lcom/sunrise/b;->a:I
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    :goto_5
    invoke-virtual {v6}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_1

    :cond_9
    :try_start_6
    const-string v0, ""

    goto :goto_3

    :cond_a
    const-string v0, ""

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Lcom/sunrise/u/a;->d()B

    move-result v8

    const/16 v0, -0xd

    if-ne v8, v0, :cond_c

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/sunrise/u/a;->b()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/sunrise/b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/b;->a:I
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x6

    iput v1, p0, Lcom/sunrise/b;->a:I

    invoke-static {v0}, Lcom/sunrise/p/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v6}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_1

    :cond_c
    :try_start_8
    invoke-virtual {v7}, Lcom/sunrise/u/a;->a()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x7

    new-array v1, v0, [B

    invoke-virtual {v7}, Lcom/sunrise/u/a;->a()[B

    move-result-object v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/sunrise/c;

    invoke-direct {v0}, Lcom/sunrise/c;-><init>()V

    array-length v2, v1

    div-int/lit8 v2, v2, 0x10

    mul-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/sunrise/b;->b:[B

    const/4 v5, 0x0

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sunrise/c;->a([BI[B[BI)I

    invoke-virtual {v7}, Lcom/sunrise/u/a;->a()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, -0x5c

    if-ne v8, v1, :cond_e

    const-string v1, "Reader AuthID"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sunrise/b;->a([B)Lcom/sunrise/u/a;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-eqz v1, :cond_6

    :cond_d
    iget-object v0, p0, Lcom/sunrise/b;->j:Ljava/lang/String;

    const-string v1, "Reader A4 ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Reader A4 ERROR"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/sunrise/b;->a:I

    if-eq v0, v10, :cond_8

    iget-object v0, p0, Lcom/sunrise/b;->h:Lcom/sunrise/nfc/Reader;

    invoke-virtual {v0}, Lcom/sunrise/nfc/Reader;->getFailCode()I

    move-result v0

    iput v0, p0, Lcom/sunrise/b;->a:I
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/sunrise/reader/f;->b()V

    throw v0

    :cond_e
    const/16 v1, -0x5b

    if-ne v8, v1, :cond_11

    :try_start_9
    const-string v1, "Reader ReadInfo"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sunrise/b;->b([B)Lcom/sunrise/u/a;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-eqz v1, :cond_6

    :cond_f
    iget-object v1, p0, Lcom/sunrise/b;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reader A5 ERROR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Reader A5 ERROR"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/sunrise/b;->a:I

    if-eq v0, v10, :cond_8

    iget-object v0, p0, Lcom/sunrise/b;->h:Lcom/sunrise/nfc/Reader;

    invoke-virtual {v0}, Lcom/sunrise/nfc/Reader;->getFailCode()I

    move-result v0

    iput v0, p0, Lcom/sunrise/b;->a:I

    goto/16 :goto_5

    :cond_10
    const-string v0, ""

    goto :goto_6

    :cond_11
    const/4 v0, -0x1

    if-ne v8, v0, :cond_12

    const/4 v0, -0x6

    iput v0, p0, Lcom/sunrise/b;->a:I

    goto/16 :goto_5

    :cond_12
    const/4 v0, -0x5

    iput v0, p0, Lcom/sunrise/b;->a:I

    iget-object v0, p0, Lcom/sunrise/b;->j:Ljava/lang/String;

    const-string v1, "Sam ERROR: error cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Sam ERROR: error cmd"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5
.end method

.method static synthetic b(Lcom/sunrise/b;)Lcom/sunrise/reader/pos/IPOSCardReader;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    return-object v0
.end method

.method private b([B)Lcom/sunrise/u/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x6

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/sunrise/b;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/b;->h:Lcom/sunrise/nfc/Reader;

    iget-object v1, p0, Lcom/sunrise/b;->p:Lcom/sunrise/nfc/NormalNfcReadaer;

    invoke-virtual {v0, v1, p1}, Lcom/sunrise/nfc/Reader;->readInfo(Ljava/lang/Object;[B)[B

    move-result-object v0

    move-object v6, v0

    :goto_0
    if-nez v6, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/b;->h:Lcom/sunrise/nfc/Reader;

    iget-object v1, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    invoke-virtual {v0, v1, p1}, Lcom/sunrise/nfc/Reader;->readInfo(Ljava/lang/Object;[B)[B

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_1
    array-length v0, v6

    add-int/lit8 v0, v0, -0x7

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    new-array v1, v0, [B

    array-length v0, v1

    invoke-static {v6, v8, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/sunrise/c;

    invoke-direct {v0}, Lcom/sunrise/c;-><init>()V

    array-length v2, v1

    iget-object v3, p0, Lcom/sunrise/b;->b:[B

    const/4 v5, 0x1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sunrise/c;->a([BI[B[BI)I

    array-length v0, v1

    invoke-static {v1, v7, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v0, v6}, Lcom/sunrise/u/a;->b([B)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/sunrise/b;)Lcom/sunrise/reader/ManagerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/b;->f:Lcom/sunrise/reader/ManagerInfo;

    return-object v0
.end method

.method static synthetic c()[B
    .locals 1

    sget-object v0, Lcom/sunrise/b;->l:[B

    return-object v0
.end method

.method static synthetic d(Lcom/sunrise/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/b;->g:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P2000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P2000L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/sunrise/reader/pos/JBPosNFC;

    invoke-direct {v0}, Lcom/sunrise/reader/pos/JBPosNFC;-><init>()V

    iput-object v0, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    iget-object v0, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    invoke-interface {v0}, Lcom/sunrise/reader/pos/IPOSCardReader;->init()V

    iput-boolean v2, p0, Lcom/sunrise/b;->d:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A920"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sunrise/reader/pos/BaifuPosReader;

    invoke-direct {v0}, Lcom/sunrise/reader/pos/BaifuPosReader;-><init>()V

    iput-object v0, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    iget-object v0, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    invoke-interface {v0}, Lcom/sunrise/reader/pos/IPOSCardReader;->init()V

    iput-boolean v2, p0, Lcom/sunrise/b;->d:Z

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YF-F133"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sunrise/reader/pos/YifengPosReader;

    iget-object v1, p0, Lcom/sunrise/b;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sunrise/reader/pos/YifengPosReader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    iget-object v0, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    invoke-interface {v0}, Lcom/sunrise/reader/pos/IPOSCardReader;->init()V

    iput-boolean v2, p0, Lcom/sunrise/b;->d:Z

    goto :goto_0
.end method

.method private e()Lcom/sunrise/u/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x6

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sunrise/b;->j:Ljava/lang/String;

    const-string v1, "start ReadID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sunrise/b;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/b;->h:Lcom/sunrise/nfc/Reader;

    iget-object v1, p0, Lcom/sunrise/b;->p:Lcom/sunrise/nfc/NormalNfcReadaer;

    invoke-virtual {v0, v1}, Lcom/sunrise/nfc/Reader;->openId(Ljava/lang/Object;)[B

    move-result-object v0

    move-object v6, v0

    :goto_0
    if-nez v6, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/b;->h:Lcom/sunrise/nfc/Reader;

    iget-object v1, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    invoke-virtual {v0, v1}, Lcom/sunrise/nfc/Reader;->openId(Ljava/lang/Object;)[B

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sunrise/c;

    invoke-direct {v0}, Lcom/sunrise/c;-><init>()V

    array-length v1, v6

    add-int/lit8 v1, v1, -0x7

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    new-array v1, v1, [B

    array-length v2, v1

    invoke-static {v6, v8, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    iget-object v3, p0, Lcom/sunrise/b;->b:[B

    const/4 v5, 0x1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sunrise/c;->a([BI[B[BI)I

    array-length v0, v1

    invoke-static {v1, v7, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v0, v6}, Lcom/sunrise/u/a;->b([B)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/sunrise/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/sunrise/b;)Landroid/nfc/tech/NfcB;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/b;->k:Landroid/nfc/tech/NfcB;

    return-object v0
.end method

.method static synthetic g(Lcom/sunrise/b;)Lcom/sunrise/nfc/NormalNfcReadaer;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/b;->p:Lcom/sunrise/nfc/NormalNfcReadaer;

    return-object v0
.end method

.method static synthetic h(Lcom/sunrise/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/b;->m:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/sunrise/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sunrise/b$1;

    invoke-direct {v1, p0}, Lcom/sunrise/b$1;-><init>(Lcom/sunrise/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    new-instance v0, Lcom/sunrise/b$2;

    invoke-direct {v0, p0}, Lcom/sunrise/b$2;-><init>(Lcom/sunrise/b;)V

    invoke-virtual {v0}, Lcom/sunrise/b$2;->start()V

    return-void
.end method

.method public a(Landroid/nfc/NfcAdapter$ReaderCallback;)V
    .locals 4

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/b;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/sunrise/b;->r:Landroid/nfc/NfcAdapter$ReaderCallback;

    iget-boolean v0, p0, Lcom/sunrise/b;->d:Z

    if-nez v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "presence"

    const/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sunrise/b;->o:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sunrise/b;->o:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/sunrise/b;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v3, Lcom/sunrise/b;->c:I

    invoke-virtual {v2, v0, p1, v3, v1}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sunrise/b;->q:Lcom/sunrise/reader/pos/IPOSCardReader;

    invoke-interface {v0, p1}, Lcom/sunrise/reader/pos/IPOSCardReader;->findIDCard(Landroid/nfc/NfcAdapter$ReaderCallback;)Z

    goto :goto_0
.end method

.method public a(Landroid/nfc/Tag;)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/nfc/tech/NfcB;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcB;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/b;->k:Landroid/nfc/tech/NfcB;

    iget-object v0, p0, Lcom/sunrise/b;->k:Landroid/nfc/tech/NfcB;

    invoke-virtual {v0}, Landroid/nfc/tech/NfcB;->connect()V

    iget-object v0, p0, Lcom/sunrise/b;->k:Landroid/nfc/tech/NfcB;

    invoke-virtual {v0}, Landroid/nfc/tech/NfcB;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sunrise/b;->a()V

    iget-object v1, p0, Lcom/sunrise/b;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/b;->m:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sunrise/b;->e:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
