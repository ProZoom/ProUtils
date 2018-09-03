.class public Lcom/sunrise/f/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static a:Lcom/sunrise/f/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/ab;

    invoke-direct {v0}, Lcom/sunrise/f/ab;-><init>()V

    sput-object v0, Lcom/sunrise/f/ab;->a:Lcom/sunrise/f/ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/16 v3, 0x10

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    invoke-interface {v0, v3}, Lcom/sunrise/d/d;->a(I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :try_start_0
    invoke-interface {v0}, Lcom/sunrise/d/d;->n()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-interface {v0, v3}, Lcom/sunrise/d/d;->a(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne p2, v1, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "int value overflow, field : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Lcom/sunrise/d/d;->k()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, v3}, Lcom/sunrise/d/d;->a(I)V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/h/k;->m(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sunrise/f/ba;->i:Lcom/sunrise/f/ba;

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sunrise/f/az;->a(J)V

    :goto_1
    sget-object v2, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Byte;

    if-ne v0, v2, :cond_3

    const/16 v0, 0x42

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->b(I)V

    goto :goto_1

    :cond_3
    const-class v2, Ljava/lang/Short;

    if-ne v0, v2, :cond_0

    const/16 v0, 0x53

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
