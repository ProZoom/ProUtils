.class public Lcom/sunrise/f/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/f/ap;


# static fields
.field public static a:Lcom/sunrise/f/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/aq;

    invoke-direct {v0}, Lcom/sunrise/f/aq;-><init>()V

    sput-object v0, Lcom/sunrise/f/aq;->a:Lcom/sunrise/f/aq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x5d

    const/16 v3, 0x5b

    const/16 v5, 0x2c

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    sget-object v0, Lcom/sunrise/f/ba;->g:Lcom/sunrise/f/ba;

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :goto_0
    return-void

    :cond_0
    instance-of v2, p2, [I

    if-eqz v2, :cond_3

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->write(I)V

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5}, Lcom/sunrise/f/az;->write(I)V

    :cond_1
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v6}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0

    :cond_3
    instance-of v2, p2, [S

    if-eqz v2, :cond_6

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->write(I)V

    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v1, v5}, Lcom/sunrise/f/az;->write(I)V

    :cond_4
    aget-short v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v6}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0

    :cond_6
    instance-of v2, p2, [J

    if-eqz v2, :cond_9

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->write(I)V

    :goto_3
    array-length v2, p2

    if-ge v0, v2, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v1, v5}, Lcom/sunrise/f/az;->write(I)V

    :cond_7
    aget-wide v2, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sunrise/f/az;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v6}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0

    :cond_9
    instance-of v2, p2, [Z

    if-eqz v2, :cond_c

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->write(I)V

    :goto_4
    array-length v2, p2

    if-ge v0, v2, :cond_b

    if-eqz v0, :cond_a

    invoke-virtual {v1, v5}, Lcom/sunrise/f/az;->write(I)V

    :cond_a
    aget-boolean v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v6}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0

    :cond_c
    instance-of v2, p2, [F

    if-eqz v2, :cond_10

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->write(I)V

    :goto_5
    array-length v2, p2

    if-ge v0, v2, :cond_f

    if-eqz v0, :cond_d

    invoke-virtual {v1, v5}, Lcom/sunrise/f/az;->write(I)V

    :cond_d
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, Lcom/sunrise/f/az;->b()V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v6}, Lcom/sunrise/f/az;->write(I)V

    goto/16 :goto_0

    :cond_10
    instance-of v2, p2, [D

    if-eqz v2, :cond_14

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->write(I)V

    :goto_7
    array-length v2, p2

    if-ge v0, v2, :cond_13

    if-eqz v0, :cond_11

    invoke-virtual {v1, v5}, Lcom/sunrise/f/az;->write(I)V

    :cond_11
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v1}, Lcom/sunrise/f/az;->b()V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v6}, Lcom/sunrise/f/az;->write(I)V

    goto/16 :goto_0

    :cond_14
    instance-of v0, p2, [B

    if-eqz v0, :cond_15

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {v1, p2}, Lcom/sunrise/f/az;->a([B)V

    goto/16 :goto_0

    :cond_15
    check-cast p2, [C

    check-cast p2, [C

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
