.class public Lcom/sunrise/e/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static a:Lcom/sunrise/e/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/e/t;

    invoke-direct {v0}, Lcom/sunrise/e/t;-><init>()V

    sput-object v0, Lcom/sunrise/e/t;->a:Lcom/sunrise/e/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-class v0, Ljava/util/OptionalInt;

    if-ne p2, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/h/k;->m(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v0, Ljava/util/OptionalLong;

    if-ne p2, v0, :cond_3

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/h/k;->l(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-class v0, Ljava/util/OptionalDouble;

    if-ne p2, v0, :cond_5

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/h/k;->h(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/sunrise/h/k;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/sunrise/f/af;->g()V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/util/Optional;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/util/OptionalDouble;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/OptionalDouble;

    invoke-virtual {p2}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sunrise/f/af;->g()V

    goto :goto_0

    :cond_4
    instance-of v0, p2, Ljava/util/OptionalInt;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/util/OptionalInt;

    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    iget-object v1, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->b(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/sunrise/f/af;->g()V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Ljava/util/OptionalLong;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/util/OptionalLong;

    invoke-virtual {p2}, Ljava/util/OptionalLong;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    iget-object v2, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    invoke-virtual {v2, v0, v1}, Lcom/sunrise/f/az;->a(J)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/sunrise/f/af;->g()V

    goto :goto_0

    :cond_8
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support optional : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a_()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
