.class public final Lcom/sunrise/d/g;
.super Lcom/sunrise/d/e;


# static fields
.field public static final r:I

.field public static final s:I

.field public static final t:I


# instance fields
.field private final u:Ljava/lang/String;

.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/sunrise/d/g;->r:I

    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/sunrise/d/g;->s:I

    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/sunrise/d/g;->t:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/sunrise/a/a;->f:I

    invoke-direct {p0, p1, v0}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/sunrise/d/e;-><init>(I)V

    iput-object p1, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sunrise/d/g;->v:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0}, Lcom/sunrise/d/g;->f()C

    iget-char v0, p0, Lcom/sunrise/d/g;->d:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sunrise/d/g;->f()C

    :cond_0
    return-void
.end method

.method private a(CCCCCCCC)V
    .locals 5

    iget-object v0, p0, Lcom/sunrise/d/g;->l:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/sunrise/d/g;->m:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    add-int/lit8 v0, p1, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v1, p2, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, p4, -0x30

    add-int/2addr v0, v1

    add-int/lit8 v1, p5, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p6, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p7, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, p8, -0x30

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method static a(CCCCCCII)Z
    .locals 5

    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    if-ne p4, v2, :cond_4

    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    :cond_2
    if-ne p6, v2, :cond_5

    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-ne p4, v3, :cond_0

    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method static a(Ljava/lang/String;I[C)Z
    .locals 5

    const/4 v0, 0x0

    array-length v2, p2

    add-int v1, v2, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-char v3, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(CCCCCC)Z
    .locals 6

    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    if-ne p1, v2, :cond_1

    if-lt p2, v2, :cond_0

    if-le p2, v3, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    :cond_2
    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    if-lt p4, v2, :cond_0

    if-gt p4, v3, :cond_0

    :cond_3
    if-lt p5, v2, :cond_7

    if-gt p5, v4, :cond_7

    if-lt p6, v2, :cond_0

    if-gt p6, v3, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    if-lt p2, v2, :cond_0

    const/16 v1, 0x34

    if-le p2, v1, :cond_2

    goto :goto_0

    :cond_6
    if-ne p3, v5, :cond_0

    if-eq p4, v2, :cond_3

    goto :goto_0

    :cond_7
    if-ne p5, v5, :cond_0

    if-eq p6, v2, :cond_4

    goto :goto_0
.end method


# virtual methods
.method public B()Z
    .locals 2

    iget v0, p0, Lcom/sunrise/d/g;->e:I

    iget v1, p0, Lcom/sunrise/d/g;->v:I

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/sunrise/d/g;->d:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sunrise/d/g;->v:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->b(Z)Z

    move-result v0

    return v0
.end method

.method public final a(C)I
    .locals 8

    const/16 v7, 0x39

    const/16 v5, 0x30

    const/4 v6, -0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/sunrise/d/g;->n:I

    iget v0, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->d(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    move v4, v1

    :goto_0
    if-eqz v4, :cond_8

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v0

    :goto_1
    if-lt v0, v5, :cond_4

    if-gt v0, v7, :cond_4

    add-int/lit8 v0, v0, -0x30

    :goto_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    if-lt v1, v5, :cond_1

    if-gt v1, v7, :cond_1

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_2

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_3

    iput v6, p0, Lcom/sunrise/d/g;->n:I

    move v0, v3

    :cond_2
    :goto_3
    return v0

    :cond_3
    if-gez v0, :cond_6

    iput v6, p0, Lcom/sunrise/d/g;->n:I

    move v0, v3

    goto :goto_3

    :cond_4
    iput v6, p0, Lcom/sunrise/d/g;->n:I

    move v0, v3

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lcom/sunrise/d/g;->i(C)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    move v2, v3

    :cond_6
    if-ne v1, p1, :cond_5

    iput v2, p0, Lcom/sunrise/d/g;->e:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/sunrise/d/g;->n:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    if-eqz v4, :cond_2

    neg-int v0, v0

    goto :goto_3

    :cond_7
    iput v6, p0, Lcom/sunrise/d/g;->n:I

    if-eqz v4, :cond_2

    neg-int v0, v0

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method public final a(CI)I
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public final a(II)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/sunrise/h/b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/d/g;->g:[C

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    add-int v1, p1, p2

    iget-object v2, p0, Lcom/sunrise/d/g;->g:[C

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sunrise/d/g;->g:[C

    invoke-direct {v0, v1, v3, p2}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v0

    :cond_0
    new-array v1, p2, [C

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v0, p1, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(IIILcom/sunrise/d/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/sunrise/d/k;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a([CLcom/sunrise/d/k;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x2c

    const/16 v7, 0x22

    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    iget-object v1, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    iget v2, p0, Lcom/sunrise/d/g;->e:I

    invoke-static {v1, v2, p1}, Lcom/sunrise/d/g;->a(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/sunrise/d/g;->e:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    if-eq v1, v7, :cond_1

    iput v6, p0, Lcom/sunrise/d/g;->n:I

    move-object v0, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    if-ne v1, v7, :cond_2

    iput v3, p0, Lcom/sunrise/d/g;->e:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    iget-object v5, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v5, v2, v3, v0}, Lcom/sunrise/d/k;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    if-ne v1, v8, :cond_3

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    const/16 v5, 0x5c

    if-ne v1, v5, :cond_9

    iput v6, p0, Lcom/sunrise/d/g;->n:I

    move-object v0, v4

    goto :goto_0

    :cond_3
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    if-ne v1, v8, :cond_4

    const/16 v1, 0x10

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    :goto_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_0

    :cond_4
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_5

    const/16 v1, 0xf

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    goto :goto_2

    :cond_5
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_6

    const/16 v1, 0xd

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    goto :goto_2

    :cond_6
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_7

    const/16 v1, 0x14

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    goto :goto_2

    :cond_7
    iput v6, p0, Lcom/sunrise/d/g;->n:I

    move-object v0, v4

    goto/16 :goto_0

    :cond_8
    iput v6, p0, Lcom/sunrise/d/g;->n:I

    move-object v0, v4

    goto/16 :goto_0

    :cond_9
    move v1, v3

    goto/16 :goto_1
.end method

.method protected a(CCC)V
    .locals 2

    add-int/lit8 v0, p2, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p3, -0x30

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_0

    neg-int v0, v0

    :cond_0
    iget-object v1, p0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-void
.end method

.method protected a(CCCCCC)V
    .locals 5

    add-int/lit8 v0, p1, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p2, -0x30

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p4, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v2, p5, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, p6, -0x30

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected final a(II[C)V
    .locals 3

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method protected final a(I[CII)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public b(C)J
    .locals 12

    const/16 v11, 0x39

    const/16 v7, 0x30

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v10, -0x1

    iput v2, p0, Lcom/sunrise/d/g;->n:I

    iget v0, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->d(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    move v6, v2

    :goto_0
    if-eqz v6, :cond_8

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v0

    :goto_1
    if-lt v0, v7, :cond_4

    if-gt v0, v11, :cond_4

    add-int/lit8 v0, v0, -0x30

    int-to-long v0, v0

    :goto_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    if-lt v2, v7, :cond_1

    if-gt v2, v11, :cond_1

    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    add-int/lit8 v2, v2, -0x30

    int-to-long v8, v2

    add-long/2addr v0, v8

    move v2, v3

    goto :goto_2

    :cond_0
    move v6, v2

    goto :goto_0

    :cond_1
    const/16 v7, 0x2e

    if-ne v2, v7, :cond_3

    iput v10, p0, Lcom/sunrise/d/g;->n:I

    move-wide v0, v4

    :cond_2
    :goto_3
    return-wide v0

    :cond_3
    cmp-long v7, v0, v4

    if-gez v7, :cond_6

    iput v10, p0, Lcom/sunrise/d/g;->n:I

    move-wide v0, v4

    goto :goto_3

    :cond_4
    iput v10, p0, Lcom/sunrise/d/g;->n:I

    move-wide v0, v4

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lcom/sunrise/d/g;->i(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    move v3, v4

    :cond_6
    if-ne v2, p1, :cond_5

    iput v3, p0, Lcom/sunrise/d/g;->e:I

    iget v2, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    iput-char v2, p0, Lcom/sunrise/d/g;->d:C

    const/4 v2, 0x3

    iput v2, p0, Lcom/sunrise/d/g;->n:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/sunrise/d/g;->a:I

    if-eqz v6, :cond_2

    neg-long v0, v0

    goto :goto_3

    :cond_7
    iput v10, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_1
.end method

.method public b([C)Ljava/lang/String;
    .locals 13

    const/4 v3, 0x0

    const/16 v11, 0x7d

    const/16 v10, 0x2c

    const/16 v9, 0x22

    const/4 v8, -0x1

    iput v3, p0, Lcom/sunrise/d/g;->n:I

    iget v4, p0, Lcom/sunrise/d/g;->e:I

    iget-char v5, p0, Lcom/sunrise/d/g;->d:C

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-static {v0, v1, p1}, Lcom/sunrise/d/g;->a(Ljava/lang/String;I[C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    invoke-virtual {p0}, Lcom/sunrise/d/g;->z()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sunrise/d/g;->e:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->d(I)C

    move-result v0

    if-eq v0, v9, :cond_1

    iput v8, p0, Lcom/sunrise/d/g;->n:I

    invoke-virtual {p0}, Lcom/sunrise/d/g;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v9, v1}, Lcom/sunrise/d/g;->a(CI)I

    move-result v0

    if-ne v0, v8, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sub-int v2, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/sunrise/d/g;->a(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v8, :cond_d

    :goto_1
    add-int/lit8 v1, v0, -0x1

    move v2, v3

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_5

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v0, v1

    iget v2, p0, Lcom/sunrise/d/g;->e:I

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/sunrise/d/g;->b(II)[C

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sunrise/d/g;->a([CI)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    :goto_3
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    if-eq v2, v10, :cond_4

    if-ne v2, v11, :cond_6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    iput-char v2, p0, Lcom/sunrise/d/g;->d:C

    if-ne v2, v10, :cond_7

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/sunrise/d/g;->a(CI)I

    move-result v0

    goto :goto_1

    :cond_6
    iput v8, p0, Lcom/sunrise/d/g;->n:I

    invoke-virtual {p0}, Lcom/sunrise/d/g;->z()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-ne v2, v11, :cond_c

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    if-ne v1, v10, :cond_8

    const/16 v1, 0x10

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    :goto_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/sunrise/d/g;->n:I

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_9

    const/16 v1, 0xf

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    goto :goto_4

    :cond_9
    if-ne v1, v11, :cond_a

    const/16 v1, 0xd

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    goto :goto_4

    :cond_a
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_b

    const/16 v1, 0x14

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    goto :goto_4

    :cond_b
    iput v4, p0, Lcom/sunrise/d/g;->e:I

    iput-char v5, p0, Lcom/sunrise/d/g;->d:C

    iput v8, p0, Lcom/sunrise/d/g;->n:I

    invoke-virtual {p0}, Lcom/sunrise/d/g;->z()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    iput v8, p0, Lcom/sunrise/d/g;->n:I

    invoke-virtual {p0}, Lcom/sunrise/d/g;->z()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    move-object v12, v1

    move v1, v0

    move-object v0, v12

    goto/16 :goto_3
.end method

.method public b(Z)Z
    .locals 22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->v:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    sub-int v19, v2, v3

    if-nez p1, :cond_4

    const/16 v2, 0xd

    move/from16 v0, v19

    if-le v0, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sunrise/d/g;->d(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sunrise/d/g;->d(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v7, v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sunrise/d/g;->d(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sunrise/d/g;->e:I

    add-int v8, v8, v19

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sunrise/d/g;->d(I)C

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sunrise/d/g;->e:I

    add-int v9, v9, v19

    add-int/lit8 v9, v9, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sunrise/d/g;->d(I)C

    move-result v9

    const/16 v10, 0x2f

    if-ne v2, v10, :cond_4

    const/16 v2, 0x44

    if-ne v3, v2, :cond_4

    const/16 v2, 0x61

    if-ne v4, v2, :cond_4

    const/16 v2, 0x74

    if-ne v5, v2, :cond_4

    const/16 v2, 0x65

    if-ne v6, v2, :cond_4

    const/16 v2, 0x28

    if-ne v7, v2, :cond_4

    const/16 v2, 0x2f

    if-ne v8, v2, :cond_4

    const/16 v2, 0x29

    if-ne v9, v2, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x6

    :goto_0
    move/from16 v0, v19

    if-ge v3, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sunrise/d/g;->e:I

    add-int/2addr v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-le v4, v5, :cond_0

    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/sunrise/d/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sunrise/d/g;->l:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/d/g;->m:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sunrise/d/g;->a:I

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    const/16 v2, 0xe

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    const/16 v2, 0x11

    move/from16 v0, v19

    if-ne v0, v2, :cond_11

    :cond_5
    if-eqz p1, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sunrise/d/g;->d(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sunrise/d/g;->d(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v7, v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sunrise/d/g;->d(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v8, v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sunrise/d/g;->d(I)C

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v9, v9, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sunrise/d/g;->d(I)C

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/sunrise/d/g;->a(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/sunrise/d/g;->a(CCCCCCCC)V

    const/16 v2, 0x8

    move/from16 v0, v19

    if-eq v0, v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sunrise/d/g;->b(CCCCCC)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0x11

    move/from16 v0, v19

    if-ne v0, v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v9, v9, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sunrise/d/g;->d(I)C

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sunrise/d/g;->d(I)C

    move-result v10

    const/16 v11, 0x30

    if-lt v2, v11, :cond_9

    const/16 v11, 0x39

    if-le v2, v11, :cond_a

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v11, 0x30

    if-lt v9, v11, :cond_b

    const/16 v11, 0x39

    if-le v9, v11, :cond_c

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v11, 0x30

    if-lt v10, v11, :cond_d

    const/16 v11, 0x39

    if-le v10, v11, :cond_e

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v2, v9

    add-int/lit8 v9, v10, -0x30

    add-int/2addr v2, v9

    :goto_2
    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int v9, v3, v4

    add-int/lit8 v3, v5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v6, -0x30

    add-int/2addr v4, v3

    add-int/lit8 v3, v7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v5, v8, -0x30

    add-int/2addr v3, v5

    move v5, v9

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sunrise/d/g;->a:I

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v2, 0x0

    goto :goto_2

    :cond_10
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    goto :goto_3

    :cond_11
    const/16 v2, 0x9

    move/from16 v0, v19

    if-ge v0, v2, :cond_12

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v9, v9, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sunrise/d/g;->d(I)C

    move-result v9

    const/16 v12, 0x2d

    if-ne v5, v12, :cond_13

    const/16 v12, 0x2d

    if-eq v4, v12, :cond_14

    :cond_13
    const/16 v12, 0x2f

    if-ne v5, v12, :cond_15

    const/16 v12, 0x2f

    if-ne v4, v12, :cond_15

    :cond_14
    move v5, v10

    move v4, v11

    move/from16 v20, v3

    move v3, v2

    move v2, v8

    move/from16 v8, v20

    :goto_4
    invoke-static/range {v2 .. v9}, Lcom/sunrise/d/g;->a(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_27

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_15
    const/16 v12, 0x2e

    if-ne v11, v12, :cond_16

    const/16 v12, 0x2e

    if-eq v6, v12, :cond_17

    :cond_16
    const/16 v12, 0x2d

    if-ne v11, v12, :cond_18

    const/16 v12, 0x2d

    if-ne v6, v12, :cond_18

    :cond_17
    move v6, v10

    move/from16 v20, v5

    move v5, v9

    move v9, v2

    move v2, v7

    move/from16 v7, v20

    move/from16 v21, v4

    move v4, v3

    move/from16 v3, v21

    goto :goto_4

    :cond_18
    const/16 v12, 0x5e74

    if-eq v5, v12, :cond_19

    const v12, 0xb144

    if-ne v5, v12, :cond_26

    :cond_19
    const/16 v5, 0x6708

    if-eq v4, v5, :cond_1a

    const v5, 0xc6d4

    if-ne v4, v5, :cond_1f

    :cond_1a
    const/16 v4, 0x65e5

    if-eq v9, v4, :cond_1b

    const v4, 0xc77c

    if-ne v9, v4, :cond_1c

    :cond_1b
    const/16 v4, 0x30

    move v9, v3

    move v5, v10

    move v3, v2

    move v2, v8

    move v8, v4

    move v4, v11

    goto :goto_4

    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v4, v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    const/16 v5, 0x65e5

    if-eq v4, v5, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v4, v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    const v5, 0xc77c

    if-ne v4, v5, :cond_1e

    :cond_1d
    move v5, v10

    move v4, v11

    move/from16 v20, v3

    move v3, v2

    move v2, v8

    move/from16 v8, v20

    goto :goto_4

    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1f
    const/16 v5, 0x6708

    if-eq v7, v5, :cond_20

    const v5, 0xc6d4

    if-ne v7, v5, :cond_25

    :cond_20
    const/16 v5, 0x30

    const/16 v7, 0x65e5

    if-eq v3, v7, :cond_21

    const v7, 0xc77c

    if-ne v3, v7, :cond_22

    :cond_21
    const/16 v3, 0x30

    move v9, v4

    move v7, v6

    move v6, v5

    move v4, v11

    move v5, v10

    move/from16 v20, v3

    move v3, v2

    move v2, v8

    move/from16 v8, v20

    goto/16 :goto_4

    :cond_22
    const/16 v7, 0x65e5

    if-eq v9, v7, :cond_23

    const v7, 0xc77c

    if-ne v9, v7, :cond_24

    :cond_23
    move v9, v3

    move v7, v6

    move v6, v5

    move v3, v2

    move v5, v10

    move v2, v8

    move v8, v4

    move v4, v11

    goto/16 :goto_4

    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_25
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_27
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/sunrise/d/g;->a(CCCCCCCC)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v9

    const/16 v2, 0x54

    if-eq v9, v2, :cond_28

    const/16 v2, 0x20

    if-ne v9, v2, :cond_29

    if-nez p1, :cond_29

    :cond_28
    sget v2, Lcom/sunrise/d/g;->s:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_31

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_29
    const/16 v2, 0x22

    if-eq v9, v2, :cond_2a

    const/16 v2, 0x1a

    if-eq v9, v2, :cond_2a

    const/16 v2, 0x65e5

    if-eq v9, v2, :cond_2a

    const v2, 0xc77c

    if-ne v9, v2, :cond_2b

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sunrise/d/g;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/sunrise/d/g;->d:C

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sunrise/d/g;->a:I

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_2b
    const/16 v2, 0x2b

    if-eq v9, v2, :cond_2c

    const/16 v2, 0x2d

    if-ne v9, v2, :cond_30

    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->v:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2e

    :cond_2d
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2e
    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    const/16 v7, 0x30

    const/16 v8, 0x30

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sunrise/d/g;->a(CCCCCC)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v3}, Lcom/sunrise/d/g;->a(CCC)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_2f
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_30
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_32

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_32
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_33

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sunrise/d/g;->b(CCCCCC)Z

    move-result v2

    if-nez v2, :cond_34

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_34
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sunrise/d/g;->a(CCCCCC)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_35

    sget v2, Lcom/sunrise/d/g;->t:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_37

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x13

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sunrise/d/g;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    move-object/from16 v0, p0

    iput-char v3, v0, Lcom/sunrise/d/g;->d:C

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sunrise/d/g;->a:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_36

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_36
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_37
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_38

    const/16 v3, 0x39

    if-le v2, v3, :cond_39

    :cond_38
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_39
    add-int/lit8 v3, v2, -0x30

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v4, v4, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_3a

    const/16 v5, 0x39

    if-gt v4, v5, :cond_3a

    mul-int/lit8 v2, v3, 0xa

    add-int/lit8 v3, v4, -0x30

    add-int/2addr v3, v2

    const/4 v2, 0x2

    :cond_3a
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v4, v4, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_3b

    const/16 v5, 0x39

    if-gt v4, v5, :cond_3b

    mul-int/lit8 v2, v3, 0xa

    add-int/lit8 v3, v4, -0x30

    add-int/2addr v3, v2

    const/4 v2, 0x3

    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_3c

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_47

    :cond_3c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v5

    const/16 v3, 0x30

    if-lt v5, v3, :cond_3d

    const/16 v3, 0x31

    if-le v5, v3, :cond_3e

    :cond_3d
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_3e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v6

    const/16 v3, 0x30

    if-lt v6, v3, :cond_3f

    const/16 v3, 0x39

    if-le v6, v3, :cond_40

    :cond_3f
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_40
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    const/16 v7, 0x3a

    if-ne v3, v7, :cond_44

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    const/16 v7, 0x30

    if-eq v3, v7, :cond_41

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    const/16 v7, 0x30

    if-eq v3, v7, :cond_42

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_42
    const/4 v3, 0x6

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/sunrise/d/g;->a(CCC)V

    :cond_43
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v5, v2, 0x14

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sunrise/d/g;->d(I)C

    move-result v4

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_48

    const/16 v5, 0x22

    if-eq v4, v5, :cond_48

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_44
    const/16 v7, 0x30

    if-ne v3, v7, :cond_46

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v3

    const/16 v7, 0x30

    if-eq v3, v7, :cond_45

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_45
    const/4 v3, 0x5

    goto :goto_5

    :cond_46
    const/4 v3, 0x3

    goto :goto_5

    :cond_47
    const/16 v5, 0x5a

    if-ne v4, v5, :cond_43

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    if-eqz v4, :cond_43

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_43

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/d/g;->k:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_6

    :cond_48
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sunrise/d/g;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/sunrise/d/g;->d:C

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sunrise/d/g;->a:I

    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method public final b(II)[C
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/sunrise/h/b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/d/g;->g:[C

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    add-int v1, p1, p2

    iget-object v2, p0, Lcom/sunrise/d/g;->g:[C

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lcom/sunrise/d/g;->g:[C

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p2, [C

    iget-object v1, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public c([C)I
    .locals 12

    const/16 v11, 0x10

    const/16 v10, 0x7d

    const/16 v9, 0x2c

    const/4 v8, -0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/sunrise/d/g;->n:I

    iget v5, p0, Lcom/sunrise/d/g;->e:I

    iget-char v6, p0, Lcom/sunrise/d/g;->d:C

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-static {v0, v1, p1}, Lcom/sunrise/d/g;->a(Ljava/lang/String;I[C)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sunrise/d/g;->e:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->d(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_e

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    const/4 v0, 0x1

    move v4, v0

    move v0, v1

    move v1, v2

    :goto_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_7

    const/16 v2, 0x39

    if-gt v0, v2, :cond_7

    add-int/lit8 v0, v0, -0x30

    :goto_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    const/16 v7, 0x30

    if-lt v1, v7, :cond_2

    const/16 v7, 0x39

    if-gt v1, v7, :cond_2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_2

    :cond_2
    const/16 v7, 0x2e

    if-ne v1, v7, :cond_3

    iput v8, p0, Lcom/sunrise/d/g;->n:I

    move v0, v3

    goto :goto_0

    :cond_3
    if-gez v0, :cond_4

    iput v8, p0, Lcom/sunrise/d/g;->n:I

    move v0, v3

    goto :goto_0

    :cond_4
    if-eq v1, v9, :cond_5

    if-ne v1, v10, :cond_6

    :cond_5
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sunrise/d/g;->e:I

    :cond_6
    if-ne v1, v9, :cond_8

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/sunrise/d/g;->n:I

    iput v11, p0, Lcom/sunrise/d/g;->a:I

    if-eqz v4, :cond_0

    neg-int v0, v0

    goto :goto_0

    :cond_7
    iput v8, p0, Lcom/sunrise/d/g;->n:I

    move v0, v3

    goto :goto_0

    :cond_8
    if-ne v1, v10, :cond_9

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    if-ne v1, v9, :cond_a

    iput v11, p0, Lcom/sunrise/d/g;->a:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    :goto_3
    const/4 v1, 0x4

    iput v1, p0, Lcom/sunrise/d/g;->n:I

    :cond_9
    if-eqz v4, :cond_0

    neg-int v0, v0

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_b

    const/16 v1, 0xf

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    goto :goto_3

    :cond_b
    if-ne v1, v10, :cond_c

    const/16 v1, 0xd

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iput-char v1, p0, Lcom/sunrise/d/g;->d:C

    goto :goto_3

    :cond_c
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_d

    const/16 v1, 0x14

    iput v1, p0, Lcom/sunrise/d/g;->a:I

    goto :goto_3

    :cond_d
    iput v5, p0, Lcom/sunrise/d/g;->e:I

    iput-char v6, p0, Lcom/sunrise/d/g;->d:C

    iput v8, p0, Lcom/sunrise/d/g;->n:I

    move v0, v3

    goto/16 :goto_0

    :cond_e
    move v4, v3

    goto/16 :goto_1
.end method

.method public final d(I)C
    .locals 1

    iget v0, p0, Lcom/sunrise/d/g;->v:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public d([C)Z
    .locals 8

    const/16 v7, 0x65

    const/16 v6, 0x2c

    const/16 v5, 0x10

    const/4 v4, -0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    iget-object v1, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    iget v2, p0, Lcom/sunrise/d/g;->e:I

    invoke-static {v1, v2, p1}, Lcom/sunrise/d/g;->a(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x2

    iput v1, p0, Lcom/sunrise/d/g;->n:I

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sunrise/d/g;->e:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    const/16 v3, 0x74

    if-ne v1, v3, :cond_4

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x72

    if-eq v2, v3, :cond_1

    iput v4, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    const/16 v3, 0x75

    if-eq v1, v3, :cond_2

    iput v4, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    if-eq v2, v7, :cond_3

    iput v4, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/sunrise/d/g;->e:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/4 v1, 0x1

    :goto_1
    if-ne v2, v6, :cond_a

    iget v0, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/g;->d:C

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    iput v5, p0, Lcom/sunrise/d/g;->a:I

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v3, 0x66

    if-ne v1, v3, :cond_9

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_5

    iput v4, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_6

    iput v4, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x73

    if-eq v2, v3, :cond_7

    iput v4, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_0

    :cond_7
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    if-eq v1, v7, :cond_8

    iput v4, p0, Lcom/sunrise/d/g;->n:I

    goto/16 :goto_0

    :cond_8
    iput v2, p0, Lcom/sunrise/d/g;->e:I

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v1}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_9
    iput v4, p0, Lcom/sunrise/d/g;->n:I

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_f

    iget v2, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    if-ne v2, v6, :cond_b

    iput v5, p0, Lcom/sunrise/d/g;->a:I

    iget v0, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/g;->d:C

    :goto_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    goto :goto_2

    :cond_b
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_c

    const/16 v0, 0xf

    iput v0, p0, Lcom/sunrise/d/g;->a:I

    iget v0, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/g;->d:C

    goto :goto_3

    :cond_c
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_d

    const/16 v0, 0xd

    iput v0, p0, Lcom/sunrise/d/g;->a:I

    iget v0, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->d(I)C

    move-result v0

    iput-char v0, p0, Lcom/sunrise/d/g;->d:C

    goto :goto_3

    :cond_d
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_e

    const/16 v0, 0x14

    iput v0, p0, Lcom/sunrise/d/g;->a:I

    goto :goto_3

    :cond_e
    iput v4, p0, Lcom/sunrise/d/g;->n:I

    goto/16 :goto_0

    :cond_f
    iput v4, p0, Lcom/sunrise/d/g;->n:I

    goto/16 :goto_0
.end method

.method public e([C)J
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    iget v5, p0, Lcom/sunrise/d/g;->e:I

    iget-char v6, p0, Lcom/sunrise/d/g;->d:C

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-static {v0, v1, p1}, Lcom/sunrise/d/g;->a(Ljava/lang/String;I[C)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x2

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, Lcom/sunrise/d/g;->e:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    const/4 v0, 0x0

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_e

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    const/4 v0, 0x1

    move v4, v0

    move v0, v1

    :goto_1
    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    add-int/lit8 v0, v0, -0x30

    int-to-long v0, v0

    :goto_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

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

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v7, 0x2c

    if-eq v2, v7, :cond_4

    const/16 v7, 0x7d

    if-ne v2, v7, :cond_5

    :cond_4
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sunrise/d/g;->e:I

    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-gez v3, :cond_7

    iput v5, p0, Lcom/sunrise/d/g;->e:I

    iput-char v6, p0, Lcom/sunrise/d/g;->d:C

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_6
    iput v5, p0, Lcom/sunrise/d/g;->e:I

    iput-char v6, p0, Lcom/sunrise/d/g;->d:C

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_7
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    iput-char v2, p0, Lcom/sunrise/d/g;->d:C

    const/4 v2, 0x3

    iput v2, p0, Lcom/sunrise/d/g;->n:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/sunrise/d/g;->a:I

    if-eqz v4, :cond_0

    neg-long v0, v0

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_d

    iget v2, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_9

    const/16 v2, 0x10

    iput v2, p0, Lcom/sunrise/d/g;->a:I

    iget v2, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    iput-char v2, p0, Lcom/sunrise/d/g;->d:C

    :goto_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/sunrise/d/g;->n:I

    if-eqz v4, :cond_0

    neg-long v0, v0

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_a

    const/16 v2, 0xf

    iput v2, p0, Lcom/sunrise/d/g;->a:I

    iget v2, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    iput-char v2, p0, Lcom/sunrise/d/g;->d:C

    goto :goto_3

    :cond_a
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_b

    const/16 v2, 0xd

    iput v2, p0, Lcom/sunrise/d/g;->a:I

    iget v2, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {p0, v2}, Lcom/sunrise/d/g;->d(I)C

    move-result v2

    iput-char v2, p0, Lcom/sunrise/d/g;->d:C

    goto :goto_3

    :cond_b
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_c

    const/16 v2, 0x14

    iput v2, p0, Lcom/sunrise/d/g;->a:I

    goto :goto_3

    :cond_c
    iput v5, p0, Lcom/sunrise/d/g;->e:I

    iput-char v6, p0, Lcom/sunrise/d/g;->d:C

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    const-wide/16 v0, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v0, -0x1

    iput v0, p0, Lcom/sunrise/d/g;->n:I

    const-wide/16 v0, 0x0

    goto/16 :goto_0

    :cond_e
    move v4, v0

    move v2, v3

    move v0, v1

    goto/16 :goto_1
.end method

.method public final f()C
    .locals 2

    iget v0, p0, Lcom/sunrise/d/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/g;->e:I

    iget v1, p0, Lcom/sunrise/d/g;->v:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    :goto_0
    iput-char v0, p0, Lcom/sunrise/d/g;->d:C

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public final h([C)Z
    .locals 2

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-static {v0, v1, p1}, Lcom/sunrise/d/g;->a(Ljava/lang/String;I[C)Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/sunrise/d/g;->j:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sunrise/d/g;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sunrise/d/g;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/d/g;->a(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sunrise/d/g;->g:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/sunrise/d/g;->h:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sunrise/d/g;->i:I

    iget v1, p0, Lcom/sunrise/d/g;->h:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/d/g;->d(I)C

    move-result v1

    iget v0, p0, Lcom/sunrise/d/g;->h:I

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget v1, p0, Lcom/sunrise/d/g;->i:I

    invoke-virtual {p0, v1, v0}, Lcom/sunrise/d/g;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()[B
    .locals 3

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    iget v1, p0, Lcom/sunrise/d/g;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/sunrise/d/g;->h:I

    invoke-static {v0, v1, v2}, Lcom/sunrise/h/d;->a(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 4

    const/high16 v3, 0x10000

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sunrise/d/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/d/g;->u:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
