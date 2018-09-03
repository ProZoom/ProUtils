.class public Lcom/sunrise/f/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/k;

    invoke-direct {v0}, Lcom/sunrise/f/k;-><init>()V

    sput-object v0, Lcom/sunrise/f/k;->a:Lcom/sunrise/f/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sunrise/d/a;)Ljava/lang/Object;
    .locals 4

    const/16 v3, 0x10

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Lcom/sunrise/d/d;->k()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-interface {v1, v3}, Lcom/sunrise/d/d;->a(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Lcom/sunrise/d/d;->k()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-interface {v1, v3}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/sunrise/h/k;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/sunrise/f/k;->a(Lcom/sunrise/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_1

    sget-object v1, Lcom/sunrise/f/ba;->i:Lcom/sunrise/f/ba;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    sget-object v1, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Ljava/math/BigDecimal;

    if-eq p4, v1, :cond_0

    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
