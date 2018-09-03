.class public Lcom/sunrise/h/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Properties;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:[C

.field public static final d:[Z

.field public static final e:[Z

.field public static final f:[B

.field public static final g:[B

.field public static final h:[Z

.field public static final i:[Z

.field public static final j:[C

.field public static final k:[C

.field static final l:[C

.field static final m:[C

.field static final n:[C

.field static final o:[I

.field public static final p:[C

.field public static final q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xa

    const/16 v6, 0xa1

    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/sunrise/h/d;->a:Ljava/util/Properties;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sunrise/h/d;->b:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sunrise/h/d;->c:[C

    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/sunrise/h/d;->d:[Z

    move v0, v1

    :goto_0
    sget-object v3, Lcom/sunrise/h/d;->d:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_3

    const/16 v3, 0x41

    if-lt v0, v3, :cond_1

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_1

    sget-object v3, Lcom/sunrise/h/d;->d:[Z

    aput-boolean v2, v3, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_1
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    sget-object v3, Lcom/sunrise/h/d;->d:[Z

    aput-boolean v2, v3, v0

    goto :goto_1

    :cond_2
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    sget-object v3, Lcom/sunrise/h/d;->d:[Z

    aput-boolean v2, v3, v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/sunrise/h/d;->e:[Z

    move v0, v1

    :goto_2
    sget-object v3, Lcom/sunrise/h/d;->e:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_8

    const/16 v3, 0x41

    if-lt v0, v3, :cond_5

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_5

    sget-object v3, Lcom/sunrise/h/d;->e:[Z

    aput-boolean v2, v3, v0

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_2

    :cond_5
    const/16 v3, 0x61

    if-lt v0, v3, :cond_6

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_6

    sget-object v3, Lcom/sunrise/h/d;->e:[Z

    aput-boolean v2, v3, v0

    goto :goto_3

    :cond_6
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_7

    sget-object v3, Lcom/sunrise/h/d;->e:[Z

    aput-boolean v2, v3, v0

    goto :goto_3

    :cond_7
    const/16 v3, 0x30

    if-lt v0, v3, :cond_4

    const/16 v3, 0x39

    if-gt v0, v3, :cond_4

    sget-object v3, Lcom/sunrise/h/d;->e:[Z

    aput-boolean v2, v3, v0

    goto :goto_3

    :cond_8
    :try_start_0
    new-instance v0, Lcom/sunrise/h/e;

    invoke-direct {v0}, Lcom/sunrise/h/e;-><init>()V

    invoke-virtual {v0}, Lcom/sunrise/h/e;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    new-array v0, v6, [B

    sput-object v0, Lcom/sunrise/h/d;->f:[B

    new-array v0, v6, [B

    sput-object v0, Lcom/sunrise/h/d;->g:[B

    new-array v0, v6, [Z

    sput-object v0, Lcom/sunrise/h/d;->h:[Z

    new-array v0, v6, [Z

    sput-object v0, Lcom/sunrise/h/d;->i:[Z

    const/16 v0, 0x5d

    new-array v0, v0, [C

    sput-object v0, Lcom/sunrise/h/d;->j:[C

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    aput-byte v5, v0, v1

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    aput-byte v5, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/4 v3, 0x2

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/4 v3, 0x3

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    aput-byte v5, v0, v5

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/4 v3, 0x5

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/4 v3, 0x6

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/4 v3, 0x7

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/16 v3, 0x8

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/16 v3, 0x9

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    aput-byte v2, v0, v7

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/16 v3, 0xb

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/16 v3, 0xc

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/16 v3, 0xd

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/16 v3, 0x22

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    const/16 v3, 0x5c

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    aput-byte v5, v0, v1

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    aput-byte v5, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/4 v3, 0x2

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/4 v3, 0x3

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    aput-byte v5, v0, v5

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/4 v3, 0x5

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/4 v3, 0x6

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/4 v3, 0x7

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/16 v3, 0x8

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/16 v3, 0x9

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    aput-byte v2, v0, v7

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/16 v3, 0xb

    aput-byte v5, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/16 v3, 0xc

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/16 v3, 0xd

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/16 v3, 0x5c

    aput-byte v2, v0, v3

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    const/16 v3, 0x27

    aput-byte v2, v0, v3

    const/16 v0, 0xe

    :goto_5
    const/16 v3, 0x1f

    if-gt v0, v3, :cond_9

    sget-object v3, Lcom/sunrise/h/d;->f:[B

    aput-byte v5, v3, v0

    sget-object v3, Lcom/sunrise/h/d;->g:[B

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    const/16 v0, 0x7f

    :goto_6
    const/16 v3, 0xa0

    if-gt v0, v3, :cond_a

    sget-object v3, Lcom/sunrise/h/d;->f:[B

    aput-byte v5, v3, v0

    sget-object v3, Lcom/sunrise/h/d;->g:[B

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_7
    if-ge v3, v6, :cond_d

    sget-object v4, Lcom/sunrise/h/d;->h:[Z

    sget-object v0, Lcom/sunrise/h/d;->f:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_b

    move v0, v2

    :goto_8
    aput-boolean v0, v4, v3

    sget-object v4, Lcom/sunrise/h/d;->i:[Z

    sget-object v0, Lcom/sunrise/h/d;->g:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_c

    move v0, v2

    :goto_9
    aput-boolean v0, v4, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_b
    move v0, v1

    goto :goto_8

    :cond_c
    move v0, v1

    goto :goto_9

    :cond_d
    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v3, 0x30

    aput-char v3, v0, v1

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v3, 0x31

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/4 v2, 0x2

    const/16 v3, 0x32

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0x34

    aput-char v2, v0, v5

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0x8

    const/16 v3, 0x62

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0x9

    const/16 v3, 0x74

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0x6e

    aput-char v2, v0, v7

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0xb

    const/16 v3, 0x76

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0xc

    const/16 v3, 0x66

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0xd

    const/16 v3, 0x72

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0x22

    const/16 v3, 0x22

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0x27

    const/16 v3, 0x27

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    aput-char v3, v0, v2

    sget-object v0, Lcom/sunrise/h/d;->j:[C

    const/16 v2, 0x5c

    const/16 v3, 0x5c

    aput-char v3, v0, v2

    const/16 v0, 0x60

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sunrise/h/d;->k:[C

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sunrise/h/d;->l:[C

    const/16 v0, 0x64

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sunrise/h/d;->m:[C

    const/16 v0, 0x64

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sunrise/h/d;->n:[C

    new-array v0, v7, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sunrise/h/d;->o:[I

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sunrise/h/d;->p:[C

    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/sunrise/h/d;->q:[I

    sget-object v0, Lcom/sunrise/h/d;->q:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    sget-object v0, Lcom/sunrise/h/d;->p:[C

    array-length v2, v0

    move v0, v1

    :goto_a
    if-ge v0, v2, :cond_e

    sget-object v3, Lcom/sunrise/h/d;->q:[I

    sget-object v4, Lcom/sunrise/h/d;->p:[C

    aget-char v4, v4, v0

    aput v0, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_e
    sget-object v0, Lcom/sunrise/h/d;->q:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_3
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_4
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sunrise/h/d;->o:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(J)I
    .locals 8

    const-wide/16 v4, 0xa

    const/16 v1, 0x13

    const/4 v0, 0x1

    move-wide v2, v4

    :goto_0
    if-ge v0, v1, :cond_1

    cmp-long v6, p0, v2

    if-gez v6, :cond_0

    :goto_1
    return v0

    :cond_0
    mul-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/sunrise/h/d;->a:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a()V
    .locals 2

    new-instance v0, Lcom/sunrise/h/d$1;

    invoke-direct {v0}, Lcom/sunrise/h/d$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/sunrise/h/d;->a:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(II[C)V
    .locals 6

    const/4 v0, 0x0

    if-gez p0, :cond_3

    const/16 v0, 0x2d

    neg-int v1, p0

    move v3, v0

    move v0, p1

    :goto_0
    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_1

    div-int/lit8 p0, v1, 0x64

    shl-int/lit8 v2, p0, 0x6

    shl-int/lit8 v4, p0, 0x5

    add-int/2addr v2, v4

    shl-int/lit8 v4, p0, 0x2

    add-int/2addr v2, v4

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/sunrise/h/d;->n:[C

    aget-char v2, v2, v1

    aput-char v2, p2, v0

    add-int/lit8 p1, v0, -0x1

    sget-object v0, Lcom/sunrise/h/d;->m:[C

    aget-char v0, v0, v1

    aput-char v0, p2, p1

    move v0, p1

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    const v2, 0xcccd

    mul-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x13

    shl-int/lit8 v4, v2, 0x3

    shl-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v5

    sub-int/2addr v1, v4

    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/sunrise/h/d;->l:[C

    aget-char v1, v4, v1

    aput-char v1, p2, v0

    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    aput-char v3, p2, v0

    :cond_2
    return-void

    :cond_3
    move v3, v0

    move v1, p0

    move v0, p1

    goto :goto_0
.end method

.method public static a(JI[C)V
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_4

    const/16 v0, 0x2d

    neg-long p0, p0

    move v3, v0

    move v1, p2

    :goto_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v0, p0, v4

    if-lez v0, :cond_0

    const-wide/16 v4, 0x64

    div-long v4, p0, v4

    const/4 v0, 0x6

    shl-long v6, v4, v0

    const/4 v0, 0x5

    shl-long v8, v4, v0

    add-long/2addr v6, v8

    const/4 v0, 0x2

    shl-long v8, v4, v0

    add-long/2addr v6, v8

    sub-long v6, p0, v6

    long-to-int v0, v6

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/sunrise/h/d;->n:[C

    aget-char v2, v2, v0

    aput-char v2, p3, v1

    add-int/lit8 p2, v1, -0x1

    sget-object v1, Lcom/sunrise/h/d;->m:[C

    aget-char v0, v1, v0

    aput-char v0, p3, p2

    move v1, p2

    move-wide p0, v4

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    :goto_1
    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_3

    div-int/lit8 v2, v0, 0x64

    shl-int/lit8 v4, v2, 0x6

    shl-int/lit8 v5, v2, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    add-int/lit8 v1, v1, -0x1

    sget-object v4, Lcom/sunrise/h/d;->n:[C

    aget-char v4, v4, v0

    aput-char v4, p3, v1

    add-int/lit8 v1, v1, -0x1

    sget-object v4, Lcom/sunrise/h/d;->m:[C

    aget-char v0, v4, v0

    aput-char v0, p3, v1

    move v0, v2

    goto :goto_1

    :cond_1
    move v2, v0

    move v0, v1

    :goto_2
    const v1, 0xcccd

    mul-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x13

    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int v4, v0, v4

    add-int/lit8 v0, v2, -0x1

    sget-object v2, Lcom/sunrise/h/d;->l:[C

    aget-char v2, v2, v4

    aput-char v2, p3, v0

    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    aput-char v3, p3, v0

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v3, v0

    move v1, p2

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;II)[B
    .locals 13

    const/16 v8, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array v0, v1, [B

    :goto_0
    return-object v0

    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v3, p1

    :goto_1
    if-ge v3, v0, :cond_a

    sget-object v2, Lcom/sunrise/h/d;->q:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v2, v2, v4

    if-gez v2, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    if-lez v7, :cond_1

    sget-object v0, Lcom/sunrise/h/d;->q:[I

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v0, v0, v2

    if-gez v0, :cond_1

    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_4

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_3

    const/4 v0, 0x2

    move v6, v0

    :goto_3
    sub-int v0, v7, v3

    add-int/lit8 v2, v0, 0x1

    if-le p2, v8, :cond_6

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_5

    div-int/lit8 v0, v2, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    :goto_5
    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v8, v2, v6

    new-array v4, v8, [B

    div-int/lit8 v2, v8, 0x3

    mul-int/lit8 v9, v2, 0x3

    move v2, v1

    move v5, v1

    :cond_2
    :goto_6
    if-ge v5, v9, :cond_7

    sget-object v10, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v10, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v10, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v3, v10

    sget-object v10, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    sget-object v12, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    aput-byte v10, v4, v12

    if-lez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x13

    if-ne v2, v10, :cond_2

    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move v2, v1

    goto :goto_6

    :cond_3
    const/4 v0, 0x1

    move v6, v0

    goto :goto_3

    :cond_4
    move v6, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    if-ge v5, v8, :cond_9

    move v0, v3

    move v3, v1

    :goto_7
    sub-int v2, v7, v6

    if-gt v0, v2, :cond_8

    sget-object v9, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget v0, v9, v0

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v0, v9

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v0, v2

    goto :goto_7

    :cond_8
    const/16 v0, 0x10

    move v1, v5

    :goto_8
    if-ge v1, v8, :cond_9

    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_8

    :cond_9
    move-object v0, v4

    goto/16 :goto_0

    :cond_a
    move v7, v0

    goto/16 :goto_2
.end method

.method public static a([CII)[B
    .locals 13

    const/16 v8, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array v0, v1, [B

    :goto_0
    return-object v0

    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v3, p1

    :goto_1
    if-ge v3, v0, :cond_a

    sget-object v2, Lcom/sunrise/h/d;->q:[I

    aget-char v4, p0, v3

    aget v2, v2, v4

    if-gez v2, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    if-lez v7, :cond_1

    sget-object v0, Lcom/sunrise/h/d;->q:[I

    aget-char v2, p0, v7

    aget v0, v0, v2

    if-gez v0, :cond_1

    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_2

    :cond_1
    aget-char v0, p0, v7

    if-ne v0, v5, :cond_4

    add-int/lit8 v0, v7, -0x1

    aget-char v0, p0, v0

    if-ne v0, v5, :cond_3

    const/4 v0, 0x2

    move v6, v0

    :goto_3
    sub-int v0, v7, v3

    add-int/lit8 v2, v0, 0x1

    if-le p2, v8, :cond_6

    aget-char v0, p0, v8

    const/16 v4, 0xd

    if-ne v0, v4, :cond_5

    div-int/lit8 v0, v2, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    :goto_5
    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v8, v2, v6

    new-array v4, v8, [B

    div-int/lit8 v2, v8, 0x3

    mul-int/lit8 v9, v2, 0x3

    move v2, v1

    move v5, v1

    :cond_2
    :goto_6
    if-ge v5, v9, :cond_7

    sget-object v10, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v11, v3, 0x1

    aget-char v3, p0, v3

    aget v3, v10, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v10, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v12, v11, 0x1

    aget-char v11, p0, v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v3, v10

    sget-object v10, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v11, v12, 0x1

    aget-char v12, p0, v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    sget-object v12, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v3, v11, 0x1

    aget-char v11, p0, v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    aput-byte v10, v4, v12

    if-lez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x13

    if-ne v2, v10, :cond_2

    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move v2, v1

    goto :goto_6

    :cond_3
    const/4 v0, 0x1

    move v6, v0

    goto :goto_3

    :cond_4
    move v6, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    if-ge v5, v8, :cond_9

    move v0, v3

    move v3, v1

    :goto_7
    sub-int v2, v7, v6

    if-gt v0, v2, :cond_8

    sget-object v9, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v2, v0, 0x1

    aget-char v0, p0, v0

    aget v0, v9, v0

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v0, v9

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v0, v2

    goto :goto_7

    :cond_8
    const/16 v0, 0x10

    move v1, v5

    :goto_8
    if-ge v1, v8, :cond_9

    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_8

    :cond_9
    move-object v0, v4

    goto/16 :goto_0

    :cond_a
    move v7, v0

    goto/16 :goto_2
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 13

    const/16 v8, 0x4c

    const/16 v6, 0x3d

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    new-array v0, v1, [B

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_a

    sget-object v4, Lcom/sunrise/h/d;->q:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    if-lez v7, :cond_1

    sget-object v0, Lcom/sunrise/h/d;->q:[I

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget v0, v0, v4

    if-gez v0, :cond_1

    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_4

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    const/4 v0, 0x2

    move v6, v0

    :goto_3
    sub-int v0, v7, v3

    add-int/lit8 v4, v0, 0x1

    if-le v2, v8, :cond_6

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    div-int/lit8 v0, v4, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    :goto_5
    sub-int v2, v4, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v8, v2, v6

    new-array v4, v8, [B

    div-int/lit8 v2, v8, 0x3

    mul-int/lit8 v9, v2, 0x3

    move v2, v1

    move v5, v1

    :cond_2
    :goto_6
    if-ge v5, v9, :cond_7

    sget-object v10, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v10, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v10, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v3, v10

    sget-object v10, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    sget-object v12, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    aput-byte v10, v4, v12

    if-lez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x13

    if-ne v2, v10, :cond_2

    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move v2, v1

    goto :goto_6

    :cond_3
    const/4 v0, 0x1

    move v6, v0

    goto :goto_3

    :cond_4
    move v6, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    if-ge v5, v8, :cond_9

    move v0, v3

    move v3, v1

    :goto_7
    sub-int v2, v7, v6

    if-gt v0, v2, :cond_8

    sget-object v9, Lcom/sunrise/h/d;->q:[I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget v0, v9, v0

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v0, v9

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v0, v2

    goto :goto_7

    :cond_8
    const/16 v0, 0x10

    move v1, v5

    :goto_8
    if-ge v1, v8, :cond_9

    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_8

    :cond_9
    move-object v0, v4

    goto/16 :goto_0

    :cond_a
    move v7, v0

    goto/16 :goto_2
.end method
