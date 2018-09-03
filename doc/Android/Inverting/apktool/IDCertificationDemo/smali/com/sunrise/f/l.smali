.class public Lcom/sunrise/f/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/l;

    invoke-direct {v0}, Lcom/sunrise/f/l;-><init>()V

    sput-object v0, Lcom/sunrise/f/l;->a:Lcom/sunrise/f/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sunrise/d/a;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/sunrise/d/d;->s()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lcom/sunrise/d/d;->a(I)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sunrise/h/k;->f(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/sunrise/f/l;->a(Lcom/sunrise/d/a;)Ljava/lang/Object;

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

    if-nez p2, :cond_0

    sget-object v1, Lcom/sunrise/f/ba;->i:Lcom/sunrise/f/ba;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :goto_0
    return-void

    :cond_0
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
