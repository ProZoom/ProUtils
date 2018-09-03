.class public Lcom/sunrise/e/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;


# static fields
.field public static final a:Lcom/sunrise/e/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/e/r;

    invoke-direct {v0}, Lcom/sunrise/e/r;-><init>()V

    sput-object v0, Lcom/sunrise/e/r;->a:Lcom/sunrise/e/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/16 v4, 0x10

    iget-object v1, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-interface {v1}, Lcom/sunrise/d/d;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4}, Lcom/sunrise/d/d;->a(I)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v1}, Lcom/sunrise/d/d;->q()J

    move-result-wide v2

    invoke-interface {v1, v4}, Lcom/sunrise/d/d;->a(I)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_3

    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_4

    :cond_3
    long-to-int v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_6

    :cond_5
    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-wide/32 v0, -0x80000000

    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-gtz v0, :cond_7

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_9

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_a

    :cond_9
    invoke-interface {v1}, Lcom/sunrise/d/d;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4}, Lcom/sunrise/d/d;->a(I)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-interface {v1}, Lcom/sunrise/d/d;->k()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-interface {v1, v4}, Lcom/sunrise/d/d;->a(I)V

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_b

    const-class v1, Ljava/lang/Short;

    if-ne p2, v1, :cond_c

    :cond_b
    invoke-virtual {v0}, Ljava/math/BigDecimal;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_d

    const-class v1, Ljava/lang/Byte;

    if-ne p2, v1, :cond_1

    :cond_d
    invoke-virtual {v0}, Ljava/math/BigDecimal;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_10

    const-class v1, Ljava/lang/Double;

    if-ne p2, v1, :cond_11

    :cond_10
    invoke-static {v0}, Lcom/sunrise/h/k;->h(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_12

    const-class v1, Ljava/lang/Short;

    if-ne p2, v1, :cond_13

    :cond_12
    invoke-static {v0}, Lcom/sunrise/h/k;->d(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_14

    const-class v1, Ljava/lang/Byte;

    if-ne p2, v1, :cond_15

    :cond_14
    invoke-static {v0}, Lcom/sunrise/h/k;->b(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    invoke-static {v0}, Lcom/sunrise/h/k;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
