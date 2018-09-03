.class public Lcom/sunrise/f/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static a:Lcom/sunrise/f/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/ak;

    invoke-direct {v0}, Lcom/sunrise/f/ak;-><init>()V

    sput-object v0, Lcom/sunrise/f/ak;->a:Lcom/sunrise/f/ak;

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

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lcom/sunrise/d/d;->q()J

    move-result-wide v2

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/sunrise/d/d;->a(I)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p2, v1, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/sunrise/h/k;->l(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 6
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
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sunrise/f/az;->a(J)V

    sget-object v1, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const-wide/32 v4, -0x80000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const-class v1, Ljava/lang/Long;

    if-eq p4, v1, :cond_0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
