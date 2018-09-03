.class public abstract Lcom/sunrise/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/d/d;
.implements Ljava/io/Closeable;


# static fields
.field protected static final p:[C

.field protected static final q:[I

.field private static final r:Ljava/lang/ThreadLocal;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:C

.field protected e:I

.field protected f:I

.field protected g:[C

.field protected h:I

.field protected i:I

.field protected j:Z

.field protected k:Ljava/util/Calendar;

.field protected l:Ljava/util/TimeZone;

.field protected m:Ljava/util/Locale;

.field public n:I

.field protected o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sunrise/d/e;->r:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sunrise/d/e;->p:[C

    const/16 v0, 0x67

    new-array v0, v0, [I

    sput-object v0, Lcom/sunrise/d/e;->q:[I

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/sunrise/d/e;->q:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/sunrise/d/e;->q:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    sget-object v1, Lcom/sunrise/d/e;->q:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sunrise/d/e;->k:Ljava/util/Calendar;

    sget-object v0, Lcom/sunrise/a/a;->a:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/sunrise/d/e;->l:Ljava/util/TimeZone;

    sget-object v0, Lcom/sunrise/a/a;->b:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sunrise/d/e;->m:Ljava/util/Locale;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    iput-object v1, p0, Lcom/sunrise/d/e;->o:Ljava/lang/String;

    iput p1, p0, Lcom/sunrise/d/e;->c:I

    sget-object v0, Lcom/sunrise/d/c;->m:Lcom/sunrise/d/c;

    iget v0, v0, Lcom/sunrise/d/c;->r:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/d/e;->o:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/sunrise/d/e;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/sunrise/d/e;->g:[C

    iget-object v0, p0, Lcom/sunrise/d/e;->g:[C

    if-nez v0, :cond_1

    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sunrise/d/e;->g:[C

    :cond_1
    return-void
.end method

.method private I()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    iput v0, p0, Lcom/sunrise/d/e;->i:I

    iput-boolean v4, p0, Lcom/sunrise/d/e;->j:Z

    :goto_0
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    iput v6, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    return-void

    :cond_0
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/d/e;->B()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "unclosed single-quote string"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/sunrise/d/e;->j:Z

    if-nez v0, :cond_4

    iput-boolean v5, p0, Lcom/sunrise/d/e;->j:Z

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    iget-object v1, p0, Lcom/sunrise/d/e;->g:[C

    array-length v1, v1

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/sunrise/d/e;->g:[C

    iget-object v2, p0, Lcom/sunrise/d/e;->g:[C

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sunrise/d/e;->g:[C

    :cond_3
    iget v0, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    iget-object v2, p0, Lcom/sunrise/d/e;->g:[C

    invoke-virtual {p0, v0, v1, v2}, Lcom/sunrise/d/e;->a(II[C)V

    :cond_4
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "unclosed single-quote string"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v5}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v7}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v8}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v6}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_12
    sget-object v0, Lcom/sunrise/d/e;->q:[I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x10

    sget-object v1, Lcom/sunrise/d/e;->q:[I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_13
    new-instance v0, Ljava/lang/String;

    new-array v1, v6, [C

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v2

    aput-char v2, v1, v4

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v2

    aput-char v2, v1, v5

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v2

    aput-char v2, v1, v7

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v2

    aput-char v2, v1, v8

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/sunrise/d/e;->j:Z

    if-nez v1, :cond_6

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/sunrise/d/e;->h:I

    iget-object v2, p0, Lcom/sunrise/d/e;->g:[C

    array-length v2, v2

    if-ne v1, v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sunrise/d/e;->g:[C

    iget v2, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sunrise/d/e;->h:I

    aput-char v0, v1, v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public static a([CI)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-array v4, p1, [C

    move v0, v2

    move v3, v2

    :goto_0
    if-ge v0, p1, :cond_1

    aget-char v5, p0, v0

    const/16 v1, 0x5c

    if-eq v5, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    aput-char v5, v4, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p0, v0

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "unclosed.str.lit"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    add-int/lit8 v1, v3, 0x1

    aput-char v2, v4, v3

    goto :goto_1

    :sswitch_1
    add-int/lit8 v1, v3, 0x1

    aput-char v8, v4, v3

    goto :goto_1

    :sswitch_2
    add-int/lit8 v1, v3, 0x1

    aput-char v9, v4, v3

    goto :goto_1

    :sswitch_3
    add-int/lit8 v1, v3, 0x1

    aput-char v10, v4, v3

    goto :goto_1

    :sswitch_4
    add-int/lit8 v1, v3, 0x1

    aput-char v11, v4, v3

    goto :goto_1

    :sswitch_5
    add-int/lit8 v1, v3, 0x1

    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_6
    add-int/lit8 v1, v3, 0x1

    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_7
    add-int/lit8 v1, v3, 0x1

    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_8
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_9
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_a
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_b
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_c
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_d
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_e
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_f
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_10
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_11
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto/16 :goto_1

    :sswitch_12
    add-int/lit8 v1, v3, 0x1

    sget-object v5, Lcom/sunrise/d/e;->q:[I

    add-int/lit8 v0, v0, 0x1

    aget-char v6, p0, v0

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/sunrise/d/e;->q:[I

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    :sswitch_13
    add-int/lit8 v1, v3, 0x1

    new-instance v5, Ljava/lang/String;

    new-array v6, v11, [C

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aput-char v7, v6, v2

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aput-char v7, v6, v8

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aput-char v7, v6, v9

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aput-char v7, v6, v10

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public static i(C)Z
    .locals 1

    const/16 v0, 0x20

    if-gt p0, v0, :cond_1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()D
    .locals 2

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract B()Z
.end method

.method protected C()V
    .locals 4

    const/16 v3, 0x2f

    const/16 v2, 0x2a

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    :cond_3
    :goto_1
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/e;->k:Ljava/util/Calendar;

    return-object v0
.end method

.method public final E()V
    .locals 2

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    return-void

    :cond_5
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final F()V
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v3, :cond_3

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v2, :cond_4

    :cond_3
    iput v2, p0, Lcom/sunrise/d/e;->a:I

    :goto_0
    return-void

    :cond_4
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "scan null error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x77

    if-eq v0, v1, :cond_7

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v6, :cond_8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v3, :cond_8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v5, :cond_8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v2, :cond_9

    :cond_8
    iput v3, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "scan new error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G()V
    .locals 2

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_6

    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    return-void

    :cond_6
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()V
    .locals 2

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sunrise/d/e;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/d/e;->j:Z

    :cond_0
    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunrise/d/e;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    :goto_0
    return-void

    :cond_1
    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_2
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_3
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x7

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_4
    const-string v1, "undefined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x17

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_5
    const-string v1, "Set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_6
    const-string v1, "TreeSet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x12

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0
.end method

.method public final a()I
    .locals 1

    iget v0, p0, Lcom/sunrise/d/e;->a:I

    return v0
.end method

.method public a(C)I
    .locals 9

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/sunrise/d/e;->n:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_1

    move v4, v1

    :goto_0
    if-eqz v4, :cond_0

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    const/4 v1, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    :cond_0
    if-lt v0, v7, :cond_5

    if-gt v0, v8, :cond_5

    add-int/lit8 v0, v0, -0x30

    :goto_1
    iget v5, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-lt v1, v7, :cond_2

    if-gt v1, v8, :cond_2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_4

    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v3

    :cond_3
    :goto_2
    return v0

    :cond_4
    if-gez v0, :cond_7

    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v3

    goto :goto_2

    :cond_5
    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v3

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lcom/sunrise/d/e;->i(C)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    move v2, v3

    :cond_7
    if-ne v1, p1, :cond_6

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    if-eqz v4, :cond_3

    neg-int v0, v0

    goto :goto_2

    :cond_8
    iput v6, p0, Lcom/sunrise/d/e;->n:I

    if-eqz v4, :cond_3

    neg-int v0, v0

    goto :goto_2
.end method

.method public abstract a(CI)I
.end method

.method public a(Ljava/lang/Class;Lcom/sunrise/d/k;C)Ljava/lang/Enum;
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/sunrise/d/e;->b(Lcom/sunrise/d/k;C)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Z)Ljava/lang/Number;
    .locals 3

    iget v0, p0, Lcom/sunrise/d/e;->i:I

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/d/e;->k()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sunrise/d/e;->A()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunrise/d/e;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract a(II)Ljava/lang/String;
.end method

.method public abstract a(IIILcom/sunrise/d/k;)Ljava/lang/String;
.end method

.method public final a(Lcom/sunrise/d/k;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    const/16 v2, 0x22

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sunrise/d/e;->c()V

    iget-char v1, p0, Lcom/sunrise/d/e;->d:C

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/sunrise/d/e;->a(Lcom/sunrise/d/k;C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-char v1, p0, Lcom/sunrise/d/e;->d:C

    if-ne v1, v3, :cond_2

    sget-object v0, Lcom/sunrise/d/c;->d:Lcom/sunrise/d/c;

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/sunrise/d/e;->a(Lcom/sunrise/d/k;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-char v1, p0, Lcom/sunrise/d/e;->d:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v1, 0xd

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_3
    iget-char v1, p0, Lcom/sunrise/d/e;->d:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v1, 0x10

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_4
    iget-char v1, p0, Lcom/sunrise/d/e;->d:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    const/16 v1, 0x14

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/sunrise/d/c;->c:Lcom/sunrise/d/c;

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/sunrise/d/e;->b(Lcom/sunrise/d/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/sunrise/d/k;C)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    iput v0, p0, Lcom/sunrise/d/e;->i:I

    iput v1, p0, Lcom/sunrise/d/e;->h:I

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v4

    if-ne v4, p2, :cond_0

    iput v10, p0, Lcom/sunrise/d/e;->a:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/sunrise/d/e;->i:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0, v0, v3, v2, p1}, Lcom/sunrise/d/e;->a(IIILcom/sunrise/d/k;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput v1, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    return-object v0

    :cond_0
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_1

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "unclosed.str"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_5

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    iget-object v4, p0, Lcom/sunrise/d/e;->g:[C

    array-length v4, v4

    if-lt v0, v4, :cond_3

    iget-object v0, p0, Lcom/sunrise/d/e;->g:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/sunrise/d/e;->h:I

    if-le v4, v0, :cond_2

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    :cond_2
    new-array v0, v0, [C

    iget-object v4, p0, Lcom/sunrise/d/e;->g:[C

    iget-object v5, p0, Lcom/sunrise/d/e;->g:[C

    array-length v5, v5

    invoke-static {v4, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sunrise/d/e;->g:[C

    :cond_3
    iget v0, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/sunrise/d/e;->g:[C

    iget v5, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0, v0, v4, v1, v5}, Lcom/sunrise/d/e;->a(I[CII)V

    move v0, v3

    :cond_4
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    iput-char v4, p0, Lcom/sunrise/d/e;->d:C

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "unclosed.str.lit"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :sswitch_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    invoke-virtual {p0, v3}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :sswitch_2
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :sswitch_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    invoke-virtual {p0, v12}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_4
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    invoke-virtual {p0, v10}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_5
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_6
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_7
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_8
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x8

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_9
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x9

    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_a
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xa

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_b
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xb

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_c
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xc

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_d
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xd

    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_e
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x22

    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_f
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x27

    const/16 v4, 0x27

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_10
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x2f

    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_11
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x5c

    const/16 v4, 0x5c

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v4

    iput-char v4, p0, Lcom/sunrise/d/e;->d:C

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v5

    iput-char v5, p0, Lcom/sunrise/d/e;->d:C

    sget-object v6, Lcom/sunrise/d/e;->q:[I

    aget v4, v6, v4

    mul-int/lit8 v4, v4, 0x10

    sget-object v6, Lcom/sunrise/d/e;->q:[I

    aget v5, v6, v5

    add-int/2addr v4, v5

    int-to-char v4, v4

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v4

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v5

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v6

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v7

    new-instance v8, Ljava/lang/String;

    new-array v9, v10, [C

    aput-char v4, v9, v1

    aput-char v5, v9, v3

    aput-char v6, v9, v11

    aput-char v7, v9, v12

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    const/16 v4, 0x10

    invoke-static {v8, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    int-to-char v4, v4

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :cond_5
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    if-nez v0, :cond_6

    iget v4, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sunrise/d/e;->h:I

    goto/16 :goto_0

    :cond_6
    iget v5, p0, Lcom/sunrise/d/e;->h:I

    iget-object v6, p0, Lcom/sunrise/d/e;->g:[C

    array-length v6, v6

    if-ne v5, v6, :cond_7

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/sunrise/d/e;->g:[C

    iget v6, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/sunrise/d/e;->h:I

    aput-char v4, v5, v6

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/sunrise/d/e;->g:[C

    iget v3, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/sunrise/d/k;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public a([CLcom/sunrise/d/k;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x22

    const/16 v6, 0x1a

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0, p1}, Lcom/sunrise/d/e;->h([C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    array-length v2, p1

    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    if-eq v2, v7, :cond_2

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move-object v0, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-ne v1, v7, :cond_3

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    array-length v4, p1

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v1, v4, v0, p2}, Lcom/sunrise/d/e;->a(IIILcom/sunrise/d/k;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_1

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move-object v0, v3

    goto :goto_0

    :cond_4
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_5

    const/16 v1, 0x10

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    :goto_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0

    :cond_5
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_6

    const/16 v1, 0xf

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_1

    :cond_6
    const/16 v4, 0x7d

    if-ne v1, v4, :cond_7

    const/16 v1, 0xd

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_1

    :cond_7
    if-ne v1, v6, :cond_8

    const/16 v1, 0x14

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iput-char v6, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_1

    :cond_8
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0x7b

    const/16 v4, 0x5b

    const/16 v3, 0xe

    const/16 v2, 0xc

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v6, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    :cond_1
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_0

    :pswitch_1
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v5, :cond_2

    iput v2, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    :goto_1
    return-void

    :cond_2
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v4, :cond_0

    iput v3, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_1

    :pswitch_2
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    const/16 v0, 0x10

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_1

    :cond_3
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    iput v6, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_1

    :cond_4
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    const/16 v0, 0xf

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_1

    :cond_5
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_1

    :pswitch_3
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    iput v0, p0, Lcom/sunrise/d/e;->b:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->h()V

    goto :goto_1

    :cond_6
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    iput v0, p0, Lcom/sunrise/d/e;->b:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->m()V

    goto :goto_1

    :cond_7
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v4, :cond_8

    iput v3, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_1

    :cond_8
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v5, :cond_0

    iput v2, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_1

    :pswitch_4
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    iput v0, p0, Lcom/sunrise/d/e;->b:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->m()V

    goto/16 :goto_1

    :cond_9
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    iput v0, p0, Lcom/sunrise/d/e;->b:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->h()V

    goto/16 :goto_1

    :cond_a
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v4, :cond_b

    iput v3, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto/16 :goto_1

    :cond_b
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v5, :cond_0

    iput v2, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto/16 :goto_1

    :pswitch_5
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v4, :cond_c

    iput v3, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto/16 :goto_1

    :cond_c
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v5, :cond_0

    iput v2, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto/16 :goto_1

    :pswitch_6
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    const/16 v0, 0xf

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto/16 :goto_1

    :cond_d
    :pswitch_7
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lcom/sunrise/d/e;->y()V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/sunrise/d/e;->d()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected abstract a(II[C)V
.end method

.method protected abstract a(I[CII)V
.end method

.method protected varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    return-void
.end method

.method public final a(Lcom/sunrise/d/c;)Z
    .locals 1

    iget v0, p1, Lcom/sunrise/d/c;->r:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->c(I)Z

    move-result v0

    return v0
.end method

.method public final a([C)Z
    .locals 3

    const/16 v2, 0x5b

    invoke-virtual {p0, p1}, Lcom/sunrise/d/e;->h([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sunrise/d/e;->e:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v0, 0xc

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v0, 0xe

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_1

    :cond_2
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v0, 0x15

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sunrise/d/e;->d()V

    goto :goto_1
.end method

.method public b(C)J
    .locals 12

    const/16 v11, 0x30

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v10, -0x1

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_1

    move v6, v2

    :goto_0
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    const/4 v2, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    :cond_0
    if-lt v0, v11, :cond_5

    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x30

    int-to-long v0, v0

    :goto_1
    iget v7, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v7

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    if-lt v2, v11, :cond_2

    const/16 v7, 0x39

    if-gt v2, v7, :cond_2

    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    add-int/lit8 v2, v2, -0x30

    int-to-long v8, v2

    add-long/2addr v0, v8

    move v2, v3

    goto :goto_1

    :cond_1
    move v6, v1

    goto :goto_0

    :cond_2
    const/16 v7, 0x2e

    if-ne v2, v7, :cond_4

    iput v10, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v4

    :cond_3
    :goto_2
    return-wide v0

    :cond_4
    cmp-long v7, v0, v4

    if-gez v7, :cond_7

    iput v10, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v4

    goto :goto_2

    :cond_5
    iput v10, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v4

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lcom/sunrise/d/e;->i(C)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    move v3, v4

    :cond_7
    if-ne v2, p1, :cond_6

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sunrise/d/e;->e:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    iput-char v2, p0, Lcom/sunrise/d/e;->d:C

    const/4 v2, 0x3

    iput v2, p0, Lcom/sunrise/d/e;->n:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/sunrise/d/e;->a:I

    if-eqz v6, :cond_3

    neg-long v0, v0

    goto :goto_2

    :cond_8
    iput v10, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sunrise/d/e;->a:I

    invoke-static {v0}, Lcom/sunrise/d/h;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/sunrise/d/k;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x6c

    const/4 v2, 0x1

    sget-object v1, Lcom/sunrise/h/d;->d:[Z

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    iget-char v3, p0, Lcom/sunrise/d/e;->d:C

    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal identifier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunrise/d/e;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sunrise/h/d;->e:[Z

    iget v3, p0, Lcom/sunrise/d/e;->e:I

    iput v3, p0, Lcom/sunrise/d/e;->i:I

    iput v2, p0, Lcom/sunrise/d/e;->h:I

    :goto_1
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v2

    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-boolean v3, v1, v2

    if-nez v3, :cond_3

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x12

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const v1, 0x33c587

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    iget v2, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sunrise/d/e;->h:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/sunrise/d/e;->i:I

    iget v2, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/sunrise/d/e;->a(IIILcom/sunrise/d/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public b(Lcom/sunrise/d/k;C)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x22

    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    const/4 v1, 0x1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    const/16 v4, 0x6e

    if-ne v2, v4, :cond_2

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move-object v0, v3

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move-object v0, v3

    goto :goto_0

    :cond_2
    if-eq v2, v7, :cond_4

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move-object v0, v3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-ne v1, v7, :cond_5

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v1, v3, v0, p1}, Lcom/sunrise/d/e;->a(IIILcom/sunrise/d/k;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    move v2, v3

    :goto_1
    if-ne v1, p2, :cond_6

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    iput v6, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_3

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move-object v0, v3

    goto :goto_0

    :cond_6
    invoke-static {v1}, Lcom/sunrise/d/e;->i(C)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    move v2, v3

    goto :goto_1

    :cond_7
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0
.end method

.method public b([C)Ljava/lang/String;
    .locals 12

    const/16 v10, 0x2c

    const/16 v9, 0x1a

    const/4 v3, 0x0

    const/16 v8, 0x22

    const/4 v7, -0x1

    iput v3, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0, p1}, Lcom/sunrise/d/e;->h([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->z()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-eq v0, v8, :cond_1

    iput v7, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sunrise/d/e;->e:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/sunrise/d/e;->a(CI)I

    move-result v0

    if-ne v0, v7, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, p0, Lcom/sunrise/d/e;->e:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int v2, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/sunrise/d/e;->a(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v7, :cond_b

    :goto_1
    add-int/lit8 v1, v0, -0x1

    move v2, v3

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_4

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v0, v1

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/sunrise/d/e;->b(II)[C

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sunrise/d/e;->a([CI)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    :goto_3
    iget v2, p0, Lcom/sunrise/d/e;->e:I

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v4

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-ne v1, v10, :cond_5

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/sunrise/d/e;->a(CI)I

    move-result v0

    goto :goto_1

    :cond_5
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-ne v1, v10, :cond_6

    const/16 v1, 0x10

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    :goto_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_7

    const/16 v1, 0xf

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_4

    :cond_7
    const/16 v3, 0x7d

    if-ne v1, v3, :cond_8

    const/16 v1, 0xd

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_4

    :cond_8
    if-ne v1, v9, :cond_9

    const/16 v1, 0x14

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iput-char v9, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_4

    :cond_9
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->z()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->z()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto/16 :goto_3
.end method

.method public final b(I)V
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->g(C)V

    return-void
.end method

.method protected abstract b(II)[C
.end method

.method public final c(C)F
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x39

    const/16 v4, 0x30

    iput v3, p0, Lcom/sunrise/d/e;->n:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    const/4 v0, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-lt v1, v4, :cond_3

    if-gt v1, v5, :cond_3

    :goto_0
    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-lt v0, v4, :cond_0

    if-gt v0, v5, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-lt v1, v4, :cond_1

    if-gt v1, v5, :cond_1

    :goto_1
    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-lt v0, v4, :cond_2

    if-gt v0, v5, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v2

    :goto_2
    return v0

    :cond_2
    iget v2, p0, Lcom/sunrise/d/e;->e:I

    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/sunrise/d/e;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    if-ne v0, p1, :cond_4

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    move v0, v2

    goto :goto_2

    :cond_3
    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v2

    goto :goto_2

    :cond_4
    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v2

    goto :goto_2
.end method

.method public c([C)I
    .locals 10

    const/16 v9, 0x2c

    const/16 v8, 0x1a

    const/16 v7, 0x10

    const/4 v6, -0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0, p1}, Lcom/sunrise/d/e;->h([C)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    move v4, v1

    :goto_1
    if-eqz v4, :cond_f

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    :goto_2
    const/16 v2, 0x30

    if-lt v0, v2, :cond_7

    const/16 v2, 0x39

    if-gt v0, v2, :cond_7

    add-int/lit8 v0, v0, -0x30

    :goto_3
    iget v5, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v5, 0x30

    if-lt v1, v5, :cond_3

    const/16 v5, 0x39

    if-gt v1, v5, :cond_3

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_3

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_4

    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v3

    goto :goto_0

    :cond_4
    if-ltz v0, :cond_5

    array-length v5, p1

    add-int/lit8 v5, v5, 0xe

    if-le v2, v5, :cond_8

    :cond_5
    const/high16 v5, -0x80000000

    if-ne v0, v5, :cond_6

    const/16 v5, 0x11

    if-ne v2, v5, :cond_6

    if-nez v4, :cond_8

    :cond_6
    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v3

    goto :goto_0

    :cond_7
    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v3

    goto :goto_0

    :cond_8
    if-ne v1, v9, :cond_9

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    iput v7, p0, Lcom/sunrise/d/e;->a:I

    if-eqz v4, :cond_0

    neg-int v0, v0

    goto :goto_0

    :cond_9
    const/16 v5, 0x7d

    if-ne v1, v5, :cond_e

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-ne v1, v9, :cond_a

    iput v7, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    :goto_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    if-eqz v4, :cond_0

    neg-int v0, v0

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_b

    const/16 v1, 0xf

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_4

    :cond_b
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_4

    :cond_c
    if-ne v1, v8, :cond_d

    const/16 v1, 0x14

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v5, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iput-char v8, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_4

    :cond_d
    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v3

    goto/16 :goto_0

    :cond_e
    iput v6, p0, Lcom/sunrise/d/e;->n:I

    move v0, v3

    goto/16 :goto_0

    :cond_f
    move v1, v2

    goto/16 :goto_2
.end method

.method public final c()V
    .locals 3

    const/16 v2, 0x2f

    :goto_0
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-gt v0, v2, :cond_2

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_0

    :cond_1
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/d/e;->C()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(I)Z
    .locals 1

    iget v0, p0, Lcom/sunrise/d/e;->c:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/d/e;->g:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/sunrise/d/e;->r:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/sunrise/d/e;->g:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/d/e;->g:[C

    return-void
.end method

.method public abstract d(I)C
.end method

.method public final d(C)D
    .locals 8

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x39

    const/16 v5, 0x30

    iput v4, p0, Lcom/sunrise/d/e;->n:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    const/4 v0, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-lt v1, v5, :cond_3

    if-gt v1, v6, :cond_3

    :goto_0
    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-lt v0, v5, :cond_0

    if-gt v0, v6, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_2

    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-lt v1, v5, :cond_1

    if-gt v1, v6, :cond_1

    :goto_1
    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-lt v0, v5, :cond_2

    if-gt v0, v6, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v2

    :goto_2
    return-wide v0

    :cond_2
    iget v2, p0, Lcom/sunrise/d/e;->e:I

    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/sunrise/d/e;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    if-ne v0, p1, :cond_4

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    move-wide v0, v2

    goto :goto_2

    :cond_3
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v2

    goto :goto_2

    :cond_4
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v2

    goto :goto_2
.end method

.method public final d()V
    .locals 4

    const/16 v2, 0x14

    const/4 v3, 0x0

    iput v3, p0, Lcom/sunrise/d/e;->h:I

    :goto_0
    iget v0, p0, Lcom/sunrise/d/e;->e:I

    iput v0, p0, Lcom/sunrise/d/e;->b:I

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sunrise/d/e;->C()V

    goto :goto_0

    :cond_0
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sunrise/d/e;->m()V

    :goto_1
    return-void

    :cond_1
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v0, 0x10

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_1

    :cond_2
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sunrise/d/e;->h()V

    goto :goto_1

    :cond_3
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/sunrise/d/e;->h()V

    goto :goto_1

    :cond_4
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lcom/sunrise/d/e;->B()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sunrise/d/e;->a:I

    if-ne v0, v2, :cond_6

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Lcom/sunrise/d/c;->d:Lcom/sunrise/d/c;

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-direct {p0}, Lcom/sunrise/d/e;->I()V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sunrise/d/e;->E()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/sunrise/d/e;->G()V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/sunrise/d/e;->F()V

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/sunrise/d/e;->H()V

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v0, 0xa

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v0, 0xb

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_1

    :sswitch_8
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v0, 0xe

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto :goto_1

    :sswitch_9
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v0, 0xf

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v0, 0xc

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v0, 0xd

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    const/16 v0, 0x11

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto/16 :goto_1

    :cond_6
    iput v2, p0, Lcom/sunrise/d/e;->a:I

    iget v0, p0, Lcom/sunrise/d/e;->f:I

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iput v0, p0, Lcom/sunrise/d/e;->b:I

    goto/16 :goto_1

    :cond_7
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x1f

    if-le v0, v1, :cond_8

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto/16 :goto_0

    :cond_9
    const-string v0, "illegal.char"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/d/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x3a -> :sswitch_c
        0x4e -> :sswitch_5
        0x53 -> :sswitch_5
        0x54 -> :sswitch_5
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x74 -> :sswitch_2
        0x75 -> :sswitch_5
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public d([C)Z
    .locals 9

    const/16 v8, 0x2c

    const/16 v7, 0x1a

    const/16 v6, 0x10

    const/4 v5, -0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0, p1}, Lcom/sunrise/d/e;->h([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    :goto_0
    return v1

    :cond_0
    array-length v0, p1

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v2, 0x74

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v3, 0x72

    if-eq v0, v3, :cond_1

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v2, 0x75

    if-eq v0, v2, :cond_2

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v3, 0x65

    if-eq v0, v3, :cond_3

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    if-ne v2, v8, :cond_a

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    iput v6, p0, Lcom/sunrise/d/e;->a:I

    move v1, v0

    goto :goto_0

    :cond_4
    const/16 v2, 0x66

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v3, 0x61

    if-eq v0, v3, :cond_5

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_6

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v3, 0x73

    if-eq v0, v3, :cond_7

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v2, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_8

    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto/16 :goto_0

    :cond_8
    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_9
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_f

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    if-ne v2, v8, :cond_b

    iput v6, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    :goto_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    move v1, v0

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_c

    const/16 v1, 0xf

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_2

    :cond_c
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_d

    const/16 v1, 0xd

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_2

    :cond_d
    if-ne v2, v7, :cond_e

    const/16 v1, 0x14

    iput v1, p0, Lcom/sunrise/d/e;->a:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iput-char v7, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_2

    :cond_e
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto/16 :goto_0

    :cond_f
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto/16 :goto_0
.end method

.method public final e()C
    .locals 1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    return v0
.end method

.method public e([C)J
    .locals 13

    const/16 v12, 0x1a

    const/16 v11, 0x10

    const/4 v0, 0x0

    const/4 v10, -0x1

    const-wide/16 v4, 0x0

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0, p1}, Lcom/sunrise/d/e;->h([C)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v4

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_d

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/4 v0, 0x1

    move v6, v0

    move v0, v1

    :goto_1
    const/16 v1, 0x30

    if-lt v0, v1, :cond_5

    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x30

    int-to-long v0, v0

    :goto_2
    iget v7, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v7

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    const/16 v7, 0x30

    if-lt v2, v7, :cond_2

    const/16 v7, 0x39

    if-gt v2, v7, :cond_2

    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    add-int/lit8 v2, v2, -0x30

    int-to-long v8, v2

    add-long/2addr v0, v8

    move v2, v3

    goto :goto_2

    :cond_2
    const/16 v7, 0x2e

    if-ne v2, v7, :cond_3

    iput v10, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v4

    goto :goto_0

    :cond_3
    cmp-long v7, v0, v4

    if-ltz v7, :cond_4

    const/16 v7, 0x15

    if-le v3, v7, :cond_6

    :cond_4
    iput v10, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v4

    goto :goto_0

    :cond_5
    iput v10, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v4

    goto :goto_0

    :cond_6
    const/16 v7, 0x2c

    if-ne v2, v7, :cond_7

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sunrise/d/e;->e:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    iput-char v2, p0, Lcom/sunrise/d/e;->d:C

    const/4 v2, 0x3

    iput v2, p0, Lcom/sunrise/d/e;->n:I

    iput v11, p0, Lcom/sunrise/d/e;->a:I

    if-eqz v6, :cond_0

    neg-long v0, v0

    goto :goto_0

    :cond_7
    const/16 v7, 0x7d

    if-ne v2, v7, :cond_c

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_8

    iput v11, p0, Lcom/sunrise/d/e;->a:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v2, v7

    iput v2, p0, Lcom/sunrise/d/e;->e:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    iput-char v2, p0, Lcom/sunrise/d/e;->d:C

    :goto_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/sunrise/d/e;->n:I

    if-eqz v6, :cond_0

    neg-long v0, v0

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_9

    const/16 v2, 0xf

    iput v2, p0, Lcom/sunrise/d/e;->a:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v2, v7

    iput v2, p0, Lcom/sunrise/d/e;->e:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    iput-char v2, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_3

    :cond_9
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_a

    const/16 v2, 0xd

    iput v2, p0, Lcom/sunrise/d/e;->a:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v2, v7

    iput v2, p0, Lcom/sunrise/d/e;->e:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    iput-char v2, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_3

    :cond_a
    if-ne v2, v12, :cond_b

    const/16 v2, 0x14

    iput v2, p0, Lcom/sunrise/d/e;->a:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v7, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sunrise/d/e;->e:I

    iput-char v12, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_3

    :cond_b
    iput v10, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v4

    goto/16 :goto_0

    :cond_c
    iput v10, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v4

    goto/16 :goto_0

    :cond_d
    move v6, v0

    move v2, v3

    move v0, v1

    goto/16 :goto_1
.end method

.method public e(C)Z
    .locals 8

    const/16 v6, 0x65

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    const/16 v4, 0x74

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    if-ne v2, v6, :cond_0

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    const/4 v2, 0x5

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_0
    if-ne v1, p1, :cond_5

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/sunrise/d/e;->n:I

    :goto_1
    return v0

    :cond_0
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_1

    :cond_1
    const/16 v4, 0x66

    if-ne v2, v4, :cond_3

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-ne v1, v6, :cond_2

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    const/4 v2, 0x6

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    goto :goto_0

    :cond_2
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_1

    :cond_3
    const/16 v4, 0x31

    if-ne v2, v4, :cond_4

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    move v2, v3

    move v7, v0

    move v0, v1

    move v1, v7

    goto :goto_0

    :cond_4
    const/16 v4, 0x30

    if-ne v2, v4, :cond_7

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    move v2, v3

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/sunrise/d/e;->i(C)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    move v2, v3

    goto/16 :goto_0

    :cond_6
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_1

    :cond_7
    move v7, v2

    move v2, v1

    move v1, v7

    goto/16 :goto_0
.end method

.method public abstract f()C
.end method

.method public final f([C)F
    .locals 8

    const/16 v7, 0x10

    const/16 v6, 0x39

    const/16 v4, 0x30

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0, p1}, Lcom/sunrise/d/e;->h([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    array-length v1, p1

    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-lt v1, v4, :cond_4

    if-gt v1, v6, :cond_4

    :goto_1
    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-lt v0, v4, :cond_1

    if-gt v0, v6, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_3

    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-lt v1, v4, :cond_2

    if-gt v1, v6, :cond_2

    :goto_2
    iget v3, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-lt v0, v4, :cond_3

    if-gt v0, v6, :cond_3

    move v0, v1

    goto :goto_2

    :cond_2
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move v0, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/sunrise/d/e;->e:I

    array-length v4, p1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/sunrise/d/e;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_5

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    iput v7, p0, Lcom/sunrise/d/e;->a:I

    move v0, v3

    goto :goto_0

    :cond_4
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move v0, v2

    goto :goto_0

    :cond_5
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_a

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_6

    iput v7, p0, Lcom/sunrise/d/e;->a:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    :goto_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    move v0, v3

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_7

    const/16 v0, 0xf

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_3

    :cond_7
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_8

    const/16 v0, 0xd

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_3

    :cond_8
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_3

    :cond_9
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move v0, v2

    goto/16 :goto_0

    :cond_a
    iput v5, p0, Lcom/sunrise/d/e;->n:I

    move v0, v2

    goto/16 :goto_0
.end method

.method public f(C)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x3

    const/4 v0, 0x0

    const/16 v8, 0x22

    const/4 v3, 0x0

    const/4 v7, -0x1

    iput v3, p0, Lcom/sunrise/d/e;->n:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    iput v9, p0, Lcom/sunrise/d/e;->n:I

    :goto_0
    return-object v0

    :cond_0
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0

    :cond_1
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0

    :cond_2
    if-eq v1, v8, :cond_3

    iput v7, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v8, v4}, Lcom/sunrise/d/e;->a(CI)I

    move-result v0

    if-ne v0, v7, :cond_4

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v1, 0x1

    sub-int v2, v0, v4

    invoke-virtual {p0, v1, v2}, Lcom/sunrise/d/e;->a(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v7, :cond_8

    :goto_1
    add-int/lit8 v1, v0, -0x1

    move v2, v3

    :goto_2
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_6

    sub-int v1, v0, v4

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/sunrise/d/e;->b(II)[C

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sunrise/d/e;->a([CI)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :goto_3
    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-ne v1, p1, :cond_7

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sunrise/d/e;->e:I

    iget v1, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/e;->d:C

    iput v9, p0, Lcom/sunrise/d/e;->n:I

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/sunrise/d/e;->a(CI)I

    move-result v0

    goto :goto_1

    :cond_7
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    goto/16 :goto_0

    :cond_8
    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_3
.end method

.method public final g([C)D
    .locals 9

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/16 v6, 0x39

    const/16 v5, 0x30

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    invoke-virtual {p0, p1}, Lcom/sunrise/d/e;->h([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    array-length v1, p1

    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-lt v1, v5, :cond_7

    if-gt v1, v6, :cond_7

    :goto_1
    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-lt v0, v5, :cond_1

    if-gt v0, v6, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_3

    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    if-lt v1, v5, :cond_2

    if-gt v1, v6, :cond_2

    :goto_2
    iget v4, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    if-lt v0, v5, :cond_3

    if-gt v0, v6, :cond_3

    move v0, v1

    goto :goto_2

    :cond_2
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v2

    goto :goto_0

    :cond_3
    const/16 v4, 0x65

    if-eq v0, v4, :cond_4

    const/16 v4, 0x45

    if-ne v0, v4, :cond_6

    :cond_4
    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_e

    :cond_5
    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    :goto_3
    if-lt v0, v5, :cond_6

    if-gt v0, v6, :cond_6

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    move v1, v4

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/sunrise/d/e;->e:I

    array-length v5, p1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/sunrise/d/e;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_8

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    iput v8, p0, Lcom/sunrise/d/e;->a:I

    move-wide v0, v4

    goto/16 :goto_0

    :cond_7
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v2

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_d

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_9

    iput v8, p0, Lcom/sunrise/d/e;->a:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    :goto_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v4

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_a

    const/16 v0, 0xf

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_4

    :cond_a
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_b

    const/16 v0, 0xd

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_4

    :cond_b
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_c

    const/16 v0, 0x14

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    add-int/lit8 v1, v6, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sunrise/d/e;->e:I

    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    goto :goto_4

    :cond_c
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v2

    goto/16 :goto_0

    :cond_d
    iput v7, p0, Lcom/sunrise/d/e;->n:I

    move-wide v0, v2

    goto/16 :goto_0

    :cond_e
    move v1, v4

    goto/16 :goto_3
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    return-void
.end method

.method public final g(C)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    :goto_0
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    invoke-virtual {p0}, Lcom/sunrise/d/e;->d()V

    return-void

    :cond_0
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 8

    const/16 v7, 0x44

    const/16 v6, 0x2d

    const/16 v5, 0x39

    const/16 v4, 0x30

    const/4 v1, 0x1

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    iput v0, p0, Lcom/sunrise/d/e;->i:I

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v6, :cond_0

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-lt v0, v4, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-gt v0, v5, :cond_1

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_3

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    :goto_1
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-lt v0, v4, :cond_2

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-gt v0, v5, :cond_2

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_5

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    :cond_4
    :goto_2
    if-eqz v0, :cond_10

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    :goto_3
    return-void

    :cond_5
    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    const/16 v3, 0x53

    if-ne v2, v3, :cond_6

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_2

    :cond_6
    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    const/16 v3, 0x42

    if-ne v2, v3, :cond_7

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_2

    :cond_7
    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    const/16 v3, 0x46

    if-ne v2, v3, :cond_8

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move v0, v1

    goto :goto_2

    :cond_8
    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    if-ne v2, v7, :cond_9

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move v0, v1

    goto :goto_2

    :cond_9
    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    const/16 v3, 0x65

    if-eq v2, v3, :cond_a

    iget-char v2, p0, Lcom/sunrise/d/e;->d:C

    const/16 v3, 0x45

    if-ne v2, v3, :cond_4

    :cond_a
    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_b

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-ne v0, v6, :cond_c

    :cond_b
    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    :cond_c
    :goto_4
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-lt v0, v4, :cond_d

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-gt v0, v5, :cond_d

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_4

    :cond_d
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    if-eq v0, v7, :cond_e

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v2, 0x46

    if-ne v0, v2, :cond_f

    :cond_e
    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    :cond_f
    move v0, v1

    goto/16 :goto_2

    :cond_10
    const/4 v0, 0x2

    iput v0, p0, Lcom/sunrise/d/e;->a:I

    goto/16 :goto_3
.end method

.method protected final h(C)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    iget-object v1, p0, Lcom/sunrise/d/e;->g:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sunrise/d/e;->g:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/sunrise/d/e;->g:[C

    iget-object v2, p0, Lcom/sunrise/d/e;->g:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sunrise/d/e;->g:[C

    :cond_0
    iget-object v0, p0, Lcom/sunrise/d/e;->g:[C

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/d/e;->h:I

    aput-char p1, v0, v1

    return-void
.end method

.method protected abstract h([C)Z
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/sunrise/d/e;->b:I

    return v0
.end method

.method public final j()Ljava/lang/Number;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lcom/sunrise/d/e;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/d/e;->i:I

    :cond_0
    iget v6, p0, Lcom/sunrise/d/e;->i:I

    iget v0, p0, Lcom/sunrise/d/e;->i:I

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    add-int/2addr v1, v0

    const/16 v0, 0x20

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    iget v2, p0, Lcom/sunrise/d/e;->i:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    const/4 v7, 0x1

    const-wide/high16 v2, -0x8000000000000000L

    add-int/lit8 v6, v6, 0x1

    move v8, v7

    move v14, v6

    move-wide v6, v2

    move v3, v14

    :goto_1
    const-wide v10, -0xcccccccccccccccL

    if-ge v3, v1, :cond_d

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sunrise/d/e;->d(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    neg-int v3, v3

    int-to-long v4, v3

    :goto_2
    if-ge v2, v1, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    cmp-long v9, v4, v10

    if-gez v9, :cond_2

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_3
    return-object v0

    :sswitch_0
    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0x4c

    goto :goto_0

    :sswitch_1
    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0x53

    goto :goto_0

    :sswitch_2
    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0x42

    goto :goto_0

    :cond_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move v8, v7

    move v14, v6

    move-wide v6, v2

    move v3, v14

    goto :goto_1

    :cond_2
    const-wide/16 v12, 0xa

    mul-long/2addr v4, v12

    int-to-long v12, v2

    add-long/2addr v12, v6

    cmp-long v9, v4, v12

    if-gez v9, :cond_3

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    int-to-long v12, v2

    sub-long/2addr v4, v12

    move v2, v3

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_9

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_8

    const-wide/32 v2, -0x80000000

    cmp-long v1, v4, v2

    if-ltz v1, :cond_7

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x53

    if-ne v0, v1, :cond_5

    long-to-int v0, v4

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_3

    :cond_5
    const/16 v1, 0x42

    if-ne v0, v1, :cond_6

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_3

    :cond_6
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    neg-long v2, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_c

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_c

    const/16 v1, 0x53

    if-ne v0, v1, :cond_a

    long-to-int v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_3

    :cond_a
    const/16 v1, 0x42

    if-ne v0, v1, :cond_b

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    :cond_c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    move v2, v3

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final k()Ljava/math/BigDecimal;
    .locals 2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public final m()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/sunrise/d/e;->e:I

    iput v0, p0, Lcom/sunrise/d/e;->i:I

    iput-boolean v6, p0, Lcom/sunrise/d/e;->j:Z

    :goto_0
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iput v8, p0, Lcom/sunrise/d/e;->a:I

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    return-void

    :cond_0
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/d/e;->B()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unclosed string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/sunrise/d/e;->j:Z

    if-nez v0, :cond_5

    iput-boolean v7, p0, Lcom/sunrise/d/e;->j:Z

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    iget-object v1, p0, Lcom/sunrise/d/e;->g:[C

    array-length v1, v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/sunrise/d/e;->g:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    if-le v1, v0, :cond_3

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    :cond_3
    new-array v0, v0, [C

    iget-object v1, p0, Lcom/sunrise/d/e;->g:[C

    iget-object v2, p0, Lcom/sunrise/d/e;->g:[C

    array-length v2, v2

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sunrise/d/e;->g:[C

    :cond_4
    iget v0, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    iget-object v2, p0, Lcom/sunrise/d/e;->g:[C

    invoke-virtual {p0, v0, v1, v2}, Lcom/sunrise/d/e;->a(II[C)V

    :cond_5
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iput-char v0, p0, Lcom/sunrise/d/e;->d:C

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unclosed string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-virtual {p0, v6}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p0, v7}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0, v9}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0, v10}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0, v8}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_6
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_7
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v0

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v1

    sget-object v2, Lcom/sunrise/d/e;->q:[I

    aget v0, v2, v0

    mul-int/lit8 v0, v0, 0x10

    sget-object v2, Lcom/sunrise/d/e;->q:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v0

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v1

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v2

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    move-result v3

    new-instance v4, Ljava/lang/String;

    new-array v5, v8, [C

    aput-char v0, v5, v6

    aput-char v1, v5, v7

    aput-char v2, v5, v9

    aput-char v3, v5, v10

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v0, 0x10

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/sunrise/d/e;->j:Z

    if-nez v1, :cond_7

    iget v0, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/e;->h:I

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/sunrise/d/e;->h:I

    iget-object v2, p0, Lcom/sunrise/d/e;->g:[C

    array-length v2, v2

    if-ne v1, v2, :cond_8

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->h(C)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sunrise/d/e;->g:[C

    iget v2, p0, Lcom/sunrise/d/e;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sunrise/d/e;->h:I

    aput-char v0, v1, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final n()I
    .locals 10

    const/4 v0, 0x0

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iput v0, p0, Lcom/sunrise/d/e;->i:I

    :cond_0
    iget v2, p0, Lcom/sunrise/d/e;->i:I

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    iget v3, p0, Lcom/sunrise/d/e;->h:I

    add-int v5, v1, v3

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_2

    const/4 v3, 0x1

    const/high16 v1, -0x80000000

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v1

    move v1, v2

    :goto_0
    const-wide/32 v6, -0xccccccc

    if-ge v1, v5, :cond_9

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    :goto_1
    if-ge v2, v5, :cond_8

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    const/16 v8, 0x4c

    if-eq v2, v8, :cond_1

    const/16 v8, 0x53

    if-eq v2, v8, :cond_1

    const/16 v8, 0x42

    if-ne v2, v8, :cond_3

    :cond_1
    :goto_2
    if-eqz v4, :cond_7

    iget v2, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_6

    :goto_3
    return v0

    :cond_2
    const v1, -0x7fffffff

    move v3, v1

    move v4, v0

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x30

    int-to-long v8, v0

    cmp-long v8, v8, v6

    if-gez v8, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    mul-int/lit8 v0, v0, 0xa

    add-int v8, v3, v2

    if-ge v0, v8, :cond_5

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sub-int/2addr v0, v2

    move v2, v1

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    neg-int v0, v0

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    move v2, v1

    goto :goto_1
.end method

.method public final o()V
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->g(C)V

    return-void
.end method

.method public final p()Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sunrise/d/e;->d(I)C

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-static {v2}, Lcom/sunrise/d/e;->i(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final q()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/sunrise/d/e;->i:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    iput v3, p0, Lcom/sunrise/d/e;->i:I

    :cond_0
    iget v2, p0, Lcom/sunrise/d/e;->i:I

    iget v4, p0, Lcom/sunrise/d/e;->i:I

    iget v5, p0, Lcom/sunrise/d/e;->h:I

    add-int v7, v4, v5

    iget v4, p0, Lcom/sunrise/d/e;->i:I

    invoke-virtual {p0, v4}, Lcom/sunrise/d/e;->d(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    const/4 v3, 0x1

    const-wide/high16 v4, -0x8000000000000000L

    add-int/lit8 v2, v2, 0x1

    move v6, v3

    :goto_0
    const-wide v8, -0xcccccccccccccccL

    if-ge v2, v7, :cond_9

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/e;->d(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    int-to-long v0, v0

    :goto_1
    if-ge v3, v7, :cond_8

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sunrise/d/e;->d(I)C

    move-result v3

    const/16 v10, 0x4c

    if-eq v3, v10, :cond_1

    const/16 v10, 0x53

    if-eq v3, v10, :cond_1

    const/16 v10, 0x42

    if-ne v3, v10, :cond_3

    :cond_1
    :goto_2
    if-eqz v6, :cond_7

    iget v3, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_6

    :goto_3
    return-wide v0

    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move v6, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x30

    cmp-long v10, v0, v8

    if-gez v10, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/16 v10, 0xa

    mul-long/2addr v0, v10

    int-to-long v10, v3

    add-long/2addr v10, v4

    cmp-long v10, v0, v10

    if-gez v10, :cond_5

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    int-to-long v10, v3

    sub-long/2addr v0, v10

    move v3, v2

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    neg-long v0, v0

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_2

    :cond_9
    move v3, v2

    goto :goto_1
.end method

.method public final r()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sunrise/d/e;->h:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sunrise/d/e;->i:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sunrise/d/e;->d(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract s()Ljava/lang/String;
.end method

.method public u()F
    .locals 1

    invoke-virtual {p0}, Lcom/sunrise/d/e;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public v()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/e;->l:Ljava/util/TimeZone;

    return-object v0
.end method

.method public w()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/e;->m:Ljava/util/Locale;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final y()V
    .locals 2

    :goto_0
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    invoke-static {v0}, Lcom/sunrise/d/e;->i(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunrise/d/e;->f()C

    goto :goto_0

    :cond_0
    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/sunrise/d/e;->d:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sunrise/d/e;->H()V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sunrise/d/e;->d()V

    goto :goto_1
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/e;->o:Ljava/lang/String;

    return-object v0
.end method
